(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1771178563)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp161544 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp161544
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args160286%_
        (apply make-instance UnboundKeyError::t _%$args160286%_)))
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
      (lambda (_%where160160%_ _%message160161%_ . _%irritants160162%_)
        (let ((__tmp161545
               (let ((__obj161536
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj161536
                    _%message160161%_
                    'where:
                    _%where160160%_
                    'irritants:
                    _%irritants160162%_))
                 __obj161536)))
          (declare (not safe))
          (raise __tmp161545))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp161546 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp161546
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj161538
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj161538
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj161538))
    (define make-HashTable
      (lambda (_%obj160158%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj160158%_))))
    (define try-HashTable
      (lambda (_%obj160156%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj160156%_))))
    (define HashTable?
      (lambda (_%obj160154%_)
        (let ((__tmp161547
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj160154%_ __tmp161547))))
    (define is-HashTable?
      (lambda (_%obj160151%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj160151%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self145141145385%_)
        (let ((_%self145141145387%_ _%self145141145385%_))
          (declare (not safe))
          (let ((_%object145394145399%_
                 (##unchecked-structure-ref
                  _%self145141145387%_
                  '1
                  '#f
                  'clear!))
                (_%method145395145400%_
                 (##unchecked-structure-ref
                  _%self145141145387%_
                  '2
                  '#f
                  'clear!)))
            (_%method145395145400%_ _%object145394145399%_)))))
    (define ::HashTable-clear!
      (lambda (_%self145142145402%_)
        (let* ((_%self145142145407%_
                (let ((_%$obj145404%_ _%self145142145402%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145404%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145404%_)))
                           '#t)
                      _%$obj145404%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145404%_)))))
               (_%self145142145409%_ _%self145142145407%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145417145422%_
                       (##unchecked-structure-ref
                        _%self145142145409%_
                        '1
                        '#f
                        'clear!))
                      (_%method145418145423%_
                       (##unchecked-structure-ref
                        _%self145142145409%_
                        '2
                        '#f
                        'clear!)))
                  (_%method145418145423%_ _%object145417145422%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145424145429%_
                       (##unchecked-structure-ref
                        _%self145142145409%_
                        '1
                        '#f
                        'clear!))
                      (_%method145425145430%_
                       (##unchecked-structure-ref
                        _%self145142145409%_
                        '2
                        '#f
                        'clear!)))
                  (_%method145425145430%_ _%object145424145429%_)))))))
    (define __HashTable-copy
      (lambda (_%self145433145676%_)
        (let ((_%self145433145678%_ _%self145433145676%_))
          (declare (not safe))
          (let ((_%object145685145690%_
                 (##unchecked-structure-ref _%self145433145678%_ '1 '#f 'copy))
                (_%method145686145691%_
                 (##unchecked-structure-ref
                  _%self145433145678%_
                  '3
                  '#f
                  'copy)))
            (_%method145686145691%_ _%object145685145690%_)))))
    (define ::HashTable-copy
      (lambda (_%self145434145693%_)
        (let* ((_%self145434145698%_
                (let ((_%$obj145695%_ _%self145434145693%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145695%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145695%_)))
                           '#t)
                      _%$obj145695%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145695%_)))))
               (_%self145434145700%_ _%self145434145698%_))
          (if __DEBUG
              (let ((_%$obj145716%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object145708145713%_
                              (##unchecked-structure-ref
                               _%self145434145700%_
                               '1
                               '#f
                               'copy))
                             (_%method145709145714%_
                              (##unchecked-structure-ref
                               _%self145434145700%_
                               '3
                               '#f
                               'copy)))
                         (_%method145709145714%_ _%object145708145713%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj145716%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj145716%_)))
                         '#t)
                    _%$obj145716%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj145716%_))))
              (let ()
                (declare (not safe))
                (let ((_%object145718145723%_
                       (##unchecked-structure-ref
                        _%self145434145700%_
                        '1
                        '#f
                        'copy))
                      (_%method145719145724%_
                       (##unchecked-structure-ref
                        _%self145434145700%_
                        '3
                        '#f
                        'copy)))
                  (_%method145719145724%_ _%object145718145723%_)))))))
    (define __HashTable-delete!
      (lambda (_%self145727145970%_ _%key145971%_)
        (let ((_%self145727145973%_ _%self145727145970%_))
          (declare (not safe))
          (let ((_%object145980145985%_
                 (##unchecked-structure-ref
                  _%self145727145973%_
                  '1
                  '#f
                  'delete!))
                (_%method145981145986%_
                 (##unchecked-structure-ref
                  _%self145727145973%_
                  '4
                  '#f
                  'delete!)))
            (_%method145981145986%_ _%object145980145985%_ _%key145971%_)))))
    (define ::HashTable-delete!
      (lambda (_%self145728145988%_ _%key145989%_)
        (let* ((_%self145728145994%_
                (let ((_%$obj145991%_ _%self145728145988%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145991%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145991%_)))
                           '#t)
                      _%$obj145991%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145991%_)))))
               (_%self145728145996%_ _%self145728145994%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146004146009%_
                       (##unchecked-structure-ref
                        _%self145728145996%_
                        '1
                        '#f
                        'delete!))
                      (_%method146005146010%_
                       (##unchecked-structure-ref
                        _%self145728145996%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146005146010%_
                   _%object146004146009%_
                   _%key145989%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146011146016%_
                       (##unchecked-structure-ref
                        _%self145728145996%_
                        '1
                        '#f
                        'delete!))
                      (_%method146012146017%_
                       (##unchecked-structure-ref
                        _%self145728145996%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146012146017%_
                   _%object146011146016%_
                   _%key145989%_)))))))
    (define __HashTable-for-each
      (lambda (_%self146020146263%_ _%proc146264%_)
        (let* ((_%self146020146266%_ _%self146020146263%_)
               (_%proc146273%_ _%proc146264%_))
          (declare (not safe))
          (let ((_%object146281146286%_
                 (##unchecked-structure-ref
                  _%self146020146266%_
                  '1
                  '#f
                  'for-each))
                (_%method146282146287%_
                 (##unchecked-structure-ref
                  _%self146020146266%_
                  '5
                  '#f
                  'for-each)))
            (_%method146282146287%_ _%object146281146286%_ _%proc146273%_)))))
    (define ::HashTable-for-each
      (lambda (_%self146021146289%_ _%proc146290%_)
        (let* ((_%self146021146295%_
                (let ((_%$obj146292%_ _%self146021146289%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146292%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146292%_)))
                           '#t)
                      _%$obj146292%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146292%_)))))
               (_%self146021146297%_ _%self146021146295%_))
          (if (procedure? _%proc146290%_)
              (let ((_%proc146306%_ _%proc146290%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object146315146320%_
                             (##unchecked-structure-ref
                              _%self146021146297%_
                              '1
                              '#f
                              'for-each))
                            (_%method146316146321%_
                             (##unchecked-structure-ref
                              _%self146021146297%_
                              '5
                              '#f
                              'for-each)))
                        (_%method146316146321%_
                         _%object146315146320%_
                         _%proc146306%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object146322146327%_
                             (##unchecked-structure-ref
                              _%self146021146297%_
                              '1
                              '#f
                              'for-each))
                            (_%method146323146328%_
                             (##unchecked-structure-ref
                              _%self146021146297%_
                              '5
                              '#f
                              'for-each)))
                        (_%method146323146328%_
                         _%object146322146327%_
                         _%proc146306%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc146290%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self146331146574%_)
        (let ((_%self146331146576%_ _%self146331146574%_))
          (declare (not safe))
          (let ((_%object146583146588%_
                 (##unchecked-structure-ref
                  _%self146331146576%_
                  '1
                  '#f
                  'length))
                (_%method146584146589%_
                 (##unchecked-structure-ref
                  _%self146331146576%_
                  '6
                  '#f
                  'length)))
            (_%method146584146589%_ _%object146583146588%_)))))
    (define ::HashTable-length
      (lambda (_%self146332146591%_)
        (let* ((_%self146332146596%_
                (let ((_%$obj146593%_ _%self146332146591%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146593%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146593%_)))
                           '#t)
                      _%$obj146593%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146593%_)))))
               (_%self146332146598%_ _%self146332146596%_))
          (if __DEBUG
              (let ((_%val146614%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object146606146611%_
                              (##unchecked-structure-ref
                               _%self146332146598%_
                               '1
                               '#f
                               'length))
                             (_%method146607146612%_
                              (##unchecked-structure-ref
                               _%self146332146598%_
                               '6
                               '#f
                               'length)))
                         (_%method146607146612%_ _%object146606146611%_)))))
                (if (fixnum? _%val146614%_)
                    _%val146614%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val146614%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object146616146621%_
                       (##unchecked-structure-ref
                        _%self146332146598%_
                        '1
                        '#f
                        'length))
                      (_%method146617146622%_
                       (##unchecked-structure-ref
                        _%self146332146598%_
                        '6
                        '#f
                        'length)))
                  (_%method146617146622%_ _%object146616146621%_)))))))
    (define __HashTable-ref
      (lambda (_%self146625146868%_ _%key146869%_ _%default146870%_)
        (let ((_%self146625146872%_ _%self146625146868%_))
          (declare (not safe))
          (let ((_%object146879146884%_
                 (##unchecked-structure-ref _%self146625146872%_ '1 '#f 'ref))
                (_%method146880146885%_
                 (##unchecked-structure-ref _%self146625146872%_ '7 '#f 'ref)))
            (_%method146880146885%_
             _%object146879146884%_
             _%key146869%_
             _%default146870%_)))))
    (define ::HashTable-ref
      (lambda (_%self146626146887%_ _%key146888%_ _%default146889%_)
        (let* ((_%self146626146894%_
                (let ((_%$obj146891%_ _%self146626146887%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146891%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146891%_)))
                           '#t)
                      _%$obj146891%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146891%_)))))
               (_%self146626146896%_ _%self146626146894%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146904146909%_
                       (##unchecked-structure-ref
                        _%self146626146896%_
                        '1
                        '#f
                        'ref))
                      (_%method146905146910%_
                       (##unchecked-structure-ref
                        _%self146626146896%_
                        '7
                        '#f
                        'ref)))
                  (_%method146905146910%_
                   _%object146904146909%_
                   _%key146888%_
                   _%default146889%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146911146916%_
                       (##unchecked-structure-ref
                        _%self146626146896%_
                        '1
                        '#f
                        'ref))
                      (_%method146912146917%_
                       (##unchecked-structure-ref
                        _%self146626146896%_
                        '7
                        '#f
                        'ref)))
                  (_%method146912146917%_
                   _%object146911146916%_
                   _%key146888%_
                   _%default146889%_)))))))
    (define __HashTable-set!
      (lambda (_%self146920147163%_ _%key147164%_ _%value147165%_)
        (let ((_%self146920147167%_ _%self146920147163%_))
          (declare (not safe))
          (let ((_%object147174147179%_
                 (##unchecked-structure-ref _%self146920147167%_ '1 '#f 'set!))
                (_%method147175147180%_
                 (##unchecked-structure-ref
                  _%self146920147167%_
                  '8
                  '#f
                  'set!)))
            (_%method147175147180%_
             _%object147174147179%_
             _%key147164%_
             _%value147165%_)))))
    (define ::HashTable-set!
      (lambda (_%self146921147182%_ _%key147183%_ _%value147184%_)
        (let* ((_%self146921147189%_
                (let ((_%$obj147186%_ _%self146921147182%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147186%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147186%_)))
                           '#t)
                      _%$obj147186%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147186%_)))))
               (_%self146921147191%_ _%self146921147189%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147199147204%_
                       (##unchecked-structure-ref
                        _%self146921147191%_
                        '1
                        '#f
                        'set!))
                      (_%method147200147205%_
                       (##unchecked-structure-ref
                        _%self146921147191%_
                        '8
                        '#f
                        'set!)))
                  (_%method147200147205%_
                   _%object147199147204%_
                   _%key147183%_
                   _%value147184%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147206147211%_
                       (##unchecked-structure-ref
                        _%self146921147191%_
                        '1
                        '#f
                        'set!))
                      (_%method147207147212%_
                       (##unchecked-structure-ref
                        _%self146921147191%_
                        '8
                        '#f
                        'set!)))
                  (_%method147207147212%_
                   _%object147206147211%_
                   _%key147183%_
                   _%value147184%_)))))))
    (define __HashTable-update!
      (lambda (_%self147215147458%_
               _%key147459%_
               _%proc147460%_
               _%default147461%_)
        (let* ((_%self147215147463%_ _%self147215147458%_)
               (_%proc147470%_ _%proc147460%_))
          (declare (not safe))
          (let ((_%object147478147483%_
                 (##unchecked-structure-ref
                  _%self147215147463%_
                  '1
                  '#f
                  'update!))
                (_%method147479147484%_
                 (##unchecked-structure-ref
                  _%self147215147463%_
                  '9
                  '#f
                  'update!)))
            (_%method147479147484%_
             _%object147478147483%_
             _%key147459%_
             _%proc147470%_
             _%default147461%_)))))
    (define ::HashTable-update!
      (lambda (_%self147216147486%_
               _%key147487%_
               _%proc147488%_
               _%default147489%_)
        (let* ((_%self147216147494%_
                (let ((_%$obj147491%_ _%self147216147486%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147491%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147491%_)))
                           '#t)
                      _%$obj147491%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147491%_)))))
               (_%self147216147496%_ _%self147216147494%_))
          (if (procedure? _%proc147488%_)
              (let ((_%proc147505%_ _%proc147488%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object147514147519%_
                             (##unchecked-structure-ref
                              _%self147216147496%_
                              '1
                              '#f
                              'update!))
                            (_%method147515147520%_
                             (##unchecked-structure-ref
                              _%self147216147496%_
                              '9
                              '#f
                              'update!)))
                        (_%method147515147520%_
                         _%object147514147519%_
                         _%key147487%_
                         _%proc147505%_
                         _%default147489%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object147521147526%_
                             (##unchecked-structure-ref
                              _%self147216147496%_
                              '1
                              '#f
                              'update!))
                            (_%method147522147527%_
                             (##unchecked-structure-ref
                              _%self147216147496%_
                              '9
                              '#f
                              'update!)))
                        (_%method147522147527%_
                         _%object147521147526%_
                         _%key147487%_
                         _%proc147505%_
                         _%default147489%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc147488%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp161548 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp161548
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj161540
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj161540
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj161540))
    (define make-Locker
      (lambda (_%obj160149%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj160149%_))))
    (define try-Locker
      (lambda (_%obj160147%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj160147%_))))
    (define Locker?
      (lambda (_%obj160145%_)
        (let ((__tmp161549
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj160145%_ __tmp161549))))
    (define is-Locker?
      (lambda (_%obj160142%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj160142%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self147530147773%_)
        (let ((_%self147530147775%_ _%self147530147773%_))
          (declare (not safe))
          (let ((_%object147782147787%_
                 (##unchecked-structure-ref
                  _%self147530147775%_
                  '1
                  '#f
                  'read-lock!))
                (_%method147783147788%_
                 (##unchecked-structure-ref
                  _%self147530147775%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method147783147788%_ _%object147782147787%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self147531147790%_)
        (let* ((_%self147531147795%_
                (let ((_%$obj147792%_ _%self147531147790%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147792%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147792%_)))
                           '#t)
                      _%$obj147792%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147792%_)))))
               (_%self147531147797%_ _%self147531147795%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147805147810%_
                       (##unchecked-structure-ref
                        _%self147531147797%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method147806147811%_
                       (##unchecked-structure-ref
                        _%self147531147797%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method147806147811%_ _%object147805147810%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147812147817%_
                       (##unchecked-structure-ref
                        _%self147531147797%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method147813147818%_
                       (##unchecked-structure-ref
                        _%self147531147797%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method147813147818%_ _%object147812147817%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self147821148064%_)
        (let ((_%self147821148066%_ _%self147821148064%_))
          (declare (not safe))
          (let ((_%object148073148078%_
                 (##unchecked-structure-ref
                  _%self147821148066%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method148074148079%_
                 (##unchecked-structure-ref
                  _%self147821148066%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method148074148079%_ _%object148073148078%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self147822148081%_)
        (let* ((_%self147822148086%_
                (let ((_%$obj148083%_ _%self147822148081%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148083%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148083%_)))
                           '#t)
                      _%$obj148083%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148083%_)))))
               (_%self147822148088%_ _%self147822148086%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148096148101%_
                       (##unchecked-structure-ref
                        _%self147822148088%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148097148102%_
                       (##unchecked-structure-ref
                        _%self147822148088%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148097148102%_ _%object148096148101%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148103148108%_
                       (##unchecked-structure-ref
                        _%self147822148088%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148104148109%_
                       (##unchecked-structure-ref
                        _%self147822148088%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148104148109%_ _%object148103148108%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self148112148355%_)
        (let ((_%self148112148357%_ _%self148112148355%_))
          (declare (not safe))
          (let ((_%object148364148369%_
                 (##unchecked-structure-ref
                  _%self148112148357%_
                  '1
                  '#f
                  'write-lock!))
                (_%method148365148370%_
                 (##unchecked-structure-ref
                  _%self148112148357%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method148365148370%_ _%object148364148369%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self148113148372%_)
        (let* ((_%self148113148377%_
                (let ((_%$obj148374%_ _%self148113148372%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148374%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148374%_)))
                           '#t)
                      _%$obj148374%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148374%_)))))
               (_%self148113148379%_ _%self148113148377%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148387148392%_
                       (##unchecked-structure-ref
                        _%self148113148379%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method148388148393%_
                       (##unchecked-structure-ref
                        _%self148113148379%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method148388148393%_ _%object148387148392%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148394148399%_
                       (##unchecked-structure-ref
                        _%self148113148379%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method148395148400%_
                       (##unchecked-structure-ref
                        _%self148113148379%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method148395148400%_ _%object148394148399%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self148403148646%_)
        (let ((_%self148403148648%_ _%self148403148646%_))
          (declare (not safe))
          (let ((_%object148655148660%_
                 (##unchecked-structure-ref
                  _%self148403148648%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method148656148661%_
                 (##unchecked-structure-ref
                  _%self148403148648%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method148656148661%_ _%object148655148660%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self148404148663%_)
        (let* ((_%self148404148668%_
                (let ((_%$obj148665%_ _%self148404148663%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148665%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148665%_)))
                           '#t)
                      _%$obj148665%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148665%_)))))
               (_%self148404148670%_ _%self148404148668%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148678148683%_
                       (##unchecked-structure-ref
                        _%self148404148670%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method148679148684%_
                       (##unchecked-structure-ref
                        _%self148404148670%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method148679148684%_ _%object148678148683%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148685148690%_
                       (##unchecked-structure-ref
                        _%self148404148670%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method148686148691%_
                       (##unchecked-structure-ref
                        _%self148404148670%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method148686148691%_ _%object148685148690%_)))))))
    (let* ((_%klass160105%_ __table::t)
           (_%id160108%_ 'HashTable::ref)
           (_%proc160111%_ raw-table-ref)
           (_%rebind?160114%_ '#f)
           (_%id160119%_ _%id160108%_)
           (_%proc160132%_ _%proc160111%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160105%_
       _%id160119%_
       _%proc160132%_
       _%rebind?160114%_))
    (let* ((_%klass160068%_ __table::t)
           (_%id160071%_ 'HashTable::set!)
           (_%proc160074%_ raw-table-set!)
           (_%rebind?160077%_ '#f)
           (_%id160082%_ _%id160071%_)
           (_%proc160095%_ _%proc160074%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160068%_
       _%id160082%_
       _%proc160095%_
       _%rebind?160077%_))
    (let* ((_%klass160031%_ __table::t)
           (_%id160034%_ 'HashTable::update!)
           (_%proc160037%_ raw-table-update!)
           (_%rebind?160040%_ '#f)
           (_%id160045%_ _%id160034%_)
           (_%proc160058%_ _%proc160037%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160031%_
       _%id160045%_
       _%proc160058%_
       _%rebind?160040%_))
    (let* ((_%klass159994%_ __table::t)
           (_%id159997%_ 'HashTable::delete!)
           (_%proc160000%_ raw-table-delete!)
           (_%rebind?160003%_ '#f)
           (_%id160008%_ _%id159997%_)
           (_%proc160021%_ _%proc160000%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159994%_
       _%id160008%_
       _%proc160021%_
       _%rebind?160003%_))
    (let* ((_%klass159957%_ __table::t)
           (_%id159960%_ 'HashTable::for-each)
           (_%proc159963%_ raw-table-for-each)
           (_%rebind?159966%_ '#f)
           (_%id159971%_ _%id159960%_)
           (_%proc159984%_ _%proc159963%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159957%_
       _%id159971%_
       _%proc159984%_
       _%rebind?159966%_))
    (let* ((_%klass159920%_ __table::t)
           (_%id159923%_ 'HashTable::length)
           (_%proc159926%_ &raw-table-count)
           (_%rebind?159929%_ '#f)
           (_%id159934%_ _%id159923%_)
           (_%proc159947%_ _%proc159926%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159920%_
       _%id159934%_
       _%proc159947%_
       _%rebind?159929%_))
    (let* ((_%klass159883%_ __table::t)
           (_%id159886%_ 'HashTable::copy)
           (_%proc159889%_ raw-table-copy)
           (_%rebind?159892%_ '#f)
           (_%id159897%_ _%id159886%_)
           (_%proc159910%_ _%proc159889%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159883%_
       _%id159897%_
       _%proc159910%_
       _%rebind?159892%_))
    (let* ((_%klass159846%_ __table::t)
           (_%id159849%_ 'HashTable::clear!)
           (_%proc159852%_ raw-table-clear!)
           (_%rebind?159855%_ '#f)
           (_%id159860%_ _%id159849%_)
           (_%proc159873%_ _%proc159852%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159846%_
       _%id159860%_
       _%proc159873%_
       _%rebind?159855%_))
    (let* ((_%klass159809%_ __gc-table::t)
           (_%id159812%_ 'HashTable::ref)
           (_%proc159815%_ gc-table-ref)
           (_%rebind?159818%_ '#f)
           (_%id159823%_ _%id159812%_)
           (_%proc159836%_ _%proc159815%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159809%_
       _%id159823%_
       _%proc159836%_
       _%rebind?159818%_))
    (let* ((_%klass159772%_ __gc-table::t)
           (_%id159775%_ 'HashTable::set!)
           (_%proc159778%_ gc-table-set!)
           (_%rebind?159781%_ '#f)
           (_%id159786%_ _%id159775%_)
           (_%proc159799%_ _%proc159778%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159772%_
       _%id159786%_
       _%proc159799%_
       _%rebind?159781%_))
    (let* ((_%klass159735%_ __gc-table::t)
           (_%id159738%_ 'HashTable::update!)
           (_%proc159741%_ gc-table-update!)
           (_%rebind?159744%_ '#f)
           (_%id159749%_ _%id159738%_)
           (_%proc159762%_ _%proc159741%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159735%_
       _%id159749%_
       _%proc159762%_
       _%rebind?159744%_))
    (let* ((_%klass159698%_ __gc-table::t)
           (_%id159701%_ 'HashTable::delete!)
           (_%proc159704%_ gc-table-delete!)
           (_%rebind?159707%_ '#f)
           (_%id159712%_ _%id159701%_)
           (_%proc159725%_ _%proc159704%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159698%_
       _%id159712%_
       _%proc159725%_
       _%rebind?159707%_))
    (let* ((_%klass159661%_ __gc-table::t)
           (_%id159664%_ 'HashTable::for-each)
           (_%proc159667%_ gc-table-for-each)
           (_%rebind?159670%_ '#f)
           (_%id159675%_ _%id159664%_)
           (_%proc159688%_ _%proc159667%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159661%_
       _%id159675%_
       _%proc159688%_
       _%rebind?159670%_))
    (let* ((_%klass159624%_ __gc-table::t)
           (_%id159627%_ 'HashTable::length)
           (_%proc159630%_ gc-table-length)
           (_%rebind?159633%_ '#f)
           (_%id159638%_ _%id159627%_)
           (_%proc159651%_ _%proc159630%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159624%_
       _%id159638%_
       _%proc159651%_
       _%rebind?159633%_))
    (let* ((_%klass159587%_ __gc-table::t)
           (_%id159590%_ 'HashTable::copy)
           (_%proc159593%_ gc-table-copy)
           (_%rebind?159596%_ '#f)
           (_%id159601%_ _%id159590%_)
           (_%proc159614%_ _%proc159593%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159587%_
       _%id159601%_
       _%proc159614%_
       _%rebind?159596%_))
    (let* ((_%klass159550%_ __gc-table::t)
           (_%id159553%_ 'HashTable::clear!)
           (_%proc159556%_ gc-table-clear!)
           (_%rebind?159559%_ '#f)
           (_%id159564%_ _%id159553%_)
           (_%proc159577%_ _%proc159556%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159550%_
       _%id159564%_
       _%proc159577%_
       _%rebind?159559%_))
    (define gambit-table-update!
      (lambda (_%table159543%_
               _%key159544%_
               _%update159545%_
               _%default159546%_)
        (let ((_%result159548%_
               (table-ref _%table159543%_ _%key159544%_ _%default159546%_)))
          (table-set!
           _%table159543%_
           _%key159544%_
           (_%update159545%_ _%default159546%_)))))
    (define gambit-table-for-each
      (lambda (_%table159540%_ _%proc159541%_)
        (table-for-each _%proc159541%_ _%table159540%_)))
    (define gambit-table-clear!
      (lambda (_%table159538%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table159538%_ '0 '5 '#f '#f))))
    (let* ((_%klass159501%_ (macro-type-table))
           (_%id159504%_ 'HashTable::ref)
           (_%proc159507%_ table-ref)
           (_%rebind?159510%_ '#f)
           (_%id159515%_ _%id159504%_)
           (_%proc159528%_ _%proc159507%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159501%_
       _%id159515%_
       _%proc159528%_
       _%rebind?159510%_))
    (let* ((_%klass159464%_ (macro-type-table))
           (_%id159467%_ 'HashTable::set!)
           (_%proc159470%_ table-set!)
           (_%rebind?159473%_ '#f)
           (_%id159478%_ _%id159467%_)
           (_%proc159491%_ _%proc159470%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159464%_
       _%id159478%_
       _%proc159491%_
       _%rebind?159473%_))
    (let* ((_%klass159427%_ (macro-type-table))
           (_%id159430%_ 'HashTable::update!)
           (_%proc159433%_ gambit-table-update!)
           (_%rebind?159436%_ '#f)
           (_%id159441%_ _%id159430%_)
           (_%proc159454%_ _%proc159433%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159427%_
       _%id159441%_
       _%proc159454%_
       _%rebind?159436%_))
    (let* ((_%klass159390%_ (macro-type-table))
           (_%id159393%_ 'HashTable::delete!)
           (_%proc159396%_ table-set!)
           (_%rebind?159399%_ '#f)
           (_%id159404%_ _%id159393%_)
           (_%proc159417%_ _%proc159396%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159390%_
       _%id159404%_
       _%proc159417%_
       _%rebind?159399%_))
    (let* ((_%klass159353%_ (macro-type-table))
           (_%id159356%_ 'HashTable::for-each)
           (_%proc159359%_ gambit-table-for-each)
           (_%rebind?159362%_ '#f)
           (_%id159367%_ _%id159356%_)
           (_%proc159380%_ _%proc159359%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159353%_
       _%id159367%_
       _%proc159380%_
       _%rebind?159362%_))
    (let* ((_%klass159316%_ (macro-type-table))
           (_%id159319%_ 'HashTable::length)
           (_%proc159322%_ table-length)
           (_%rebind?159325%_ '#f)
           (_%id159330%_ _%id159319%_)
           (_%proc159343%_ _%proc159322%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159316%_
       _%id159330%_
       _%proc159343%_
       _%rebind?159325%_))
    (let* ((_%klass159279%_ (macro-type-table))
           (_%id159282%_ 'HashTable::copy)
           (_%proc159285%_ table-copy)
           (_%rebind?159288%_ '#f)
           (_%id159293%_ _%id159282%_)
           (_%proc159306%_ _%proc159285%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159279%_
       _%id159293%_
       _%proc159306%_
       _%rebind?159288%_))
    (let* ((_%klass159242%_ (macro-type-table))
           (_%id159245%_ 'HashTable::clear!)
           (_%proc159248%_ gambit-table-clear!)
           (_%rebind?159251%_ '#f)
           (_%id159256%_ _%id159245%_)
           (_%proc159269%_ _%proc159248%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159242%_
       _%id159256%_
       _%proc159269%_
       _%rebind?159251%_))
    (define hash-table::t
      (let* ((_%slots159205%_ '(table count free hash test seed))
             (_%slot-vector159207%_ (list->vector (cons '#f _%slots159205%_)))
             (_%slot-table159233%_
              (let ((_%slot-table159209%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp161552
                       (lambda (_%slot159211%_ _%field159212%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159209%_
                            _%slot159211%_
                            _%field159212%_))
                         (let ((__tmp161553
                                (let ((_%sym159214%_ _%slot159211%_))
                                  (if (symbol? _%sym159214%_)
                                      (let ((_%sym159219%_ _%sym159214%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym159219%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym159214%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159209%_
                            __tmp161553
                            _%field159212%_))))
                      (__tmp161550
                       (let ((__tmp161551
                              (let ()
                                (declare (not safe))
                                (##length _%slots159205%_))))
                         (declare (not safe))
                         (##iota __tmp161551 '1))))
                  (declare (not safe))
                  (##for-each __tmp161552 _%slots159205%_ __tmp161550))
                _%slot-table159209%_))
             (_%flags159235%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields159237%_ '#())
             (_%properties159239%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots159205%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp161554 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags159235%_
         __table::t
         _%fields159237%_
         __tmp161554
         _%slot-vector159207%_
         _%slot-table159233%_
         _%properties159239%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots159168%_ '(gcht immediate))
             (_%slot-vector159170%_ (list->vector (cons '#f _%slots159168%_)))
             (_%slot-table159196%_
              (let ((_%slot-table159172%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp161557
                       (lambda (_%slot159174%_ _%field159175%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159172%_
                            _%slot159174%_
                            _%field159175%_))
                         (let ((__tmp161558
                                (let ((_%sym159177%_ _%slot159174%_))
                                  (if (symbol? _%sym159177%_)
                                      (let ((_%sym159182%_ _%sym159177%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym159182%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym159177%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159172%_
                            __tmp161558
                            _%field159175%_))))
                      (__tmp161555
                       (let ((__tmp161556
                              (let ()
                                (declare (not safe))
                                (##length _%slots159168%_))))
                         (declare (not safe))
                         (##iota __tmp161556 '1))))
                  (declare (not safe))
                  (##for-each __tmp161557 _%slots159168%_ __tmp161555))
                _%slot-table159172%_))
             (_%flags159198%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields159200%_ '#())
             (_%properties159202%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots159168%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp161559 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags159198%_
         __gc-table::t
         _%fields159200%_
         __tmp161559
         _%slot-vector159170%_
         _%slot-table159196%_
         _%properties159202%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp161561 (list))
            (__tmp161560
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp161561
         '(table lock)
         __tmp161560
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args159165%_
        (apply make-instance locked-hash-table::t _%$args159165%_)))
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
      (let ((__tmp161563 (list))
            (__tmp161562
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp161563
         '(table key-check)
         __tmp161562
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args159162%_
        (apply make-instance checked-hash-table::t _%$args159162%_)))
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
      (let ((__tmp161565 (list hash-table::t))
            (__tmp161564 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp161565
         '()
         __tmp161564
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args159159%_
        (apply make-instance eq-hash-table::t _%$args159159%_)))
    (define eqv-hash-table::t
      (let ((__tmp161567 (list hash-table::t))
            (__tmp161566 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp161567
         '()
         __tmp161566
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args159156%_
        (apply make-instance eqv-hash-table::t _%$args159156%_)))
    (define symbol-hash-table::t
      (let ((__tmp161569 (list hash-table::t))
            (__tmp161568 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp161569
         '()
         __tmp161568
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args159153%_
        (apply make-instance symbol-hash-table::t _%$args159153%_)))
    (define string-hash-table::t
      (let ((__tmp161571 (list hash-table::t))
            (__tmp161570 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp161571
         '()
         __tmp161570
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args159150%_
        (apply make-instance string-hash-table::t _%$args159150%_)))
    (define immediate-hash-table::t
      (let ((__tmp161573 (list hash-table::t))
            (__tmp161572 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp161573
         '()
         __tmp161572
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args159147%_
        (apply make-instance immediate-hash-table::t _%$args159147%_)))
    (let* ((_%klass159110%_ hash-table::t)
           (_%id159113%_ 'HashTable::ref)
           (_%proc159116%_ raw-table-ref)
           (_%rebind?159119%_ '#f)
           (_%id159124%_ _%id159113%_)
           (_%proc159137%_ _%proc159116%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159110%_
       _%id159124%_
       _%proc159137%_
       _%rebind?159119%_))
    (let* ((_%klass159073%_ hash-table::t)
           (_%id159076%_ 'HashTable::set!)
           (_%proc159079%_ raw-table-set!)
           (_%rebind?159082%_ '#f)
           (_%id159087%_ _%id159076%_)
           (_%proc159100%_ _%proc159079%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159073%_
       _%id159087%_
       _%proc159100%_
       _%rebind?159082%_))
    (let* ((_%klass159036%_ hash-table::t)
           (_%id159039%_ 'HashTable::update!)
           (_%proc159042%_ raw-table-update!)
           (_%rebind?159045%_ '#f)
           (_%id159050%_ _%id159039%_)
           (_%proc159063%_ _%proc159042%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159036%_
       _%id159050%_
       _%proc159063%_
       _%rebind?159045%_))
    (let* ((_%klass158999%_ hash-table::t)
           (_%id159002%_ 'HashTable::delete!)
           (_%proc159005%_ raw-table-delete!)
           (_%rebind?159008%_ '#f)
           (_%id159013%_ _%id159002%_)
           (_%proc159026%_ _%proc159005%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158999%_
       _%id159013%_
       _%proc159026%_
       _%rebind?159008%_))
    (let* ((_%klass158962%_ hash-table::t)
           (_%id158965%_ 'HashTable::for-each)
           (_%proc158968%_ raw-table-for-each)
           (_%rebind?158971%_ '#f)
           (_%id158976%_ _%id158965%_)
           (_%proc158989%_ _%proc158968%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158962%_
       _%id158976%_
       _%proc158989%_
       _%rebind?158971%_))
    (let* ((_%klass158925%_ hash-table::t)
           (_%id158928%_ 'HashTable::length)
           (_%proc158931%_ &raw-table-count)
           (_%rebind?158934%_ '#f)
           (_%id158939%_ _%id158928%_)
           (_%proc158952%_ _%proc158931%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158925%_
       _%id158939%_
       _%proc158952%_
       _%rebind?158934%_))
    (let* ((_%klass158888%_ hash-table::t)
           (_%id158891%_ 'HashTable::copy)
           (_%proc158894%_ raw-table-copy)
           (_%rebind?158897%_ '#f)
           (_%id158902%_ _%id158891%_)
           (_%proc158915%_ _%proc158894%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158888%_
       _%id158902%_
       _%proc158915%_
       _%rebind?158897%_))
    (let* ((_%klass158851%_ hash-table::t)
           (_%id158854%_ 'HashTable::clear!)
           (_%proc158857%_ raw-table-clear!)
           (_%rebind?158860%_ '#f)
           (_%id158865%_ _%id158854%_)
           (_%proc158878%_ _%proc158857%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158851%_
       _%id158865%_
       _%proc158878%_
       _%rebind?158860%_))
    (let* ((_%klass158814%_ eq-hash-table::t)
           (_%id158817%_ 'HashTable::ref)
           (_%proc158820%_ eq-table-ref)
           (_%rebind?158823%_ '#f)
           (_%id158828%_ _%id158817%_)
           (_%proc158841%_ _%proc158820%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158814%_
       _%id158828%_
       _%proc158841%_
       _%rebind?158823%_))
    (let* ((_%klass158777%_ eq-hash-table::t)
           (_%id158780%_ 'HashTable::set!)
           (_%proc158783%_ eq-table-set!)
           (_%rebind?158786%_ '#f)
           (_%id158791%_ _%id158780%_)
           (_%proc158804%_ _%proc158783%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158777%_
       _%id158791%_
       _%proc158804%_
       _%rebind?158786%_))
    (let* ((_%klass158740%_ eq-hash-table::t)
           (_%id158743%_ 'HashTable::update!)
           (_%proc158746%_ eq-table-update!)
           (_%rebind?158749%_ '#f)
           (_%id158754%_ _%id158743%_)
           (_%proc158767%_ _%proc158746%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158740%_
       _%id158754%_
       _%proc158767%_
       _%rebind?158749%_))
    (let* ((_%klass158703%_ eq-hash-table::t)
           (_%id158706%_ 'HashTable::delete!)
           (_%proc158709%_ eq-table-delete!)
           (_%rebind?158712%_ '#f)
           (_%id158717%_ _%id158706%_)
           (_%proc158730%_ _%proc158709%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158703%_
       _%id158717%_
       _%proc158730%_
       _%rebind?158712%_))
    (let* ((_%klass158666%_ eqv-hash-table::t)
           (_%id158669%_ 'HashTable::ref)
           (_%proc158672%_ eqv-table-ref)
           (_%rebind?158675%_ '#f)
           (_%id158680%_ _%id158669%_)
           (_%proc158693%_ _%proc158672%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158666%_
       _%id158680%_
       _%proc158693%_
       _%rebind?158675%_))
    (let* ((_%klass158629%_ eqv-hash-table::t)
           (_%id158632%_ 'HashTable::set!)
           (_%proc158635%_ eqv-table-set!)
           (_%rebind?158638%_ '#f)
           (_%id158643%_ _%id158632%_)
           (_%proc158656%_ _%proc158635%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158629%_
       _%id158643%_
       _%proc158656%_
       _%rebind?158638%_))
    (let* ((_%klass158592%_ eqv-hash-table::t)
           (_%id158595%_ 'HashTable::update!)
           (_%proc158598%_ eqv-table-update!)
           (_%rebind?158601%_ '#f)
           (_%id158606%_ _%id158595%_)
           (_%proc158619%_ _%proc158598%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158592%_
       _%id158606%_
       _%proc158619%_
       _%rebind?158601%_))
    (let* ((_%klass158555%_ eqv-hash-table::t)
           (_%id158558%_ 'HashTable::delete!)
           (_%proc158561%_ eqv-table-delete!)
           (_%rebind?158564%_ '#f)
           (_%id158569%_ _%id158558%_)
           (_%proc158582%_ _%proc158561%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158555%_
       _%id158569%_
       _%proc158582%_
       _%rebind?158564%_))
    (let* ((_%klass158518%_ symbol-hash-table::t)
           (_%id158521%_ 'HashTable::ref)
           (_%proc158524%_ symbolic-table-ref)
           (_%rebind?158527%_ '#f)
           (_%id158532%_ _%id158521%_)
           (_%proc158545%_ _%proc158524%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158518%_
       _%id158532%_
       _%proc158545%_
       _%rebind?158527%_))
    (let* ((_%klass158481%_ symbol-hash-table::t)
           (_%id158484%_ 'HashTable::set!)
           (_%proc158487%_ symbolic-table-set!)
           (_%rebind?158490%_ '#f)
           (_%id158495%_ _%id158484%_)
           (_%proc158508%_ _%proc158487%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158481%_
       _%id158495%_
       _%proc158508%_
       _%rebind?158490%_))
    (let* ((_%klass158444%_ symbol-hash-table::t)
           (_%id158447%_ 'HashTable::update!)
           (_%proc158450%_ symbolic-table-update!)
           (_%rebind?158453%_ '#f)
           (_%id158458%_ _%id158447%_)
           (_%proc158471%_ _%proc158450%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158444%_
       _%id158458%_
       _%proc158471%_
       _%rebind?158453%_))
    (let* ((_%klass158407%_ symbol-hash-table::t)
           (_%id158410%_ 'HashTable::delete!)
           (_%proc158413%_ symbolic-table-delete!)
           (_%rebind?158416%_ '#f)
           (_%id158421%_ _%id158410%_)
           (_%proc158434%_ _%proc158413%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158407%_
       _%id158421%_
       _%proc158434%_
       _%rebind?158416%_))
    (let* ((_%klass158370%_ string-hash-table::t)
           (_%id158373%_ 'HashTable::ref)
           (_%proc158376%_ string-table-ref)
           (_%rebind?158379%_ '#f)
           (_%id158384%_ _%id158373%_)
           (_%proc158397%_ _%proc158376%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158370%_
       _%id158384%_
       _%proc158397%_
       _%rebind?158379%_))
    (let* ((_%klass158333%_ string-hash-table::t)
           (_%id158336%_ 'HashTable::set!)
           (_%proc158339%_ string-table-set!)
           (_%rebind?158342%_ '#f)
           (_%id158347%_ _%id158336%_)
           (_%proc158360%_ _%proc158339%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158333%_
       _%id158347%_
       _%proc158360%_
       _%rebind?158342%_))
    (let* ((_%klass158296%_ string-hash-table::t)
           (_%id158299%_ 'HashTable::update!)
           (_%proc158302%_ string-table-update!)
           (_%rebind?158305%_ '#f)
           (_%id158310%_ _%id158299%_)
           (_%proc158323%_ _%proc158302%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158296%_
       _%id158310%_
       _%proc158323%_
       _%rebind?158305%_))
    (let* ((_%klass158259%_ string-hash-table::t)
           (_%id158262%_ 'HashTable::delete!)
           (_%proc158265%_ string-table-delete!)
           (_%rebind?158268%_ '#f)
           (_%id158273%_ _%id158262%_)
           (_%proc158286%_ _%proc158265%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158259%_
       _%id158273%_
       _%proc158286%_
       _%rebind?158268%_))
    (let* ((_%klass158222%_ immediate-hash-table::t)
           (_%id158225%_ 'HashTable::ref)
           (_%proc158228%_ immediate-table-ref)
           (_%rebind?158231%_ '#f)
           (_%id158236%_ _%id158225%_)
           (_%proc158249%_ _%proc158228%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158222%_
       _%id158236%_
       _%proc158249%_
       _%rebind?158231%_))
    (let* ((_%klass158185%_ immediate-hash-table::t)
           (_%id158188%_ 'HashTable::set!)
           (_%proc158191%_ immediate-table-set!)
           (_%rebind?158194%_ '#f)
           (_%id158199%_ _%id158188%_)
           (_%proc158212%_ _%proc158191%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158185%_
       _%id158199%_
       _%proc158212%_
       _%rebind?158194%_))
    (let* ((_%klass158148%_ immediate-hash-table::t)
           (_%id158151%_ 'HashTable::update!)
           (_%proc158154%_ immediate-table-update!)
           (_%rebind?158157%_ '#f)
           (_%id158162%_ _%id158151%_)
           (_%proc158175%_ _%proc158154%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158148%_
       _%id158162%_
       _%proc158175%_
       _%rebind?158157%_))
    (let* ((_%klass158111%_ immediate-hash-table::t)
           (_%id158114%_ 'HashTable::delete!)
           (_%proc158117%_ immediate-table-delete!)
           (_%rebind?158120%_ '#f)
           (_%id158125%_ _%id158114%_)
           (_%proc158138%_ _%proc158117%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158111%_
       _%id158125%_
       _%proc158138%_
       _%rebind?158120%_))
    (let* ((_%klass158074%_ gc-hash-table::t)
           (_%id158077%_ 'HashTable::ref)
           (_%proc158080%_ gc-table-ref)
           (_%rebind?158083%_ '#f)
           (_%id158088%_ _%id158077%_)
           (_%proc158101%_ _%proc158080%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158074%_
       _%id158088%_
       _%proc158101%_
       _%rebind?158083%_))
    (let* ((_%klass158037%_ gc-hash-table::t)
           (_%id158040%_ 'HashTable::set!)
           (_%proc158043%_ gc-table-set!)
           (_%rebind?158046%_ '#f)
           (_%id158051%_ _%id158040%_)
           (_%proc158064%_ _%proc158043%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158037%_
       _%id158051%_
       _%proc158064%_
       _%rebind?158046%_))
    (let* ((_%klass158000%_ gc-hash-table::t)
           (_%id158003%_ 'HashTable::update!)
           (_%proc158006%_ gc-table-update!)
           (_%rebind?158009%_ '#f)
           (_%id158014%_ _%id158003%_)
           (_%proc158027%_ _%proc158006%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158000%_
       _%id158014%_
       _%proc158027%_
       _%rebind?158009%_))
    (let* ((_%klass157963%_ gc-hash-table::t)
           (_%id157966%_ 'HashTable::delete!)
           (_%proc157969%_ gc-table-delete!)
           (_%rebind?157972%_ '#f)
           (_%id157977%_ _%id157966%_)
           (_%proc157990%_ _%proc157969%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157963%_
       _%id157977%_
       _%proc157990%_
       _%rebind?157972%_))
    (let* ((_%klass157926%_ gc-hash-table::t)
           (_%id157929%_ 'HashTable::for-each)
           (_%proc157932%_ gc-table-for-each)
           (_%rebind?157935%_ '#f)
           (_%id157940%_ _%id157929%_)
           (_%proc157953%_ _%proc157932%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157926%_
       _%id157940%_
       _%proc157953%_
       _%rebind?157935%_))
    (let* ((_%klass157889%_ gc-hash-table::t)
           (_%id157892%_ 'HashTable::length)
           (_%proc157895%_ gc-table-length)
           (_%rebind?157898%_ '#f)
           (_%id157903%_ _%id157892%_)
           (_%proc157916%_ _%proc157895%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157889%_
       _%id157903%_
       _%proc157916%_
       _%rebind?157898%_))
    (let* ((_%klass157852%_ gc-hash-table::t)
           (_%id157855%_ 'HashTable::copy)
           (_%proc157858%_ gc-table-copy)
           (_%rebind?157861%_ '#f)
           (_%id157866%_ _%id157855%_)
           (_%proc157879%_ _%proc157858%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157852%_
       _%id157866%_
       _%proc157879%_
       _%rebind?157861%_))
    (let* ((_%klass157815%_ gc-hash-table::t)
           (_%id157818%_ 'HashTable::clear!)
           (_%proc157821%_ gc-table-clear!)
           (_%rebind?157824%_ '#f)
           (_%id157829%_ _%id157818%_)
           (_%proc157842%_ _%proc157821%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157815%_
       _%id157829%_
       _%proc157842%_
       _%rebind?157824%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref149076%_
      (lambda (_%self157736%_ _%key157738%_ _%default157739%_)
        (let* ((_%self157742%_ _%self157736%_)
               (_%key157751%_ _%key157738%_)
               (_%default157759%_ _%default157739%_))
          (let ((_%h157768%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157742%_ '1 '#f '#f)))
                (_%l157770%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157742%_ '2 '#f '#f))))
            (let ((__tmp161576
                   (lambda ()
                     (let ((_%self147528157774%_ _%l157770%_))
                       (declare (not safe))
                       (let ((_%object157777157782%_
                              (##unchecked-structure-ref
                               _%self147528157774%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method157778157783%_
                              (##unchecked-structure-ref
                               _%self147528157774%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method157778157783%_ _%object157777157782%_)))))
                  (__tmp161575
                   (lambda ()
                     (let* ((_%self146623157786%_ _%h157768%_)
                            (_%key157789%_ _%key157751%_)
                            (_%default157792%_ _%default157759%_))
                       (declare (not safe))
                       (let ((_%object157795157800%_
                              (##unchecked-structure-ref
                               _%self146623157786%_
                               '1
                               '#f
                               'ref))
                             (_%method157796157801%_
                              (##unchecked-structure-ref
                               _%self146623157786%_
                               '7
                               '#f
                               'ref)))
                         (_%method157796157801%_
                          _%object157795157800%_
                          _%key157789%_
                          _%default157792%_)))))
                  (__tmp161574
                   (lambda ()
                     (let ((_%self147819157804%_ _%l157770%_))
                       (declare (not safe))
                       (let ((_%object157807157812%_
                              (##unchecked-structure-ref
                               _%self147819157804%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method157808157813%_
                              (##unchecked-structure-ref
                               _%self147819157804%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method157808157813%_ _%object157807157812%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161576 __tmp161575 __tmp161574))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref149076%_
       '#f))
    (define _%locked-hash-table::HashTable::set!149078%_
      (lambda (_%self157534%_ _%key157536%_ _%value157537%_)
        (let* ((_%self157540%_ _%self157534%_)
               (_%key157549%_ _%key157536%_)
               (_%value157557%_ _%value157537%_))
          (let ((_%h157566%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157540%_ '1 '#f '#f)))
                (_%l157568%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157540%_ '2 '#f '#f))))
            (let ((__tmp161579
                   (lambda ()
                     (let ((_%self148110157572%_ _%l157568%_))
                       (declare (not safe))
                       (let ((_%object157575157580%_
                              (##unchecked-structure-ref
                               _%self148110157572%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157576157581%_
                              (##unchecked-structure-ref
                               _%self148110157572%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157576157581%_ _%object157575157580%_)))))
                  (__tmp161578
                   (lambda ()
                     (let* ((_%self146918157584%_ _%h157566%_)
                            (_%key157587%_ _%key157549%_)
                            (_%value157590%_ _%value157557%_))
                       (declare (not safe))
                       (let ((_%object157593157598%_
                              (##unchecked-structure-ref
                               _%self146918157584%_
                               '1
                               '#f
                               'set!))
                             (_%method157594157599%_
                              (##unchecked-structure-ref
                               _%self146918157584%_
                               '8
                               '#f
                               'set!)))
                         (_%method157594157599%_
                          _%object157593157598%_
                          _%key157587%_
                          _%value157590%_)))))
                  (__tmp161577
                   (lambda ()
                     (let ((_%self148401157602%_ _%l157568%_))
                       (declare (not safe))
                       (let ((_%object157605157610%_
                              (##unchecked-structure-ref
                               _%self148401157602%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157606157611%_
                              (##unchecked-structure-ref
                               _%self148401157602%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157606157611%_ _%object157605157610%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161579 __tmp161578 __tmp161577))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!149078%_
       '#f))
    (define _%locked-hash-table::HashTable::update!149080%_
      (lambda (_%self157320%_ _%key157322%_ _%update157323%_ _%default157324%_)
        (let* ((_%self157327%_ _%self157320%_)
               (_%key157336%_ _%key157322%_)
               (_%update157344%_ _%update157323%_)
               (_%default157352%_ _%default157324%_))
          (let ((_%h157361%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157327%_ '1 '#f '#f)))
                (_%l157363%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157327%_ '2 '#f '#f))))
            (let ((__tmp161582
                   (lambda ()
                     (let ((_%self148110157367%_ _%l157363%_))
                       (declare (not safe))
                       (let ((_%object157370157375%_
                              (##unchecked-structure-ref
                               _%self148110157367%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157371157376%_
                              (##unchecked-structure-ref
                               _%self148110157367%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157371157376%_ _%object157370157375%_)))))
                  (__tmp161581
                   (lambda ()
                     (let* ((_%self147213157379%_ _%h157361%_)
                            (_%key157382%_ _%key157336%_)
                            (_%proc157385%_ _%update157344%_)
                            (_%default157388%_ _%default157352%_))
                       (declare (not safe))
                       (let ((_%object157391157396%_
                              (##unchecked-structure-ref
                               _%self147213157379%_
                               '1
                               '#f
                               'update!))
                             (_%method157392157397%_
                              (##unchecked-structure-ref
                               _%self147213157379%_
                               '9
                               '#f
                               'update!)))
                         (_%method157392157397%_
                          _%object157391157396%_
                          _%key157382%_
                          _%proc157385%_
                          _%default157388%_)))))
                  (__tmp161580
                   (lambda ()
                     (let ((_%self148401157400%_ _%l157363%_))
                       (declare (not safe))
                       (let ((_%object157403157408%_
                              (##unchecked-structure-ref
                               _%self148401157400%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157404157409%_
                              (##unchecked-structure-ref
                               _%self148401157400%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157404157409%_ _%object157403157408%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161582 __tmp161581 __tmp161580))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!149080%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!149082%_
      (lambda (_%self157130%_ _%key157132%_)
        (let* ((_%self157135%_ _%self157130%_) (_%key157144%_ _%key157132%_))
          (let ((_%h157153%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157135%_ '1 '#f '#f)))
                (_%l157155%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157135%_ '2 '#f '#f))))
            (let ((__tmp161585
                   (lambda ()
                     (let ((_%self148110157159%_ _%l157155%_))
                       (declare (not safe))
                       (let ((_%object157162157167%_
                              (##unchecked-structure-ref
                               _%self148110157159%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157163157168%_
                              (##unchecked-structure-ref
                               _%self148110157159%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157163157168%_ _%object157162157167%_)))))
                  (__tmp161584
                   (lambda ()
                     (let* ((_%self145725157171%_ _%h157153%_)
                            (_%key157174%_ _%key157144%_))
                       (declare (not safe))
                       (let ((_%object157177157182%_
                              (##unchecked-structure-ref
                               _%self145725157171%_
                               '1
                               '#f
                               'delete!))
                             (_%method157178157183%_
                              (##unchecked-structure-ref
                               _%self145725157171%_
                               '4
                               '#f
                               'delete!)))
                         (_%method157178157183%_
                          _%object157177157182%_
                          _%key157174%_)))))
                  (__tmp161583
                   (lambda ()
                     (let ((_%self148401157186%_ _%l157155%_))
                       (declare (not safe))
                       (let ((_%object157189157194%_
                              (##unchecked-structure-ref
                               _%self148401157186%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157190157195%_
                              (##unchecked-structure-ref
                               _%self148401157186%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157190157195%_ _%object157189157194%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161585 __tmp161584 __tmp161583))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!149082%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each149084%_
      (lambda (_%self156940%_ _%proc156942%_)
        (let* ((_%self156945%_ _%self156940%_) (_%proc156954%_ _%proc156942%_))
          (let ((_%h156963%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156945%_ '1 '#f '#f)))
                (_%l156965%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156945%_ '2 '#f '#f))))
            (let ((__tmp161588
                   (lambda ()
                     (let ((_%self147528156969%_ _%l156965%_))
                       (declare (not safe))
                       (let ((_%object156972156977%_
                              (##unchecked-structure-ref
                               _%self147528156969%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method156973156978%_
                              (##unchecked-structure-ref
                               _%self147528156969%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method156973156978%_ _%object156972156977%_)))))
                  (__tmp161587
                   (lambda ()
                     (let* ((_%self146018156981%_ _%h156963%_)
                            (_%proc156984%_ _%proc156954%_))
                       (declare (not safe))
                       (let ((_%object156987156992%_
                              (##unchecked-structure-ref
                               _%self146018156981%_
                               '1
                               '#f
                               'for-each))
                             (_%method156988156993%_
                              (##unchecked-structure-ref
                               _%self146018156981%_
                               '5
                               '#f
                               'for-each)))
                         (_%method156988156993%_
                          _%object156987156992%_
                          _%proc156984%_)))))
                  (__tmp161586
                   (lambda ()
                     (let ((_%self147819156996%_ _%l156965%_))
                       (declare (not safe))
                       (let ((_%object156999157004%_
                              (##unchecked-structure-ref
                               _%self147819156996%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method157000157005%_
                              (##unchecked-structure-ref
                               _%self147819156996%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method157000157005%_ _%object156999157004%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161588 __tmp161587 __tmp161586))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each149084%_
       '#f))
    (define _%locked-hash-table::HashTable::length149086%_
      (lambda (_%self156755%_)
        (let ((_%self156759%_ _%self156755%_))
          (let ((_%h156769%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156759%_ '1 '#f '#f)))
                (_%l156771%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156759%_ '2 '#f '#f))))
            ((lambda (_%g156773156775%_)
               (let ((_%val156778%_ _%g156773156775%_))
                 (if (fixnum? _%val156778%_)
                     _%val156778%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val156778%_)
                       '#!void))))
             (let ((__tmp161591
                    (lambda ()
                      (let ((_%self147528156782%_ _%l156771%_))
                        (declare (not safe))
                        (let ((_%object156785156790%_
                               (##unchecked-structure-ref
                                _%self147528156782%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method156786156791%_
                               (##unchecked-structure-ref
                                _%self147528156782%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method156786156791%_ _%object156785156790%_)))))
                   (__tmp161590
                    (lambda ()
                      (let ((_%self146329156794%_ _%h156769%_))
                        (declare (not safe))
                        (let ((_%object156797156802%_
                               (##unchecked-structure-ref
                                _%self146329156794%_
                                '1
                                '#f
                                'length))
                              (_%method156798156803%_
                               (##unchecked-structure-ref
                                _%self146329156794%_
                                '6
                                '#f
                                'length)))
                          (_%method156798156803%_ _%object156797156802%_)))))
                   (__tmp161589
                    (lambda ()
                      (let ((_%self147819156806%_ _%l156771%_))
                        (declare (not safe))
                        (let ((_%object156809156814%_
                               (##unchecked-structure-ref
                                _%self147819156806%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method156810156815%_
                               (##unchecked-structure-ref
                                _%self147819156806%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method156810156815%_ _%object156809156814%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp161591 __tmp161590 __tmp161589)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length149086%_
       '#f))
    (define _%locked-hash-table::HashTable::copy149088%_
      (lambda (_%self156574%_)
        (let ((_%self156578%_ _%self156574%_))
          (let ((_%h156588%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156578%_ '1 '#f '#f)))
                (_%l156590%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156578%_ '2 '#f '#f))))
            (let ((_%$obj156629%_
                   (let ((__tmp161594
                          (lambda ()
                            (let ((_%self147528156594%_ _%l156590%_))
                              (declare (not safe))
                              (let ((_%object156597156602%_
                                     (##unchecked-structure-ref
                                      _%self147528156594%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method156598156603%_
                                     (##unchecked-structure-ref
                                      _%self147528156594%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method156598156603%_
                                 _%object156597156602%_)))))
                         (__tmp161593
                          (lambda ()
                            (let ((_%self145431156606%_ _%h156588%_))
                              (declare (not safe))
                              (let ((_%object156609156614%_
                                     (##unchecked-structure-ref
                                      _%self145431156606%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method156610156615%_
                                     (##unchecked-structure-ref
                                      _%self145431156606%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method156610156615%_
                                 _%object156609156614%_)))))
                         (__tmp161592
                          (lambda ()
                            (let ((_%self147819156618%_ _%l156590%_))
                              (declare (not safe))
                              (let ((_%object156621156626%_
                                     (##unchecked-structure-ref
                                      _%self147819156618%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method156622156627%_
                                     (##unchecked-structure-ref
                                      _%self147819156618%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method156622156627%_
                                 _%object156621156626%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp161594 __tmp161593 __tmp161592))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj156629%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj156629%_)))
                       '#t)
                  _%$obj156629%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj156629%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy149088%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!149090%_
      (lambda (_%self156396%_)
        (let ((_%self156400%_ _%self156396%_))
          (let ((_%h156410%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156400%_ '1 '#f '#f)))
                (_%l156412%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156400%_ '2 '#f '#f))))
            (let ((__tmp161597
                   (lambda ()
                     (let ((_%self148110156416%_ _%l156412%_))
                       (declare (not safe))
                       (let ((_%object156419156424%_
                              (##unchecked-structure-ref
                               _%self148110156416%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method156420156425%_
                              (##unchecked-structure-ref
                               _%self148110156416%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method156420156425%_ _%object156419156424%_)))))
                  (__tmp161596
                   (lambda ()
                     (let ((_%self145139156428%_ _%h156410%_))
                       (declare (not safe))
                       (let ((_%object156431156436%_
                              (##unchecked-structure-ref
                               _%self145139156428%_
                               '1
                               '#f
                               'clear!))
                             (_%method156432156437%_
                              (##unchecked-structure-ref
                               _%self145139156428%_
                               '2
                               '#f
                               'clear!)))
                         (_%method156432156437%_ _%object156431156436%_)))))
                  (__tmp161595
                   (lambda ()
                     (let ((_%self148401156440%_ _%l156412%_))
                       (declare (not safe))
                       (let ((_%object156443156448%_
                              (##unchecked-structure-ref
                               _%self148401156440%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method156444156449%_
                              (##unchecked-structure-ref
                               _%self148401156440%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method156444156449%_ _%object156443156448%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161597 __tmp161596 __tmp161595))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!149090%_
       '#f))
    (let* ((_%klass156236%_ (macro-type-mutex))
           (_%id156239%_ 'Locker::read-lock!)
           (_%proc156242%_ mutex-lock!)
           (_%rebind?156245%_ '#f)
           (_%id156250%_ _%id156239%_)
           (_%proc156263%_ _%proc156242%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156236%_
       _%id156250%_
       _%proc156263%_
       _%rebind?156245%_))
    (let* ((_%klass156199%_ (macro-type-mutex))
           (_%id156202%_ 'Locker::read-unlock!)
           (_%proc156205%_ mutex-unlock!)
           (_%rebind?156208%_ '#f)
           (_%id156213%_ _%id156202%_)
           (_%proc156226%_ _%proc156205%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156199%_
       _%id156213%_
       _%proc156226%_
       _%rebind?156208%_))
    (let* ((_%klass156162%_ (macro-type-mutex))
           (_%id156165%_ 'Locker::write-lock!)
           (_%proc156168%_ mutex-lock!)
           (_%rebind?156171%_ '#f)
           (_%id156176%_ _%id156165%_)
           (_%proc156189%_ _%proc156168%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156162%_
       _%id156176%_
       _%proc156189%_
       _%rebind?156171%_))
    (let* ((_%klass156125%_ (macro-type-mutex))
           (_%id156128%_ 'Locker::write-unlock!)
           (_%proc156131%_ mutex-unlock!)
           (_%rebind?156134%_ '#f)
           (_%id156139%_ _%id156128%_)
           (_%proc156152%_ _%proc156131%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156125%_
       _%id156139%_
       _%proc156152%_
       _%rebind?156134%_))
    (define _%checked-hash-table::HashTable::ref149301%_
      (lambda (_%self156066%_ _%key156067%_ _%default156068%_)
        (let* ((_%self156071%_ _%self156066%_)
               (_%key156080%_ _%key156067%_)
               (_%default156088%_ _%default156068%_))
          (declare (not safe))
          (let ((_%h156099%_
                 (##unchecked-structure-ref _%self156071%_ '1 '#f '#f))
                (_%key?156101%_
                 (##unchecked-structure-ref _%self156071%_ '2 '#f '#f)))
            (if ((lambda (_%key?156104%_ _%key156105%_ _%default156106%_)
                   (_%key?156104%_ _%key156105%_))
                 _%key?156101%_
                 _%key156080%_
                 _%default156088%_)
                (let* ((_%self146623156108%_ _%h156099%_)
                       (_%key156111%_ _%key156080%_)
                       (_%default156114%_ _%default156088%_))
                  (declare (not safe))
                  (let ((_%object156117156122%_
                         (##unchecked-structure-ref
                          _%self146623156108%_
                          '1
                          '#f
                          'ref))
                        (_%method156118156123%_
                         (##unchecked-structure-ref
                          _%self146623156108%_
                          '7
                          '#f
                          'ref)))
                    (_%method156118156123%_
                     _%object156117156122%_
                     _%key156111%_
                     _%default156114%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key156080%_ (cons _%default156088%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref149301%_
       '#f))
    (define _%checked-hash-table::HashTable::set!149303%_
      (lambda (_%self155884%_ _%key155885%_ _%value155886%_)
        (let* ((_%self155889%_ _%self155884%_)
               (_%key155898%_ _%key155885%_)
               (_%value155906%_ _%value155886%_))
          (declare (not safe))
          (let ((_%h155917%_
                 (##unchecked-structure-ref _%self155889%_ '1 '#f '#f))
                (_%key?155919%_
                 (##unchecked-structure-ref _%self155889%_ '2 '#f '#f)))
            (if ((lambda (_%key?155922%_ _%key155923%_ _%value155924%_)
                   (_%key?155922%_ _%key155923%_))
                 _%key?155919%_
                 _%key155898%_
                 _%value155906%_)
                (let* ((_%self146918155926%_ _%h155917%_)
                       (_%key155929%_ _%key155898%_)
                       (_%value155932%_ _%value155906%_))
                  (declare (not safe))
                  (let ((_%object155935155940%_
                         (##unchecked-structure-ref
                          _%self146918155926%_
                          '1
                          '#f
                          'set!))
                        (_%method155936155941%_
                         (##unchecked-structure-ref
                          _%self146918155926%_
                          '8
                          '#f
                          'set!)))
                    (_%method155936155941%_
                     _%object155935155940%_
                     _%key155929%_
                     _%value155932%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key155898%_ (cons _%value155906%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!149303%_
       '#f))
    (define _%checked-hash-table::HashTable::update!149305%_
      (lambda (_%self155689%_ _%key155690%_ _%update155691%_ _%default155692%_)
        (let* ((_%self155695%_ _%self155689%_)
               (_%key155704%_ _%key155690%_)
               (_%update155712%_ _%update155691%_)
               (_%default155720%_ _%default155692%_))
          (declare (not safe))
          (let ((_%h155731%_
                 (##unchecked-structure-ref _%self155695%_ '1 '#f '#f))
                (_%key?155733%_
                 (##unchecked-structure-ref _%self155695%_ '2 '#f '#f)))
            (if ((lambda (_%key?155736%_
                          _%key155737%_
                          _%update155738%_
                          _%default155739%_)
                   (_%key?155736%_ _%key155737%_))
                 _%key?155733%_
                 _%key155704%_
                 _%update155712%_
                 _%default155720%_)
                (let* ((_%self147213155741%_ _%h155731%_)
                       (_%key155744%_ _%key155704%_)
                       (_%proc155747%_ _%update155712%_)
                       (_%default155750%_ _%default155720%_))
                  (declare (not safe))
                  (let ((_%object155753155758%_
                         (##unchecked-structure-ref
                          _%self147213155741%_
                          '1
                          '#f
                          'update!))
                        (_%method155754155759%_
                         (##unchecked-structure-ref
                          _%self147213155741%_
                          '9
                          '#f
                          'update!)))
                    (_%method155754155759%_
                     _%object155753155758%_
                     _%key155744%_
                     _%proc155747%_
                     _%default155750%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key155704%_
                         (cons _%update155712%_ (cons _%default155720%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!149305%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!149307%_
      (lambda (_%self155520%_ _%key155521%_)
        (let* ((_%self155524%_ _%self155520%_) (_%key155533%_ _%key155521%_))
          (declare (not safe))
          (let ((_%h155544%_
                 (##unchecked-structure-ref _%self155524%_ '1 '#f '#f))
                (_%key?155546%_
                 (##unchecked-structure-ref _%self155524%_ '2 '#f '#f)))
            (if ((lambda (_%key?155549%_ _%key155550%_)
                   (_%key?155549%_ _%key155550%_))
                 _%key?155546%_
                 _%key155533%_)
                (let* ((_%self145725155552%_ _%h155544%_)
                       (_%key155555%_ _%key155533%_))
                  (declare (not safe))
                  (let ((_%object155558155563%_
                         (##unchecked-structure-ref
                          _%self145725155552%_
                          '1
                          '#f
                          'delete!))
                        (_%method155559155564%_
                         (##unchecked-structure-ref
                          _%self145725155552%_
                          '4
                          '#f
                          'delete!)))
                    (_%method155559155564%_
                     _%object155558155563%_
                     _%key155555%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key155533%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!149307%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each149309%_
      (lambda (_%self155351%_ _%proc155352%_)
        (let* ((_%self155355%_ _%self155351%_) (_%proc155364%_ _%proc155352%_))
          (declare (not safe))
          (let ((_%h155375%_
                 (##unchecked-structure-ref _%self155355%_ '1 '#f '#f))
                (_%key?155377%_
                 (##unchecked-structure-ref _%self155355%_ '2 '#f '#f)))
            (if ((lambda (_%key?155380%_ _%proc155381%_) '#t)
                 _%key?155377%_
                 _%proc155364%_)
                (let* ((_%self146018155383%_ _%h155375%_)
                       (_%proc155386%_ _%proc155364%_))
                  (declare (not safe))
                  (let ((_%object155389155394%_
                         (##unchecked-structure-ref
                          _%self146018155383%_
                          '1
                          '#f
                          'for-each))
                        (_%method155390155395%_
                         (##unchecked-structure-ref
                          _%self146018155383%_
                          '5
                          '#f
                          'for-each)))
                    (_%method155390155395%_
                     _%object155389155394%_
                     _%proc155386%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc155364%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each149309%_
       '#f))
    (define _%checked-hash-table::HashTable::length149311%_
      (lambda (_%self155197%_)
        (let ((_%self155200%_ _%self155197%_))
          (declare (not safe))
          (let ((_%h155212%_
                 (##unchecked-structure-ref _%self155200%_ '1 '#f '#f))
                (_%key?155214%_
                 (##unchecked-structure-ref _%self155200%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146329155217%_ _%h155212%_))
                  (declare (not safe))
                  (let ((_%object155220155225%_
                         (##unchecked-structure-ref
                          _%self146329155217%_
                          '1
                          '#f
                          'length))
                        (_%method155221155226%_
                         (##unchecked-structure-ref
                          _%self146329155217%_
                          '6
                          '#f
                          'length)))
                    (_%method155221155226%_ _%object155220155225%_)))
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
       _%checked-hash-table::HashTable::length149311%_
       '#f))
    (define _%checked-hash-table::HashTable::copy149313%_
      (lambda (_%self155043%_)
        (let ((_%self155046%_ _%self155043%_))
          (declare (not safe))
          (let ((_%h155058%_
                 (##unchecked-structure-ref _%self155046%_ '1 '#f '#f))
                (_%key?155060%_
                 (##unchecked-structure-ref _%self155046%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self145431155063%_ _%h155058%_))
                  (declare (not safe))
                  (let ((_%object155066155071%_
                         (##unchecked-structure-ref
                          _%self145431155063%_
                          '1
                          '#f
                          'copy))
                        (_%method155067155072%_
                         (##unchecked-structure-ref
                          _%self145431155063%_
                          '3
                          '#f
                          'copy)))
                    (_%method155067155072%_ _%object155066155071%_)))
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
       _%checked-hash-table::HashTable::copy149313%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!149315%_
      (lambda (_%self154889%_)
        (let ((_%self154892%_ _%self154889%_))
          (declare (not safe))
          (let ((_%h154904%_
                 (##unchecked-structure-ref _%self154892%_ '1 '#f '#f))
                (_%key?154906%_
                 (##unchecked-structure-ref _%self154892%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self145139154909%_ _%h154904%_))
                  (declare (not safe))
                  (let ((_%object154912154917%_
                         (##unchecked-structure-ref
                          _%self145139154909%_
                          '1
                          '#f
                          'clear!))
                        (_%method154913154918%_
                         (##unchecked-structure-ref
                          _%self145139154909%_
                          '2
                          '#f
                          'clear!)))
                    (_%method154913154918%_ _%object154912154917%_)))
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
       _%checked-hash-table::HashTable::clear!149315%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table154759%_
               _%count154760%_
               _%free154761%_
               _%hash154762%_
               _%test154763%_
               _%seed154764%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table154759%_
           _%count154760%_
           _%free154761%_
           _%hash154762%_
           _%test154763%_
           _%seed154764%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords154169%_
               _%size-hint154159154170%_
               _%seed154160154171%_
               _%test154161154172%_
               _%hash154162154173%_
               _%lock154163154174%_
               _%check154164154175%_
               _%weak-keys154165154176%_
               _%weak-values154166154177%_)
        (let* ((_%size-hint154179%_
                (if (eq? _%size-hint154159154170%_ absent-value)
                    '#f
                    _%size-hint154159154170%_))
               (_%seed154181%_
                (if (eq? _%seed154160154171%_ absent-value)
                    '#f
                    _%seed154160154171%_))
               (_%test154183%_
                (if (eq? _%test154161154172%_ absent-value)
                    equal?
                    _%test154161154172%_))
               (_%hash154185%_
                (if (eq? _%hash154162154173%_ absent-value)
                    '#f
                    _%hash154162154173%_))
               (_%lock154187%_
                (if (eq? _%lock154163154174%_ absent-value)
                    '#f
                    _%lock154163154174%_))
               (_%check154189%_
                (if (eq? _%check154164154175%_ absent-value)
                    '#f
                    _%check154164154175%_))
               (_%weak-keys154191%_
                (if (eq? _%weak-keys154165154176%_ absent-value)
                    '#f
                    _%weak-keys154165154176%_))
               (_%weak-values154193%_
                (if (eq? _%weak-values154166154177%_ absent-value)
                    '#f
                    _%weak-values154166154177%_)))
          (letrec ((_%table-seed154196%_
                    (lambda ()
                      (if (fixnum? _%seed154181%_)
                          _%seed154181%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock154340%_
                    (lambda (_%ht154727%_)
                      (let ((_%ht154730%_ _%ht154727%_))
                        (if _%lock154187%_
                            (let ((_%$obj154742%_
                                   (let ((__tmp161598
                                          (let ((_%$obj154739%_
                                                 _%lock154187%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj154739%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj154739%_)))
                                                     '#t)
                                                _%$obj154739%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj154739%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht154730%_
                                      __tmp161598))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154742%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154742%_)))
                                       '#t)
                                  _%$obj154742%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154742%_))))
                            _%ht154730%_))))
                   (_%wrap-lock154341%_
                    (lambda (_%ht154715%_)
                      (let ((_%ht154718%_ _%ht154715%_))
                        (_%__wrap-lock154340%_ _%ht154718%_))))
                   (_%__wrap-checked154463%_
                    (lambda (_%ht154699%_ _%implicit154700%_)
                      (let ((_%ht154703%_ _%ht154699%_))
                        (if _%check154189%_
                            (let ((_%$obj154712%_
                                   (let ((__tmp161599
                                          (if (procedure? _%check154189%_)
                                              _%check154189%_
                                              _%implicit154700%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht154703%_
                                      __tmp161599))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154712%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154712%_)))
                                       '#t)
                                  _%$obj154712%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154712%_))))
                            _%ht154703%_))))
                   (_%wrap-checked154464%_
                    (lambda (_%ht154686%_ _%implicit154687%_)
                      (let ((_%ht154690%_ _%ht154686%_))
                        (_%__wrap-checked154463%_
                         _%ht154690%_
                         _%implicit154687%_))))
                   (_%make154465%_
                    (lambda (_%kons154634%_
                             _%key?154635%_
                             _%hash154636%_
                             _%test154637%_)
                      (let* ((_%size154640%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint154179%_)))
                             (_%table154642%_
                              (let ((__tmp161600 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size154640%_ __tmp161600)))
                             (_%ht154647%_
                              (let ((_%$obj154644%_
                                     (_%kons154634%_
                                      _%table154642%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size154640%_ '2))
                                      _%hash154636%_
                                      _%test154637%_
                                      (_%table-seed154196%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154644%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154644%_)))
                                         '#t)
                                    _%$obj154644%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154644%_)))))
                             (_%ht154669%_
                              (let* ((_%ht154650%_ _%ht154647%_)
                                     (_%ht154654%_ _%ht154650%_))
                                (_%__wrap-lock154340%_ _%ht154654%_)))
                             (_%implicit154672%_ _%key?154635%_)
                             (_%ht154676%_ _%ht154669%_))
                        (_%__wrap-checked154463%_
                         _%ht154676%_
                         _%implicit154672%_))))
                   (_%make-gc-hash-table154466%_
                    (lambda ()
                      (let* ((_%ht154599%_
                              (let ((_%$obj154596%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint154179%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154596%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154596%_)))
                                         '#t)
                                    _%$obj154596%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154596%_)))))
                             (_%ht154617%_
                              (let* ((_%ht154601%_ _%ht154599%_)
                                     (_%ht154605%_ _%ht154601%_))
                                (_%__wrap-lock154340%_ _%ht154605%_)))
                             (_%implicit154620%_ true)
                             (_%ht154624%_ _%ht154617%_))
                        (_%__wrap-checked154463%_
                         _%ht154624%_
                         _%implicit154620%_))))
                   (_%make-gambit-table154467%_
                    (lambda ()
                      (let* ((_%size154536%_
                              (let ((_%$e154533%_ _%size-hint154179%_))
                                (if _%$e154533%_
                                    _%$e154533%_
                                    (macro-absent-obj))))
                             (_%test154541%_
                              (let ((_%$e154538%_ _%test154183%_))
                                (if _%$e154538%_ _%$e154538%_ equal?)))
                             (_%hash154549%_
                              (let ((_%$e154543%_ _%hash154185%_))
                                (if _%$e154543%_
                                    _%$e154543%_
                                    (if (eq? _%test154541%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test154541%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht154554%_
                              (let ((_%$obj154551%_
                                     (make-table
                                      'size:
                                      _%size154536%_
                                      'test:
                                      _%test154541%_
                                      'hash:
                                      _%hash154549%_
                                      'weak-keys:
                                      _%weak-keys154191%_
                                      'weak-values:
                                      _%weak-values154193%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154551%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154551%_)))
                                         '#t)
                                    _%$obj154551%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154551%_)))))
                             (_%ht154577%_
                              (let* ((_%ht154557%_ _%ht154554%_)
                                     (_%ht154561%_ _%ht154557%_))
                                (_%__wrap-lock154340%_ _%ht154561%_)))
                             (_%implicit154580%_ true)
                             (_%ht154584%_ _%ht154577%_))
                        (_%__wrap-checked154463%_
                         _%ht154584%_
                         _%implicit154580%_)))))
            (if (or _%weak-keys154191%_ _%weak-values154193%_)
                (_%make-gambit-table154467%_)
                (if (and (or (eq? _%test154183%_ eq?)
                             (eq? _%test154183%_ ##eq?))
                         (or (not _%hash154185%_)
                             (eq? _%hash154185%_ eq?-hash)
                             (eq? _%hash154185%_ eq-hash))
                         (not _%seed154181%_))
                    (_%make-gc-hash-table154466%_)
                    (if (and (or (eq? _%test154183%_ eq?)
                                 (eq? _%test154183%_ ##eq?))
                             (or (not _%hash154185%_)
                                 (eq? _%hash154185%_ eq?-hash)
                                 (eq? _%hash154185%_ eq-hash)))
                        (_%make154465%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test154183%_ eqv?)
                                     (eq? _%test154183%_ ##eqv?))
                                 (or (not _%hash154185%_)
                                     (eq? _%hash154185%_ eqv?-hash)
                                     (eq? _%hash154185%_ eqv-hash)))
                            (_%make154465%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test154183%_ eq?)
                                         (eq? _%test154183%_ ##eq?))
                                     (or (eq? _%hash154185%_ symbolic-hash)
                                         (eq? _%hash154185%_ ##symbol-hash)))
                                (_%make154465%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test154183%_ eq?)
                                             (eq? _%test154183%_ ##eq?))
                                         (eq? _%hash154185%_ immediate-hash))
                                    (_%make154465%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test154183%_ equal?)
                                                 (eq? _%test154183%_ ##equal?)
                                                 (eq? _%test154183%_ string=?)
                                                 (eq? _%test154183%_
                                                      ##string=?))
                                             (or (eq? _%hash154185%_
                                                      string-hash)
                                                 (eq? _%hash154185%_
                                                      ##string=?-hash)))
                                        (_%make154465%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test154183%_ equal?)
                                                 (not _%hash154185%_))
                                            (_%make154465%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test154183%_)
                                                (if (procedure? _%hash154185%_)
                                                    (_%make154465%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash154185%_
                                                     _%test154183%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash154185%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test154183%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords154749%_ . _%args154750%_)
        (apply make-hash-table__%
               _%@@keywords154749%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154749%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154749%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154749%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154749%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154749%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154749%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154749%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154749%_
                  'weak-values:
                  absent-value))
               _%args154750%_)))
    (define make-hash-table
      (lambda _%args154167154756%_
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
               _%args154167154756%_)))
    (define make-hash-table-eq
      (lambda _%args154156%_
        (apply make-hash-table 'test: eq? _%args154156%_)))
    (define make-hash-table-eqv
      (lambda _%args154154%_
        (apply make-hash-table 'test: eqv? _%args154154%_)))
    (define make-hash-table-symbolic
      (lambda _%args154152%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args154152%_)))
    (define make-hash-table-string
      (lambda _%args154150%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args154150%_)))
    (define make-hash-table-immediate
      (lambda _%args154148%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args154148%_)))
    (define list->hash-table
      (lambda (_%lst154145%_ . _%args154146%_)
        (list->hash-table!
         _%lst154145%_
         (apply make-hash-table
                'size:
                (length _%lst154145%_)
                _%args154146%_))))
    (define list->hash-table-eq
      (lambda (_%lst154142%_ . _%args154143%_)
        (list->hash-table!
         _%lst154142%_
         (apply make-hash-table-eq
                'size:
                (length _%lst154142%_)
                _%args154143%_))))
    (define list->hash-table-eqv
      (lambda (_%lst154139%_ . _%args154140%_)
        (list->hash-table!
         _%lst154139%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst154139%_)
                _%args154140%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst154136%_ . _%args154137%_)
        (list->hash-table!
         _%lst154136%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst154136%_)
                _%args154137%_))))
    (define list->hash-table-string
      (lambda (_%lst154133%_ . _%args154134%_)
        (list->hash-table!
         _%lst154133%_
         (apply make-hash-table-string
                'size:
                (length _%lst154133%_)
                _%args154134%_))))
    (define list->hash-table-immediate
      (lambda (_%lst154130%_ . _%args154131%_)
        (list->hash-table!
         _%lst154130%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst154130%_)
                _%args154131%_))))
    (define list->hash-table!
      (lambda (_%lst154081%_ _%h154082%_)
        (for-each
         (lambda (_%el154084%_)
           (let* ((_%el154085154092%_ _%el154084%_)
                  (_%E154087154095%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el154085154092%_
                              '([k . v])))
                     '#!void))
                  (_%K154088154118%_
                   (lambda (_%v154098%_ _%k154099%_)
                     (let* ((_%self146918154101%_ _%h154082%_)
                            (_%key154104%_ _%k154099%_)
                            (_%value154107%_ _%v154098%_))
                       (declare (not safe))
                       (let ((_%object154110154115%_
                              (##unchecked-structure-ref
                               _%self146918154101%_
                               '1
                               '#f
                               'set!))
                             (_%method154111154116%_
                              (##unchecked-structure-ref
                               _%self146918154101%_
                               '8
                               '#f
                               'set!)))
                         (_%method154111154116%_
                          _%object154110154115%_
                          _%key154104%_
                          _%value154107%_))))))
             (if (pair? _%el154085154092%_)
                 (let ((_%hd154089154121%_
                        (let ()
                          (declare (not safe))
                          (##car _%el154085154092%_)))
                       (_%tl154090154123%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el154085154092%_))))
                   (let* ((_%k154126%_ _%hd154089154121%_)
                          (_%v154128%_ _%tl154090154123%_))
                     (_%K154088154118%_ _%v154128%_ _%k154126%_)))
                 (_%E154087154095%_))))
         _%lst154081%_)
        _%h154082%_))
    (define plist->hash-table
      (lambda (_%lst154078%_ . _%args154079%_)
        (plist->hash-table!
         _%lst154078%_
         (apply make-hash-table
                'size:
                (length _%lst154078%_)
                _%args154079%_))))
    (define plist->hash-table-eq
      (lambda (_%lst154075%_ . _%args154076%_)
        (plist->hash-table!
         _%lst154075%_
         (apply make-hash-table-eq
                'size:
                (length _%lst154075%_)
                _%args154076%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst154072%_ . _%args154073%_)
        (plist->hash-table!
         _%lst154072%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst154072%_)
                _%args154073%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst154069%_ . _%args154070%_)
        (plist->hash-table!
         _%lst154069%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst154069%_)
                _%args154070%_))))
    (define plist->hash-table-string
      (lambda (_%lst154066%_ . _%args154067%_)
        (plist->hash-table!
         _%lst154066%_
         (apply make-hash-table-string
                'size:
                (length _%lst154066%_)
                _%args154067%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst154063%_ . _%args154064%_)
        (plist->hash-table!
         _%lst154063%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst154063%_)
                _%args154064%_))))
    (define plist->hash-table!
      (lambda (_%lst153986%_ _%h153987%_)
        (let _%loop153989%_ ((_%rest153991%_ _%lst153986%_))
          (let* ((_%rest153992154004%_ _%rest153991%_)
                 (_%else153995154012%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst153986%_)))))
            (let ((_%K153998154044%_
                   (lambda (_%rest154023%_ _%val154024%_ _%key154025%_)
                     (let* ((_%self146918154027%_ _%h153987%_)
                            (_%key154030%_ _%key154025%_)
                            (_%value154033%_ _%val154024%_))
                       (declare (not safe))
                       (let ((_%object154036154041%_
                              (##unchecked-structure-ref
                               _%self146918154027%_
                               '1
                               '#f
                               'set!))
                             (_%method154037154042%_
                              (##unchecked-structure-ref
                               _%self146918154027%_
                               '8
                               '#f
                               'set!)))
                         (_%method154037154042%_
                          _%object154036154041%_
                          _%key154030%_
                          _%value154033%_)))
                     (_%loop153989%_ _%rest154023%_)))
                  (_%K153997154017%_ (lambda () _%h153987%_)))
              (let ((_%try-match153994154020%_
                     (lambda ()
                       (if (null? _%rest153992154004%_)
                           (_%K153997154017%_)
                           (_%else153995154012%_)))))
                (if (pair? _%rest153992154004%_)
                    (let ((_%tl154000154049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest153992154004%_)))
                          (_%hd153999154047%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest153992154004%_))))
                      (if (pair? _%tl154000154049%_)
                          (let ((_%tl154002154056%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl154000154049%_)))
                                (_%hd154001154054%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl154000154049%_))))
                            (let ((_%key154052%_ _%hd153999154047%_)
                                  (_%val154059%_ _%hd154001154054%_)
                                  (_%rest154061%_ _%tl154002154056%_))
                              (_%K153998154044%_
                               _%rest154061%_
                               _%val154059%_
                               _%key154052%_)))
                          (_%else153995154012%_)))
                    (_%try-match153994154020%_))))))))
    (define __hash-length
      (lambda (_%h153935%_)
        (let* ((_%h153938%_ _%h153935%_)
               (_%self146330153947%_ _%h153938%_)
               (_%self146330153954%_
                (let ((_%$obj153951%_ _%self146330153947%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153951%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153951%_)))
                           '#t)
                      _%$obj153951%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153951%_)))))
               (_%self146330153956%_ _%self146330153954%_))
          (if __DEBUG
              (let ((_%val153976%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object153968153973%_
                              (##unchecked-structure-ref
                               _%self146330153956%_
                               '1
                               '#f
                               'length))
                             (_%method153969153974%_
                              (##unchecked-structure-ref
                               _%self146330153956%_
                               '6
                               '#f
                               'length)))
                         (_%method153969153974%_ _%object153968153973%_)))))
                (if (fixnum? _%val153976%_)
                    _%val153976%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val153976%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object153978153983%_
                       (##unchecked-structure-ref
                        _%self146330153956%_
                        '1
                        '#f
                        'length))
                      (_%method153979153984%_
                       (##unchecked-structure-ref
                        _%self146330153956%_
                        '6
                        '#f
                        'length)))
                  (_%method153979153984%_ _%object153978153983%_)))))))
    (define hash-length
      (lambda (_%h149590%_)
        (let* ((_%h149596%_
                (let ((_%$obj149593%_ _%h149590%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149593%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149593%_)))
                           '#t)
                      _%$obj149593%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149593%_)))))
               (_%h149598%_ _%h149596%_))
          (__hash-length _%h149598%_))))
    (define __hash-ref__%
      (lambda (_%h153863%_ _%key153864%_ _%default153865%_)
        (let* ((_%h153868%_ _%h153863%_)
               (_%result153921%_
                (let* ((_%self146624153877%_ _%h153868%_)
                       (_%key153880%_ _%key153864%_)
                       (_%default153883%_ _%default153865%_)
                       (_%self146624153890%_
                        (let ((_%$obj153887%_ _%self146624153877%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153887%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153887%_)))
                                   '#t)
                              _%$obj153887%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153887%_)))))
                       (_%self146624153892%_ _%self146624153890%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object153906153911%_
                               (##unchecked-structure-ref
                                _%self146624153892%_
                                '1
                                '#f
                                'ref))
                              (_%method153907153912%_
                               (##unchecked-structure-ref
                                _%self146624153892%_
                                '7
                                '#f
                                'ref)))
                          (_%method153907153912%_
                           _%object153906153911%_
                           _%key153880%_
                           _%default153883%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153913153918%_
                               (##unchecked-structure-ref
                                _%self146624153892%_
                                '1
                                '#f
                                'ref))
                              (_%method153914153919%_
                               (##unchecked-structure-ref
                                _%self146624153892%_
                                '7
                                '#f
                                'ref)))
                          (_%method153914153919%_
                           _%object153913153918%_
                           _%key153880%_
                           _%default153883%_)))))))
          (if (eq? _%result153921%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h153868%_
               'key:
               _%key153864%_)
              _%result153921%_))))
    (define __hash-ref__0
      (lambda (_%h153926%_ _%key153927%_)
        (let ((_%default153929%_ absent-obj))
          (__hash-ref__% _%h153926%_ _%key153927%_ _%default153929%_))))
    (define __hash-ref
      (lambda _g161601_
        (let ((_g161602_ (let () (declare (not safe)) (##length _g161601_))))
          (cond ((let () (declare (not safe)) (##fx= _g161602_ 2))
                 (apply __hash-ref__0 _g161601_))
                ((let () (declare (not safe)) (##fx= _g161602_ 3))
                 (apply __hash-ref__% _g161601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g161601_))))))
    (define hash-ref__%
      (lambda (_%h149729%_ _%key149730%_ _%default149731%_)
        (let* ((_%h149737%_
                (let ((_%$obj149734%_ _%h149729%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149734%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149734%_)))
                           '#t)
                      _%$obj149734%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149734%_)))))
               (_%h149739%_ _%h149737%_))
          (__hash-ref__% _%h149739%_ _%key149730%_ _%default149731%_))))
    (define hash-ref__0
      (lambda (_%h149752%_ _%key149753%_)
        (let ((_%default149755%_ absent-obj))
          (hash-ref__% _%h149752%_ _%key149753%_ _%default149755%_))))
    (define hash-ref
      (lambda _g161603_
        (let ((_g161604_ (let () (declare (not safe)) (##length _g161603_))))
          (cond ((let () (declare (not safe)) (##fx= _g161604_ 2))
                 (apply hash-ref__0 _g161603_))
                ((let () (declare (not safe)) (##fx= _g161604_ 3))
                 (apply hash-ref__% _g161603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g161603_))))))
    (define __hash-get
      (lambda (_%h153805%_ _%key153806%_)
        (let* ((_%h153809%_ _%h153805%_)
               (_%self146624153818%_ _%h153809%_)
               (_%key153821%_ _%key153806%_)
               (_%default153824%_ '#f)
               (_%self146624153831%_
                (let ((_%$obj153828%_ _%self146624153818%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153828%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153828%_)))
                           '#t)
                      _%$obj153828%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153828%_)))))
               (_%self146624153833%_ _%self146624153831%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153847153852%_
                       (##unchecked-structure-ref
                        _%self146624153833%_
                        '1
                        '#f
                        'ref))
                      (_%method153848153853%_
                       (##unchecked-structure-ref
                        _%self146624153833%_
                        '7
                        '#f
                        'ref)))
                  (_%method153848153853%_
                   _%object153847153852%_
                   _%key153821%_
                   _%default153824%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153854153859%_
                       (##unchecked-structure-ref
                        _%self146624153833%_
                        '1
                        '#f
                        'ref))
                      (_%method153855153860%_
                       (##unchecked-structure-ref
                        _%self146624153833%_
                        '7
                        '#f
                        'ref)))
                  (_%method153855153860%_
                   _%object153854153859%_
                   _%key153821%_
                   _%default153824%_)))))))
    (define hash-get
      (lambda (_%h149881%_ _%key149882%_)
        (let* ((_%h149888%_
                (let ((_%$obj149885%_ _%h149881%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149885%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149885%_)))
                           '#t)
                      _%$obj149885%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149885%_)))))
               (_%h149890%_ _%h149888%_))
          (__hash-get _%h149890%_ _%key149882%_))))
    (define __hash-put!
      (lambda (_%h153747%_ _%key153748%_ _%value153749%_)
        (let* ((_%h153752%_ _%h153747%_)
               (_%self146919153761%_ _%h153752%_)
               (_%key153764%_ _%key153748%_)
               (_%value153767%_ _%value153749%_)
               (_%self146919153774%_
                (let ((_%$obj153771%_ _%self146919153761%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153771%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153771%_)))
                           '#t)
                      _%$obj153771%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153771%_)))))
               (_%self146919153776%_ _%self146919153774%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153790153795%_
                       (##unchecked-structure-ref
                        _%self146919153776%_
                        '1
                        '#f
                        'set!))
                      (_%method153791153796%_
                       (##unchecked-structure-ref
                        _%self146919153776%_
                        '8
                        '#f
                        'set!)))
                  (_%method153791153796%_
                   _%object153790153795%_
                   _%key153764%_
                   _%value153767%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153797153802%_
                       (##unchecked-structure-ref
                        _%self146919153776%_
                        '1
                        '#f
                        'set!))
                      (_%method153798153803%_
                       (##unchecked-structure-ref
                        _%self146919153776%_
                        '8
                        '#f
                        'set!)))
                  (_%method153798153803%_
                   _%object153797153802%_
                   _%key153764%_
                   _%value153767%_)))))))
    (define hash-put!
      (lambda (_%h150020%_ _%key150021%_ _%value150022%_)
        (let* ((_%h150028%_
                (let ((_%$obj150025%_ _%h150020%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150025%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150025%_)))
                           '#t)
                      _%$obj150025%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150025%_)))))
               (_%h150030%_ _%h150028%_))
          (__hash-put! _%h150030%_ _%key150021%_ _%value150022%_))))
    (define __hash-update!__%
      (lambda (_%h153660%_ _%key153661%_ _%update153662%_ _%default153663%_)
        (let* ((_%h153666%_ _%h153660%_)
               (_%self147214153675%_ _%h153666%_)
               (_%key153678%_ _%key153661%_)
               (_%proc153681%_ _%update153662%_)
               (_%default153684%_ _%default153663%_)
               (_%self147214153691%_
                (let ((_%$obj153688%_ _%self147214153675%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153688%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153688%_)))
                           '#t)
                      _%$obj153688%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153688%_)))))
               (_%self147214153693%_ _%self147214153691%_))
          (if (procedure? _%proc153681%_)
              (let ((_%proc153709%_ _%proc153681%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object153718153723%_
                             (##unchecked-structure-ref
                              _%self147214153693%_
                              '1
                              '#f
                              'update!))
                            (_%method153719153724%_
                             (##unchecked-structure-ref
                              _%self147214153693%_
                              '9
                              '#f
                              'update!)))
                        (_%method153719153724%_
                         _%object153718153723%_
                         _%key153678%_
                         _%proc153709%_
                         _%default153684%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object153725153730%_
                             (##unchecked-structure-ref
                              _%self147214153693%_
                              '1
                              '#f
                              'update!))
                            (_%method153726153731%_
                             (##unchecked-structure-ref
                              _%self147214153693%_
                              '9
                              '#f
                              'update!)))
                        (_%method153726153731%_
                         _%object153725153730%_
                         _%key153678%_
                         _%proc153709%_
                         _%default153684%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc153681%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h153736%_ _%key153737%_ _%update153738%_)
        (let ((_%default153740%_ '#!void))
          (__hash-update!__%
           _%h153736%_
           _%key153737%_
           _%update153738%_
           _%default153740%_))))
    (define __hash-update!
      (lambda _g161605_
        (let ((_g161606_ (let () (declare (not safe)) (##length _g161605_))))
          (cond ((let () (declare (not safe)) (##fx= _g161606_ 3))
                 (apply __hash-update!__0 _g161605_))
                ((let () (declare (not safe)) (##fx= _g161606_ 4))
                 (apply __hash-update!__% _g161605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g161605_))))))
    (define hash-update!__%
      (lambda (_%h150161%_ _%key150162%_ _%update150163%_ _%default150164%_)
        (let* ((_%h150170%_
                (let ((_%$obj150167%_ _%h150161%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150167%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150167%_)))
                           '#t)
                      _%$obj150167%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150167%_)))))
               (_%h150172%_ _%h150170%_))
          (__hash-update!__%
           _%h150172%_
           _%key150162%_
           _%update150163%_
           _%default150164%_))))
    (define hash-update!__0
      (lambda (_%h150185%_ _%key150186%_ _%update150187%_)
        (let ((_%default150189%_ '#!void))
          (hash-update!__%
           _%h150185%_
           _%key150186%_
           _%update150187%_
           _%default150189%_))))
    (define hash-update!
      (lambda _g161607_
        (let ((_g161608_ (let () (declare (not safe)) (##length _g161607_))))
          (cond ((let () (declare (not safe)) (##fx= _g161608_ 3))
                 (apply hash-update!__0 _g161607_))
                ((let () (declare (not safe)) (##fx= _g161608_ 4))
                 (apply hash-update!__% _g161607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g161607_))))))
    (define __hash-remove!
      (lambda (_%h153606%_ _%key153607%_)
        (let* ((_%h153610%_ _%h153606%_)
               (_%self145726153619%_ _%h153610%_)
               (_%key153622%_ _%key153607%_)
               (_%self145726153629%_
                (let ((_%$obj153626%_ _%self145726153619%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153626%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153626%_)))
                           '#t)
                      _%$obj153626%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153626%_)))))
               (_%self145726153631%_ _%self145726153629%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153644153649%_
                       (##unchecked-structure-ref
                        _%self145726153631%_
                        '1
                        '#f
                        'delete!))
                      (_%method153645153650%_
                       (##unchecked-structure-ref
                        _%self145726153631%_
                        '4
                        '#f
                        'delete!)))
                  (_%method153645153650%_
                   _%object153644153649%_
                   _%key153622%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153651153656%_
                       (##unchecked-structure-ref
                        _%self145726153631%_
                        '1
                        '#f
                        'delete!))
                      (_%method153652153657%_
                       (##unchecked-structure-ref
                        _%self145726153631%_
                        '4
                        '#f
                        'delete!)))
                  (_%method153652153657%_
                   _%object153651153656%_
                   _%key153622%_)))))))
    (define hash-remove!
      (lambda (_%h150316%_ _%key150317%_)
        (let* ((_%h150323%_
                (let ((_%$obj150320%_ _%h150316%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150320%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150320%_)))
                           '#t)
                      _%$obj150320%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150320%_)))))
               (_%h150325%_ _%h150323%_))
          (__hash-remove! _%h150325%_ _%key150317%_))))
    (define __hash-key?
      (lambda (_%h153549%_ _%k153550%_)
        (let ((_%h153553%_ _%h153549%_))
          (not (eq? (let* ((_%self146624153562%_ _%h153553%_)
                           (_%key153565%_ _%k153550%_)
                           (_%default153568%_ absent-value)
                           (_%self146624153575%_
                            (let ((_%$obj153572%_ _%self146624153562%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj153572%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj153572%_)))
                                       '#t)
                                  _%$obj153572%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj153572%_)))))
                           (_%self146624153577%_ _%self146624153575%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object153591153596%_
                                   (##unchecked-structure-ref
                                    _%self146624153577%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method153592153597%_
                                   (##unchecked-structure-ref
                                    _%self146624153577%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method153592153597%_
                               _%object153591153596%_
                               _%key153565%_
                               _%default153568%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object153598153603%_
                                   (##unchecked-structure-ref
                                    _%self146624153577%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method153599153604%_
                                   (##unchecked-structure-ref
                                    _%self146624153577%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method153599153604%_
                               _%object153598153603%_
                               _%key153565%_
                               _%default153568%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h150455%_ _%k150456%_)
        (let* ((_%h150462%_
                (let ((_%$obj150459%_ _%h150455%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150459%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150459%_)))
                           '#t)
                      _%$obj150459%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150459%_)))))
               (_%h150464%_ _%h150462%_))
          (__hash-key? _%h150464%_ _%k150456%_))))
    (define __hash->list
      (lambda (_%h153481%_)
        (let* ((_%h153484%_ _%h153481%_) (_%lst153493%_ '()))
          (let* ((_%self146019153495%_ _%h153484%_)
                 (_%proc153501%_
                  (lambda (_%k153498%_ _%v153499%_)
                    (set! _%lst153493%_
                          (cons (cons _%k153498%_ _%v153499%_)
                                _%lst153493%_))))
                 (_%self146019153508%_
                  (let ((_%$obj153505%_ _%self146019153495%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153505%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153505%_)))
                             '#t)
                        _%$obj153505%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153505%_)))))
                 (_%self146019153510%_ _%self146019153508%_)
                 (_%proc153525%_ _%proc153501%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153534153539%_
                         (##unchecked-structure-ref
                          _%self146019153510%_
                          '1
                          '#f
                          'for-each))
                        (_%method153535153540%_
                         (##unchecked-structure-ref
                          _%self146019153510%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153535153540%_
                     _%object153534153539%_
                     _%proc153525%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153541153546%_
                         (##unchecked-structure-ref
                          _%self146019153510%_
                          '1
                          '#f
                          'for-each))
                        (_%method153542153547%_
                         (##unchecked-structure-ref
                          _%self146019153510%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153542153547%_
                     _%object153541153546%_
                     _%proc153525%_)))))
          _%lst153493%_)))
    (define hash->list
      (lambda (_%h150594%_)
        (let* ((_%h150600%_
                (let ((_%$obj150597%_ _%h150594%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150597%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150597%_)))
                           '#t)
                      _%$obj150597%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150597%_)))))
               (_%h150602%_ _%h150600%_))
          (__hash->list _%h150602%_))))
    (define __hash->plist
      (lambda (_%h153413%_)
        (let* ((_%h153416%_ _%h153413%_) (_%lst153425%_ '()))
          (let* ((_%self146019153427%_ _%h153416%_)
                 (_%proc153433%_
                  (lambda (_%k153430%_ _%v153431%_)
                    (set! _%lst153425%_
                          (cons _%k153430%_
                                (cons _%v153431%_ _%lst153425%_)))))
                 (_%self146019153440%_
                  (let ((_%$obj153437%_ _%self146019153427%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153437%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153437%_)))
                             '#t)
                        _%$obj153437%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153437%_)))))
                 (_%self146019153442%_ _%self146019153440%_)
                 (_%proc153457%_ _%proc153433%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153466153471%_
                         (##unchecked-structure-ref
                          _%self146019153442%_
                          '1
                          '#f
                          'for-each))
                        (_%method153467153472%_
                         (##unchecked-structure-ref
                          _%self146019153442%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153467153472%_
                     _%object153466153471%_
                     _%proc153457%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153473153478%_
                         (##unchecked-structure-ref
                          _%self146019153442%_
                          '1
                          '#f
                          'for-each))
                        (_%method153474153479%_
                         (##unchecked-structure-ref
                          _%self146019153442%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153474153479%_
                     _%object153473153478%_
                     _%proc153457%_)))))
          _%lst153425%_)))
    (define hash->plist
      (lambda (_%h150732%_)
        (let* ((_%h150738%_
                (let ((_%$obj150735%_ _%h150732%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150735%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150735%_)))
                           '#t)
                      _%$obj150735%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150735%_)))))
               (_%h150740%_ _%h150738%_))
          (__hash->plist _%h150740%_))))
    (define __hash-for-each
      (lambda (_%proc153342%_ _%h153343%_)
        (let* ((_%proc153346%_ _%proc153342%_)
               (_%h153354%_ _%h153343%_)
               (_%self146019153363%_ _%h153354%_)
               (_%proc153366%_ _%proc153346%_)
               (_%self146019153373%_
                (let ((_%$obj153370%_ _%self146019153363%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153370%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153370%_)))
                           '#t)
                      _%$obj153370%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153370%_)))))
               (_%self146019153375%_ _%self146019153373%_)
               (_%proc153389%_ _%proc153366%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153398153403%_
                       (##unchecked-structure-ref
                        _%self146019153375%_
                        '1
                        '#f
                        'for-each))
                      (_%method153399153404%_
                       (##unchecked-structure-ref
                        _%self146019153375%_
                        '5
                        '#f
                        'for-each)))
                  (_%method153399153404%_
                   _%object153398153403%_
                   _%proc153389%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153405153410%_
                       (##unchecked-structure-ref
                        _%self146019153375%_
                        '1
                        '#f
                        'for-each))
                      (_%method153406153411%_
                       (##unchecked-structure-ref
                        _%self146019153375%_
                        '5
                        '#f
                        'for-each)))
                  (_%method153406153411%_
                   _%object153405153410%_
                   _%proc153389%_)))))))
    (define hash-for-each
      (lambda (_%proc150870%_ _%h150871%_)
        (if (procedure? _%proc150870%_)
            (let* ((_%proc150875%_ _%proc150870%_)
                   (_%h150887%_
                    (let ((_%$obj150884%_ _%h150871%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150884%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150884%_)))
                               '#t)
                          _%$obj150884%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150884%_)))))
                   (_%h150889%_ _%h150887%_))
              (__hash-for-each _%proc150875%_ _%h150889%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc150870%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc153265%_ _%h153266%_)
        (let* ((_%proc153269%_ _%proc153265%_)
               (_%h153277%_ _%h153266%_)
               (_%result153286%_ '()))
          (let* ((_%self146019153288%_ _%h153277%_)
                 (_%proc153294%_
                  (lambda (_%k153291%_ _%v153292%_)
                    (set! _%result153286%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc153269%_ _%k153291%_ _%v153292%_))
                                _%result153286%_))))
                 (_%self146019153301%_
                  (let ((_%$obj153298%_ _%self146019153288%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153298%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153298%_)))
                             '#t)
                        _%$obj153298%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153298%_)))))
                 (_%self146019153303%_ _%self146019153301%_)
                 (_%proc153318%_ _%proc153294%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153327153332%_
                         (##unchecked-structure-ref
                          _%self146019153303%_
                          '1
                          '#f
                          'for-each))
                        (_%method153328153333%_
                         (##unchecked-structure-ref
                          _%self146019153303%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153328153333%_
                     _%object153327153332%_
                     _%proc153318%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153334153339%_
                         (##unchecked-structure-ref
                          _%self146019153303%_
                          '1
                          '#f
                          'for-each))
                        (_%method153335153340%_
                         (##unchecked-structure-ref
                          _%self146019153303%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153335153340%_
                     _%object153334153339%_
                     _%proc153318%_)))))
          _%result153286%_)))
    (define hash-map
      (lambda (_%proc151019%_ _%h151020%_)
        (if (procedure? _%proc151019%_)
            (let* ((_%proc151024%_ _%proc151019%_)
                   (_%h151036%_
                    (let ((_%$obj151033%_ _%h151020%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151033%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151033%_)))
                               '#t)
                          _%$obj151033%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151033%_)))))
                   (_%h151038%_ _%h151036%_))
              (__hash-map _%proc151024%_ _%h151038%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc151019%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc153187%_ _%iv153188%_ _%h153189%_)
        (let* ((_%proc153192%_ _%proc153187%_)
               (_%h153200%_ _%h153189%_)
               (_%result153209%_ _%iv153188%_))
          (let* ((_%self146019153211%_ _%h153200%_)
                 (_%proc153217%_
                  (lambda (_%k153214%_ _%v153215%_)
                    (set! _%result153209%_
                          (let ()
                            (declare (not safe))
                            (_%proc153192%_
                             _%k153214%_
                             _%v153215%_
                             _%result153209%_)))))
                 (_%self146019153224%_
                  (let ((_%$obj153221%_ _%self146019153211%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153221%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153221%_)))
                             '#t)
                        _%$obj153221%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153221%_)))))
                 (_%self146019153226%_ _%self146019153224%_)
                 (_%proc153241%_ _%proc153217%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153250153255%_
                         (##unchecked-structure-ref
                          _%self146019153226%_
                          '1
                          '#f
                          'for-each))
                        (_%method153251153256%_
                         (##unchecked-structure-ref
                          _%self146019153226%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153251153256%_
                     _%object153250153255%_
                     _%proc153241%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153257153262%_
                         (##unchecked-structure-ref
                          _%self146019153226%_
                          '1
                          '#f
                          'for-each))
                        (_%method153258153263%_
                         (##unchecked-structure-ref
                          _%self146019153226%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153258153263%_
                     _%object153257153262%_
                     _%proc153241%_)))))
          _%result153209%_)))
    (define hash-fold
      (lambda (_%proc151168%_ _%iv151169%_ _%h151170%_)
        (if (procedure? _%proc151168%_)
            (let* ((_%proc151174%_ _%proc151168%_)
                   (_%h151186%_
                    (let ((_%$obj151183%_ _%h151170%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151183%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151183%_)))
                               '#t)
                          _%$obj151183%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151183%_)))))
                   (_%h151188%_ _%h151186%_))
              (__hash-fold _%proc151174%_ _%iv151169%_ _%h151188%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc151168%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc153094%_ _%h153095%_ _%default-value153096%_)
        (let* ((_%proc153099%_ _%proc153094%_)
               (_%h153107%_ _%h153095%_)
               (__tmp161609
                (lambda (_%return153116%_)
                  (let* ((_%self146019153118%_ _%h153107%_)
                         (_%proc153127%_
                          (lambda (_%k153121%_ _%v153122%_)
                            (let ((_%$e153124%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc153099%_
                                      _%k153121%_
                                      _%v153122%_))))
                              (if _%$e153124%_
                                  (_%return153116%_ _%$e153124%_)
                                  '#!void))))
                         (_%self146019153134%_
                          (let ((_%$obj153131%_ _%self146019153118%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj153131%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj153131%_)))
                                     '#t)
                                _%$obj153131%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj153131%_)))))
                         (_%self146019153136%_ _%self146019153134%_)
                         (_%proc153151%_ _%proc153127%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object153160153165%_
                                 (##unchecked-structure-ref
                                  _%self146019153136%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153161153166%_
                                 (##unchecked-structure-ref
                                  _%self146019153136%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153161153166%_
                             _%object153160153165%_
                             _%proc153151%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object153167153172%_
                                 (##unchecked-structure-ref
                                  _%self146019153136%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153168153173%_
                                 (##unchecked-structure-ref
                                  _%self146019153136%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153168153173%_
                             _%object153167153172%_
                             _%proc153151%_)))))
                  _%default-value153096%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp161609))))
    (define __hash-find__0
      (lambda (_%proc153178%_ _%h153179%_)
        (let ((_%default-value153181%_ '#f))
          (__hash-find__%
           _%proc153178%_
           _%h153179%_
           _%default-value153181%_))))
    (define __hash-find
      (lambda _g161610_
        (let ((_g161611_ (let () (declare (not safe)) (##length _g161610_))))
          (cond ((let () (declare (not safe)) (##fx= _g161611_ 2))
                 (apply __hash-find__0 _g161610_))
                ((let () (declare (not safe)) (##fx= _g161611_ 3))
                 (apply __hash-find__% _g161610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g161610_))))))
    (define hash-find__%
      (lambda (_%proc151319%_ _%h151320%_ _%default-value151321%_)
        (if (procedure? _%proc151319%_)
            (let* ((_%proc151325%_ _%proc151319%_)
                   (_%h151337%_
                    (let ((_%$obj151334%_ _%h151320%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151334%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151334%_)))
                               '#t)
                          _%$obj151334%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151334%_)))))
                   (_%h151339%_ _%h151337%_))
              (__hash-find__%
               _%proc151325%_
               _%h151339%_
               _%default-value151321%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc151319%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc151352%_ _%h151353%_)
        (let ((_%default-value151355%_ '#f))
          (hash-find__% _%proc151352%_ _%h151353%_ _%default-value151355%_))))
    (define hash-find
      (lambda _g161612_
        (let ((_g161613_ (let () (declare (not safe)) (##length _g161612_))))
          (cond ((let () (declare (not safe)) (##fx= _g161613_ 2))
                 (apply hash-find__0 _g161612_))
                ((let () (declare (not safe)) (##fx= _g161613_ 3))
                 (apply hash-find__% _g161612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g161612_))))))
    (define __hash-keys
      (lambda (_%h153025%_)
        (let* ((_%h153028%_ _%h153025%_) (_%result153037%_ '()))
          (let* ((_%self146019153039%_ _%h153028%_)
                 (_%proc153045%_
                  (lambda (_%k153042%_ _%v153043%_)
                    (set! _%result153037%_
                          (cons _%k153042%_ _%result153037%_))))
                 (_%self146019153052%_
                  (let ((_%$obj153049%_ _%self146019153039%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153049%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153049%_)))
                             '#t)
                        _%$obj153049%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153049%_)))))
                 (_%self146019153054%_ _%self146019153052%_)
                 (_%proc153069%_ _%proc153045%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153078153083%_
                         (##unchecked-structure-ref
                          _%self146019153054%_
                          '1
                          '#f
                          'for-each))
                        (_%method153079153084%_
                         (##unchecked-structure-ref
                          _%self146019153054%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153079153084%_
                     _%object153078153083%_
                     _%proc153069%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153085153090%_
                         (##unchecked-structure-ref
                          _%self146019153054%_
                          '1
                          '#f
                          'for-each))
                        (_%method153086153091%_
                         (##unchecked-structure-ref
                          _%self146019153054%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153086153091%_
                     _%object153085153090%_
                     _%proc153069%_)))))
          _%result153037%_)))
    (define hash-keys
      (lambda (_%h151481%_)
        (let* ((_%h151487%_
                (let ((_%$obj151484%_ _%h151481%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151484%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151484%_)))
                           '#t)
                      _%$obj151484%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151484%_)))))
               (_%h151489%_ _%h151487%_))
          (__hash-keys _%h151489%_))))
    (define __hash-values
      (lambda (_%h152957%_)
        (let* ((_%h152960%_ _%h152957%_) (_%result152969%_ '()))
          (let* ((_%self146019152971%_ _%h152960%_)
                 (_%proc152977%_
                  (lambda (_%k152974%_ _%v152975%_)
                    (set! _%result152969%_
                          (cons _%v152975%_ _%result152969%_))))
                 (_%self146019152984%_
                  (let ((_%$obj152981%_ _%self146019152971%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152981%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152981%_)))
                             '#t)
                        _%$obj152981%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152981%_)))))
                 (_%self146019152986%_ _%self146019152984%_)
                 (_%proc153001%_ _%proc152977%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153010153015%_
                         (##unchecked-structure-ref
                          _%self146019152986%_
                          '1
                          '#f
                          'for-each))
                        (_%method153011153016%_
                         (##unchecked-structure-ref
                          _%self146019152986%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153011153016%_
                     _%object153010153015%_
                     _%proc153001%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153017153022%_
                         (##unchecked-structure-ref
                          _%self146019152986%_
                          '1
                          '#f
                          'for-each))
                        (_%method153018153023%_
                         (##unchecked-structure-ref
                          _%self146019152986%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153018153023%_
                     _%object153017153022%_
                     _%proc153001%_)))))
          _%result152969%_)))
    (define hash-values
      (lambda (_%h151619%_)
        (let* ((_%h151625%_
                (let ((_%$obj151622%_ _%h151619%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151622%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151622%_)))
                           '#t)
                      _%$obj151622%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151622%_)))))
               (_%h151627%_ _%h151625%_))
          (__hash-values _%h151627%_))))
    (define __hash-copy
      (lambda (_%h152906%_)
        (let* ((_%h152909%_ _%h152906%_)
               (_%self145432152918%_ _%h152909%_)
               (_%self145432152925%_
                (let ((_%$obj152922%_ _%self145432152918%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152922%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152922%_)))
                           '#t)
                      _%$obj152922%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152922%_)))))
               (_%self145432152927%_ _%self145432152925%_))
          (if __DEBUG
              (let ((_%$obj152947%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object152939152944%_
                              (##unchecked-structure-ref
                               _%self145432152927%_
                               '1
                               '#f
                               'copy))
                             (_%method152940152945%_
                              (##unchecked-structure-ref
                               _%self145432152927%_
                               '3
                               '#f
                               'copy)))
                         (_%method152940152945%_ _%object152939152944%_)))))
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
                      (cast HashTable::interface _%$obj152947%_))))
              (let ()
                (declare (not safe))
                (let ((_%object152949152954%_
                       (##unchecked-structure-ref
                        _%self145432152927%_
                        '1
                        '#f
                        'copy))
                      (_%method152950152955%_
                       (##unchecked-structure-ref
                        _%self145432152927%_
                        '3
                        '#f
                        'copy)))
                  (_%method152950152955%_ _%object152949152954%_)))))))
    (define hash-copy
      (lambda (_%h151757%_)
        (let* ((_%h151763%_
                (let ((_%$obj151760%_ _%h151757%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151760%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151760%_)))
                           '#t)
                      _%$obj151760%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151760%_)))))
               (_%h151765%_ _%h151763%_))
          (__hash-copy _%h151765%_))))
    (define __hash-clear!
      (lambda (_%h152858%_)
        (let* ((_%h152861%_ _%h152858%_)
               (_%self145140152870%_ _%h152861%_)
               (_%self145140152877%_
                (let ((_%$obj152874%_ _%self145140152870%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152874%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152874%_)))
                           '#t)
                      _%$obj152874%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152874%_)))))
               (_%self145140152879%_ _%self145140152877%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object152891152896%_
                       (##unchecked-structure-ref
                        _%self145140152879%_
                        '1
                        '#f
                        'clear!))
                      (_%method152892152897%_
                       (##unchecked-structure-ref
                        _%self145140152879%_
                        '2
                        '#f
                        'clear!)))
                  (_%method152892152897%_ _%object152891152896%_)))
              (let ()
                (declare (not safe))
                (let ((_%object152898152903%_
                       (##unchecked-structure-ref
                        _%self145140152879%_
                        '1
                        '#f
                        'clear!))
                      (_%method152899152904%_
                       (##unchecked-structure-ref
                        _%self145140152879%_
                        '2
                        '#f
                        'clear!)))
                  (_%method152899152904%_ _%object152898152903%_)))))))
    (define hash-clear!
      (lambda (_%h151895%_)
        (let* ((_%h151901%_
                (let ((_%$obj151898%_ _%h151895%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151898%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151898%_)))
                           '#t)
                      _%$obj151898%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151898%_)))))
               (_%h151903%_ _%h151901%_))
          (__hash-clear! _%h151903%_))))
    (define __hash-merge
      (lambda (_%h152804%_ . _%rest152805%_)
        (let* ((_%h152808%_ _%h152804%_)
               (_%copy152856%_
                (let* ((_%self145432152817%_ _%h152808%_)
                       (_%self145432152824%_
                        (let ((_%$obj152821%_ _%self145432152817%_))
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
                       (_%self145432152826%_ _%self145432152824%_))
                  (if __DEBUG
                      (let ((_%$obj152846%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object152838152843%_
                                      (##unchecked-structure-ref
                                       _%self145432152826%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method152839152844%_
                                      (##unchecked-structure-ref
                                       _%self145432152826%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method152839152844%_
                                  _%object152838152843%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj152846%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj152846%_)))
                                 '#t)
                            _%$obj152846%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj152846%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object152848152853%_
                               (##unchecked-structure-ref
                                _%self145432152826%_
                                '1
                                '#f
                                'copy))
                              (_%method152849152854%_
                               (##unchecked-structure-ref
                                _%self145432152826%_
                                '3
                                '#f
                                'copy)))
                          (_%method152849152854%_ _%object152848152853%_)))))))
          (apply hash-merge! _%copy152856%_ _%rest152805%_)
          _%copy152856%_)))
    (define hash-merge
      (lambda (_%h152033%_ . _%rest152034%_)
        (let* ((_%h152040%_
                (let ((_%$obj152037%_ _%h152033%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152037%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152037%_)))
                           '#t)
                      _%$obj152037%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152037%_)))))
               (_%h152042%_ _%h152040%_))
          (declare (not safe))
          (##apply __hash-merge _%h152042%_ _%rest152034%_))))
    (define __hash-merge-right
      (lambda (_%h152750%_ . _%rest152751%_)
        (let* ((_%h152754%_ _%h152750%_)
               (_%copy152802%_
                (let* ((_%self145432152763%_ _%h152754%_)
                       (_%self145432152770%_
                        (let ((_%$obj152767%_ _%self145432152763%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj152767%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj152767%_)))
                                   '#t)
                              _%$obj152767%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj152767%_)))))
                       (_%self145432152772%_ _%self145432152770%_))
                  (if __DEBUG
                      (let ((_%$obj152792%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object152784152789%_
                                      (##unchecked-structure-ref
                                       _%self145432152772%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method152785152790%_
                                      (##unchecked-structure-ref
                                       _%self145432152772%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method152785152790%_
                                  _%object152784152789%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj152792%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj152792%_)))
                                 '#t)
                            _%$obj152792%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj152792%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object152794152799%_
                               (##unchecked-structure-ref
                                _%self145432152772%_
                                '1
                                '#f
                                'copy))
                              (_%method152795152800%_
                               (##unchecked-structure-ref
                                _%self145432152772%_
                                '3
                                '#f
                                'copy)))
                          (_%method152795152800%_ _%object152794152799%_)))))))
          (apply hash-merge-right! _%copy152802%_ _%rest152751%_)
          _%copy152802%_)))
    (define hash-merge-right
      (lambda (_%h152172%_ . _%rest152173%_)
        (let* ((_%h152179%_
                (let ((_%$obj152176%_ _%h152172%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152176%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152176%_)))
                           '#t)
                      _%$obj152176%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152176%_)))))
               (_%h152181%_ _%h152179%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h152181%_ _%rest152173%_))))
    (define __hash-merge!
      (lambda (_%h152598%_ . _%rest152599%_)
        (let ((_%h152602%_ _%h152598%_))
          (let ((__tmp161614
                 (lambda (_%hr152611%_)
                   (let* ((_%hr152617%_
                           (let ((_%$obj152614%_ _%hr152611%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152614%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152614%_)))
                                      '#t)
                                 _%$obj152614%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152614%_)))))
                          (_%hr152619%_ _%hr152617%_)
                          (_%self146019152632%_ _%hr152619%_)
                          (_%proc152707%_
                           (lambda (_%k152635%_ _%v152636%_)
                             (if (let* ((_%h152638%_ _%h152602%_)
                                        (_%k152641%_ _%k152635%_)
                                        (_%h152648%_
                                         (let ((_%$obj152645%_ _%h152638%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj152645%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj152645%_)))
                                                    '#t)
                                               _%$obj152645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj152645%_)))))
                                        (_%h152650%_ _%h152648%_))
                                   (__hash-key? _%h152650%_ _%k152641%_))
                                 '#!void
                                 (let* ((_%self146919152666%_ _%h152602%_)
                                        (_%key152669%_ _%k152635%_)
                                        (_%value152672%_ _%v152636%_)
                                        (_%self146919152679%_
                                         (let ((_%$obj152676%_
                                                _%self146919152666%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj152676%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj152676%_)))
                                                    '#t)
                                               _%$obj152676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj152676%_)))))
                                        (_%self146919152681%_
                                         _%self146919152679%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object152692152697%_
                                                (##unchecked-structure-ref
                                                 _%self146919152681%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method152693152698%_
                                                (##unchecked-structure-ref
                                                 _%self146919152681%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method152693152698%_
                                            _%object152692152697%_
                                            _%key152669%_
                                            _%value152672%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object152699152704%_
                                                (##unchecked-structure-ref
                                                 _%self146919152681%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method152700152705%_
                                                (##unchecked-structure-ref
                                                 _%self146919152681%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method152700152705%_
                                            _%object152699152704%_
                                            _%key152669%_
                                            _%value152672%_))))))))
                          (_%self146019152714%_
                           (let ((_%$obj152711%_ _%self146019152632%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152711%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152711%_)))
                                      '#t)
                                 _%$obj152711%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152711%_)))))
                          (_%self146019152716%_ _%self146019152714%_)
                          (_%proc152726%_ _%proc152707%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object152735152740%_
                                  (##unchecked-structure-ref
                                   _%self146019152716%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152736152741%_
                                  (##unchecked-structure-ref
                                   _%self146019152716%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152736152741%_
                              _%object152735152740%_
                              _%proc152726%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object152742152747%_
                                  (##unchecked-structure-ref
                                   _%self146019152716%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152743152748%_
                                  (##unchecked-structure-ref
                                   _%self146019152716%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152743152748%_
                              _%object152742152747%_
                              _%proc152726%_))))))))
            (declare (not safe))
            (##for-each __tmp161614 _%rest152599%_))
          _%h152602%_)))
    (define hash-merge!
      (lambda (_%h152311%_ . _%rest152312%_)
        (let* ((_%h152318%_
                (let ((_%$obj152315%_ _%h152311%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152315%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152315%_)))
                           '#t)
                      _%$obj152315%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152315%_)))))
               (_%h152320%_ _%h152318%_))
          (declare (not safe))
          (##apply __hash-merge! _%h152320%_ _%rest152312%_))))
    (define __hash-merge-right!
      (lambda (_%h152469%_ . _%rest152470%_)
        (let ((_%h152473%_ _%h152469%_))
          (let ((__tmp161615
                 (lambda (_%hr152482%_)
                   (let* ((_%hr152488%_
                           (let ((_%$obj152485%_ _%hr152482%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152485%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152485%_)))
                                      '#t)
                                 _%$obj152485%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152485%_)))))
                          (_%hr152490%_ _%hr152488%_)
                          (_%self146019152503%_ _%hr152490%_)
                          (_%proc152555%_
                           (lambda (_%k152506%_ _%v152507%_)
                             (let* ((_%self146919152509%_ _%h152473%_)
                                    (_%key152512%_ _%k152506%_)
                                    (_%value152515%_ _%v152507%_)
                                    (_%self146919152522%_
                                     (let ((_%$obj152519%_
                                            _%self146919152509%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj152519%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj152519%_)))
                                                '#t)
                                           _%$obj152519%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj152519%_)))))
                                    (_%self146919152524%_
                                     _%self146919152522%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object152540152545%_
                                            (##unchecked-structure-ref
                                             _%self146919152524%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method152541152546%_
                                            (##unchecked-structure-ref
                                             _%self146919152524%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method152541152546%_
                                        _%object152540152545%_
                                        _%key152512%_
                                        _%value152515%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object152547152552%_
                                            (##unchecked-structure-ref
                                             _%self146919152524%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method152548152553%_
                                            (##unchecked-structure-ref
                                             _%self146919152524%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method152548152553%_
                                        _%object152547152552%_
                                        _%key152512%_
                                        _%value152515%_)))))))
                          (_%self146019152562%_
                           (let ((_%$obj152559%_ _%self146019152503%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152559%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152559%_)))
                                      '#t)
                                 _%$obj152559%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152559%_)))))
                          (_%self146019152564%_ _%self146019152562%_)
                          (_%proc152574%_ _%proc152555%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object152583152588%_
                                  (##unchecked-structure-ref
                                   _%self146019152564%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152584152589%_
                                  (##unchecked-structure-ref
                                   _%self146019152564%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152584152589%_
                              _%object152583152588%_
                              _%proc152574%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object152590152595%_
                                  (##unchecked-structure-ref
                                   _%self146019152564%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152591152596%_
                                  (##unchecked-structure-ref
                                   _%self146019152564%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152591152596%_
                              _%object152590152595%_
                              _%proc152574%_))))))))
            (declare (not safe))
            (##for-each __tmp161615 _%rest152470%_))
          _%h152473%_)))
    (define hash-merge-right!
      (lambda (_%h152450%_ . _%rest152451%_)
        (let* ((_%h152457%_
                (let ((_%$obj152454%_ _%h152450%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152454%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152454%_)))
                           '#t)
                      _%$obj152454%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152454%_)))))
               (_%h152459%_ _%h152457%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h152459%_ _%rest152451%_))))))
