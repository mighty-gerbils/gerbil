(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1773012984)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp162143 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp162143
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args160885%_
        (apply make-instance UnboundKeyError::t _%$args160885%_)))
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
      (lambda (_%where160759%_ _%message160760%_ . _%irritants160761%_)
        (let ((__tmp162144
               (let ((__obj162135
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj162135
                    _%message160760%_
                    'where:
                    _%where160759%_
                    'irritants:
                    _%irritants160761%_))
                 __obj162135)))
          (declare (not safe))
          (raise __tmp162144))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp162145 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp162145
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj162137
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj162137
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj162137))
    (define make-HashTable
      (lambda (_%obj160757%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj160757%_))))
    (define try-HashTable
      (lambda (_%obj160755%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj160755%_))))
    (define HashTable?
      (lambda (_%obj160753%_)
        (let ((__tmp162146
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj160753%_ __tmp162146))))
    (define is-HashTable?
      (lambda (_%obj160750%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj160750%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self145740145984%_)
        (let ((_%self145740145986%_ _%self145740145984%_))
          (declare (not safe))
          (let ((_%object145993145998%_
                 (##unchecked-structure-ref
                  _%self145740145986%_
                  '1
                  '#f
                  'clear!))
                (_%method145994145999%_
                 (##unchecked-structure-ref
                  _%self145740145986%_
                  '2
                  '#f
                  'clear!)))
            (_%method145994145999%_ _%object145993145998%_)))))
    (define ::HashTable-clear!
      (lambda (_%self145741146001%_)
        (let* ((_%self145741146006%_
                (let ((_%$obj146003%_ _%self145741146001%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146003%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146003%_)))
                           '#t)
                      _%$obj146003%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146003%_)))))
               (_%self145741146008%_ _%self145741146006%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146016146021%_
                       (##unchecked-structure-ref
                        _%self145741146008%_
                        '1
                        '#f
                        'clear!))
                      (_%method146017146022%_
                       (##unchecked-structure-ref
                        _%self145741146008%_
                        '2
                        '#f
                        'clear!)))
                  (_%method146017146022%_ _%object146016146021%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146023146028%_
                       (##unchecked-structure-ref
                        _%self145741146008%_
                        '1
                        '#f
                        'clear!))
                      (_%method146024146029%_
                       (##unchecked-structure-ref
                        _%self145741146008%_
                        '2
                        '#f
                        'clear!)))
                  (_%method146024146029%_ _%object146023146028%_)))))))
    (define __HashTable-copy
      (lambda (_%self146032146275%_)
        (let ((_%self146032146277%_ _%self146032146275%_))
          (declare (not safe))
          (let ((_%object146284146289%_
                 (##unchecked-structure-ref _%self146032146277%_ '1 '#f 'copy))
                (_%method146285146290%_
                 (##unchecked-structure-ref
                  _%self146032146277%_
                  '3
                  '#f
                  'copy)))
            (_%method146285146290%_ _%object146284146289%_)))))
    (define ::HashTable-copy
      (lambda (_%self146033146292%_)
        (let* ((_%self146033146297%_
                (let ((_%$obj146294%_ _%self146033146292%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146294%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146294%_)))
                           '#t)
                      _%$obj146294%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146294%_)))))
               (_%self146033146299%_ _%self146033146297%_))
          (if __DEBUG
              (let ((_%$obj146315%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object146307146312%_
                              (##unchecked-structure-ref
                               _%self146033146299%_
                               '1
                               '#f
                               'copy))
                             (_%method146308146313%_
                              (##unchecked-structure-ref
                               _%self146033146299%_
                               '3
                               '#f
                               'copy)))
                         (_%method146308146313%_ _%object146307146312%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj146315%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj146315%_)))
                         '#t)
                    _%$obj146315%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj146315%_))))
              (let ()
                (declare (not safe))
                (let ((_%object146317146322%_
                       (##unchecked-structure-ref
                        _%self146033146299%_
                        '1
                        '#f
                        'copy))
                      (_%method146318146323%_
                       (##unchecked-structure-ref
                        _%self146033146299%_
                        '3
                        '#f
                        'copy)))
                  (_%method146318146323%_ _%object146317146322%_)))))))
    (define __HashTable-delete!
      (lambda (_%self146326146569%_ _%key146570%_)
        (let ((_%self146326146572%_ _%self146326146569%_))
          (declare (not safe))
          (let ((_%object146579146584%_
                 (##unchecked-structure-ref
                  _%self146326146572%_
                  '1
                  '#f
                  'delete!))
                (_%method146580146585%_
                 (##unchecked-structure-ref
                  _%self146326146572%_
                  '4
                  '#f
                  'delete!)))
            (_%method146580146585%_ _%object146579146584%_ _%key146570%_)))))
    (define ::HashTable-delete!
      (lambda (_%self146327146587%_ _%key146588%_)
        (let* ((_%self146327146593%_
                (let ((_%$obj146590%_ _%self146327146587%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146590%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146590%_)))
                           '#t)
                      _%$obj146590%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146590%_)))))
               (_%self146327146595%_ _%self146327146593%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146603146608%_
                       (##unchecked-structure-ref
                        _%self146327146595%_
                        '1
                        '#f
                        'delete!))
                      (_%method146604146609%_
                       (##unchecked-structure-ref
                        _%self146327146595%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146604146609%_
                   _%object146603146608%_
                   _%key146588%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146610146615%_
                       (##unchecked-structure-ref
                        _%self146327146595%_
                        '1
                        '#f
                        'delete!))
                      (_%method146611146616%_
                       (##unchecked-structure-ref
                        _%self146327146595%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146611146616%_
                   _%object146610146615%_
                   _%key146588%_)))))))
    (define __HashTable-for-each
      (lambda (_%self146619146862%_ _%proc146863%_)
        (let* ((_%self146619146865%_ _%self146619146862%_)
               (_%proc146872%_ _%proc146863%_))
          (declare (not safe))
          (let ((_%object146880146885%_
                 (##unchecked-structure-ref
                  _%self146619146865%_
                  '1
                  '#f
                  'for-each))
                (_%method146881146886%_
                 (##unchecked-structure-ref
                  _%self146619146865%_
                  '5
                  '#f
                  'for-each)))
            (_%method146881146886%_ _%object146880146885%_ _%proc146872%_)))))
    (define ::HashTable-for-each
      (lambda (_%self146620146888%_ _%proc146889%_)
        (let* ((_%self146620146894%_
                (let ((_%$obj146891%_ _%self146620146888%_))
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
               (_%self146620146896%_ _%self146620146894%_))
          (if (procedure? _%proc146889%_)
              (let ((_%proc146905%_ _%proc146889%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object146914146919%_
                             (##unchecked-structure-ref
                              _%self146620146896%_
                              '1
                              '#f
                              'for-each))
                            (_%method146915146920%_
                             (##unchecked-structure-ref
                              _%self146620146896%_
                              '5
                              '#f
                              'for-each)))
                        (_%method146915146920%_
                         _%object146914146919%_
                         _%proc146905%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object146921146926%_
                             (##unchecked-structure-ref
                              _%self146620146896%_
                              '1
                              '#f
                              'for-each))
                            (_%method146922146927%_
                             (##unchecked-structure-ref
                              _%self146620146896%_
                              '5
                              '#f
                              'for-each)))
                        (_%method146922146927%_
                         _%object146921146926%_
                         _%proc146905%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc146889%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self146930147173%_)
        (let ((_%self146930147175%_ _%self146930147173%_))
          (declare (not safe))
          (let ((_%object147182147187%_
                 (##unchecked-structure-ref
                  _%self146930147175%_
                  '1
                  '#f
                  'length))
                (_%method147183147188%_
                 (##unchecked-structure-ref
                  _%self146930147175%_
                  '6
                  '#f
                  'length)))
            (_%method147183147188%_ _%object147182147187%_)))))
    (define ::HashTable-length
      (lambda (_%self146931147190%_)
        (let* ((_%self146931147195%_
                (let ((_%$obj147192%_ _%self146931147190%_))
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
               (_%self146931147197%_ _%self146931147195%_))
          (if __DEBUG
              (let ((_%val147213%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object147205147210%_
                              (##unchecked-structure-ref
                               _%self146931147197%_
                               '1
                               '#f
                               'length))
                             (_%method147206147211%_
                              (##unchecked-structure-ref
                               _%self146931147197%_
                               '6
                               '#f
                               'length)))
                         (_%method147206147211%_ _%object147205147210%_)))))
                (if (fixnum? _%val147213%_)
                    _%val147213%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val147213%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object147215147220%_
                       (##unchecked-structure-ref
                        _%self146931147197%_
                        '1
                        '#f
                        'length))
                      (_%method147216147221%_
                       (##unchecked-structure-ref
                        _%self146931147197%_
                        '6
                        '#f
                        'length)))
                  (_%method147216147221%_ _%object147215147220%_)))))))
    (define __HashTable-ref
      (lambda (_%self147224147467%_ _%key147468%_ _%default147469%_)
        (let ((_%self147224147471%_ _%self147224147467%_))
          (declare (not safe))
          (let ((_%object147478147483%_
                 (##unchecked-structure-ref _%self147224147471%_ '1 '#f 'ref))
                (_%method147479147484%_
                 (##unchecked-structure-ref _%self147224147471%_ '7 '#f 'ref)))
            (_%method147479147484%_
             _%object147478147483%_
             _%key147468%_
             _%default147469%_)))))
    (define ::HashTable-ref
      (lambda (_%self147225147486%_ _%key147487%_ _%default147488%_)
        (let* ((_%self147225147493%_
                (let ((_%$obj147490%_ _%self147225147486%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147490%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147490%_)))
                           '#t)
                      _%$obj147490%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147490%_)))))
               (_%self147225147495%_ _%self147225147493%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147503147508%_
                       (##unchecked-structure-ref
                        _%self147225147495%_
                        '1
                        '#f
                        'ref))
                      (_%method147504147509%_
                       (##unchecked-structure-ref
                        _%self147225147495%_
                        '7
                        '#f
                        'ref)))
                  (_%method147504147509%_
                   _%object147503147508%_
                   _%key147487%_
                   _%default147488%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147510147515%_
                       (##unchecked-structure-ref
                        _%self147225147495%_
                        '1
                        '#f
                        'ref))
                      (_%method147511147516%_
                       (##unchecked-structure-ref
                        _%self147225147495%_
                        '7
                        '#f
                        'ref)))
                  (_%method147511147516%_
                   _%object147510147515%_
                   _%key147487%_
                   _%default147488%_)))))))
    (define __HashTable-set!
      (lambda (_%self147519147762%_ _%key147763%_ _%value147764%_)
        (let ((_%self147519147766%_ _%self147519147762%_))
          (declare (not safe))
          (let ((_%object147773147778%_
                 (##unchecked-structure-ref _%self147519147766%_ '1 '#f 'set!))
                (_%method147774147779%_
                 (##unchecked-structure-ref
                  _%self147519147766%_
                  '8
                  '#f
                  'set!)))
            (_%method147774147779%_
             _%object147773147778%_
             _%key147763%_
             _%value147764%_)))))
    (define ::HashTable-set!
      (lambda (_%self147520147781%_ _%key147782%_ _%value147783%_)
        (let* ((_%self147520147788%_
                (let ((_%$obj147785%_ _%self147520147781%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147785%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147785%_)))
                           '#t)
                      _%$obj147785%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147785%_)))))
               (_%self147520147790%_ _%self147520147788%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147798147803%_
                       (##unchecked-structure-ref
                        _%self147520147790%_
                        '1
                        '#f
                        'set!))
                      (_%method147799147804%_
                       (##unchecked-structure-ref
                        _%self147520147790%_
                        '8
                        '#f
                        'set!)))
                  (_%method147799147804%_
                   _%object147798147803%_
                   _%key147782%_
                   _%value147783%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147805147810%_
                       (##unchecked-structure-ref
                        _%self147520147790%_
                        '1
                        '#f
                        'set!))
                      (_%method147806147811%_
                       (##unchecked-structure-ref
                        _%self147520147790%_
                        '8
                        '#f
                        'set!)))
                  (_%method147806147811%_
                   _%object147805147810%_
                   _%key147782%_
                   _%value147783%_)))))))
    (define __HashTable-update!
      (lambda (_%self147814148057%_
               _%key148058%_
               _%proc148059%_
               _%default148060%_)
        (let* ((_%self147814148062%_ _%self147814148057%_)
               (_%proc148069%_ _%proc148059%_))
          (declare (not safe))
          (let ((_%object148077148082%_
                 (##unchecked-structure-ref
                  _%self147814148062%_
                  '1
                  '#f
                  'update!))
                (_%method148078148083%_
                 (##unchecked-structure-ref
                  _%self147814148062%_
                  '9
                  '#f
                  'update!)))
            (_%method148078148083%_
             _%object148077148082%_
             _%key148058%_
             _%proc148069%_
             _%default148060%_)))))
    (define ::HashTable-update!
      (lambda (_%self147815148085%_
               _%key148086%_
               _%proc148087%_
               _%default148088%_)
        (let* ((_%self147815148093%_
                (let ((_%$obj148090%_ _%self147815148085%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148090%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148090%_)))
                           '#t)
                      _%$obj148090%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148090%_)))))
               (_%self147815148095%_ _%self147815148093%_))
          (if (procedure? _%proc148087%_)
              (let ((_%proc148104%_ _%proc148087%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object148113148118%_
                             (##unchecked-structure-ref
                              _%self147815148095%_
                              '1
                              '#f
                              'update!))
                            (_%method148114148119%_
                             (##unchecked-structure-ref
                              _%self147815148095%_
                              '9
                              '#f
                              'update!)))
                        (_%method148114148119%_
                         _%object148113148118%_
                         _%key148086%_
                         _%proc148104%_
                         _%default148088%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object148120148125%_
                             (##unchecked-structure-ref
                              _%self147815148095%_
                              '1
                              '#f
                              'update!))
                            (_%method148121148126%_
                             (##unchecked-structure-ref
                              _%self147815148095%_
                              '9
                              '#f
                              'update!)))
                        (_%method148121148126%_
                         _%object148120148125%_
                         _%key148086%_
                         _%proc148104%_
                         _%default148088%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc148087%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp162147 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp162147
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj162139
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj162139
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj162139))
    (define make-Locker
      (lambda (_%obj160748%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj160748%_))))
    (define try-Locker
      (lambda (_%obj160746%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj160746%_))))
    (define Locker?
      (lambda (_%obj160744%_)
        (let ((__tmp162148
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj160744%_ __tmp162148))))
    (define is-Locker?
      (lambda (_%obj160741%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj160741%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self148129148372%_)
        (let ((_%self148129148374%_ _%self148129148372%_))
          (declare (not safe))
          (let ((_%object148381148386%_
                 (##unchecked-structure-ref
                  _%self148129148374%_
                  '1
                  '#f
                  'read-lock!))
                (_%method148382148387%_
                 (##unchecked-structure-ref
                  _%self148129148374%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method148382148387%_ _%object148381148386%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self148130148389%_)
        (let* ((_%self148130148394%_
                (let ((_%$obj148391%_ _%self148130148389%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148391%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148391%_)))
                           '#t)
                      _%$obj148391%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148391%_)))))
               (_%self148130148396%_ _%self148130148394%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148404148409%_
                       (##unchecked-structure-ref
                        _%self148130148396%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method148405148410%_
                       (##unchecked-structure-ref
                        _%self148130148396%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method148405148410%_ _%object148404148409%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148411148416%_
                       (##unchecked-structure-ref
                        _%self148130148396%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method148412148417%_
                       (##unchecked-structure-ref
                        _%self148130148396%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method148412148417%_ _%object148411148416%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self148420148663%_)
        (let ((_%self148420148665%_ _%self148420148663%_))
          (declare (not safe))
          (let ((_%object148672148677%_
                 (##unchecked-structure-ref
                  _%self148420148665%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method148673148678%_
                 (##unchecked-structure-ref
                  _%self148420148665%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method148673148678%_ _%object148672148677%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self148421148680%_)
        (let* ((_%self148421148685%_
                (let ((_%$obj148682%_ _%self148421148680%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148682%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148682%_)))
                           '#t)
                      _%$obj148682%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148682%_)))))
               (_%self148421148687%_ _%self148421148685%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148695148700%_
                       (##unchecked-structure-ref
                        _%self148421148687%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148696148701%_
                       (##unchecked-structure-ref
                        _%self148421148687%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148696148701%_ _%object148695148700%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148702148707%_
                       (##unchecked-structure-ref
                        _%self148421148687%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148703148708%_
                       (##unchecked-structure-ref
                        _%self148421148687%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148703148708%_ _%object148702148707%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self148711148954%_)
        (let ((_%self148711148956%_ _%self148711148954%_))
          (declare (not safe))
          (let ((_%object148963148968%_
                 (##unchecked-structure-ref
                  _%self148711148956%_
                  '1
                  '#f
                  'write-lock!))
                (_%method148964148969%_
                 (##unchecked-structure-ref
                  _%self148711148956%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method148964148969%_ _%object148963148968%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self148712148971%_)
        (let* ((_%self148712148976%_
                (let ((_%$obj148973%_ _%self148712148971%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148973%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148973%_)))
                           '#t)
                      _%$obj148973%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148973%_)))))
               (_%self148712148978%_ _%self148712148976%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148986148991%_
                       (##unchecked-structure-ref
                        _%self148712148978%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method148987148992%_
                       (##unchecked-structure-ref
                        _%self148712148978%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method148987148992%_ _%object148986148991%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148993148998%_
                       (##unchecked-structure-ref
                        _%self148712148978%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method148994148999%_
                       (##unchecked-structure-ref
                        _%self148712148978%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method148994148999%_ _%object148993148998%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self149002149245%_)
        (let ((_%self149002149247%_ _%self149002149245%_))
          (declare (not safe))
          (let ((_%object149254149259%_
                 (##unchecked-structure-ref
                  _%self149002149247%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method149255149260%_
                 (##unchecked-structure-ref
                  _%self149002149247%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method149255149260%_ _%object149254149259%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self149003149262%_)
        (let* ((_%self149003149267%_
                (let ((_%$obj149264%_ _%self149003149262%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149264%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149264%_)))
                           '#t)
                      _%$obj149264%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj149264%_)))))
               (_%self149003149269%_ _%self149003149267%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object149277149282%_
                       (##unchecked-structure-ref
                        _%self149003149269%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method149278149283%_
                       (##unchecked-structure-ref
                        _%self149003149269%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method149278149283%_ _%object149277149282%_)))
              (let ()
                (declare (not safe))
                (let ((_%object149284149289%_
                       (##unchecked-structure-ref
                        _%self149003149269%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method149285149290%_
                       (##unchecked-structure-ref
                        _%self149003149269%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method149285149290%_ _%object149284149289%_)))))))
    (let* ((_%klass160704%_ __table::t)
           (_%id160707%_ 'HashTable::ref)
           (_%proc160710%_ raw-table-ref)
           (_%rebind?160713%_ '#f)
           (_%id160718%_ _%id160707%_)
           (_%proc160731%_ _%proc160710%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160704%_
       _%id160718%_
       _%proc160731%_
       _%rebind?160713%_))
    (let* ((_%klass160667%_ __table::t)
           (_%id160670%_ 'HashTable::set!)
           (_%proc160673%_ raw-table-set!)
           (_%rebind?160676%_ '#f)
           (_%id160681%_ _%id160670%_)
           (_%proc160694%_ _%proc160673%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160667%_
       _%id160681%_
       _%proc160694%_
       _%rebind?160676%_))
    (let* ((_%klass160630%_ __table::t)
           (_%id160633%_ 'HashTable::update!)
           (_%proc160636%_ raw-table-update!)
           (_%rebind?160639%_ '#f)
           (_%id160644%_ _%id160633%_)
           (_%proc160657%_ _%proc160636%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160630%_
       _%id160644%_
       _%proc160657%_
       _%rebind?160639%_))
    (let* ((_%klass160593%_ __table::t)
           (_%id160596%_ 'HashTable::delete!)
           (_%proc160599%_ raw-table-delete!)
           (_%rebind?160602%_ '#f)
           (_%id160607%_ _%id160596%_)
           (_%proc160620%_ _%proc160599%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160593%_
       _%id160607%_
       _%proc160620%_
       _%rebind?160602%_))
    (let* ((_%klass160556%_ __table::t)
           (_%id160559%_ 'HashTable::for-each)
           (_%proc160562%_ raw-table-for-each)
           (_%rebind?160565%_ '#f)
           (_%id160570%_ _%id160559%_)
           (_%proc160583%_ _%proc160562%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160556%_
       _%id160570%_
       _%proc160583%_
       _%rebind?160565%_))
    (let* ((_%klass160519%_ __table::t)
           (_%id160522%_ 'HashTable::length)
           (_%proc160525%_ &raw-table-count)
           (_%rebind?160528%_ '#f)
           (_%id160533%_ _%id160522%_)
           (_%proc160546%_ _%proc160525%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160519%_
       _%id160533%_
       _%proc160546%_
       _%rebind?160528%_))
    (let* ((_%klass160482%_ __table::t)
           (_%id160485%_ 'HashTable::copy)
           (_%proc160488%_ raw-table-copy)
           (_%rebind?160491%_ '#f)
           (_%id160496%_ _%id160485%_)
           (_%proc160509%_ _%proc160488%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160482%_
       _%id160496%_
       _%proc160509%_
       _%rebind?160491%_))
    (let* ((_%klass160445%_ __table::t)
           (_%id160448%_ 'HashTable::clear!)
           (_%proc160451%_ raw-table-clear!)
           (_%rebind?160454%_ '#f)
           (_%id160459%_ _%id160448%_)
           (_%proc160472%_ _%proc160451%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160445%_
       _%id160459%_
       _%proc160472%_
       _%rebind?160454%_))
    (let* ((_%klass160408%_ __gc-table::t)
           (_%id160411%_ 'HashTable::ref)
           (_%proc160414%_ gc-table-ref)
           (_%rebind?160417%_ '#f)
           (_%id160422%_ _%id160411%_)
           (_%proc160435%_ _%proc160414%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160408%_
       _%id160422%_
       _%proc160435%_
       _%rebind?160417%_))
    (let* ((_%klass160371%_ __gc-table::t)
           (_%id160374%_ 'HashTable::set!)
           (_%proc160377%_ gc-table-set!)
           (_%rebind?160380%_ '#f)
           (_%id160385%_ _%id160374%_)
           (_%proc160398%_ _%proc160377%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160371%_
       _%id160385%_
       _%proc160398%_
       _%rebind?160380%_))
    (let* ((_%klass160334%_ __gc-table::t)
           (_%id160337%_ 'HashTable::update!)
           (_%proc160340%_ gc-table-update!)
           (_%rebind?160343%_ '#f)
           (_%id160348%_ _%id160337%_)
           (_%proc160361%_ _%proc160340%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160334%_
       _%id160348%_
       _%proc160361%_
       _%rebind?160343%_))
    (let* ((_%klass160297%_ __gc-table::t)
           (_%id160300%_ 'HashTable::delete!)
           (_%proc160303%_ gc-table-delete!)
           (_%rebind?160306%_ '#f)
           (_%id160311%_ _%id160300%_)
           (_%proc160324%_ _%proc160303%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160297%_
       _%id160311%_
       _%proc160324%_
       _%rebind?160306%_))
    (let* ((_%klass160260%_ __gc-table::t)
           (_%id160263%_ 'HashTable::for-each)
           (_%proc160266%_ gc-table-for-each)
           (_%rebind?160269%_ '#f)
           (_%id160274%_ _%id160263%_)
           (_%proc160287%_ _%proc160266%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160260%_
       _%id160274%_
       _%proc160287%_
       _%rebind?160269%_))
    (let* ((_%klass160223%_ __gc-table::t)
           (_%id160226%_ 'HashTable::length)
           (_%proc160229%_ gc-table-length)
           (_%rebind?160232%_ '#f)
           (_%id160237%_ _%id160226%_)
           (_%proc160250%_ _%proc160229%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160223%_
       _%id160237%_
       _%proc160250%_
       _%rebind?160232%_))
    (let* ((_%klass160186%_ __gc-table::t)
           (_%id160189%_ 'HashTable::copy)
           (_%proc160192%_ gc-table-copy)
           (_%rebind?160195%_ '#f)
           (_%id160200%_ _%id160189%_)
           (_%proc160213%_ _%proc160192%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160186%_
       _%id160200%_
       _%proc160213%_
       _%rebind?160195%_))
    (let* ((_%klass160149%_ __gc-table::t)
           (_%id160152%_ 'HashTable::clear!)
           (_%proc160155%_ gc-table-clear!)
           (_%rebind?160158%_ '#f)
           (_%id160163%_ _%id160152%_)
           (_%proc160176%_ _%proc160155%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160149%_
       _%id160163%_
       _%proc160176%_
       _%rebind?160158%_))
    (define gambit-table-update!
      (lambda (_%table160142%_
               _%key160143%_
               _%update160144%_
               _%default160145%_)
        (let ((_%result160147%_
               (table-ref _%table160142%_ _%key160143%_ _%default160145%_)))
          (table-set!
           _%table160142%_
           _%key160143%_
           (_%update160144%_ _%default160145%_)))))
    (define gambit-table-for-each
      (lambda (_%table160139%_ _%proc160140%_)
        (table-for-each _%proc160140%_ _%table160139%_)))
    (define gambit-table-clear!
      (lambda (_%table160137%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table160137%_ '0 '5 '#f '#f))))
    (let* ((_%klass160100%_ (macro-type-table))
           (_%id160103%_ 'HashTable::ref)
           (_%proc160106%_ table-ref)
           (_%rebind?160109%_ '#f)
           (_%id160114%_ _%id160103%_)
           (_%proc160127%_ _%proc160106%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160100%_
       _%id160114%_
       _%proc160127%_
       _%rebind?160109%_))
    (let* ((_%klass160063%_ (macro-type-table))
           (_%id160066%_ 'HashTable::set!)
           (_%proc160069%_ table-set!)
           (_%rebind?160072%_ '#f)
           (_%id160077%_ _%id160066%_)
           (_%proc160090%_ _%proc160069%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160063%_
       _%id160077%_
       _%proc160090%_
       _%rebind?160072%_))
    (let* ((_%klass160026%_ (macro-type-table))
           (_%id160029%_ 'HashTable::update!)
           (_%proc160032%_ gambit-table-update!)
           (_%rebind?160035%_ '#f)
           (_%id160040%_ _%id160029%_)
           (_%proc160053%_ _%proc160032%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160026%_
       _%id160040%_
       _%proc160053%_
       _%rebind?160035%_))
    (let* ((_%klass159989%_ (macro-type-table))
           (_%id159992%_ 'HashTable::delete!)
           (_%proc159995%_ table-set!)
           (_%rebind?159998%_ '#f)
           (_%id160003%_ _%id159992%_)
           (_%proc160016%_ _%proc159995%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159989%_
       _%id160003%_
       _%proc160016%_
       _%rebind?159998%_))
    (let* ((_%klass159952%_ (macro-type-table))
           (_%id159955%_ 'HashTable::for-each)
           (_%proc159958%_ gambit-table-for-each)
           (_%rebind?159961%_ '#f)
           (_%id159966%_ _%id159955%_)
           (_%proc159979%_ _%proc159958%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159952%_
       _%id159966%_
       _%proc159979%_
       _%rebind?159961%_))
    (let* ((_%klass159915%_ (macro-type-table))
           (_%id159918%_ 'HashTable::length)
           (_%proc159921%_ table-length)
           (_%rebind?159924%_ '#f)
           (_%id159929%_ _%id159918%_)
           (_%proc159942%_ _%proc159921%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159915%_
       _%id159929%_
       _%proc159942%_
       _%rebind?159924%_))
    (let* ((_%klass159878%_ (macro-type-table))
           (_%id159881%_ 'HashTable::copy)
           (_%proc159884%_ table-copy)
           (_%rebind?159887%_ '#f)
           (_%id159892%_ _%id159881%_)
           (_%proc159905%_ _%proc159884%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159878%_
       _%id159892%_
       _%proc159905%_
       _%rebind?159887%_))
    (let* ((_%klass159841%_ (macro-type-table))
           (_%id159844%_ 'HashTable::clear!)
           (_%proc159847%_ gambit-table-clear!)
           (_%rebind?159850%_ '#f)
           (_%id159855%_ _%id159844%_)
           (_%proc159868%_ _%proc159847%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159841%_
       _%id159855%_
       _%proc159868%_
       _%rebind?159850%_))
    (define hash-table::t
      (let* ((_%slots159804%_ '(table count free hash test seed))
             (_%slot-vector159806%_ (list->vector (cons '#f _%slots159804%_)))
             (_%slot-table159832%_
              (let ((_%slot-table159808%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp162151
                       (lambda (_%slot159810%_ _%field159811%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159808%_
                            _%slot159810%_
                            _%field159811%_))
                         (let ((__tmp162152
                                (let ((_%sym159813%_ _%slot159810%_))
                                  (if (symbol? _%sym159813%_)
                                      (let ((_%sym159818%_ _%sym159813%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym159818%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym159813%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159808%_
                            __tmp162152
                            _%field159811%_))))
                      (__tmp162149
                       (let ((__tmp162150
                              (let ()
                                (declare (not safe))
                                (##length _%slots159804%_))))
                         (declare (not safe))
                         (##iota __tmp162150 '1))))
                  (declare (not safe))
                  (##for-each __tmp162151 _%slots159804%_ __tmp162149))
                _%slot-table159808%_))
             (_%flags159834%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields159836%_ '#())
             (_%properties159838%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots159804%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp162153 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags159834%_
         __table::t
         _%fields159836%_
         __tmp162153
         _%slot-vector159806%_
         _%slot-table159832%_
         _%properties159838%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots159767%_ '(gcht immediate))
             (_%slot-vector159769%_ (list->vector (cons '#f _%slots159767%_)))
             (_%slot-table159795%_
              (let ((_%slot-table159771%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp162156
                       (lambda (_%slot159773%_ _%field159774%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159771%_
                            _%slot159773%_
                            _%field159774%_))
                         (let ((__tmp162157
                                (let ((_%sym159776%_ _%slot159773%_))
                                  (if (symbol? _%sym159776%_)
                                      (let ((_%sym159781%_ _%sym159776%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym159781%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym159776%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159771%_
                            __tmp162157
                            _%field159774%_))))
                      (__tmp162154
                       (let ((__tmp162155
                              (let ()
                                (declare (not safe))
                                (##length _%slots159767%_))))
                         (declare (not safe))
                         (##iota __tmp162155 '1))))
                  (declare (not safe))
                  (##for-each __tmp162156 _%slots159767%_ __tmp162154))
                _%slot-table159771%_))
             (_%flags159797%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields159799%_ '#())
             (_%properties159801%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots159767%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp162158 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags159797%_
         __gc-table::t
         _%fields159799%_
         __tmp162158
         _%slot-vector159769%_
         _%slot-table159795%_
         _%properties159801%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp162160 (list))
            (__tmp162159
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp162160
         '(table lock)
         __tmp162159
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args159764%_
        (apply make-instance locked-hash-table::t _%$args159764%_)))
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
      (let ((__tmp162162 (list))
            (__tmp162161
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp162162
         '(table key-check)
         __tmp162161
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args159761%_
        (apply make-instance checked-hash-table::t _%$args159761%_)))
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
      (let ((__tmp162164 (list hash-table::t))
            (__tmp162163 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp162164
         '()
         __tmp162163
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args159758%_
        (apply make-instance eq-hash-table::t _%$args159758%_)))
    (define eqv-hash-table::t
      (let ((__tmp162166 (list hash-table::t))
            (__tmp162165 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp162166
         '()
         __tmp162165
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args159755%_
        (apply make-instance eqv-hash-table::t _%$args159755%_)))
    (define symbol-hash-table::t
      (let ((__tmp162168 (list hash-table::t))
            (__tmp162167 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp162168
         '()
         __tmp162167
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args159752%_
        (apply make-instance symbol-hash-table::t _%$args159752%_)))
    (define string-hash-table::t
      (let ((__tmp162170 (list hash-table::t))
            (__tmp162169 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp162170
         '()
         __tmp162169
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args159749%_
        (apply make-instance string-hash-table::t _%$args159749%_)))
    (define immediate-hash-table::t
      (let ((__tmp162172 (list hash-table::t))
            (__tmp162171 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp162172
         '()
         __tmp162171
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args159746%_
        (apply make-instance immediate-hash-table::t _%$args159746%_)))
    (let* ((_%klass159709%_ hash-table::t)
           (_%id159712%_ 'HashTable::ref)
           (_%proc159715%_ raw-table-ref)
           (_%rebind?159718%_ '#f)
           (_%id159723%_ _%id159712%_)
           (_%proc159736%_ _%proc159715%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159709%_
       _%id159723%_
       _%proc159736%_
       _%rebind?159718%_))
    (let* ((_%klass159672%_ hash-table::t)
           (_%id159675%_ 'HashTable::set!)
           (_%proc159678%_ raw-table-set!)
           (_%rebind?159681%_ '#f)
           (_%id159686%_ _%id159675%_)
           (_%proc159699%_ _%proc159678%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159672%_
       _%id159686%_
       _%proc159699%_
       _%rebind?159681%_))
    (let* ((_%klass159635%_ hash-table::t)
           (_%id159638%_ 'HashTable::update!)
           (_%proc159641%_ raw-table-update!)
           (_%rebind?159644%_ '#f)
           (_%id159649%_ _%id159638%_)
           (_%proc159662%_ _%proc159641%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159635%_
       _%id159649%_
       _%proc159662%_
       _%rebind?159644%_))
    (let* ((_%klass159598%_ hash-table::t)
           (_%id159601%_ 'HashTable::delete!)
           (_%proc159604%_ raw-table-delete!)
           (_%rebind?159607%_ '#f)
           (_%id159612%_ _%id159601%_)
           (_%proc159625%_ _%proc159604%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159598%_
       _%id159612%_
       _%proc159625%_
       _%rebind?159607%_))
    (let* ((_%klass159561%_ hash-table::t)
           (_%id159564%_ 'HashTable::for-each)
           (_%proc159567%_ raw-table-for-each)
           (_%rebind?159570%_ '#f)
           (_%id159575%_ _%id159564%_)
           (_%proc159588%_ _%proc159567%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159561%_
       _%id159575%_
       _%proc159588%_
       _%rebind?159570%_))
    (let* ((_%klass159524%_ hash-table::t)
           (_%id159527%_ 'HashTable::length)
           (_%proc159530%_ &raw-table-count)
           (_%rebind?159533%_ '#f)
           (_%id159538%_ _%id159527%_)
           (_%proc159551%_ _%proc159530%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159524%_
       _%id159538%_
       _%proc159551%_
       _%rebind?159533%_))
    (let* ((_%klass159487%_ hash-table::t)
           (_%id159490%_ 'HashTable::copy)
           (_%proc159493%_ raw-table-copy)
           (_%rebind?159496%_ '#f)
           (_%id159501%_ _%id159490%_)
           (_%proc159514%_ _%proc159493%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159487%_
       _%id159501%_
       _%proc159514%_
       _%rebind?159496%_))
    (let* ((_%klass159450%_ hash-table::t)
           (_%id159453%_ 'HashTable::clear!)
           (_%proc159456%_ raw-table-clear!)
           (_%rebind?159459%_ '#f)
           (_%id159464%_ _%id159453%_)
           (_%proc159477%_ _%proc159456%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159450%_
       _%id159464%_
       _%proc159477%_
       _%rebind?159459%_))
    (let* ((_%klass159413%_ eq-hash-table::t)
           (_%id159416%_ 'HashTable::ref)
           (_%proc159419%_ eq-table-ref)
           (_%rebind?159422%_ '#f)
           (_%id159427%_ _%id159416%_)
           (_%proc159440%_ _%proc159419%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159413%_
       _%id159427%_
       _%proc159440%_
       _%rebind?159422%_))
    (let* ((_%klass159376%_ eq-hash-table::t)
           (_%id159379%_ 'HashTable::set!)
           (_%proc159382%_ eq-table-set!)
           (_%rebind?159385%_ '#f)
           (_%id159390%_ _%id159379%_)
           (_%proc159403%_ _%proc159382%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159376%_
       _%id159390%_
       _%proc159403%_
       _%rebind?159385%_))
    (let* ((_%klass159339%_ eq-hash-table::t)
           (_%id159342%_ 'HashTable::update!)
           (_%proc159345%_ eq-table-update!)
           (_%rebind?159348%_ '#f)
           (_%id159353%_ _%id159342%_)
           (_%proc159366%_ _%proc159345%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159339%_
       _%id159353%_
       _%proc159366%_
       _%rebind?159348%_))
    (let* ((_%klass159302%_ eq-hash-table::t)
           (_%id159305%_ 'HashTable::delete!)
           (_%proc159308%_ eq-table-delete!)
           (_%rebind?159311%_ '#f)
           (_%id159316%_ _%id159305%_)
           (_%proc159329%_ _%proc159308%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159302%_
       _%id159316%_
       _%proc159329%_
       _%rebind?159311%_))
    (let* ((_%klass159265%_ eqv-hash-table::t)
           (_%id159268%_ 'HashTable::ref)
           (_%proc159271%_ eqv-table-ref)
           (_%rebind?159274%_ '#f)
           (_%id159279%_ _%id159268%_)
           (_%proc159292%_ _%proc159271%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159265%_
       _%id159279%_
       _%proc159292%_
       _%rebind?159274%_))
    (let* ((_%klass159228%_ eqv-hash-table::t)
           (_%id159231%_ 'HashTable::set!)
           (_%proc159234%_ eqv-table-set!)
           (_%rebind?159237%_ '#f)
           (_%id159242%_ _%id159231%_)
           (_%proc159255%_ _%proc159234%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159228%_
       _%id159242%_
       _%proc159255%_
       _%rebind?159237%_))
    (let* ((_%klass159191%_ eqv-hash-table::t)
           (_%id159194%_ 'HashTable::update!)
           (_%proc159197%_ eqv-table-update!)
           (_%rebind?159200%_ '#f)
           (_%id159205%_ _%id159194%_)
           (_%proc159218%_ _%proc159197%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159191%_
       _%id159205%_
       _%proc159218%_
       _%rebind?159200%_))
    (let* ((_%klass159154%_ eqv-hash-table::t)
           (_%id159157%_ 'HashTable::delete!)
           (_%proc159160%_ eqv-table-delete!)
           (_%rebind?159163%_ '#f)
           (_%id159168%_ _%id159157%_)
           (_%proc159181%_ _%proc159160%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159154%_
       _%id159168%_
       _%proc159181%_
       _%rebind?159163%_))
    (let* ((_%klass159117%_ symbol-hash-table::t)
           (_%id159120%_ 'HashTable::ref)
           (_%proc159123%_ symbolic-table-ref)
           (_%rebind?159126%_ '#f)
           (_%id159131%_ _%id159120%_)
           (_%proc159144%_ _%proc159123%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159117%_
       _%id159131%_
       _%proc159144%_
       _%rebind?159126%_))
    (let* ((_%klass159080%_ symbol-hash-table::t)
           (_%id159083%_ 'HashTable::set!)
           (_%proc159086%_ symbolic-table-set!)
           (_%rebind?159089%_ '#f)
           (_%id159094%_ _%id159083%_)
           (_%proc159107%_ _%proc159086%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159080%_
       _%id159094%_
       _%proc159107%_
       _%rebind?159089%_))
    (let* ((_%klass159043%_ symbol-hash-table::t)
           (_%id159046%_ 'HashTable::update!)
           (_%proc159049%_ symbolic-table-update!)
           (_%rebind?159052%_ '#f)
           (_%id159057%_ _%id159046%_)
           (_%proc159070%_ _%proc159049%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159043%_
       _%id159057%_
       _%proc159070%_
       _%rebind?159052%_))
    (let* ((_%klass159006%_ symbol-hash-table::t)
           (_%id159009%_ 'HashTable::delete!)
           (_%proc159012%_ symbolic-table-delete!)
           (_%rebind?159015%_ '#f)
           (_%id159020%_ _%id159009%_)
           (_%proc159033%_ _%proc159012%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159006%_
       _%id159020%_
       _%proc159033%_
       _%rebind?159015%_))
    (let* ((_%klass158969%_ string-hash-table::t)
           (_%id158972%_ 'HashTable::ref)
           (_%proc158975%_ string-table-ref)
           (_%rebind?158978%_ '#f)
           (_%id158983%_ _%id158972%_)
           (_%proc158996%_ _%proc158975%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158969%_
       _%id158983%_
       _%proc158996%_
       _%rebind?158978%_))
    (let* ((_%klass158932%_ string-hash-table::t)
           (_%id158935%_ 'HashTable::set!)
           (_%proc158938%_ string-table-set!)
           (_%rebind?158941%_ '#f)
           (_%id158946%_ _%id158935%_)
           (_%proc158959%_ _%proc158938%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158932%_
       _%id158946%_
       _%proc158959%_
       _%rebind?158941%_))
    (let* ((_%klass158895%_ string-hash-table::t)
           (_%id158898%_ 'HashTable::update!)
           (_%proc158901%_ string-table-update!)
           (_%rebind?158904%_ '#f)
           (_%id158909%_ _%id158898%_)
           (_%proc158922%_ _%proc158901%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158895%_
       _%id158909%_
       _%proc158922%_
       _%rebind?158904%_))
    (let* ((_%klass158858%_ string-hash-table::t)
           (_%id158861%_ 'HashTable::delete!)
           (_%proc158864%_ string-table-delete!)
           (_%rebind?158867%_ '#f)
           (_%id158872%_ _%id158861%_)
           (_%proc158885%_ _%proc158864%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158858%_
       _%id158872%_
       _%proc158885%_
       _%rebind?158867%_))
    (let* ((_%klass158821%_ immediate-hash-table::t)
           (_%id158824%_ 'HashTable::ref)
           (_%proc158827%_ immediate-table-ref)
           (_%rebind?158830%_ '#f)
           (_%id158835%_ _%id158824%_)
           (_%proc158848%_ _%proc158827%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158821%_
       _%id158835%_
       _%proc158848%_
       _%rebind?158830%_))
    (let* ((_%klass158784%_ immediate-hash-table::t)
           (_%id158787%_ 'HashTable::set!)
           (_%proc158790%_ immediate-table-set!)
           (_%rebind?158793%_ '#f)
           (_%id158798%_ _%id158787%_)
           (_%proc158811%_ _%proc158790%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158784%_
       _%id158798%_
       _%proc158811%_
       _%rebind?158793%_))
    (let* ((_%klass158747%_ immediate-hash-table::t)
           (_%id158750%_ 'HashTable::update!)
           (_%proc158753%_ immediate-table-update!)
           (_%rebind?158756%_ '#f)
           (_%id158761%_ _%id158750%_)
           (_%proc158774%_ _%proc158753%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158747%_
       _%id158761%_
       _%proc158774%_
       _%rebind?158756%_))
    (let* ((_%klass158710%_ immediate-hash-table::t)
           (_%id158713%_ 'HashTable::delete!)
           (_%proc158716%_ immediate-table-delete!)
           (_%rebind?158719%_ '#f)
           (_%id158724%_ _%id158713%_)
           (_%proc158737%_ _%proc158716%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158710%_
       _%id158724%_
       _%proc158737%_
       _%rebind?158719%_))
    (let* ((_%klass158673%_ gc-hash-table::t)
           (_%id158676%_ 'HashTable::ref)
           (_%proc158679%_ gc-table-ref)
           (_%rebind?158682%_ '#f)
           (_%id158687%_ _%id158676%_)
           (_%proc158700%_ _%proc158679%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158673%_
       _%id158687%_
       _%proc158700%_
       _%rebind?158682%_))
    (let* ((_%klass158636%_ gc-hash-table::t)
           (_%id158639%_ 'HashTable::set!)
           (_%proc158642%_ gc-table-set!)
           (_%rebind?158645%_ '#f)
           (_%id158650%_ _%id158639%_)
           (_%proc158663%_ _%proc158642%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158636%_
       _%id158650%_
       _%proc158663%_
       _%rebind?158645%_))
    (let* ((_%klass158599%_ gc-hash-table::t)
           (_%id158602%_ 'HashTable::update!)
           (_%proc158605%_ gc-table-update!)
           (_%rebind?158608%_ '#f)
           (_%id158613%_ _%id158602%_)
           (_%proc158626%_ _%proc158605%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158599%_
       _%id158613%_
       _%proc158626%_
       _%rebind?158608%_))
    (let* ((_%klass158562%_ gc-hash-table::t)
           (_%id158565%_ 'HashTable::delete!)
           (_%proc158568%_ gc-table-delete!)
           (_%rebind?158571%_ '#f)
           (_%id158576%_ _%id158565%_)
           (_%proc158589%_ _%proc158568%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158562%_
       _%id158576%_
       _%proc158589%_
       _%rebind?158571%_))
    (let* ((_%klass158525%_ gc-hash-table::t)
           (_%id158528%_ 'HashTable::for-each)
           (_%proc158531%_ gc-table-for-each)
           (_%rebind?158534%_ '#f)
           (_%id158539%_ _%id158528%_)
           (_%proc158552%_ _%proc158531%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158525%_
       _%id158539%_
       _%proc158552%_
       _%rebind?158534%_))
    (let* ((_%klass158488%_ gc-hash-table::t)
           (_%id158491%_ 'HashTable::length)
           (_%proc158494%_ gc-table-length)
           (_%rebind?158497%_ '#f)
           (_%id158502%_ _%id158491%_)
           (_%proc158515%_ _%proc158494%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158488%_
       _%id158502%_
       _%proc158515%_
       _%rebind?158497%_))
    (let* ((_%klass158451%_ gc-hash-table::t)
           (_%id158454%_ 'HashTable::copy)
           (_%proc158457%_ gc-table-copy)
           (_%rebind?158460%_ '#f)
           (_%id158465%_ _%id158454%_)
           (_%proc158478%_ _%proc158457%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158451%_
       _%id158465%_
       _%proc158478%_
       _%rebind?158460%_))
    (let* ((_%klass158414%_ gc-hash-table::t)
           (_%id158417%_ 'HashTable::clear!)
           (_%proc158420%_ gc-table-clear!)
           (_%rebind?158423%_ '#f)
           (_%id158428%_ _%id158417%_)
           (_%proc158441%_ _%proc158420%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158414%_
       _%id158428%_
       _%proc158441%_
       _%rebind?158423%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref149675%_
      (lambda (_%self158335%_ _%key158337%_ _%default158338%_)
        (let* ((_%self158341%_ _%self158335%_)
               (_%key158350%_ _%key158337%_)
               (_%default158358%_ _%default158338%_))
          (let ((_%h158367%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158341%_ '1 '#f '#f)))
                (_%l158369%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158341%_ '2 '#f '#f))))
            (let ((__tmp162175
                   (lambda ()
                     (let ((_%self148127158373%_ _%l158369%_))
                       (declare (not safe))
                       (let ((_%object158376158381%_
                              (##unchecked-structure-ref
                               _%self148127158373%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method158377158382%_
                              (##unchecked-structure-ref
                               _%self148127158373%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method158377158382%_ _%object158376158381%_)))))
                  (__tmp162174
                   (lambda ()
                     (let* ((_%self147222158385%_ _%h158367%_)
                            (_%key158388%_ _%key158350%_)
                            (_%default158391%_ _%default158358%_))
                       (declare (not safe))
                       (let ((_%object158394158399%_
                              (##unchecked-structure-ref
                               _%self147222158385%_
                               '1
                               '#f
                               'ref))
                             (_%method158395158400%_
                              (##unchecked-structure-ref
                               _%self147222158385%_
                               '7
                               '#f
                               'ref)))
                         (_%method158395158400%_
                          _%object158394158399%_
                          _%key158388%_
                          _%default158391%_)))))
                  (__tmp162173
                   (lambda ()
                     (let ((_%self148418158403%_ _%l158369%_))
                       (declare (not safe))
                       (let ((_%object158406158411%_
                              (##unchecked-structure-ref
                               _%self148418158403%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method158407158412%_
                              (##unchecked-structure-ref
                               _%self148418158403%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method158407158412%_ _%object158406158411%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162175 __tmp162174 __tmp162173))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref149675%_
       '#f))
    (define _%locked-hash-table::HashTable::set!149677%_
      (lambda (_%self158133%_ _%key158135%_ _%value158136%_)
        (let* ((_%self158139%_ _%self158133%_)
               (_%key158148%_ _%key158135%_)
               (_%value158156%_ _%value158136%_))
          (let ((_%h158165%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158139%_ '1 '#f '#f)))
                (_%l158167%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158139%_ '2 '#f '#f))))
            (let ((__tmp162178
                   (lambda ()
                     (let ((_%self148709158171%_ _%l158167%_))
                       (declare (not safe))
                       (let ((_%object158174158179%_
                              (##unchecked-structure-ref
                               _%self148709158171%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158175158180%_
                              (##unchecked-structure-ref
                               _%self148709158171%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158175158180%_ _%object158174158179%_)))))
                  (__tmp162177
                   (lambda ()
                     (let* ((_%self147517158183%_ _%h158165%_)
                            (_%key158186%_ _%key158148%_)
                            (_%value158189%_ _%value158156%_))
                       (declare (not safe))
                       (let ((_%object158192158197%_
                              (##unchecked-structure-ref
                               _%self147517158183%_
                               '1
                               '#f
                               'set!))
                             (_%method158193158198%_
                              (##unchecked-structure-ref
                               _%self147517158183%_
                               '8
                               '#f
                               'set!)))
                         (_%method158193158198%_
                          _%object158192158197%_
                          _%key158186%_
                          _%value158189%_)))))
                  (__tmp162176
                   (lambda ()
                     (let ((_%self149000158201%_ _%l158167%_))
                       (declare (not safe))
                       (let ((_%object158204158209%_
                              (##unchecked-structure-ref
                               _%self149000158201%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158205158210%_
                              (##unchecked-structure-ref
                               _%self149000158201%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158205158210%_ _%object158204158209%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162178 __tmp162177 __tmp162176))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!149677%_
       '#f))
    (define _%locked-hash-table::HashTable::update!149679%_
      (lambda (_%self157919%_ _%key157921%_ _%update157922%_ _%default157923%_)
        (let* ((_%self157926%_ _%self157919%_)
               (_%key157935%_ _%key157921%_)
               (_%update157943%_ _%update157922%_)
               (_%default157951%_ _%default157923%_))
          (let ((_%h157960%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157926%_ '1 '#f '#f)))
                (_%l157962%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157926%_ '2 '#f '#f))))
            (let ((__tmp162181
                   (lambda ()
                     (let ((_%self148709157966%_ _%l157962%_))
                       (declare (not safe))
                       (let ((_%object157969157974%_
                              (##unchecked-structure-ref
                               _%self148709157966%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157970157975%_
                              (##unchecked-structure-ref
                               _%self148709157966%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157970157975%_ _%object157969157974%_)))))
                  (__tmp162180
                   (lambda ()
                     (let* ((_%self147812157978%_ _%h157960%_)
                            (_%key157981%_ _%key157935%_)
                            (_%proc157984%_ _%update157943%_)
                            (_%default157987%_ _%default157951%_))
                       (declare (not safe))
                       (let ((_%object157990157995%_
                              (##unchecked-structure-ref
                               _%self147812157978%_
                               '1
                               '#f
                               'update!))
                             (_%method157991157996%_
                              (##unchecked-structure-ref
                               _%self147812157978%_
                               '9
                               '#f
                               'update!)))
                         (_%method157991157996%_
                          _%object157990157995%_
                          _%key157981%_
                          _%proc157984%_
                          _%default157987%_)))))
                  (__tmp162179
                   (lambda ()
                     (let ((_%self149000157999%_ _%l157962%_))
                       (declare (not safe))
                       (let ((_%object158002158007%_
                              (##unchecked-structure-ref
                               _%self149000157999%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158003158008%_
                              (##unchecked-structure-ref
                               _%self149000157999%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158003158008%_ _%object158002158007%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162181 __tmp162180 __tmp162179))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!149679%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!149681%_
      (lambda (_%self157729%_ _%key157731%_)
        (let* ((_%self157734%_ _%self157729%_) (_%key157743%_ _%key157731%_))
          (let ((_%h157752%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157734%_ '1 '#f '#f)))
                (_%l157754%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157734%_ '2 '#f '#f))))
            (let ((__tmp162184
                   (lambda ()
                     (let ((_%self148709157758%_ _%l157754%_))
                       (declare (not safe))
                       (let ((_%object157761157766%_
                              (##unchecked-structure-ref
                               _%self148709157758%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157762157767%_
                              (##unchecked-structure-ref
                               _%self148709157758%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157762157767%_ _%object157761157766%_)))))
                  (__tmp162183
                   (lambda ()
                     (let* ((_%self146324157770%_ _%h157752%_)
                            (_%key157773%_ _%key157743%_))
                       (declare (not safe))
                       (let ((_%object157776157781%_
                              (##unchecked-structure-ref
                               _%self146324157770%_
                               '1
                               '#f
                               'delete!))
                             (_%method157777157782%_
                              (##unchecked-structure-ref
                               _%self146324157770%_
                               '4
                               '#f
                               'delete!)))
                         (_%method157777157782%_
                          _%object157776157781%_
                          _%key157773%_)))))
                  (__tmp162182
                   (lambda ()
                     (let ((_%self149000157785%_ _%l157754%_))
                       (declare (not safe))
                       (let ((_%object157788157793%_
                              (##unchecked-structure-ref
                               _%self149000157785%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157789157794%_
                              (##unchecked-structure-ref
                               _%self149000157785%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157789157794%_ _%object157788157793%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162184 __tmp162183 __tmp162182))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!149681%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each149683%_
      (lambda (_%self157539%_ _%proc157541%_)
        (let* ((_%self157544%_ _%self157539%_) (_%proc157553%_ _%proc157541%_))
          (let ((_%h157562%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157544%_ '1 '#f '#f)))
                (_%l157564%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157544%_ '2 '#f '#f))))
            (let ((__tmp162187
                   (lambda ()
                     (let ((_%self148127157568%_ _%l157564%_))
                       (declare (not safe))
                       (let ((_%object157571157576%_
                              (##unchecked-structure-ref
                               _%self148127157568%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method157572157577%_
                              (##unchecked-structure-ref
                               _%self148127157568%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method157572157577%_ _%object157571157576%_)))))
                  (__tmp162186
                   (lambda ()
                     (let* ((_%self146617157580%_ _%h157562%_)
                            (_%proc157583%_ _%proc157553%_))
                       (declare (not safe))
                       (let ((_%object157586157591%_
                              (##unchecked-structure-ref
                               _%self146617157580%_
                               '1
                               '#f
                               'for-each))
                             (_%method157587157592%_
                              (##unchecked-structure-ref
                               _%self146617157580%_
                               '5
                               '#f
                               'for-each)))
                         (_%method157587157592%_
                          _%object157586157591%_
                          _%proc157583%_)))))
                  (__tmp162185
                   (lambda ()
                     (let ((_%self148418157595%_ _%l157564%_))
                       (declare (not safe))
                       (let ((_%object157598157603%_
                              (##unchecked-structure-ref
                               _%self148418157595%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method157599157604%_
                              (##unchecked-structure-ref
                               _%self148418157595%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method157599157604%_ _%object157598157603%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162187 __tmp162186 __tmp162185))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each149683%_
       '#f))
    (define _%locked-hash-table::HashTable::length149685%_
      (lambda (_%self157354%_)
        (let ((_%self157358%_ _%self157354%_))
          (let ((_%h157368%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157358%_ '1 '#f '#f)))
                (_%l157370%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157358%_ '2 '#f '#f))))
            ((lambda (_%g157372157374%_)
               (let ((_%val157377%_ _%g157372157374%_))
                 (if (fixnum? _%val157377%_)
                     _%val157377%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val157377%_)
                       '#!void))))
             (let ((__tmp162190
                    (lambda ()
                      (let ((_%self148127157381%_ _%l157370%_))
                        (declare (not safe))
                        (let ((_%object157384157389%_
                               (##unchecked-structure-ref
                                _%self148127157381%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method157385157390%_
                               (##unchecked-structure-ref
                                _%self148127157381%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method157385157390%_ _%object157384157389%_)))))
                   (__tmp162189
                    (lambda ()
                      (let ((_%self146928157393%_ _%h157368%_))
                        (declare (not safe))
                        (let ((_%object157396157401%_
                               (##unchecked-structure-ref
                                _%self146928157393%_
                                '1
                                '#f
                                'length))
                              (_%method157397157402%_
                               (##unchecked-structure-ref
                                _%self146928157393%_
                                '6
                                '#f
                                'length)))
                          (_%method157397157402%_ _%object157396157401%_)))))
                   (__tmp162188
                    (lambda ()
                      (let ((_%self148418157405%_ _%l157370%_))
                        (declare (not safe))
                        (let ((_%object157408157413%_
                               (##unchecked-structure-ref
                                _%self148418157405%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method157409157414%_
                               (##unchecked-structure-ref
                                _%self148418157405%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method157409157414%_ _%object157408157413%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp162190 __tmp162189 __tmp162188)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length149685%_
       '#f))
    (define _%locked-hash-table::HashTable::copy149687%_
      (lambda (_%self157173%_)
        (let ((_%self157177%_ _%self157173%_))
          (let ((_%h157187%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157177%_ '1 '#f '#f)))
                (_%l157189%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157177%_ '2 '#f '#f))))
            (let ((_%$obj157228%_
                   (let ((__tmp162193
                          (lambda ()
                            (let ((_%self148127157193%_ _%l157189%_))
                              (declare (not safe))
                              (let ((_%object157196157201%_
                                     (##unchecked-structure-ref
                                      _%self148127157193%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method157197157202%_
                                     (##unchecked-structure-ref
                                      _%self148127157193%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method157197157202%_
                                 _%object157196157201%_)))))
                         (__tmp162192
                          (lambda ()
                            (let ((_%self146030157205%_ _%h157187%_))
                              (declare (not safe))
                              (let ((_%object157208157213%_
                                     (##unchecked-structure-ref
                                      _%self146030157205%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method157209157214%_
                                     (##unchecked-structure-ref
                                      _%self146030157205%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method157209157214%_
                                 _%object157208157213%_)))))
                         (__tmp162191
                          (lambda ()
                            (let ((_%self148418157217%_ _%l157189%_))
                              (declare (not safe))
                              (let ((_%object157220157225%_
                                     (##unchecked-structure-ref
                                      _%self148418157217%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method157221157226%_
                                     (##unchecked-structure-ref
                                      _%self148418157217%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method157221157226%_
                                 _%object157220157225%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp162193 __tmp162192 __tmp162191))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj157228%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj157228%_)))
                       '#t)
                  _%$obj157228%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj157228%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy149687%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!149689%_
      (lambda (_%self156995%_)
        (let ((_%self156999%_ _%self156995%_))
          (let ((_%h157009%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156999%_ '1 '#f '#f)))
                (_%l157011%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156999%_ '2 '#f '#f))))
            (let ((__tmp162196
                   (lambda ()
                     (let ((_%self148709157015%_ _%l157011%_))
                       (declare (not safe))
                       (let ((_%object157018157023%_
                              (##unchecked-structure-ref
                               _%self148709157015%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157019157024%_
                              (##unchecked-structure-ref
                               _%self148709157015%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157019157024%_ _%object157018157023%_)))))
                  (__tmp162195
                   (lambda ()
                     (let ((_%self145738157027%_ _%h157009%_))
                       (declare (not safe))
                       (let ((_%object157030157035%_
                              (##unchecked-structure-ref
                               _%self145738157027%_
                               '1
                               '#f
                               'clear!))
                             (_%method157031157036%_
                              (##unchecked-structure-ref
                               _%self145738157027%_
                               '2
                               '#f
                               'clear!)))
                         (_%method157031157036%_ _%object157030157035%_)))))
                  (__tmp162194
                   (lambda ()
                     (let ((_%self149000157039%_ _%l157011%_))
                       (declare (not safe))
                       (let ((_%object157042157047%_
                              (##unchecked-structure-ref
                               _%self149000157039%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157043157048%_
                              (##unchecked-structure-ref
                               _%self149000157039%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157043157048%_ _%object157042157047%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162196 __tmp162195 __tmp162194))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!149689%_
       '#f))
    (let* ((_%klass156835%_ (macro-type-mutex))
           (_%id156838%_ 'Locker::read-lock!)
           (_%proc156841%_ mutex-lock!)
           (_%rebind?156844%_ '#f)
           (_%id156849%_ _%id156838%_)
           (_%proc156862%_ _%proc156841%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156835%_
       _%id156849%_
       _%proc156862%_
       _%rebind?156844%_))
    (let* ((_%klass156798%_ (macro-type-mutex))
           (_%id156801%_ 'Locker::read-unlock!)
           (_%proc156804%_ mutex-unlock!)
           (_%rebind?156807%_ '#f)
           (_%id156812%_ _%id156801%_)
           (_%proc156825%_ _%proc156804%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156798%_
       _%id156812%_
       _%proc156825%_
       _%rebind?156807%_))
    (let* ((_%klass156761%_ (macro-type-mutex))
           (_%id156764%_ 'Locker::write-lock!)
           (_%proc156767%_ mutex-lock!)
           (_%rebind?156770%_ '#f)
           (_%id156775%_ _%id156764%_)
           (_%proc156788%_ _%proc156767%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156761%_
       _%id156775%_
       _%proc156788%_
       _%rebind?156770%_))
    (let* ((_%klass156724%_ (macro-type-mutex))
           (_%id156727%_ 'Locker::write-unlock!)
           (_%proc156730%_ mutex-unlock!)
           (_%rebind?156733%_ '#f)
           (_%id156738%_ _%id156727%_)
           (_%proc156751%_ _%proc156730%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156724%_
       _%id156738%_
       _%proc156751%_
       _%rebind?156733%_))
    (define _%checked-hash-table::HashTable::ref149900%_
      (lambda (_%self156665%_ _%key156666%_ _%default156667%_)
        (let* ((_%self156670%_ _%self156665%_)
               (_%key156679%_ _%key156666%_)
               (_%default156687%_ _%default156667%_))
          (declare (not safe))
          (let ((_%h156698%_
                 (##unchecked-structure-ref _%self156670%_ '1 '#f '#f))
                (_%key?156700%_
                 (##unchecked-structure-ref _%self156670%_ '2 '#f '#f)))
            (if ((lambda (_%key?156703%_ _%key156704%_ _%default156705%_)
                   (_%key?156703%_ _%key156704%_))
                 _%key?156700%_
                 _%key156679%_
                 _%default156687%_)
                (let* ((_%self147222156707%_ _%h156698%_)
                       (_%key156710%_ _%key156679%_)
                       (_%default156713%_ _%default156687%_))
                  (declare (not safe))
                  (let ((_%object156716156721%_
                         (##unchecked-structure-ref
                          _%self147222156707%_
                          '1
                          '#f
                          'ref))
                        (_%method156717156722%_
                         (##unchecked-structure-ref
                          _%self147222156707%_
                          '7
                          '#f
                          'ref)))
                    (_%method156717156722%_
                     _%object156716156721%_
                     _%key156710%_
                     _%default156713%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key156679%_ (cons _%default156687%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref149900%_
       '#f))
    (define _%checked-hash-table::HashTable::set!149902%_
      (lambda (_%self156483%_ _%key156484%_ _%value156485%_)
        (let* ((_%self156488%_ _%self156483%_)
               (_%key156497%_ _%key156484%_)
               (_%value156505%_ _%value156485%_))
          (declare (not safe))
          (let ((_%h156516%_
                 (##unchecked-structure-ref _%self156488%_ '1 '#f '#f))
                (_%key?156518%_
                 (##unchecked-structure-ref _%self156488%_ '2 '#f '#f)))
            (if ((lambda (_%key?156521%_ _%key156522%_ _%value156523%_)
                   (_%key?156521%_ _%key156522%_))
                 _%key?156518%_
                 _%key156497%_
                 _%value156505%_)
                (let* ((_%self147517156525%_ _%h156516%_)
                       (_%key156528%_ _%key156497%_)
                       (_%value156531%_ _%value156505%_))
                  (declare (not safe))
                  (let ((_%object156534156539%_
                         (##unchecked-structure-ref
                          _%self147517156525%_
                          '1
                          '#f
                          'set!))
                        (_%method156535156540%_
                         (##unchecked-structure-ref
                          _%self147517156525%_
                          '8
                          '#f
                          'set!)))
                    (_%method156535156540%_
                     _%object156534156539%_
                     _%key156528%_
                     _%value156531%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key156497%_ (cons _%value156505%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!149902%_
       '#f))
    (define _%checked-hash-table::HashTable::update!149904%_
      (lambda (_%self156288%_ _%key156289%_ _%update156290%_ _%default156291%_)
        (let* ((_%self156294%_ _%self156288%_)
               (_%key156303%_ _%key156289%_)
               (_%update156311%_ _%update156290%_)
               (_%default156319%_ _%default156291%_))
          (declare (not safe))
          (let ((_%h156330%_
                 (##unchecked-structure-ref _%self156294%_ '1 '#f '#f))
                (_%key?156332%_
                 (##unchecked-structure-ref _%self156294%_ '2 '#f '#f)))
            (if ((lambda (_%key?156335%_
                          _%key156336%_
                          _%update156337%_
                          _%default156338%_)
                   (_%key?156335%_ _%key156336%_))
                 _%key?156332%_
                 _%key156303%_
                 _%update156311%_
                 _%default156319%_)
                (let* ((_%self147812156340%_ _%h156330%_)
                       (_%key156343%_ _%key156303%_)
                       (_%proc156346%_ _%update156311%_)
                       (_%default156349%_ _%default156319%_))
                  (declare (not safe))
                  (let ((_%object156352156357%_
                         (##unchecked-structure-ref
                          _%self147812156340%_
                          '1
                          '#f
                          'update!))
                        (_%method156353156358%_
                         (##unchecked-structure-ref
                          _%self147812156340%_
                          '9
                          '#f
                          'update!)))
                    (_%method156353156358%_
                     _%object156352156357%_
                     _%key156343%_
                     _%proc156346%_
                     _%default156349%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key156303%_
                         (cons _%update156311%_ (cons _%default156319%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!149904%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!149906%_
      (lambda (_%self156119%_ _%key156120%_)
        (let* ((_%self156123%_ _%self156119%_) (_%key156132%_ _%key156120%_))
          (declare (not safe))
          (let ((_%h156143%_
                 (##unchecked-structure-ref _%self156123%_ '1 '#f '#f))
                (_%key?156145%_
                 (##unchecked-structure-ref _%self156123%_ '2 '#f '#f)))
            (if ((lambda (_%key?156148%_ _%key156149%_)
                   (_%key?156148%_ _%key156149%_))
                 _%key?156145%_
                 _%key156132%_)
                (let* ((_%self146324156151%_ _%h156143%_)
                       (_%key156154%_ _%key156132%_))
                  (declare (not safe))
                  (let ((_%object156157156162%_
                         (##unchecked-structure-ref
                          _%self146324156151%_
                          '1
                          '#f
                          'delete!))
                        (_%method156158156163%_
                         (##unchecked-structure-ref
                          _%self146324156151%_
                          '4
                          '#f
                          'delete!)))
                    (_%method156158156163%_
                     _%object156157156162%_
                     _%key156154%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key156132%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!149906%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each149908%_
      (lambda (_%self155950%_ _%proc155951%_)
        (let* ((_%self155954%_ _%self155950%_) (_%proc155963%_ _%proc155951%_))
          (declare (not safe))
          (let ((_%h155974%_
                 (##unchecked-structure-ref _%self155954%_ '1 '#f '#f))
                (_%key?155976%_
                 (##unchecked-structure-ref _%self155954%_ '2 '#f '#f)))
            (if ((lambda (_%key?155979%_ _%proc155980%_) '#t)
                 _%key?155976%_
                 _%proc155963%_)
                (let* ((_%self146617155982%_ _%h155974%_)
                       (_%proc155985%_ _%proc155963%_))
                  (declare (not safe))
                  (let ((_%object155988155993%_
                         (##unchecked-structure-ref
                          _%self146617155982%_
                          '1
                          '#f
                          'for-each))
                        (_%method155989155994%_
                         (##unchecked-structure-ref
                          _%self146617155982%_
                          '5
                          '#f
                          'for-each)))
                    (_%method155989155994%_
                     _%object155988155993%_
                     _%proc155985%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc155963%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each149908%_
       '#f))
    (define _%checked-hash-table::HashTable::length149910%_
      (lambda (_%self155796%_)
        (let ((_%self155799%_ _%self155796%_))
          (declare (not safe))
          (let ((_%h155811%_
                 (##unchecked-structure-ref _%self155799%_ '1 '#f '#f))
                (_%key?155813%_
                 (##unchecked-structure-ref _%self155799%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146928155816%_ _%h155811%_))
                  (declare (not safe))
                  (let ((_%object155819155824%_
                         (##unchecked-structure-ref
                          _%self146928155816%_
                          '1
                          '#f
                          'length))
                        (_%method155820155825%_
                         (##unchecked-structure-ref
                          _%self146928155816%_
                          '6
                          '#f
                          'length)))
                    (_%method155820155825%_ _%object155819155824%_)))
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
       _%checked-hash-table::HashTable::length149910%_
       '#f))
    (define _%checked-hash-table::HashTable::copy149912%_
      (lambda (_%self155642%_)
        (let ((_%self155645%_ _%self155642%_))
          (declare (not safe))
          (let ((_%h155657%_
                 (##unchecked-structure-ref _%self155645%_ '1 '#f '#f))
                (_%key?155659%_
                 (##unchecked-structure-ref _%self155645%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146030155662%_ _%h155657%_))
                  (declare (not safe))
                  (let ((_%object155665155670%_
                         (##unchecked-structure-ref
                          _%self146030155662%_
                          '1
                          '#f
                          'copy))
                        (_%method155666155671%_
                         (##unchecked-structure-ref
                          _%self146030155662%_
                          '3
                          '#f
                          'copy)))
                    (_%method155666155671%_ _%object155665155670%_)))
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
       _%checked-hash-table::HashTable::copy149912%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!149914%_
      (lambda (_%self155488%_)
        (let ((_%self155491%_ _%self155488%_))
          (declare (not safe))
          (let ((_%h155503%_
                 (##unchecked-structure-ref _%self155491%_ '1 '#f '#f))
                (_%key?155505%_
                 (##unchecked-structure-ref _%self155491%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self145738155508%_ _%h155503%_))
                  (declare (not safe))
                  (let ((_%object155511155516%_
                         (##unchecked-structure-ref
                          _%self145738155508%_
                          '1
                          '#f
                          'clear!))
                        (_%method155512155517%_
                         (##unchecked-structure-ref
                          _%self145738155508%_
                          '2
                          '#f
                          'clear!)))
                    (_%method155512155517%_ _%object155511155516%_)))
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
       _%checked-hash-table::HashTable::clear!149914%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table155358%_
               _%count155359%_
               _%free155360%_
               _%hash155361%_
               _%test155362%_
               _%seed155363%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table155358%_
           _%count155359%_
           _%free155360%_
           _%hash155361%_
           _%test155362%_
           _%seed155363%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords154768%_
               _%size-hint154758154769%_
               _%seed154759154770%_
               _%test154760154771%_
               _%hash154761154772%_
               _%lock154762154773%_
               _%check154763154774%_
               _%weak-keys154764154775%_
               _%weak-values154765154776%_)
        (let* ((_%size-hint154778%_
                (if (eq? _%size-hint154758154769%_ absent-value)
                    '#f
                    _%size-hint154758154769%_))
               (_%seed154780%_
                (if (eq? _%seed154759154770%_ absent-value)
                    '#f
                    _%seed154759154770%_))
               (_%test154782%_
                (if (eq? _%test154760154771%_ absent-value)
                    equal?
                    _%test154760154771%_))
               (_%hash154784%_
                (if (eq? _%hash154761154772%_ absent-value)
                    '#f
                    _%hash154761154772%_))
               (_%lock154786%_
                (if (eq? _%lock154762154773%_ absent-value)
                    '#f
                    _%lock154762154773%_))
               (_%check154788%_
                (if (eq? _%check154763154774%_ absent-value)
                    '#f
                    _%check154763154774%_))
               (_%weak-keys154790%_
                (if (eq? _%weak-keys154764154775%_ absent-value)
                    '#f
                    _%weak-keys154764154775%_))
               (_%weak-values154792%_
                (if (eq? _%weak-values154765154776%_ absent-value)
                    '#f
                    _%weak-values154765154776%_)))
          (letrec ((_%table-seed154795%_
                    (lambda ()
                      (if (fixnum? _%seed154780%_)
                          _%seed154780%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock154939%_
                    (lambda (_%ht155326%_)
                      (let ((_%ht155329%_ _%ht155326%_))
                        (if _%lock154786%_
                            (let ((_%$obj155341%_
                                   (let ((__tmp162197
                                          (let ((_%$obj155338%_
                                                 _%lock154786%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj155338%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj155338%_)))
                                                     '#t)
                                                _%$obj155338%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj155338%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht155329%_
                                      __tmp162197))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj155341%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj155341%_)))
                                       '#t)
                                  _%$obj155341%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj155341%_))))
                            _%ht155329%_))))
                   (_%wrap-lock154940%_
                    (lambda (_%ht155314%_)
                      (let ((_%ht155317%_ _%ht155314%_))
                        (_%__wrap-lock154939%_ _%ht155317%_))))
                   (_%__wrap-checked155062%_
                    (lambda (_%ht155298%_ _%implicit155299%_)
                      (let ((_%ht155302%_ _%ht155298%_))
                        (if _%check154788%_
                            (let ((_%$obj155311%_
                                   (let ((__tmp162198
                                          (if (procedure? _%check154788%_)
                                              _%check154788%_
                                              _%implicit155299%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht155302%_
                                      __tmp162198))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj155311%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj155311%_)))
                                       '#t)
                                  _%$obj155311%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj155311%_))))
                            _%ht155302%_))))
                   (_%wrap-checked155063%_
                    (lambda (_%ht155285%_ _%implicit155286%_)
                      (let ((_%ht155289%_ _%ht155285%_))
                        (_%__wrap-checked155062%_
                         _%ht155289%_
                         _%implicit155286%_))))
                   (_%make155064%_
                    (lambda (_%kons155233%_
                             _%key?155234%_
                             _%hash155235%_
                             _%test155236%_)
                      (let* ((_%size155239%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint154778%_)))
                             (_%table155241%_
                              (let ((__tmp162199 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size155239%_ __tmp162199)))
                             (_%ht155246%_
                              (let ((_%$obj155243%_
                                     (_%kons155233%_
                                      _%table155241%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size155239%_ '2))
                                      _%hash155235%_
                                      _%test155236%_
                                      (_%table-seed154795%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155243%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155243%_)))
                                         '#t)
                                    _%$obj155243%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155243%_)))))
                             (_%ht155268%_
                              (let* ((_%ht155249%_ _%ht155246%_)
                                     (_%ht155253%_ _%ht155249%_))
                                (_%__wrap-lock154939%_ _%ht155253%_)))
                             (_%implicit155271%_ _%key?155234%_)
                             (_%ht155275%_ _%ht155268%_))
                        (_%__wrap-checked155062%_
                         _%ht155275%_
                         _%implicit155271%_))))
                   (_%make-gc-hash-table155065%_
                    (lambda ()
                      (let* ((_%ht155198%_
                              (let ((_%$obj155195%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint154778%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155195%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155195%_)))
                                         '#t)
                                    _%$obj155195%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155195%_)))))
                             (_%ht155216%_
                              (let* ((_%ht155200%_ _%ht155198%_)
                                     (_%ht155204%_ _%ht155200%_))
                                (_%__wrap-lock154939%_ _%ht155204%_)))
                             (_%implicit155219%_ true)
                             (_%ht155223%_ _%ht155216%_))
                        (_%__wrap-checked155062%_
                         _%ht155223%_
                         _%implicit155219%_))))
                   (_%make-gambit-table155066%_
                    (lambda ()
                      (let* ((_%size155135%_
                              (let ((_%$e155132%_ _%size-hint154778%_))
                                (if _%$e155132%_
                                    _%$e155132%_
                                    (macro-absent-obj))))
                             (_%test155140%_
                              (let ((_%$e155137%_ _%test154782%_))
                                (if _%$e155137%_ _%$e155137%_ equal?)))
                             (_%hash155148%_
                              (let ((_%$e155142%_ _%hash154784%_))
                                (if _%$e155142%_
                                    _%$e155142%_
                                    (if (eq? _%test155140%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test155140%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht155153%_
                              (let ((_%$obj155150%_
                                     (make-table
                                      'size:
                                      _%size155135%_
                                      'test:
                                      _%test155140%_
                                      'hash:
                                      _%hash155148%_
                                      'weak-keys:
                                      _%weak-keys154790%_
                                      'weak-values:
                                      _%weak-values154792%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155150%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155150%_)))
                                         '#t)
                                    _%$obj155150%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155150%_)))))
                             (_%ht155176%_
                              (let* ((_%ht155156%_ _%ht155153%_)
                                     (_%ht155160%_ _%ht155156%_))
                                (_%__wrap-lock154939%_ _%ht155160%_)))
                             (_%implicit155179%_ true)
                             (_%ht155183%_ _%ht155176%_))
                        (_%__wrap-checked155062%_
                         _%ht155183%_
                         _%implicit155179%_)))))
            (if (or _%weak-keys154790%_ _%weak-values154792%_)
                (_%make-gambit-table155066%_)
                (if (and (or (eq? _%test154782%_ eq?)
                             (eq? _%test154782%_ ##eq?))
                         (or (not _%hash154784%_)
                             (eq? _%hash154784%_ eq?-hash)
                             (eq? _%hash154784%_ eq-hash))
                         (not _%seed154780%_))
                    (_%make-gc-hash-table155065%_)
                    (if (and (or (eq? _%test154782%_ eq?)
                                 (eq? _%test154782%_ ##eq?))
                             (or (not _%hash154784%_)
                                 (eq? _%hash154784%_ eq?-hash)
                                 (eq? _%hash154784%_ eq-hash)))
                        (_%make155064%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test154782%_ eqv?)
                                     (eq? _%test154782%_ ##eqv?))
                                 (or (not _%hash154784%_)
                                     (eq? _%hash154784%_ eqv?-hash)
                                     (eq? _%hash154784%_ eqv-hash)))
                            (_%make155064%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test154782%_ eq?)
                                         (eq? _%test154782%_ ##eq?))
                                     (or (eq? _%hash154784%_ symbolic-hash)
                                         (eq? _%hash154784%_ ##symbol-hash)))
                                (_%make155064%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test154782%_ eq?)
                                             (eq? _%test154782%_ ##eq?))
                                         (eq? _%hash154784%_ immediate-hash))
                                    (_%make155064%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test154782%_ equal?)
                                                 (eq? _%test154782%_ ##equal?)
                                                 (eq? _%test154782%_ string=?)
                                                 (eq? _%test154782%_
                                                      ##string=?))
                                             (or (eq? _%hash154784%_
                                                      string-hash)
                                                 (eq? _%hash154784%_
                                                      ##string=?-hash)))
                                        (_%make155064%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test154782%_ equal?)
                                                 (not _%hash154784%_))
                                            (_%make155064%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test154782%_)
                                                (if (procedure? _%hash154784%_)
                                                    (_%make155064%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash154784%_
                                                     _%test154782%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash154784%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test154782%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords155348%_ . _%args155349%_)
        (apply make-hash-table__%
               _%@@keywords155348%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155348%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155348%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155348%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155348%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155348%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155348%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155348%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155348%_
                  'weak-values:
                  absent-value))
               _%args155349%_)))
    (define make-hash-table
      (lambda _%args154766155355%_
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
               _%args154766155355%_)))
    (define make-hash-table-eq
      (lambda _%args154755%_
        (apply make-hash-table 'test: eq? _%args154755%_)))
    (define make-hash-table-eqv
      (lambda _%args154753%_
        (apply make-hash-table 'test: eqv? _%args154753%_)))
    (define make-hash-table-symbolic
      (lambda _%args154751%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args154751%_)))
    (define make-hash-table-string
      (lambda _%args154749%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args154749%_)))
    (define make-hash-table-immediate
      (lambda _%args154747%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args154747%_)))
    (define list->hash-table
      (lambda (_%lst154744%_ . _%args154745%_)
        (list->hash-table!
         _%lst154744%_
         (apply make-hash-table
                'size:
                (length _%lst154744%_)
                _%args154745%_))))
    (define list->hash-table-eq
      (lambda (_%lst154741%_ . _%args154742%_)
        (list->hash-table!
         _%lst154741%_
         (apply make-hash-table-eq
                'size:
                (length _%lst154741%_)
                _%args154742%_))))
    (define list->hash-table-eqv
      (lambda (_%lst154738%_ . _%args154739%_)
        (list->hash-table!
         _%lst154738%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst154738%_)
                _%args154739%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst154735%_ . _%args154736%_)
        (list->hash-table!
         _%lst154735%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst154735%_)
                _%args154736%_))))
    (define list->hash-table-string
      (lambda (_%lst154732%_ . _%args154733%_)
        (list->hash-table!
         _%lst154732%_
         (apply make-hash-table-string
                'size:
                (length _%lst154732%_)
                _%args154733%_))))
    (define list->hash-table-immediate
      (lambda (_%lst154729%_ . _%args154730%_)
        (list->hash-table!
         _%lst154729%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst154729%_)
                _%args154730%_))))
    (define list->hash-table!
      (lambda (_%lst154680%_ _%h154681%_)
        (for-each
         (lambda (_%el154683%_)
           (let* ((_%el154684154691%_ _%el154683%_)
                  (_%E154686154694%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el154684154691%_
                              '([k . v])))
                     '#!void))
                  (_%K154687154717%_
                   (lambda (_%v154697%_ _%k154698%_)
                     (let* ((_%self147517154700%_ _%h154681%_)
                            (_%key154703%_ _%k154698%_)
                            (_%value154706%_ _%v154697%_))
                       (declare (not safe))
                       (let ((_%object154709154714%_
                              (##unchecked-structure-ref
                               _%self147517154700%_
                               '1
                               '#f
                               'set!))
                             (_%method154710154715%_
                              (##unchecked-structure-ref
                               _%self147517154700%_
                               '8
                               '#f
                               'set!)))
                         (_%method154710154715%_
                          _%object154709154714%_
                          _%key154703%_
                          _%value154706%_))))))
             (if (pair? _%el154684154691%_)
                 (let ((_%hd154688154720%_
                        (let ()
                          (declare (not safe))
                          (##car _%el154684154691%_)))
                       (_%tl154689154722%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el154684154691%_))))
                   (let* ((_%k154725%_ _%hd154688154720%_)
                          (_%v154727%_ _%tl154689154722%_))
                     (_%K154687154717%_ _%v154727%_ _%k154725%_)))
                 (_%E154686154694%_))))
         _%lst154680%_)
        _%h154681%_))
    (define plist->hash-table
      (lambda (_%lst154677%_ . _%args154678%_)
        (plist->hash-table!
         _%lst154677%_
         (apply make-hash-table
                'size:
                (length _%lst154677%_)
                _%args154678%_))))
    (define plist->hash-table-eq
      (lambda (_%lst154674%_ . _%args154675%_)
        (plist->hash-table!
         _%lst154674%_
         (apply make-hash-table-eq
                'size:
                (length _%lst154674%_)
                _%args154675%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst154671%_ . _%args154672%_)
        (plist->hash-table!
         _%lst154671%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst154671%_)
                _%args154672%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst154668%_ . _%args154669%_)
        (plist->hash-table!
         _%lst154668%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst154668%_)
                _%args154669%_))))
    (define plist->hash-table-string
      (lambda (_%lst154665%_ . _%args154666%_)
        (plist->hash-table!
         _%lst154665%_
         (apply make-hash-table-string
                'size:
                (length _%lst154665%_)
                _%args154666%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst154662%_ . _%args154663%_)
        (plist->hash-table!
         _%lst154662%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst154662%_)
                _%args154663%_))))
    (define plist->hash-table!
      (lambda (_%lst154585%_ _%h154586%_)
        (let _%loop154588%_ ((_%rest154590%_ _%lst154585%_))
          (let* ((_%rest154591154603%_ _%rest154590%_)
                 (_%else154594154611%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst154585%_)))))
            (let ((_%K154597154643%_
                   (lambda (_%rest154622%_ _%val154623%_ _%key154624%_)
                     (let* ((_%self147517154626%_ _%h154586%_)
                            (_%key154629%_ _%key154624%_)
                            (_%value154632%_ _%val154623%_))
                       (declare (not safe))
                       (let ((_%object154635154640%_
                              (##unchecked-structure-ref
                               _%self147517154626%_
                               '1
                               '#f
                               'set!))
                             (_%method154636154641%_
                              (##unchecked-structure-ref
                               _%self147517154626%_
                               '8
                               '#f
                               'set!)))
                         (_%method154636154641%_
                          _%object154635154640%_
                          _%key154629%_
                          _%value154632%_)))
                     (_%loop154588%_ _%rest154622%_)))
                  (_%K154596154616%_ (lambda () _%h154586%_)))
              (let ((_%try-match154593154619%_
                     (lambda ()
                       (if (null? _%rest154591154603%_)
                           (_%K154596154616%_)
                           (_%else154594154611%_)))))
                (if (pair? _%rest154591154603%_)
                    (let ((_%tl154599154648%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest154591154603%_)))
                          (_%hd154598154646%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest154591154603%_))))
                      (if (pair? _%tl154599154648%_)
                          (let ((_%tl154601154655%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl154599154648%_)))
                                (_%hd154600154653%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl154599154648%_))))
                            (let ((_%key154651%_ _%hd154598154646%_)
                                  (_%val154658%_ _%hd154600154653%_)
                                  (_%rest154660%_ _%tl154601154655%_))
                              (_%K154597154643%_
                               _%rest154660%_
                               _%val154658%_
                               _%key154651%_)))
                          (_%else154594154611%_)))
                    (_%try-match154593154619%_))))))))
    (define __hash-length
      (lambda (_%h154534%_)
        (let* ((_%h154537%_ _%h154534%_)
               (_%self146929154546%_ _%h154537%_)
               (_%self146929154553%_
                (let ((_%$obj154550%_ _%self146929154546%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154550%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154550%_)))
                           '#t)
                      _%$obj154550%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154550%_)))))
               (_%self146929154555%_ _%self146929154553%_))
          (if __DEBUG
              (let ((_%val154575%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object154567154572%_
                              (##unchecked-structure-ref
                               _%self146929154555%_
                               '1
                               '#f
                               'length))
                             (_%method154568154573%_
                              (##unchecked-structure-ref
                               _%self146929154555%_
                               '6
                               '#f
                               'length)))
                         (_%method154568154573%_ _%object154567154572%_)))))
                (if (fixnum? _%val154575%_)
                    _%val154575%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val154575%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object154577154582%_
                       (##unchecked-structure-ref
                        _%self146929154555%_
                        '1
                        '#f
                        'length))
                      (_%method154578154583%_
                       (##unchecked-structure-ref
                        _%self146929154555%_
                        '6
                        '#f
                        'length)))
                  (_%method154578154583%_ _%object154577154582%_)))))))
    (define hash-length
      (lambda (_%h150189%_)
        (let* ((_%h150195%_
                (let ((_%$obj150192%_ _%h150189%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150192%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150192%_)))
                           '#t)
                      _%$obj150192%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150192%_)))))
               (_%h150197%_ _%h150195%_))
          (__hash-length _%h150197%_))))
    (define __hash-ref__%
      (lambda (_%h154462%_ _%key154463%_ _%default154464%_)
        (let* ((_%h154467%_ _%h154462%_)
               (_%result154520%_
                (let* ((_%self147223154476%_ _%h154467%_)
                       (_%key154479%_ _%key154463%_)
                       (_%default154482%_ _%default154464%_)
                       (_%self147223154489%_
                        (let ((_%$obj154486%_ _%self147223154476%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj154486%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj154486%_)))
                                   '#t)
                              _%$obj154486%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj154486%_)))))
                       (_%self147223154491%_ _%self147223154489%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object154505154510%_
                               (##unchecked-structure-ref
                                _%self147223154491%_
                                '1
                                '#f
                                'ref))
                              (_%method154506154511%_
                               (##unchecked-structure-ref
                                _%self147223154491%_
                                '7
                                '#f
                                'ref)))
                          (_%method154506154511%_
                           _%object154505154510%_
                           _%key154479%_
                           _%default154482%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object154512154517%_
                               (##unchecked-structure-ref
                                _%self147223154491%_
                                '1
                                '#f
                                'ref))
                              (_%method154513154518%_
                               (##unchecked-structure-ref
                                _%self147223154491%_
                                '7
                                '#f
                                'ref)))
                          (_%method154513154518%_
                           _%object154512154517%_
                           _%key154479%_
                           _%default154482%_)))))))
          (if (eq? _%result154520%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h154467%_
               'key:
               _%key154463%_)
              _%result154520%_))))
    (define __hash-ref__0
      (lambda (_%h154525%_ _%key154526%_)
        (let ((_%default154528%_ absent-obj))
          (__hash-ref__% _%h154525%_ _%key154526%_ _%default154528%_))))
    (define __hash-ref
      (lambda _g162200_
        (let ((_g162201_ (let () (declare (not safe)) (##length _g162200_))))
          (cond ((let () (declare (not safe)) (##fx= _g162201_ 2))
                 (apply __hash-ref__0 _g162200_))
                ((let () (declare (not safe)) (##fx= _g162201_ 3))
                 (apply __hash-ref__% _g162200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g162200_))))))
    (define hash-ref__%
      (lambda (_%h150328%_ _%key150329%_ _%default150330%_)
        (let* ((_%h150336%_
                (let ((_%$obj150333%_ _%h150328%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150333%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150333%_)))
                           '#t)
                      _%$obj150333%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150333%_)))))
               (_%h150338%_ _%h150336%_))
          (__hash-ref__% _%h150338%_ _%key150329%_ _%default150330%_))))
    (define hash-ref__0
      (lambda (_%h150351%_ _%key150352%_)
        (let ((_%default150354%_ absent-obj))
          (hash-ref__% _%h150351%_ _%key150352%_ _%default150354%_))))
    (define hash-ref
      (lambda _g162202_
        (let ((_g162203_ (let () (declare (not safe)) (##length _g162202_))))
          (cond ((let () (declare (not safe)) (##fx= _g162203_ 2))
                 (apply hash-ref__0 _g162202_))
                ((let () (declare (not safe)) (##fx= _g162203_ 3))
                 (apply hash-ref__% _g162202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g162202_))))))
    (define __hash-get
      (lambda (_%h154404%_ _%key154405%_)
        (let* ((_%h154408%_ _%h154404%_)
               (_%self147223154417%_ _%h154408%_)
               (_%key154420%_ _%key154405%_)
               (_%default154423%_ '#f)
               (_%self147223154430%_
                (let ((_%$obj154427%_ _%self147223154417%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154427%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154427%_)))
                           '#t)
                      _%$obj154427%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154427%_)))))
               (_%self147223154432%_ _%self147223154430%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154446154451%_
                       (##unchecked-structure-ref
                        _%self147223154432%_
                        '1
                        '#f
                        'ref))
                      (_%method154447154452%_
                       (##unchecked-structure-ref
                        _%self147223154432%_
                        '7
                        '#f
                        'ref)))
                  (_%method154447154452%_
                   _%object154446154451%_
                   _%key154420%_
                   _%default154423%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154453154458%_
                       (##unchecked-structure-ref
                        _%self147223154432%_
                        '1
                        '#f
                        'ref))
                      (_%method154454154459%_
                       (##unchecked-structure-ref
                        _%self147223154432%_
                        '7
                        '#f
                        'ref)))
                  (_%method154454154459%_
                   _%object154453154458%_
                   _%key154420%_
                   _%default154423%_)))))))
    (define hash-get
      (lambda (_%h150480%_ _%key150481%_)
        (let* ((_%h150487%_
                (let ((_%$obj150484%_ _%h150480%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150484%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150484%_)))
                           '#t)
                      _%$obj150484%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150484%_)))))
               (_%h150489%_ _%h150487%_))
          (__hash-get _%h150489%_ _%key150481%_))))
    (define __hash-put!
      (lambda (_%h154346%_ _%key154347%_ _%value154348%_)
        (let* ((_%h154351%_ _%h154346%_)
               (_%self147518154360%_ _%h154351%_)
               (_%key154363%_ _%key154347%_)
               (_%value154366%_ _%value154348%_)
               (_%self147518154373%_
                (let ((_%$obj154370%_ _%self147518154360%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154370%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154370%_)))
                           '#t)
                      _%$obj154370%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154370%_)))))
               (_%self147518154375%_ _%self147518154373%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154389154394%_
                       (##unchecked-structure-ref
                        _%self147518154375%_
                        '1
                        '#f
                        'set!))
                      (_%method154390154395%_
                       (##unchecked-structure-ref
                        _%self147518154375%_
                        '8
                        '#f
                        'set!)))
                  (_%method154390154395%_
                   _%object154389154394%_
                   _%key154363%_
                   _%value154366%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154396154401%_
                       (##unchecked-structure-ref
                        _%self147518154375%_
                        '1
                        '#f
                        'set!))
                      (_%method154397154402%_
                       (##unchecked-structure-ref
                        _%self147518154375%_
                        '8
                        '#f
                        'set!)))
                  (_%method154397154402%_
                   _%object154396154401%_
                   _%key154363%_
                   _%value154366%_)))))))
    (define hash-put!
      (lambda (_%h150619%_ _%key150620%_ _%value150621%_)
        (let* ((_%h150627%_
                (let ((_%$obj150624%_ _%h150619%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150624%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150624%_)))
                           '#t)
                      _%$obj150624%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150624%_)))))
               (_%h150629%_ _%h150627%_))
          (__hash-put! _%h150629%_ _%key150620%_ _%value150621%_))))
    (define __hash-update!__%
      (lambda (_%h154259%_ _%key154260%_ _%update154261%_ _%default154262%_)
        (let* ((_%h154265%_ _%h154259%_)
               (_%self147813154274%_ _%h154265%_)
               (_%key154277%_ _%key154260%_)
               (_%proc154280%_ _%update154261%_)
               (_%default154283%_ _%default154262%_)
               (_%self147813154290%_
                (let ((_%$obj154287%_ _%self147813154274%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154287%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154287%_)))
                           '#t)
                      _%$obj154287%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154287%_)))))
               (_%self147813154292%_ _%self147813154290%_))
          (if (procedure? _%proc154280%_)
              (let ((_%proc154308%_ _%proc154280%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object154317154322%_
                             (##unchecked-structure-ref
                              _%self147813154292%_
                              '1
                              '#f
                              'update!))
                            (_%method154318154323%_
                             (##unchecked-structure-ref
                              _%self147813154292%_
                              '9
                              '#f
                              'update!)))
                        (_%method154318154323%_
                         _%object154317154322%_
                         _%key154277%_
                         _%proc154308%_
                         _%default154283%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object154324154329%_
                             (##unchecked-structure-ref
                              _%self147813154292%_
                              '1
                              '#f
                              'update!))
                            (_%method154325154330%_
                             (##unchecked-structure-ref
                              _%self147813154292%_
                              '9
                              '#f
                              'update!)))
                        (_%method154325154330%_
                         _%object154324154329%_
                         _%key154277%_
                         _%proc154308%_
                         _%default154283%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc154280%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h154335%_ _%key154336%_ _%update154337%_)
        (let ((_%default154339%_ '#!void))
          (__hash-update!__%
           _%h154335%_
           _%key154336%_
           _%update154337%_
           _%default154339%_))))
    (define __hash-update!
      (lambda _g162204_
        (let ((_g162205_ (let () (declare (not safe)) (##length _g162204_))))
          (cond ((let () (declare (not safe)) (##fx= _g162205_ 3))
                 (apply __hash-update!__0 _g162204_))
                ((let () (declare (not safe)) (##fx= _g162205_ 4))
                 (apply __hash-update!__% _g162204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g162204_))))))
    (define hash-update!__%
      (lambda (_%h150760%_ _%key150761%_ _%update150762%_ _%default150763%_)
        (let* ((_%h150769%_
                (let ((_%$obj150766%_ _%h150760%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150766%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150766%_)))
                           '#t)
                      _%$obj150766%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150766%_)))))
               (_%h150771%_ _%h150769%_))
          (__hash-update!__%
           _%h150771%_
           _%key150761%_
           _%update150762%_
           _%default150763%_))))
    (define hash-update!__0
      (lambda (_%h150784%_ _%key150785%_ _%update150786%_)
        (let ((_%default150788%_ '#!void))
          (hash-update!__%
           _%h150784%_
           _%key150785%_
           _%update150786%_
           _%default150788%_))))
    (define hash-update!
      (lambda _g162206_
        (let ((_g162207_ (let () (declare (not safe)) (##length _g162206_))))
          (cond ((let () (declare (not safe)) (##fx= _g162207_ 3))
                 (apply hash-update!__0 _g162206_))
                ((let () (declare (not safe)) (##fx= _g162207_ 4))
                 (apply hash-update!__% _g162206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g162206_))))))
    (define __hash-remove!
      (lambda (_%h154205%_ _%key154206%_)
        (let* ((_%h154209%_ _%h154205%_)
               (_%self146325154218%_ _%h154209%_)
               (_%key154221%_ _%key154206%_)
               (_%self146325154228%_
                (let ((_%$obj154225%_ _%self146325154218%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154225%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154225%_)))
                           '#t)
                      _%$obj154225%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154225%_)))))
               (_%self146325154230%_ _%self146325154228%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154243154248%_
                       (##unchecked-structure-ref
                        _%self146325154230%_
                        '1
                        '#f
                        'delete!))
                      (_%method154244154249%_
                       (##unchecked-structure-ref
                        _%self146325154230%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154244154249%_
                   _%object154243154248%_
                   _%key154221%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154250154255%_
                       (##unchecked-structure-ref
                        _%self146325154230%_
                        '1
                        '#f
                        'delete!))
                      (_%method154251154256%_
                       (##unchecked-structure-ref
                        _%self146325154230%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154251154256%_
                   _%object154250154255%_
                   _%key154221%_)))))))
    (define hash-remove!
      (lambda (_%h150915%_ _%key150916%_)
        (let* ((_%h150922%_
                (let ((_%$obj150919%_ _%h150915%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150919%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150919%_)))
                           '#t)
                      _%$obj150919%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150919%_)))))
               (_%h150924%_ _%h150922%_))
          (__hash-remove! _%h150924%_ _%key150916%_))))
    (define __hash-key?
      (lambda (_%h154148%_ _%k154149%_)
        (let ((_%h154152%_ _%h154148%_))
          (not (eq? (let* ((_%self147223154161%_ _%h154152%_)
                           (_%key154164%_ _%k154149%_)
                           (_%default154167%_ absent-value)
                           (_%self147223154174%_
                            (let ((_%$obj154171%_ _%self147223154161%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154171%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154171%_)))
                                       '#t)
                                  _%$obj154171%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154171%_)))))
                           (_%self147223154176%_ _%self147223154174%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object154190154195%_
                                   (##unchecked-structure-ref
                                    _%self147223154176%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154191154196%_
                                   (##unchecked-structure-ref
                                    _%self147223154176%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154191154196%_
                               _%object154190154195%_
                               _%key154164%_
                               _%default154167%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object154197154202%_
                                   (##unchecked-structure-ref
                                    _%self147223154176%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154198154203%_
                                   (##unchecked-structure-ref
                                    _%self147223154176%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154198154203%_
                               _%object154197154202%_
                               _%key154164%_
                               _%default154167%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h151054%_ _%k151055%_)
        (let* ((_%h151061%_
                (let ((_%$obj151058%_ _%h151054%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151058%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151058%_)))
                           '#t)
                      _%$obj151058%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151058%_)))))
               (_%h151063%_ _%h151061%_))
          (__hash-key? _%h151063%_ _%k151055%_))))
    (define __hash->list
      (lambda (_%h154080%_)
        (let* ((_%h154083%_ _%h154080%_) (_%lst154092%_ '()))
          (let* ((_%self146618154094%_ _%h154083%_)
                 (_%proc154100%_
                  (lambda (_%k154097%_ _%v154098%_)
                    (set! _%lst154092%_
                          (cons (cons _%k154097%_ _%v154098%_)
                                _%lst154092%_))))
                 (_%self146618154107%_
                  (let ((_%$obj154104%_ _%self146618154094%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154104%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154104%_)))
                             '#t)
                        _%$obj154104%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154104%_)))))
                 (_%self146618154109%_ _%self146618154107%_)
                 (_%proc154124%_ _%proc154100%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154133154138%_
                         (##unchecked-structure-ref
                          _%self146618154109%_
                          '1
                          '#f
                          'for-each))
                        (_%method154134154139%_
                         (##unchecked-structure-ref
                          _%self146618154109%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154134154139%_
                     _%object154133154138%_
                     _%proc154124%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154140154145%_
                         (##unchecked-structure-ref
                          _%self146618154109%_
                          '1
                          '#f
                          'for-each))
                        (_%method154141154146%_
                         (##unchecked-structure-ref
                          _%self146618154109%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154141154146%_
                     _%object154140154145%_
                     _%proc154124%_)))))
          _%lst154092%_)))
    (define hash->list
      (lambda (_%h151193%_)
        (let* ((_%h151199%_
                (let ((_%$obj151196%_ _%h151193%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151196%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151196%_)))
                           '#t)
                      _%$obj151196%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151196%_)))))
               (_%h151201%_ _%h151199%_))
          (__hash->list _%h151201%_))))
    (define __hash->plist
      (lambda (_%h154012%_)
        (let* ((_%h154015%_ _%h154012%_) (_%lst154024%_ '()))
          (let* ((_%self146618154026%_ _%h154015%_)
                 (_%proc154032%_
                  (lambda (_%k154029%_ _%v154030%_)
                    (set! _%lst154024%_
                          (cons _%k154029%_
                                (cons _%v154030%_ _%lst154024%_)))))
                 (_%self146618154039%_
                  (let ((_%$obj154036%_ _%self146618154026%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154036%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154036%_)))
                             '#t)
                        _%$obj154036%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154036%_)))))
                 (_%self146618154041%_ _%self146618154039%_)
                 (_%proc154056%_ _%proc154032%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154065154070%_
                         (##unchecked-structure-ref
                          _%self146618154041%_
                          '1
                          '#f
                          'for-each))
                        (_%method154066154071%_
                         (##unchecked-structure-ref
                          _%self146618154041%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154066154071%_
                     _%object154065154070%_
                     _%proc154056%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154072154077%_
                         (##unchecked-structure-ref
                          _%self146618154041%_
                          '1
                          '#f
                          'for-each))
                        (_%method154073154078%_
                         (##unchecked-structure-ref
                          _%self146618154041%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154073154078%_
                     _%object154072154077%_
                     _%proc154056%_)))))
          _%lst154024%_)))
    (define hash->plist
      (lambda (_%h151331%_)
        (let* ((_%h151337%_
                (let ((_%$obj151334%_ _%h151331%_))
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
          (__hash->plist _%h151339%_))))
    (define __hash-for-each
      (lambda (_%proc153941%_ _%h153942%_)
        (let* ((_%proc153945%_ _%proc153941%_)
               (_%h153953%_ _%h153942%_)
               (_%self146618153962%_ _%h153953%_)
               (_%proc153965%_ _%proc153945%_)
               (_%self146618153972%_
                (let ((_%$obj153969%_ _%self146618153962%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153969%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153969%_)))
                           '#t)
                      _%$obj153969%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153969%_)))))
               (_%self146618153974%_ _%self146618153972%_)
               (_%proc153988%_ _%proc153965%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153997154002%_
                       (##unchecked-structure-ref
                        _%self146618153974%_
                        '1
                        '#f
                        'for-each))
                      (_%method153998154003%_
                       (##unchecked-structure-ref
                        _%self146618153974%_
                        '5
                        '#f
                        'for-each)))
                  (_%method153998154003%_
                   _%object153997154002%_
                   _%proc153988%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154004154009%_
                       (##unchecked-structure-ref
                        _%self146618153974%_
                        '1
                        '#f
                        'for-each))
                      (_%method154005154010%_
                       (##unchecked-structure-ref
                        _%self146618153974%_
                        '5
                        '#f
                        'for-each)))
                  (_%method154005154010%_
                   _%object154004154009%_
                   _%proc153988%_)))))))
    (define hash-for-each
      (lambda (_%proc151469%_ _%h151470%_)
        (if (procedure? _%proc151469%_)
            (let* ((_%proc151474%_ _%proc151469%_)
                   (_%h151486%_
                    (let ((_%$obj151483%_ _%h151470%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151483%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151483%_)))
                               '#t)
                          _%$obj151483%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151483%_)))))
                   (_%h151488%_ _%h151486%_))
              (__hash-for-each _%proc151474%_ _%h151488%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc151469%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc153864%_ _%h153865%_)
        (let* ((_%proc153868%_ _%proc153864%_)
               (_%h153876%_ _%h153865%_)
               (_%result153885%_ '()))
          (let* ((_%self146618153887%_ _%h153876%_)
                 (_%proc153893%_
                  (lambda (_%k153890%_ _%v153891%_)
                    (set! _%result153885%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc153868%_ _%k153890%_ _%v153891%_))
                                _%result153885%_))))
                 (_%self146618153900%_
                  (let ((_%$obj153897%_ _%self146618153887%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153897%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153897%_)))
                             '#t)
                        _%$obj153897%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153897%_)))))
                 (_%self146618153902%_ _%self146618153900%_)
                 (_%proc153917%_ _%proc153893%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153926153931%_
                         (##unchecked-structure-ref
                          _%self146618153902%_
                          '1
                          '#f
                          'for-each))
                        (_%method153927153932%_
                         (##unchecked-structure-ref
                          _%self146618153902%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153927153932%_
                     _%object153926153931%_
                     _%proc153917%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153933153938%_
                         (##unchecked-structure-ref
                          _%self146618153902%_
                          '1
                          '#f
                          'for-each))
                        (_%method153934153939%_
                         (##unchecked-structure-ref
                          _%self146618153902%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153934153939%_
                     _%object153933153938%_
                     _%proc153917%_)))))
          _%result153885%_)))
    (define hash-map
      (lambda (_%proc151618%_ _%h151619%_)
        (if (procedure? _%proc151618%_)
            (let* ((_%proc151623%_ _%proc151618%_)
                   (_%h151635%_
                    (let ((_%$obj151632%_ _%h151619%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151632%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151632%_)))
                               '#t)
                          _%$obj151632%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151632%_)))))
                   (_%h151637%_ _%h151635%_))
              (__hash-map _%proc151623%_ _%h151637%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc151618%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc153786%_ _%iv153787%_ _%h153788%_)
        (let* ((_%proc153791%_ _%proc153786%_)
               (_%h153799%_ _%h153788%_)
               (_%result153808%_ _%iv153787%_))
          (let* ((_%self146618153810%_ _%h153799%_)
                 (_%proc153816%_
                  (lambda (_%k153813%_ _%v153814%_)
                    (set! _%result153808%_
                          (let ()
                            (declare (not safe))
                            (_%proc153791%_
                             _%k153813%_
                             _%v153814%_
                             _%result153808%_)))))
                 (_%self146618153823%_
                  (let ((_%$obj153820%_ _%self146618153810%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153820%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153820%_)))
                             '#t)
                        _%$obj153820%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153820%_)))))
                 (_%self146618153825%_ _%self146618153823%_)
                 (_%proc153840%_ _%proc153816%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153849153854%_
                         (##unchecked-structure-ref
                          _%self146618153825%_
                          '1
                          '#f
                          'for-each))
                        (_%method153850153855%_
                         (##unchecked-structure-ref
                          _%self146618153825%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153850153855%_
                     _%object153849153854%_
                     _%proc153840%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153856153861%_
                         (##unchecked-structure-ref
                          _%self146618153825%_
                          '1
                          '#f
                          'for-each))
                        (_%method153857153862%_
                         (##unchecked-structure-ref
                          _%self146618153825%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153857153862%_
                     _%object153856153861%_
                     _%proc153840%_)))))
          _%result153808%_)))
    (define hash-fold
      (lambda (_%proc151767%_ _%iv151768%_ _%h151769%_)
        (if (procedure? _%proc151767%_)
            (let* ((_%proc151773%_ _%proc151767%_)
                   (_%h151785%_
                    (let ((_%$obj151782%_ _%h151769%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151782%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151782%_)))
                               '#t)
                          _%$obj151782%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151782%_)))))
                   (_%h151787%_ _%h151785%_))
              (__hash-fold _%proc151773%_ _%iv151768%_ _%h151787%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc151767%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc153693%_ _%h153694%_ _%default-value153695%_)
        (let* ((_%proc153698%_ _%proc153693%_)
               (_%h153706%_ _%h153694%_)
               (__tmp162208
                (lambda (_%return153715%_)
                  (let* ((_%self146618153717%_ _%h153706%_)
                         (_%proc153726%_
                          (lambda (_%k153720%_ _%v153721%_)
                            (let ((_%$e153723%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc153698%_
                                      _%k153720%_
                                      _%v153721%_))))
                              (if _%$e153723%_
                                  (_%return153715%_ _%$e153723%_)
                                  '#!void))))
                         (_%self146618153733%_
                          (let ((_%$obj153730%_ _%self146618153717%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj153730%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj153730%_)))
                                     '#t)
                                _%$obj153730%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj153730%_)))))
                         (_%self146618153735%_ _%self146618153733%_)
                         (_%proc153750%_ _%proc153726%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object153759153764%_
                                 (##unchecked-structure-ref
                                  _%self146618153735%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153760153765%_
                                 (##unchecked-structure-ref
                                  _%self146618153735%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153760153765%_
                             _%object153759153764%_
                             _%proc153750%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object153766153771%_
                                 (##unchecked-structure-ref
                                  _%self146618153735%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153767153772%_
                                 (##unchecked-structure-ref
                                  _%self146618153735%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153767153772%_
                             _%object153766153771%_
                             _%proc153750%_)))))
                  _%default-value153695%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp162208))))
    (define __hash-find__0
      (lambda (_%proc153777%_ _%h153778%_)
        (let ((_%default-value153780%_ '#f))
          (__hash-find__%
           _%proc153777%_
           _%h153778%_
           _%default-value153780%_))))
    (define __hash-find
      (lambda _g162209_
        (let ((_g162210_ (let () (declare (not safe)) (##length _g162209_))))
          (cond ((let () (declare (not safe)) (##fx= _g162210_ 2))
                 (apply __hash-find__0 _g162209_))
                ((let () (declare (not safe)) (##fx= _g162210_ 3))
                 (apply __hash-find__% _g162209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g162209_))))))
    (define hash-find__%
      (lambda (_%proc151918%_ _%h151919%_ _%default-value151920%_)
        (if (procedure? _%proc151918%_)
            (let* ((_%proc151924%_ _%proc151918%_)
                   (_%h151936%_
                    (let ((_%$obj151933%_ _%h151919%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151933%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151933%_)))
                               '#t)
                          _%$obj151933%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151933%_)))))
                   (_%h151938%_ _%h151936%_))
              (__hash-find__%
               _%proc151924%_
               _%h151938%_
               _%default-value151920%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc151918%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc151951%_ _%h151952%_)
        (let ((_%default-value151954%_ '#f))
          (hash-find__% _%proc151951%_ _%h151952%_ _%default-value151954%_))))
    (define hash-find
      (lambda _g162211_
        (let ((_g162212_ (let () (declare (not safe)) (##length _g162211_))))
          (cond ((let () (declare (not safe)) (##fx= _g162212_ 2))
                 (apply hash-find__0 _g162211_))
                ((let () (declare (not safe)) (##fx= _g162212_ 3))
                 (apply hash-find__% _g162211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g162211_))))))
    (define __hash-keys
      (lambda (_%h153624%_)
        (let* ((_%h153627%_ _%h153624%_) (_%result153636%_ '()))
          (let* ((_%self146618153638%_ _%h153627%_)
                 (_%proc153644%_
                  (lambda (_%k153641%_ _%v153642%_)
                    (set! _%result153636%_
                          (cons _%k153641%_ _%result153636%_))))
                 (_%self146618153651%_
                  (let ((_%$obj153648%_ _%self146618153638%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153648%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153648%_)))
                             '#t)
                        _%$obj153648%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153648%_)))))
                 (_%self146618153653%_ _%self146618153651%_)
                 (_%proc153668%_ _%proc153644%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153677153682%_
                         (##unchecked-structure-ref
                          _%self146618153653%_
                          '1
                          '#f
                          'for-each))
                        (_%method153678153683%_
                         (##unchecked-structure-ref
                          _%self146618153653%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153678153683%_
                     _%object153677153682%_
                     _%proc153668%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153684153689%_
                         (##unchecked-structure-ref
                          _%self146618153653%_
                          '1
                          '#f
                          'for-each))
                        (_%method153685153690%_
                         (##unchecked-structure-ref
                          _%self146618153653%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153685153690%_
                     _%object153684153689%_
                     _%proc153668%_)))))
          _%result153636%_)))
    (define hash-keys
      (lambda (_%h152080%_)
        (let* ((_%h152086%_
                (let ((_%$obj152083%_ _%h152080%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152083%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152083%_)))
                           '#t)
                      _%$obj152083%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152083%_)))))
               (_%h152088%_ _%h152086%_))
          (__hash-keys _%h152088%_))))
    (define __hash-values
      (lambda (_%h153556%_)
        (let* ((_%h153559%_ _%h153556%_) (_%result153568%_ '()))
          (let* ((_%self146618153570%_ _%h153559%_)
                 (_%proc153576%_
                  (lambda (_%k153573%_ _%v153574%_)
                    (set! _%result153568%_
                          (cons _%v153574%_ _%result153568%_))))
                 (_%self146618153583%_
                  (let ((_%$obj153580%_ _%self146618153570%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153580%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153580%_)))
                             '#t)
                        _%$obj153580%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153580%_)))))
                 (_%self146618153585%_ _%self146618153583%_)
                 (_%proc153600%_ _%proc153576%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153609153614%_
                         (##unchecked-structure-ref
                          _%self146618153585%_
                          '1
                          '#f
                          'for-each))
                        (_%method153610153615%_
                         (##unchecked-structure-ref
                          _%self146618153585%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153610153615%_
                     _%object153609153614%_
                     _%proc153600%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153616153621%_
                         (##unchecked-structure-ref
                          _%self146618153585%_
                          '1
                          '#f
                          'for-each))
                        (_%method153617153622%_
                         (##unchecked-structure-ref
                          _%self146618153585%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153617153622%_
                     _%object153616153621%_
                     _%proc153600%_)))))
          _%result153568%_)))
    (define hash-values
      (lambda (_%h152218%_)
        (let* ((_%h152224%_
                (let ((_%$obj152221%_ _%h152218%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152221%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152221%_)))
                           '#t)
                      _%$obj152221%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152221%_)))))
               (_%h152226%_ _%h152224%_))
          (__hash-values _%h152226%_))))
    (define __hash-copy
      (lambda (_%h153505%_)
        (let* ((_%h153508%_ _%h153505%_)
               (_%self146031153517%_ _%h153508%_)
               (_%self146031153524%_
                (let ((_%$obj153521%_ _%self146031153517%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153521%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153521%_)))
                           '#t)
                      _%$obj153521%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153521%_)))))
               (_%self146031153526%_ _%self146031153524%_))
          (if __DEBUG
              (let ((_%$obj153546%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object153538153543%_
                              (##unchecked-structure-ref
                               _%self146031153526%_
                               '1
                               '#f
                               'copy))
                             (_%method153539153544%_
                              (##unchecked-structure-ref
                               _%self146031153526%_
                               '3
                               '#f
                               'copy)))
                         (_%method153539153544%_ _%object153538153543%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj153546%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj153546%_)))
                         '#t)
                    _%$obj153546%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj153546%_))))
              (let ()
                (declare (not safe))
                (let ((_%object153548153553%_
                       (##unchecked-structure-ref
                        _%self146031153526%_
                        '1
                        '#f
                        'copy))
                      (_%method153549153554%_
                       (##unchecked-structure-ref
                        _%self146031153526%_
                        '3
                        '#f
                        'copy)))
                  (_%method153549153554%_ _%object153548153553%_)))))))
    (define hash-copy
      (lambda (_%h152356%_)
        (let* ((_%h152362%_
                (let ((_%$obj152359%_ _%h152356%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152359%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152359%_)))
                           '#t)
                      _%$obj152359%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152359%_)))))
               (_%h152364%_ _%h152362%_))
          (__hash-copy _%h152364%_))))
    (define __hash-clear!
      (lambda (_%h153457%_)
        (let* ((_%h153460%_ _%h153457%_)
               (_%self145739153469%_ _%h153460%_)
               (_%self145739153476%_
                (let ((_%$obj153473%_ _%self145739153469%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153473%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153473%_)))
                           '#t)
                      _%$obj153473%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153473%_)))))
               (_%self145739153478%_ _%self145739153476%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153490153495%_
                       (##unchecked-structure-ref
                        _%self145739153478%_
                        '1
                        '#f
                        'clear!))
                      (_%method153491153496%_
                       (##unchecked-structure-ref
                        _%self145739153478%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153491153496%_ _%object153490153495%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153497153502%_
                       (##unchecked-structure-ref
                        _%self145739153478%_
                        '1
                        '#f
                        'clear!))
                      (_%method153498153503%_
                       (##unchecked-structure-ref
                        _%self145739153478%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153498153503%_ _%object153497153502%_)))))))
    (define hash-clear!
      (lambda (_%h152494%_)
        (let* ((_%h152500%_
                (let ((_%$obj152497%_ _%h152494%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152497%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152497%_)))
                           '#t)
                      _%$obj152497%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152497%_)))))
               (_%h152502%_ _%h152500%_))
          (__hash-clear! _%h152502%_))))
    (define __hash-merge
      (lambda (_%h153403%_ . _%rest153404%_)
        (let* ((_%h153407%_ _%h153403%_)
               (_%copy153455%_
                (let* ((_%self146031153416%_ _%h153407%_)
                       (_%self146031153423%_
                        (let ((_%$obj153420%_ _%self146031153416%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153420%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153420%_)))
                                   '#t)
                              _%$obj153420%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153420%_)))))
                       (_%self146031153425%_ _%self146031153423%_))
                  (if __DEBUG
                      (let ((_%$obj153445%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object153437153442%_
                                      (##unchecked-structure-ref
                                       _%self146031153425%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method153438153443%_
                                      (##unchecked-structure-ref
                                       _%self146031153425%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method153438153443%_
                                  _%object153437153442%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj153445%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj153445%_)))
                                 '#t)
                            _%$obj153445%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj153445%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153447153452%_
                               (##unchecked-structure-ref
                                _%self146031153425%_
                                '1
                                '#f
                                'copy))
                              (_%method153448153453%_
                               (##unchecked-structure-ref
                                _%self146031153425%_
                                '3
                                '#f
                                'copy)))
                          (_%method153448153453%_ _%object153447153452%_)))))))
          (apply hash-merge! _%copy153455%_ _%rest153404%_)
          _%copy153455%_)))
    (define hash-merge
      (lambda (_%h152632%_ . _%rest152633%_)
        (let* ((_%h152639%_
                (let ((_%$obj152636%_ _%h152632%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152636%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152636%_)))
                           '#t)
                      _%$obj152636%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152636%_)))))
               (_%h152641%_ _%h152639%_))
          (declare (not safe))
          (##apply __hash-merge _%h152641%_ _%rest152633%_))))
    (define __hash-merge-right
      (lambda (_%h153349%_ . _%rest153350%_)
        (let* ((_%h153353%_ _%h153349%_)
               (_%copy153401%_
                (let* ((_%self146031153362%_ _%h153353%_)
                       (_%self146031153369%_
                        (let ((_%$obj153366%_ _%self146031153362%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153366%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153366%_)))
                                   '#t)
                              _%$obj153366%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153366%_)))))
                       (_%self146031153371%_ _%self146031153369%_))
                  (if __DEBUG
                      (let ((_%$obj153391%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object153383153388%_
                                      (##unchecked-structure-ref
                                       _%self146031153371%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method153384153389%_
                                      (##unchecked-structure-ref
                                       _%self146031153371%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method153384153389%_
                                  _%object153383153388%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj153391%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj153391%_)))
                                 '#t)
                            _%$obj153391%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj153391%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153393153398%_
                               (##unchecked-structure-ref
                                _%self146031153371%_
                                '1
                                '#f
                                'copy))
                              (_%method153394153399%_
                               (##unchecked-structure-ref
                                _%self146031153371%_
                                '3
                                '#f
                                'copy)))
                          (_%method153394153399%_ _%object153393153398%_)))))))
          (apply hash-merge-right! _%copy153401%_ _%rest153350%_)
          _%copy153401%_)))
    (define hash-merge-right
      (lambda (_%h152771%_ . _%rest152772%_)
        (let* ((_%h152778%_
                (let ((_%$obj152775%_ _%h152771%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152775%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152775%_)))
                           '#t)
                      _%$obj152775%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152775%_)))))
               (_%h152780%_ _%h152778%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h152780%_ _%rest152772%_))))
    (define __hash-merge!
      (lambda (_%h153197%_ . _%rest153198%_)
        (let ((_%h153201%_ _%h153197%_))
          (let ((__tmp162213
                 (lambda (_%hr153210%_)
                   (let* ((_%hr153216%_
                           (let ((_%$obj153213%_ _%hr153210%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153213%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153213%_)))
                                      '#t)
                                 _%$obj153213%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153213%_)))))
                          (_%hr153218%_ _%hr153216%_)
                          (_%self146618153231%_ _%hr153218%_)
                          (_%proc153306%_
                           (lambda (_%k153234%_ _%v153235%_)
                             (if (let* ((_%h153237%_ _%h153201%_)
                                        (_%k153240%_ _%k153234%_)
                                        (_%h153247%_
                                         (let ((_%$obj153244%_ _%h153237%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj153244%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj153244%_)))
                                                    '#t)
                                               _%$obj153244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj153244%_)))))
                                        (_%h153249%_ _%h153247%_))
                                   (__hash-key? _%h153249%_ _%k153240%_))
                                 '#!void
                                 (let* ((_%self147518153265%_ _%h153201%_)
                                        (_%key153268%_ _%k153234%_)
                                        (_%value153271%_ _%v153235%_)
                                        (_%self147518153278%_
                                         (let ((_%$obj153275%_
                                                _%self147518153265%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj153275%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj153275%_)))
                                                    '#t)
                                               _%$obj153275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj153275%_)))))
                                        (_%self147518153280%_
                                         _%self147518153278%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object153291153296%_
                                                (##unchecked-structure-ref
                                                 _%self147518153280%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method153292153297%_
                                                (##unchecked-structure-ref
                                                 _%self147518153280%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method153292153297%_
                                            _%object153291153296%_
                                            _%key153268%_
                                            _%value153271%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object153298153303%_
                                                (##unchecked-structure-ref
                                                 _%self147518153280%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method153299153304%_
                                                (##unchecked-structure-ref
                                                 _%self147518153280%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method153299153304%_
                                            _%object153298153303%_
                                            _%key153268%_
                                            _%value153271%_))))))))
                          (_%self146618153313%_
                           (let ((_%$obj153310%_ _%self146618153231%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153310%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153310%_)))
                                      '#t)
                                 _%$obj153310%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153310%_)))))
                          (_%self146618153315%_ _%self146618153313%_)
                          (_%proc153325%_ _%proc153306%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object153334153339%_
                                  (##unchecked-structure-ref
                                   _%self146618153315%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153335153340%_
                                  (##unchecked-structure-ref
                                   _%self146618153315%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153335153340%_
                              _%object153334153339%_
                              _%proc153325%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object153341153346%_
                                  (##unchecked-structure-ref
                                   _%self146618153315%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153342153347%_
                                  (##unchecked-structure-ref
                                   _%self146618153315%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153342153347%_
                              _%object153341153346%_
                              _%proc153325%_))))))))
            (declare (not safe))
            (##for-each __tmp162213 _%rest153198%_))
          _%h153201%_)))
    (define hash-merge!
      (lambda (_%h152910%_ . _%rest152911%_)
        (let* ((_%h152917%_
                (let ((_%$obj152914%_ _%h152910%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152914%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152914%_)))
                           '#t)
                      _%$obj152914%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152914%_)))))
               (_%h152919%_ _%h152917%_))
          (declare (not safe))
          (##apply __hash-merge! _%h152919%_ _%rest152911%_))))
    (define __hash-merge-right!
      (lambda (_%h153068%_ . _%rest153069%_)
        (let ((_%h153072%_ _%h153068%_))
          (let ((__tmp162214
                 (lambda (_%hr153081%_)
                   (let* ((_%hr153087%_
                           (let ((_%$obj153084%_ _%hr153081%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153084%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153084%_)))
                                      '#t)
                                 _%$obj153084%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153084%_)))))
                          (_%hr153089%_ _%hr153087%_)
                          (_%self146618153102%_ _%hr153089%_)
                          (_%proc153154%_
                           (lambda (_%k153105%_ _%v153106%_)
                             (let* ((_%self147518153108%_ _%h153072%_)
                                    (_%key153111%_ _%k153105%_)
                                    (_%value153114%_ _%v153106%_)
                                    (_%self147518153121%_
                                     (let ((_%$obj153118%_
                                            _%self147518153108%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj153118%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj153118%_)))
                                                '#t)
                                           _%$obj153118%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj153118%_)))))
                                    (_%self147518153123%_
                                     _%self147518153121%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153139153144%_
                                            (##unchecked-structure-ref
                                             _%self147518153123%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153140153145%_
                                            (##unchecked-structure-ref
                                             _%self147518153123%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153140153145%_
                                        _%object153139153144%_
                                        _%key153111%_
                                        _%value153114%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153146153151%_
                                            (##unchecked-structure-ref
                                             _%self147518153123%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153147153152%_
                                            (##unchecked-structure-ref
                                             _%self147518153123%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153147153152%_
                                        _%object153146153151%_
                                        _%key153111%_
                                        _%value153114%_)))))))
                          (_%self146618153161%_
                           (let ((_%$obj153158%_ _%self146618153102%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153158%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153158%_)))
                                      '#t)
                                 _%$obj153158%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153158%_)))))
                          (_%self146618153163%_ _%self146618153161%_)
                          (_%proc153173%_ _%proc153154%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object153182153187%_
                                  (##unchecked-structure-ref
                                   _%self146618153163%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153183153188%_
                                  (##unchecked-structure-ref
                                   _%self146618153163%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153183153188%_
                              _%object153182153187%_
                              _%proc153173%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object153189153194%_
                                  (##unchecked-structure-ref
                                   _%self146618153163%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153190153195%_
                                  (##unchecked-structure-ref
                                   _%self146618153163%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153190153195%_
                              _%object153189153194%_
                              _%proc153173%_))))))))
            (declare (not safe))
            (##for-each __tmp162214 _%rest153069%_))
          _%h153072%_)))
    (define hash-merge-right!
      (lambda (_%h153049%_ . _%rest153050%_)
        (let* ((_%h153056%_
                (let ((_%$obj153053%_ _%h153049%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153053%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153053%_)))
                           '#t)
                      _%$obj153053%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153053%_)))))
               (_%h153058%_ _%h153056%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h153058%_ _%rest153050%_))))))
