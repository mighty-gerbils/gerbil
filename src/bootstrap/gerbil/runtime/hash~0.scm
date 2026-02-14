(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1771104504)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp161595 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp161595
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args160337%_
        (apply make-instance UnboundKeyError::t _%$args160337%_)))
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
      (lambda (_%where160211%_ _%message160212%_ . _%irritants160213%_)
        (let ((__tmp161596
               (let ((__obj161587
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj161587
                    _%message160212%_
                    'where:
                    _%where160211%_
                    'irritants:
                    _%irritants160213%_))
                 __obj161587)))
          (declare (not safe))
          (raise __tmp161596))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp161597 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp161597
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj161589
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj161589
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj161589))
    (define make-HashTable
      (lambda (_%obj160209%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj160209%_))))
    (define try-HashTable
      (lambda (_%obj160207%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj160207%_))))
    (define HashTable?
      (lambda (_%obj160205%_)
        (let ((__tmp161598
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj160205%_ __tmp161598))))
    (define is-HashTable?
      (lambda (_%obj160202%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj160202%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self145192145436%_)
        (let ((_%self145192145438%_ _%self145192145436%_))
          (declare (not safe))
          (let ((_%object145445145450%_
                 (##unchecked-structure-ref
                  _%self145192145438%_
                  '1
                  '#f
                  'clear!))
                (_%method145446145451%_
                 (##unchecked-structure-ref
                  _%self145192145438%_
                  '2
                  '#f
                  'clear!)))
            (_%method145446145451%_ _%object145445145450%_)))))
    (define ::HashTable-clear!
      (lambda (_%self145193145453%_)
        (let* ((_%self145193145458%_
                (let ((_%$obj145455%_ _%self145193145453%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145455%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145455%_)))
                           '#t)
                      _%$obj145455%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145455%_)))))
               (_%self145193145460%_ _%self145193145458%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145468145473%_
                       (##unchecked-structure-ref
                        _%self145193145460%_
                        '1
                        '#f
                        'clear!))
                      (_%method145469145474%_
                       (##unchecked-structure-ref
                        _%self145193145460%_
                        '2
                        '#f
                        'clear!)))
                  (_%method145469145474%_ _%object145468145473%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145475145480%_
                       (##unchecked-structure-ref
                        _%self145193145460%_
                        '1
                        '#f
                        'clear!))
                      (_%method145476145481%_
                       (##unchecked-structure-ref
                        _%self145193145460%_
                        '2
                        '#f
                        'clear!)))
                  (_%method145476145481%_ _%object145475145480%_)))))))
    (define __HashTable-copy
      (lambda (_%self145484145727%_)
        (let ((_%self145484145729%_ _%self145484145727%_))
          (declare (not safe))
          (let ((_%object145736145741%_
                 (##unchecked-structure-ref _%self145484145729%_ '1 '#f 'copy))
                (_%method145737145742%_
                 (##unchecked-structure-ref
                  _%self145484145729%_
                  '3
                  '#f
                  'copy)))
            (_%method145737145742%_ _%object145736145741%_)))))
    (define ::HashTable-copy
      (lambda (_%self145485145744%_)
        (let* ((_%self145485145749%_
                (let ((_%$obj145746%_ _%self145485145744%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145746%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145746%_)))
                           '#t)
                      _%$obj145746%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145746%_)))))
               (_%self145485145751%_ _%self145485145749%_))
          (if __DEBUG
              (let ((_%$obj145767%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object145759145764%_
                              (##unchecked-structure-ref
                               _%self145485145751%_
                               '1
                               '#f
                               'copy))
                             (_%method145760145765%_
                              (##unchecked-structure-ref
                               _%self145485145751%_
                               '3
                               '#f
                               'copy)))
                         (_%method145760145765%_ _%object145759145764%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj145767%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj145767%_)))
                         '#t)
                    _%$obj145767%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj145767%_))))
              (let ()
                (declare (not safe))
                (let ((_%object145769145774%_
                       (##unchecked-structure-ref
                        _%self145485145751%_
                        '1
                        '#f
                        'copy))
                      (_%method145770145775%_
                       (##unchecked-structure-ref
                        _%self145485145751%_
                        '3
                        '#f
                        'copy)))
                  (_%method145770145775%_ _%object145769145774%_)))))))
    (define __HashTable-delete!
      (lambda (_%self145778146021%_ _%key146022%_)
        (let ((_%self145778146024%_ _%self145778146021%_))
          (declare (not safe))
          (let ((_%object146031146036%_
                 (##unchecked-structure-ref
                  _%self145778146024%_
                  '1
                  '#f
                  'delete!))
                (_%method146032146037%_
                 (##unchecked-structure-ref
                  _%self145778146024%_
                  '4
                  '#f
                  'delete!)))
            (_%method146032146037%_ _%object146031146036%_ _%key146022%_)))))
    (define ::HashTable-delete!
      (lambda (_%self145779146039%_ _%key146040%_)
        (let* ((_%self145779146045%_
                (let ((_%$obj146042%_ _%self145779146039%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146042%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146042%_)))
                           '#t)
                      _%$obj146042%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146042%_)))))
               (_%self145779146047%_ _%self145779146045%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146055146060%_
                       (##unchecked-structure-ref
                        _%self145779146047%_
                        '1
                        '#f
                        'delete!))
                      (_%method146056146061%_
                       (##unchecked-structure-ref
                        _%self145779146047%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146056146061%_
                   _%object146055146060%_
                   _%key146040%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146062146067%_
                       (##unchecked-structure-ref
                        _%self145779146047%_
                        '1
                        '#f
                        'delete!))
                      (_%method146063146068%_
                       (##unchecked-structure-ref
                        _%self145779146047%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146063146068%_
                   _%object146062146067%_
                   _%key146040%_)))))))
    (define __HashTable-for-each
      (lambda (_%self146071146314%_ _%proc146315%_)
        (let* ((_%self146071146317%_ _%self146071146314%_)
               (_%proc146324%_ _%proc146315%_))
          (declare (not safe))
          (let ((_%object146332146337%_
                 (##unchecked-structure-ref
                  _%self146071146317%_
                  '1
                  '#f
                  'for-each))
                (_%method146333146338%_
                 (##unchecked-structure-ref
                  _%self146071146317%_
                  '5
                  '#f
                  'for-each)))
            (_%method146333146338%_ _%object146332146337%_ _%proc146324%_)))))
    (define ::HashTable-for-each
      (lambda (_%self146072146340%_ _%proc146341%_)
        (let* ((_%self146072146346%_
                (let ((_%$obj146343%_ _%self146072146340%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146343%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146343%_)))
                           '#t)
                      _%$obj146343%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146343%_)))))
               (_%self146072146348%_ _%self146072146346%_))
          (if (procedure? _%proc146341%_)
              (let ((_%proc146357%_ _%proc146341%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object146366146371%_
                             (##unchecked-structure-ref
                              _%self146072146348%_
                              '1
                              '#f
                              'for-each))
                            (_%method146367146372%_
                             (##unchecked-structure-ref
                              _%self146072146348%_
                              '5
                              '#f
                              'for-each)))
                        (_%method146367146372%_
                         _%object146366146371%_
                         _%proc146357%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object146373146378%_
                             (##unchecked-structure-ref
                              _%self146072146348%_
                              '1
                              '#f
                              'for-each))
                            (_%method146374146379%_
                             (##unchecked-structure-ref
                              _%self146072146348%_
                              '5
                              '#f
                              'for-each)))
                        (_%method146374146379%_
                         _%object146373146378%_
                         _%proc146357%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc146341%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self146382146625%_)
        (let ((_%self146382146627%_ _%self146382146625%_))
          (declare (not safe))
          (let ((_%object146634146639%_
                 (##unchecked-structure-ref
                  _%self146382146627%_
                  '1
                  '#f
                  'length))
                (_%method146635146640%_
                 (##unchecked-structure-ref
                  _%self146382146627%_
                  '6
                  '#f
                  'length)))
            (_%method146635146640%_ _%object146634146639%_)))))
    (define ::HashTable-length
      (lambda (_%self146383146642%_)
        (let* ((_%self146383146647%_
                (let ((_%$obj146644%_ _%self146383146642%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146644%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146644%_)))
                           '#t)
                      _%$obj146644%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146644%_)))))
               (_%self146383146649%_ _%self146383146647%_))
          (if __DEBUG
              (let ((_%val146665%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object146657146662%_
                              (##unchecked-structure-ref
                               _%self146383146649%_
                               '1
                               '#f
                               'length))
                             (_%method146658146663%_
                              (##unchecked-structure-ref
                               _%self146383146649%_
                               '6
                               '#f
                               'length)))
                         (_%method146658146663%_ _%object146657146662%_)))))
                (if (fixnum? _%val146665%_)
                    _%val146665%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val146665%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object146667146672%_
                       (##unchecked-structure-ref
                        _%self146383146649%_
                        '1
                        '#f
                        'length))
                      (_%method146668146673%_
                       (##unchecked-structure-ref
                        _%self146383146649%_
                        '6
                        '#f
                        'length)))
                  (_%method146668146673%_ _%object146667146672%_)))))))
    (define __HashTable-ref
      (lambda (_%self146676146919%_ _%key146920%_ _%default146921%_)
        (let ((_%self146676146923%_ _%self146676146919%_))
          (declare (not safe))
          (let ((_%object146930146935%_
                 (##unchecked-structure-ref _%self146676146923%_ '1 '#f 'ref))
                (_%method146931146936%_
                 (##unchecked-structure-ref _%self146676146923%_ '7 '#f 'ref)))
            (_%method146931146936%_
             _%object146930146935%_
             _%key146920%_
             _%default146921%_)))))
    (define ::HashTable-ref
      (lambda (_%self146677146938%_ _%key146939%_ _%default146940%_)
        (let* ((_%self146677146945%_
                (let ((_%$obj146942%_ _%self146677146938%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146942%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146942%_)))
                           '#t)
                      _%$obj146942%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146942%_)))))
               (_%self146677146947%_ _%self146677146945%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146955146960%_
                       (##unchecked-structure-ref
                        _%self146677146947%_
                        '1
                        '#f
                        'ref))
                      (_%method146956146961%_
                       (##unchecked-structure-ref
                        _%self146677146947%_
                        '7
                        '#f
                        'ref)))
                  (_%method146956146961%_
                   _%object146955146960%_
                   _%key146939%_
                   _%default146940%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146962146967%_
                       (##unchecked-structure-ref
                        _%self146677146947%_
                        '1
                        '#f
                        'ref))
                      (_%method146963146968%_
                       (##unchecked-structure-ref
                        _%self146677146947%_
                        '7
                        '#f
                        'ref)))
                  (_%method146963146968%_
                   _%object146962146967%_
                   _%key146939%_
                   _%default146940%_)))))))
    (define __HashTable-set!
      (lambda (_%self146971147214%_ _%key147215%_ _%value147216%_)
        (let ((_%self146971147218%_ _%self146971147214%_))
          (declare (not safe))
          (let ((_%object147225147230%_
                 (##unchecked-structure-ref _%self146971147218%_ '1 '#f 'set!))
                (_%method147226147231%_
                 (##unchecked-structure-ref
                  _%self146971147218%_
                  '8
                  '#f
                  'set!)))
            (_%method147226147231%_
             _%object147225147230%_
             _%key147215%_
             _%value147216%_)))))
    (define ::HashTable-set!
      (lambda (_%self146972147233%_ _%key147234%_ _%value147235%_)
        (let* ((_%self146972147240%_
                (let ((_%$obj147237%_ _%self146972147233%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147237%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147237%_)))
                           '#t)
                      _%$obj147237%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147237%_)))))
               (_%self146972147242%_ _%self146972147240%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147250147255%_
                       (##unchecked-structure-ref
                        _%self146972147242%_
                        '1
                        '#f
                        'set!))
                      (_%method147251147256%_
                       (##unchecked-structure-ref
                        _%self146972147242%_
                        '8
                        '#f
                        'set!)))
                  (_%method147251147256%_
                   _%object147250147255%_
                   _%key147234%_
                   _%value147235%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147257147262%_
                       (##unchecked-structure-ref
                        _%self146972147242%_
                        '1
                        '#f
                        'set!))
                      (_%method147258147263%_
                       (##unchecked-structure-ref
                        _%self146972147242%_
                        '8
                        '#f
                        'set!)))
                  (_%method147258147263%_
                   _%object147257147262%_
                   _%key147234%_
                   _%value147235%_)))))))
    (define __HashTable-update!
      (lambda (_%self147266147509%_
               _%key147510%_
               _%proc147511%_
               _%default147512%_)
        (let* ((_%self147266147514%_ _%self147266147509%_)
               (_%proc147521%_ _%proc147511%_))
          (declare (not safe))
          (let ((_%object147529147534%_
                 (##unchecked-structure-ref
                  _%self147266147514%_
                  '1
                  '#f
                  'update!))
                (_%method147530147535%_
                 (##unchecked-structure-ref
                  _%self147266147514%_
                  '9
                  '#f
                  'update!)))
            (_%method147530147535%_
             _%object147529147534%_
             _%key147510%_
             _%proc147521%_
             _%default147512%_)))))
    (define ::HashTable-update!
      (lambda (_%self147267147537%_
               _%key147538%_
               _%proc147539%_
               _%default147540%_)
        (let* ((_%self147267147545%_
                (let ((_%$obj147542%_ _%self147267147537%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147542%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147542%_)))
                           '#t)
                      _%$obj147542%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147542%_)))))
               (_%self147267147547%_ _%self147267147545%_))
          (if (procedure? _%proc147539%_)
              (let ((_%proc147556%_ _%proc147539%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object147565147570%_
                             (##unchecked-structure-ref
                              _%self147267147547%_
                              '1
                              '#f
                              'update!))
                            (_%method147566147571%_
                             (##unchecked-structure-ref
                              _%self147267147547%_
                              '9
                              '#f
                              'update!)))
                        (_%method147566147571%_
                         _%object147565147570%_
                         _%key147538%_
                         _%proc147556%_
                         _%default147540%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object147572147577%_
                             (##unchecked-structure-ref
                              _%self147267147547%_
                              '1
                              '#f
                              'update!))
                            (_%method147573147578%_
                             (##unchecked-structure-ref
                              _%self147267147547%_
                              '9
                              '#f
                              'update!)))
                        (_%method147573147578%_
                         _%object147572147577%_
                         _%key147538%_
                         _%proc147556%_
                         _%default147540%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc147539%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp161599 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp161599
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj161591
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj161591
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj161591))
    (define make-Locker
      (lambda (_%obj160200%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj160200%_))))
    (define try-Locker
      (lambda (_%obj160198%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj160198%_))))
    (define Locker?
      (lambda (_%obj160196%_)
        (let ((__tmp161600
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj160196%_ __tmp161600))))
    (define is-Locker?
      (lambda (_%obj160193%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj160193%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self147581147824%_)
        (let ((_%self147581147826%_ _%self147581147824%_))
          (declare (not safe))
          (let ((_%object147833147838%_
                 (##unchecked-structure-ref
                  _%self147581147826%_
                  '1
                  '#f
                  'read-lock!))
                (_%method147834147839%_
                 (##unchecked-structure-ref
                  _%self147581147826%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method147834147839%_ _%object147833147838%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self147582147841%_)
        (let* ((_%self147582147846%_
                (let ((_%$obj147843%_ _%self147582147841%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147843%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147843%_)))
                           '#t)
                      _%$obj147843%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147843%_)))))
               (_%self147582147848%_ _%self147582147846%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147856147861%_
                       (##unchecked-structure-ref
                        _%self147582147848%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method147857147862%_
                       (##unchecked-structure-ref
                        _%self147582147848%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method147857147862%_ _%object147856147861%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147863147868%_
                       (##unchecked-structure-ref
                        _%self147582147848%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method147864147869%_
                       (##unchecked-structure-ref
                        _%self147582147848%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method147864147869%_ _%object147863147868%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self147872148115%_)
        (let ((_%self147872148117%_ _%self147872148115%_))
          (declare (not safe))
          (let ((_%object148124148129%_
                 (##unchecked-structure-ref
                  _%self147872148117%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method148125148130%_
                 (##unchecked-structure-ref
                  _%self147872148117%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method148125148130%_ _%object148124148129%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self147873148132%_)
        (let* ((_%self147873148137%_
                (let ((_%$obj148134%_ _%self147873148132%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148134%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148134%_)))
                           '#t)
                      _%$obj148134%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148134%_)))))
               (_%self147873148139%_ _%self147873148137%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148147148152%_
                       (##unchecked-structure-ref
                        _%self147873148139%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148148148153%_
                       (##unchecked-structure-ref
                        _%self147873148139%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148148148153%_ _%object148147148152%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148154148159%_
                       (##unchecked-structure-ref
                        _%self147873148139%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148155148160%_
                       (##unchecked-structure-ref
                        _%self147873148139%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148155148160%_ _%object148154148159%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self148163148406%_)
        (let ((_%self148163148408%_ _%self148163148406%_))
          (declare (not safe))
          (let ((_%object148415148420%_
                 (##unchecked-structure-ref
                  _%self148163148408%_
                  '1
                  '#f
                  'write-lock!))
                (_%method148416148421%_
                 (##unchecked-structure-ref
                  _%self148163148408%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method148416148421%_ _%object148415148420%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self148164148423%_)
        (let* ((_%self148164148428%_
                (let ((_%$obj148425%_ _%self148164148423%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148425%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148425%_)))
                           '#t)
                      _%$obj148425%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148425%_)))))
               (_%self148164148430%_ _%self148164148428%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148438148443%_
                       (##unchecked-structure-ref
                        _%self148164148430%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method148439148444%_
                       (##unchecked-structure-ref
                        _%self148164148430%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method148439148444%_ _%object148438148443%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148445148450%_
                       (##unchecked-structure-ref
                        _%self148164148430%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method148446148451%_
                       (##unchecked-structure-ref
                        _%self148164148430%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method148446148451%_ _%object148445148450%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self148454148697%_)
        (let ((_%self148454148699%_ _%self148454148697%_))
          (declare (not safe))
          (let ((_%object148706148711%_
                 (##unchecked-structure-ref
                  _%self148454148699%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method148707148712%_
                 (##unchecked-structure-ref
                  _%self148454148699%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method148707148712%_ _%object148706148711%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self148455148714%_)
        (let* ((_%self148455148719%_
                (let ((_%$obj148716%_ _%self148455148714%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148716%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148716%_)))
                           '#t)
                      _%$obj148716%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148716%_)))))
               (_%self148455148721%_ _%self148455148719%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148729148734%_
                       (##unchecked-structure-ref
                        _%self148455148721%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method148730148735%_
                       (##unchecked-structure-ref
                        _%self148455148721%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method148730148735%_ _%object148729148734%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148736148741%_
                       (##unchecked-structure-ref
                        _%self148455148721%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method148737148742%_
                       (##unchecked-structure-ref
                        _%self148455148721%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method148737148742%_ _%object148736148741%_)))))))
    (let* ((_%klass160156%_ __table::t)
           (_%id160159%_ 'HashTable::ref)
           (_%proc160162%_ raw-table-ref)
           (_%rebind?160165%_ '#f)
           (_%id160170%_ _%id160159%_)
           (_%proc160183%_ _%proc160162%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160156%_
       _%id160170%_
       _%proc160183%_
       _%rebind?160165%_))
    (let* ((_%klass160119%_ __table::t)
           (_%id160122%_ 'HashTable::set!)
           (_%proc160125%_ raw-table-set!)
           (_%rebind?160128%_ '#f)
           (_%id160133%_ _%id160122%_)
           (_%proc160146%_ _%proc160125%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160119%_
       _%id160133%_
       _%proc160146%_
       _%rebind?160128%_))
    (let* ((_%klass160082%_ __table::t)
           (_%id160085%_ 'HashTable::update!)
           (_%proc160088%_ raw-table-update!)
           (_%rebind?160091%_ '#f)
           (_%id160096%_ _%id160085%_)
           (_%proc160109%_ _%proc160088%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160082%_
       _%id160096%_
       _%proc160109%_
       _%rebind?160091%_))
    (let* ((_%klass160045%_ __table::t)
           (_%id160048%_ 'HashTable::delete!)
           (_%proc160051%_ raw-table-delete!)
           (_%rebind?160054%_ '#f)
           (_%id160059%_ _%id160048%_)
           (_%proc160072%_ _%proc160051%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160045%_
       _%id160059%_
       _%proc160072%_
       _%rebind?160054%_))
    (let* ((_%klass160008%_ __table::t)
           (_%id160011%_ 'HashTable::for-each)
           (_%proc160014%_ raw-table-for-each)
           (_%rebind?160017%_ '#f)
           (_%id160022%_ _%id160011%_)
           (_%proc160035%_ _%proc160014%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160008%_
       _%id160022%_
       _%proc160035%_
       _%rebind?160017%_))
    (let* ((_%klass159971%_ __table::t)
           (_%id159974%_ 'HashTable::length)
           (_%proc159977%_ &raw-table-count)
           (_%rebind?159980%_ '#f)
           (_%id159985%_ _%id159974%_)
           (_%proc159998%_ _%proc159977%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159971%_
       _%id159985%_
       _%proc159998%_
       _%rebind?159980%_))
    (let* ((_%klass159934%_ __table::t)
           (_%id159937%_ 'HashTable::copy)
           (_%proc159940%_ raw-table-copy)
           (_%rebind?159943%_ '#f)
           (_%id159948%_ _%id159937%_)
           (_%proc159961%_ _%proc159940%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159934%_
       _%id159948%_
       _%proc159961%_
       _%rebind?159943%_))
    (let* ((_%klass159897%_ __table::t)
           (_%id159900%_ 'HashTable::clear!)
           (_%proc159903%_ raw-table-clear!)
           (_%rebind?159906%_ '#f)
           (_%id159911%_ _%id159900%_)
           (_%proc159924%_ _%proc159903%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159897%_
       _%id159911%_
       _%proc159924%_
       _%rebind?159906%_))
    (let* ((_%klass159860%_ __gc-table::t)
           (_%id159863%_ 'HashTable::ref)
           (_%proc159866%_ gc-table-ref)
           (_%rebind?159869%_ '#f)
           (_%id159874%_ _%id159863%_)
           (_%proc159887%_ _%proc159866%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159860%_
       _%id159874%_
       _%proc159887%_
       _%rebind?159869%_))
    (let* ((_%klass159823%_ __gc-table::t)
           (_%id159826%_ 'HashTable::set!)
           (_%proc159829%_ gc-table-set!)
           (_%rebind?159832%_ '#f)
           (_%id159837%_ _%id159826%_)
           (_%proc159850%_ _%proc159829%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159823%_
       _%id159837%_
       _%proc159850%_
       _%rebind?159832%_))
    (let* ((_%klass159786%_ __gc-table::t)
           (_%id159789%_ 'HashTable::update!)
           (_%proc159792%_ gc-table-update!)
           (_%rebind?159795%_ '#f)
           (_%id159800%_ _%id159789%_)
           (_%proc159813%_ _%proc159792%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159786%_
       _%id159800%_
       _%proc159813%_
       _%rebind?159795%_))
    (let* ((_%klass159749%_ __gc-table::t)
           (_%id159752%_ 'HashTable::delete!)
           (_%proc159755%_ gc-table-delete!)
           (_%rebind?159758%_ '#f)
           (_%id159763%_ _%id159752%_)
           (_%proc159776%_ _%proc159755%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159749%_
       _%id159763%_
       _%proc159776%_
       _%rebind?159758%_))
    (let* ((_%klass159712%_ __gc-table::t)
           (_%id159715%_ 'HashTable::for-each)
           (_%proc159718%_ gc-table-for-each)
           (_%rebind?159721%_ '#f)
           (_%id159726%_ _%id159715%_)
           (_%proc159739%_ _%proc159718%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159712%_
       _%id159726%_
       _%proc159739%_
       _%rebind?159721%_))
    (let* ((_%klass159675%_ __gc-table::t)
           (_%id159678%_ 'HashTable::length)
           (_%proc159681%_ gc-table-length)
           (_%rebind?159684%_ '#f)
           (_%id159689%_ _%id159678%_)
           (_%proc159702%_ _%proc159681%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159675%_
       _%id159689%_
       _%proc159702%_
       _%rebind?159684%_))
    (let* ((_%klass159638%_ __gc-table::t)
           (_%id159641%_ 'HashTable::copy)
           (_%proc159644%_ gc-table-copy)
           (_%rebind?159647%_ '#f)
           (_%id159652%_ _%id159641%_)
           (_%proc159665%_ _%proc159644%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159638%_
       _%id159652%_
       _%proc159665%_
       _%rebind?159647%_))
    (let* ((_%klass159601%_ __gc-table::t)
           (_%id159604%_ 'HashTable::clear!)
           (_%proc159607%_ gc-table-clear!)
           (_%rebind?159610%_ '#f)
           (_%id159615%_ _%id159604%_)
           (_%proc159628%_ _%proc159607%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159601%_
       _%id159615%_
       _%proc159628%_
       _%rebind?159610%_))
    (define gambit-table-update!
      (lambda (_%table159594%_
               _%key159595%_
               _%update159596%_
               _%default159597%_)
        (let ((_%result159599%_
               (table-ref _%table159594%_ _%key159595%_ _%default159597%_)))
          (table-set!
           _%table159594%_
           _%key159595%_
           (_%update159596%_ _%default159597%_)))))
    (define gambit-table-for-each
      (lambda (_%table159591%_ _%proc159592%_)
        (table-for-each _%proc159592%_ _%table159591%_)))
    (define gambit-table-clear!
      (lambda (_%table159589%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table159589%_ '0 '5 '#f '#f))))
    (let* ((_%klass159552%_ (macro-type-table))
           (_%id159555%_ 'HashTable::ref)
           (_%proc159558%_ table-ref)
           (_%rebind?159561%_ '#f)
           (_%id159566%_ _%id159555%_)
           (_%proc159579%_ _%proc159558%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159552%_
       _%id159566%_
       _%proc159579%_
       _%rebind?159561%_))
    (let* ((_%klass159515%_ (macro-type-table))
           (_%id159518%_ 'HashTable::set!)
           (_%proc159521%_ table-set!)
           (_%rebind?159524%_ '#f)
           (_%id159529%_ _%id159518%_)
           (_%proc159542%_ _%proc159521%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159515%_
       _%id159529%_
       _%proc159542%_
       _%rebind?159524%_))
    (let* ((_%klass159478%_ (macro-type-table))
           (_%id159481%_ 'HashTable::update!)
           (_%proc159484%_ gambit-table-update!)
           (_%rebind?159487%_ '#f)
           (_%id159492%_ _%id159481%_)
           (_%proc159505%_ _%proc159484%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159478%_
       _%id159492%_
       _%proc159505%_
       _%rebind?159487%_))
    (let* ((_%klass159441%_ (macro-type-table))
           (_%id159444%_ 'HashTable::delete!)
           (_%proc159447%_ table-set!)
           (_%rebind?159450%_ '#f)
           (_%id159455%_ _%id159444%_)
           (_%proc159468%_ _%proc159447%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159441%_
       _%id159455%_
       _%proc159468%_
       _%rebind?159450%_))
    (let* ((_%klass159404%_ (macro-type-table))
           (_%id159407%_ 'HashTable::for-each)
           (_%proc159410%_ gambit-table-for-each)
           (_%rebind?159413%_ '#f)
           (_%id159418%_ _%id159407%_)
           (_%proc159431%_ _%proc159410%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159404%_
       _%id159418%_
       _%proc159431%_
       _%rebind?159413%_))
    (let* ((_%klass159367%_ (macro-type-table))
           (_%id159370%_ 'HashTable::length)
           (_%proc159373%_ table-length)
           (_%rebind?159376%_ '#f)
           (_%id159381%_ _%id159370%_)
           (_%proc159394%_ _%proc159373%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159367%_
       _%id159381%_
       _%proc159394%_
       _%rebind?159376%_))
    (let* ((_%klass159330%_ (macro-type-table))
           (_%id159333%_ 'HashTable::copy)
           (_%proc159336%_ table-copy)
           (_%rebind?159339%_ '#f)
           (_%id159344%_ _%id159333%_)
           (_%proc159357%_ _%proc159336%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159330%_
       _%id159344%_
       _%proc159357%_
       _%rebind?159339%_))
    (let* ((_%klass159293%_ (macro-type-table))
           (_%id159296%_ 'HashTable::clear!)
           (_%proc159299%_ gambit-table-clear!)
           (_%rebind?159302%_ '#f)
           (_%id159307%_ _%id159296%_)
           (_%proc159320%_ _%proc159299%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159293%_
       _%id159307%_
       _%proc159320%_
       _%rebind?159302%_))
    (define hash-table::t
      (let* ((_%slots159256%_ '(table count free hash test seed))
             (_%slot-vector159258%_ (list->vector (cons '#f _%slots159256%_)))
             (_%slot-table159284%_
              (let ((_%slot-table159260%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp161603
                       (lambda (_%slot159262%_ _%field159263%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159260%_
                            _%slot159262%_
                            _%field159263%_))
                         (let ((__tmp161604
                                (let ((_%sym159265%_ _%slot159262%_))
                                  (if (symbol? _%sym159265%_)
                                      (let ((_%sym159270%_ _%sym159265%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym159270%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym159265%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159260%_
                            __tmp161604
                            _%field159263%_))))
                      (__tmp161601
                       (let ((__tmp161602
                              (let ()
                                (declare (not safe))
                                (##length _%slots159256%_))))
                         (declare (not safe))
                         (##iota __tmp161602 '1))))
                  (declare (not safe))
                  (##for-each __tmp161603 _%slots159256%_ __tmp161601))
                _%slot-table159260%_))
             (_%flags159286%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields159288%_ '#())
             (_%properties159290%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots159256%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp161605 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags159286%_
         __table::t
         _%fields159288%_
         __tmp161605
         _%slot-vector159258%_
         _%slot-table159284%_
         _%properties159290%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots159219%_ '(gcht immediate))
             (_%slot-vector159221%_ (list->vector (cons '#f _%slots159219%_)))
             (_%slot-table159247%_
              (let ((_%slot-table159223%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp161608
                       (lambda (_%slot159225%_ _%field159226%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159223%_
                            _%slot159225%_
                            _%field159226%_))
                         (let ((__tmp161609
                                (let ((_%sym159228%_ _%slot159225%_))
                                  (if (symbol? _%sym159228%_)
                                      (let ((_%sym159233%_ _%sym159228%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym159233%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym159228%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159223%_
                            __tmp161609
                            _%field159226%_))))
                      (__tmp161606
                       (let ((__tmp161607
                              (let ()
                                (declare (not safe))
                                (##length _%slots159219%_))))
                         (declare (not safe))
                         (##iota __tmp161607 '1))))
                  (declare (not safe))
                  (##for-each __tmp161608 _%slots159219%_ __tmp161606))
                _%slot-table159223%_))
             (_%flags159249%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields159251%_ '#())
             (_%properties159253%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots159219%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp161610 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags159249%_
         __gc-table::t
         _%fields159251%_
         __tmp161610
         _%slot-vector159221%_
         _%slot-table159247%_
         _%properties159253%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp161612 (list))
            (__tmp161611
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp161612
         '(table lock)
         __tmp161611
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args159216%_
        (apply make-instance locked-hash-table::t _%$args159216%_)))
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
      (let ((__tmp161614 (list))
            (__tmp161613
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp161614
         '(table key-check)
         __tmp161613
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args159213%_
        (apply make-instance checked-hash-table::t _%$args159213%_)))
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
      (let ((__tmp161616 (list hash-table::t))
            (__tmp161615 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp161616
         '()
         __tmp161615
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args159210%_
        (apply make-instance eq-hash-table::t _%$args159210%_)))
    (define eqv-hash-table::t
      (let ((__tmp161618 (list hash-table::t))
            (__tmp161617 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp161618
         '()
         __tmp161617
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args159207%_
        (apply make-instance eqv-hash-table::t _%$args159207%_)))
    (define symbol-hash-table::t
      (let ((__tmp161620 (list hash-table::t))
            (__tmp161619 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp161620
         '()
         __tmp161619
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args159204%_
        (apply make-instance symbol-hash-table::t _%$args159204%_)))
    (define string-hash-table::t
      (let ((__tmp161622 (list hash-table::t))
            (__tmp161621 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp161622
         '()
         __tmp161621
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args159201%_
        (apply make-instance string-hash-table::t _%$args159201%_)))
    (define immediate-hash-table::t
      (let ((__tmp161624 (list hash-table::t))
            (__tmp161623 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp161624
         '()
         __tmp161623
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args159198%_
        (apply make-instance immediate-hash-table::t _%$args159198%_)))
    (let* ((_%klass159161%_ hash-table::t)
           (_%id159164%_ 'HashTable::ref)
           (_%proc159167%_ raw-table-ref)
           (_%rebind?159170%_ '#f)
           (_%id159175%_ _%id159164%_)
           (_%proc159188%_ _%proc159167%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159161%_
       _%id159175%_
       _%proc159188%_
       _%rebind?159170%_))
    (let* ((_%klass159124%_ hash-table::t)
           (_%id159127%_ 'HashTable::set!)
           (_%proc159130%_ raw-table-set!)
           (_%rebind?159133%_ '#f)
           (_%id159138%_ _%id159127%_)
           (_%proc159151%_ _%proc159130%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159124%_
       _%id159138%_
       _%proc159151%_
       _%rebind?159133%_))
    (let* ((_%klass159087%_ hash-table::t)
           (_%id159090%_ 'HashTable::update!)
           (_%proc159093%_ raw-table-update!)
           (_%rebind?159096%_ '#f)
           (_%id159101%_ _%id159090%_)
           (_%proc159114%_ _%proc159093%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159087%_
       _%id159101%_
       _%proc159114%_
       _%rebind?159096%_))
    (let* ((_%klass159050%_ hash-table::t)
           (_%id159053%_ 'HashTable::delete!)
           (_%proc159056%_ raw-table-delete!)
           (_%rebind?159059%_ '#f)
           (_%id159064%_ _%id159053%_)
           (_%proc159077%_ _%proc159056%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159050%_
       _%id159064%_
       _%proc159077%_
       _%rebind?159059%_))
    (let* ((_%klass159013%_ hash-table::t)
           (_%id159016%_ 'HashTable::for-each)
           (_%proc159019%_ raw-table-for-each)
           (_%rebind?159022%_ '#f)
           (_%id159027%_ _%id159016%_)
           (_%proc159040%_ _%proc159019%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159013%_
       _%id159027%_
       _%proc159040%_
       _%rebind?159022%_))
    (let* ((_%klass158976%_ hash-table::t)
           (_%id158979%_ 'HashTable::length)
           (_%proc158982%_ &raw-table-count)
           (_%rebind?158985%_ '#f)
           (_%id158990%_ _%id158979%_)
           (_%proc159003%_ _%proc158982%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158976%_
       _%id158990%_
       _%proc159003%_
       _%rebind?158985%_))
    (let* ((_%klass158939%_ hash-table::t)
           (_%id158942%_ 'HashTable::copy)
           (_%proc158945%_ raw-table-copy)
           (_%rebind?158948%_ '#f)
           (_%id158953%_ _%id158942%_)
           (_%proc158966%_ _%proc158945%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158939%_
       _%id158953%_
       _%proc158966%_
       _%rebind?158948%_))
    (let* ((_%klass158902%_ hash-table::t)
           (_%id158905%_ 'HashTable::clear!)
           (_%proc158908%_ raw-table-clear!)
           (_%rebind?158911%_ '#f)
           (_%id158916%_ _%id158905%_)
           (_%proc158929%_ _%proc158908%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158902%_
       _%id158916%_
       _%proc158929%_
       _%rebind?158911%_))
    (let* ((_%klass158865%_ eq-hash-table::t)
           (_%id158868%_ 'HashTable::ref)
           (_%proc158871%_ eq-table-ref)
           (_%rebind?158874%_ '#f)
           (_%id158879%_ _%id158868%_)
           (_%proc158892%_ _%proc158871%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158865%_
       _%id158879%_
       _%proc158892%_
       _%rebind?158874%_))
    (let* ((_%klass158828%_ eq-hash-table::t)
           (_%id158831%_ 'HashTable::set!)
           (_%proc158834%_ eq-table-set!)
           (_%rebind?158837%_ '#f)
           (_%id158842%_ _%id158831%_)
           (_%proc158855%_ _%proc158834%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158828%_
       _%id158842%_
       _%proc158855%_
       _%rebind?158837%_))
    (let* ((_%klass158791%_ eq-hash-table::t)
           (_%id158794%_ 'HashTable::update!)
           (_%proc158797%_ eq-table-update!)
           (_%rebind?158800%_ '#f)
           (_%id158805%_ _%id158794%_)
           (_%proc158818%_ _%proc158797%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158791%_
       _%id158805%_
       _%proc158818%_
       _%rebind?158800%_))
    (let* ((_%klass158754%_ eq-hash-table::t)
           (_%id158757%_ 'HashTable::delete!)
           (_%proc158760%_ eq-table-delete!)
           (_%rebind?158763%_ '#f)
           (_%id158768%_ _%id158757%_)
           (_%proc158781%_ _%proc158760%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158754%_
       _%id158768%_
       _%proc158781%_
       _%rebind?158763%_))
    (let* ((_%klass158717%_ eqv-hash-table::t)
           (_%id158720%_ 'HashTable::ref)
           (_%proc158723%_ eqv-table-ref)
           (_%rebind?158726%_ '#f)
           (_%id158731%_ _%id158720%_)
           (_%proc158744%_ _%proc158723%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158717%_
       _%id158731%_
       _%proc158744%_
       _%rebind?158726%_))
    (let* ((_%klass158680%_ eqv-hash-table::t)
           (_%id158683%_ 'HashTable::set!)
           (_%proc158686%_ eqv-table-set!)
           (_%rebind?158689%_ '#f)
           (_%id158694%_ _%id158683%_)
           (_%proc158707%_ _%proc158686%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158680%_
       _%id158694%_
       _%proc158707%_
       _%rebind?158689%_))
    (let* ((_%klass158643%_ eqv-hash-table::t)
           (_%id158646%_ 'HashTable::update!)
           (_%proc158649%_ eqv-table-update!)
           (_%rebind?158652%_ '#f)
           (_%id158657%_ _%id158646%_)
           (_%proc158670%_ _%proc158649%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158643%_
       _%id158657%_
       _%proc158670%_
       _%rebind?158652%_))
    (let* ((_%klass158606%_ eqv-hash-table::t)
           (_%id158609%_ 'HashTable::delete!)
           (_%proc158612%_ eqv-table-delete!)
           (_%rebind?158615%_ '#f)
           (_%id158620%_ _%id158609%_)
           (_%proc158633%_ _%proc158612%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158606%_
       _%id158620%_
       _%proc158633%_
       _%rebind?158615%_))
    (let* ((_%klass158569%_ symbol-hash-table::t)
           (_%id158572%_ 'HashTable::ref)
           (_%proc158575%_ symbolic-table-ref)
           (_%rebind?158578%_ '#f)
           (_%id158583%_ _%id158572%_)
           (_%proc158596%_ _%proc158575%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158569%_
       _%id158583%_
       _%proc158596%_
       _%rebind?158578%_))
    (let* ((_%klass158532%_ symbol-hash-table::t)
           (_%id158535%_ 'HashTable::set!)
           (_%proc158538%_ symbolic-table-set!)
           (_%rebind?158541%_ '#f)
           (_%id158546%_ _%id158535%_)
           (_%proc158559%_ _%proc158538%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158532%_
       _%id158546%_
       _%proc158559%_
       _%rebind?158541%_))
    (let* ((_%klass158495%_ symbol-hash-table::t)
           (_%id158498%_ 'HashTable::update!)
           (_%proc158501%_ symbolic-table-update!)
           (_%rebind?158504%_ '#f)
           (_%id158509%_ _%id158498%_)
           (_%proc158522%_ _%proc158501%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158495%_
       _%id158509%_
       _%proc158522%_
       _%rebind?158504%_))
    (let* ((_%klass158458%_ symbol-hash-table::t)
           (_%id158461%_ 'HashTable::delete!)
           (_%proc158464%_ symbolic-table-delete!)
           (_%rebind?158467%_ '#f)
           (_%id158472%_ _%id158461%_)
           (_%proc158485%_ _%proc158464%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158458%_
       _%id158472%_
       _%proc158485%_
       _%rebind?158467%_))
    (let* ((_%klass158421%_ string-hash-table::t)
           (_%id158424%_ 'HashTable::ref)
           (_%proc158427%_ string-table-ref)
           (_%rebind?158430%_ '#f)
           (_%id158435%_ _%id158424%_)
           (_%proc158448%_ _%proc158427%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158421%_
       _%id158435%_
       _%proc158448%_
       _%rebind?158430%_))
    (let* ((_%klass158384%_ string-hash-table::t)
           (_%id158387%_ 'HashTable::set!)
           (_%proc158390%_ string-table-set!)
           (_%rebind?158393%_ '#f)
           (_%id158398%_ _%id158387%_)
           (_%proc158411%_ _%proc158390%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158384%_
       _%id158398%_
       _%proc158411%_
       _%rebind?158393%_))
    (let* ((_%klass158347%_ string-hash-table::t)
           (_%id158350%_ 'HashTable::update!)
           (_%proc158353%_ string-table-update!)
           (_%rebind?158356%_ '#f)
           (_%id158361%_ _%id158350%_)
           (_%proc158374%_ _%proc158353%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158347%_
       _%id158361%_
       _%proc158374%_
       _%rebind?158356%_))
    (let* ((_%klass158310%_ string-hash-table::t)
           (_%id158313%_ 'HashTable::delete!)
           (_%proc158316%_ string-table-delete!)
           (_%rebind?158319%_ '#f)
           (_%id158324%_ _%id158313%_)
           (_%proc158337%_ _%proc158316%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158310%_
       _%id158324%_
       _%proc158337%_
       _%rebind?158319%_))
    (let* ((_%klass158273%_ immediate-hash-table::t)
           (_%id158276%_ 'HashTable::ref)
           (_%proc158279%_ immediate-table-ref)
           (_%rebind?158282%_ '#f)
           (_%id158287%_ _%id158276%_)
           (_%proc158300%_ _%proc158279%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158273%_
       _%id158287%_
       _%proc158300%_
       _%rebind?158282%_))
    (let* ((_%klass158236%_ immediate-hash-table::t)
           (_%id158239%_ 'HashTable::set!)
           (_%proc158242%_ immediate-table-set!)
           (_%rebind?158245%_ '#f)
           (_%id158250%_ _%id158239%_)
           (_%proc158263%_ _%proc158242%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158236%_
       _%id158250%_
       _%proc158263%_
       _%rebind?158245%_))
    (let* ((_%klass158199%_ immediate-hash-table::t)
           (_%id158202%_ 'HashTable::update!)
           (_%proc158205%_ immediate-table-update!)
           (_%rebind?158208%_ '#f)
           (_%id158213%_ _%id158202%_)
           (_%proc158226%_ _%proc158205%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158199%_
       _%id158213%_
       _%proc158226%_
       _%rebind?158208%_))
    (let* ((_%klass158162%_ immediate-hash-table::t)
           (_%id158165%_ 'HashTable::delete!)
           (_%proc158168%_ immediate-table-delete!)
           (_%rebind?158171%_ '#f)
           (_%id158176%_ _%id158165%_)
           (_%proc158189%_ _%proc158168%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158162%_
       _%id158176%_
       _%proc158189%_
       _%rebind?158171%_))
    (let* ((_%klass158125%_ gc-hash-table::t)
           (_%id158128%_ 'HashTable::ref)
           (_%proc158131%_ gc-table-ref)
           (_%rebind?158134%_ '#f)
           (_%id158139%_ _%id158128%_)
           (_%proc158152%_ _%proc158131%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158125%_
       _%id158139%_
       _%proc158152%_
       _%rebind?158134%_))
    (let* ((_%klass158088%_ gc-hash-table::t)
           (_%id158091%_ 'HashTable::set!)
           (_%proc158094%_ gc-table-set!)
           (_%rebind?158097%_ '#f)
           (_%id158102%_ _%id158091%_)
           (_%proc158115%_ _%proc158094%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158088%_
       _%id158102%_
       _%proc158115%_
       _%rebind?158097%_))
    (let* ((_%klass158051%_ gc-hash-table::t)
           (_%id158054%_ 'HashTable::update!)
           (_%proc158057%_ gc-table-update!)
           (_%rebind?158060%_ '#f)
           (_%id158065%_ _%id158054%_)
           (_%proc158078%_ _%proc158057%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158051%_
       _%id158065%_
       _%proc158078%_
       _%rebind?158060%_))
    (let* ((_%klass158014%_ gc-hash-table::t)
           (_%id158017%_ 'HashTable::delete!)
           (_%proc158020%_ gc-table-delete!)
           (_%rebind?158023%_ '#f)
           (_%id158028%_ _%id158017%_)
           (_%proc158041%_ _%proc158020%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158014%_
       _%id158028%_
       _%proc158041%_
       _%rebind?158023%_))
    (let* ((_%klass157977%_ gc-hash-table::t)
           (_%id157980%_ 'HashTable::for-each)
           (_%proc157983%_ gc-table-for-each)
           (_%rebind?157986%_ '#f)
           (_%id157991%_ _%id157980%_)
           (_%proc158004%_ _%proc157983%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157977%_
       _%id157991%_
       _%proc158004%_
       _%rebind?157986%_))
    (let* ((_%klass157940%_ gc-hash-table::t)
           (_%id157943%_ 'HashTable::length)
           (_%proc157946%_ gc-table-length)
           (_%rebind?157949%_ '#f)
           (_%id157954%_ _%id157943%_)
           (_%proc157967%_ _%proc157946%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157940%_
       _%id157954%_
       _%proc157967%_
       _%rebind?157949%_))
    (let* ((_%klass157903%_ gc-hash-table::t)
           (_%id157906%_ 'HashTable::copy)
           (_%proc157909%_ gc-table-copy)
           (_%rebind?157912%_ '#f)
           (_%id157917%_ _%id157906%_)
           (_%proc157930%_ _%proc157909%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157903%_
       _%id157917%_
       _%proc157930%_
       _%rebind?157912%_))
    (let* ((_%klass157866%_ gc-hash-table::t)
           (_%id157869%_ 'HashTable::clear!)
           (_%proc157872%_ gc-table-clear!)
           (_%rebind?157875%_ '#f)
           (_%id157880%_ _%id157869%_)
           (_%proc157893%_ _%proc157872%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157866%_
       _%id157880%_
       _%proc157893%_
       _%rebind?157875%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref149127%_
      (lambda (_%self157787%_ _%key157789%_ _%default157790%_)
        (let* ((_%self157793%_ _%self157787%_)
               (_%key157802%_ _%key157789%_)
               (_%default157810%_ _%default157790%_))
          (let ((_%h157819%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157793%_ '1 '#f '#f)))
                (_%l157821%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157793%_ '2 '#f '#f))))
            (let ((__tmp161627
                   (lambda ()
                     (let ((_%self147579157825%_ _%l157821%_))
                       (declare (not safe))
                       (let ((_%object157828157833%_
                              (##unchecked-structure-ref
                               _%self147579157825%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method157829157834%_
                              (##unchecked-structure-ref
                               _%self147579157825%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method157829157834%_ _%object157828157833%_)))))
                  (__tmp161626
                   (lambda ()
                     (let* ((_%self146674157837%_ _%h157819%_)
                            (_%key157840%_ _%key157802%_)
                            (_%default157843%_ _%default157810%_))
                       (declare (not safe))
                       (let ((_%object157846157851%_
                              (##unchecked-structure-ref
                               _%self146674157837%_
                               '1
                               '#f
                               'ref))
                             (_%method157847157852%_
                              (##unchecked-structure-ref
                               _%self146674157837%_
                               '7
                               '#f
                               'ref)))
                         (_%method157847157852%_
                          _%object157846157851%_
                          _%key157840%_
                          _%default157843%_)))))
                  (__tmp161625
                   (lambda ()
                     (let ((_%self147870157855%_ _%l157821%_))
                       (declare (not safe))
                       (let ((_%object157858157863%_
                              (##unchecked-structure-ref
                               _%self147870157855%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method157859157864%_
                              (##unchecked-structure-ref
                               _%self147870157855%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method157859157864%_ _%object157858157863%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161627 __tmp161626 __tmp161625))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref149127%_
       '#f))
    (define _%locked-hash-table::HashTable::set!149129%_
      (lambda (_%self157585%_ _%key157587%_ _%value157588%_)
        (let* ((_%self157591%_ _%self157585%_)
               (_%key157600%_ _%key157587%_)
               (_%value157608%_ _%value157588%_))
          (let ((_%h157617%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157591%_ '1 '#f '#f)))
                (_%l157619%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157591%_ '2 '#f '#f))))
            (let ((__tmp161630
                   (lambda ()
                     (let ((_%self148161157623%_ _%l157619%_))
                       (declare (not safe))
                       (let ((_%object157626157631%_
                              (##unchecked-structure-ref
                               _%self148161157623%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157627157632%_
                              (##unchecked-structure-ref
                               _%self148161157623%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157627157632%_ _%object157626157631%_)))))
                  (__tmp161629
                   (lambda ()
                     (let* ((_%self146969157635%_ _%h157617%_)
                            (_%key157638%_ _%key157600%_)
                            (_%value157641%_ _%value157608%_))
                       (declare (not safe))
                       (let ((_%object157644157649%_
                              (##unchecked-structure-ref
                               _%self146969157635%_
                               '1
                               '#f
                               'set!))
                             (_%method157645157650%_
                              (##unchecked-structure-ref
                               _%self146969157635%_
                               '8
                               '#f
                               'set!)))
                         (_%method157645157650%_
                          _%object157644157649%_
                          _%key157638%_
                          _%value157641%_)))))
                  (__tmp161628
                   (lambda ()
                     (let ((_%self148452157653%_ _%l157619%_))
                       (declare (not safe))
                       (let ((_%object157656157661%_
                              (##unchecked-structure-ref
                               _%self148452157653%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157657157662%_
                              (##unchecked-structure-ref
                               _%self148452157653%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157657157662%_ _%object157656157661%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161630 __tmp161629 __tmp161628))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!149129%_
       '#f))
    (define _%locked-hash-table::HashTable::update!149131%_
      (lambda (_%self157371%_ _%key157373%_ _%update157374%_ _%default157375%_)
        (let* ((_%self157378%_ _%self157371%_)
               (_%key157387%_ _%key157373%_)
               (_%update157395%_ _%update157374%_)
               (_%default157403%_ _%default157375%_))
          (let ((_%h157412%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157378%_ '1 '#f '#f)))
                (_%l157414%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157378%_ '2 '#f '#f))))
            (let ((__tmp161633
                   (lambda ()
                     (let ((_%self148161157418%_ _%l157414%_))
                       (declare (not safe))
                       (let ((_%object157421157426%_
                              (##unchecked-structure-ref
                               _%self148161157418%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157422157427%_
                              (##unchecked-structure-ref
                               _%self148161157418%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157422157427%_ _%object157421157426%_)))))
                  (__tmp161632
                   (lambda ()
                     (let* ((_%self147264157430%_ _%h157412%_)
                            (_%key157433%_ _%key157387%_)
                            (_%proc157436%_ _%update157395%_)
                            (_%default157439%_ _%default157403%_))
                       (declare (not safe))
                       (let ((_%object157442157447%_
                              (##unchecked-structure-ref
                               _%self147264157430%_
                               '1
                               '#f
                               'update!))
                             (_%method157443157448%_
                              (##unchecked-structure-ref
                               _%self147264157430%_
                               '9
                               '#f
                               'update!)))
                         (_%method157443157448%_
                          _%object157442157447%_
                          _%key157433%_
                          _%proc157436%_
                          _%default157439%_)))))
                  (__tmp161631
                   (lambda ()
                     (let ((_%self148452157451%_ _%l157414%_))
                       (declare (not safe))
                       (let ((_%object157454157459%_
                              (##unchecked-structure-ref
                               _%self148452157451%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157455157460%_
                              (##unchecked-structure-ref
                               _%self148452157451%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157455157460%_ _%object157454157459%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161633 __tmp161632 __tmp161631))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!149131%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!149133%_
      (lambda (_%self157181%_ _%key157183%_)
        (let* ((_%self157186%_ _%self157181%_) (_%key157195%_ _%key157183%_))
          (let ((_%h157204%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157186%_ '1 '#f '#f)))
                (_%l157206%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157186%_ '2 '#f '#f))))
            (let ((__tmp161636
                   (lambda ()
                     (let ((_%self148161157210%_ _%l157206%_))
                       (declare (not safe))
                       (let ((_%object157213157218%_
                              (##unchecked-structure-ref
                               _%self148161157210%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157214157219%_
                              (##unchecked-structure-ref
                               _%self148161157210%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157214157219%_ _%object157213157218%_)))))
                  (__tmp161635
                   (lambda ()
                     (let* ((_%self145776157222%_ _%h157204%_)
                            (_%key157225%_ _%key157195%_))
                       (declare (not safe))
                       (let ((_%object157228157233%_
                              (##unchecked-structure-ref
                               _%self145776157222%_
                               '1
                               '#f
                               'delete!))
                             (_%method157229157234%_
                              (##unchecked-structure-ref
                               _%self145776157222%_
                               '4
                               '#f
                               'delete!)))
                         (_%method157229157234%_
                          _%object157228157233%_
                          _%key157225%_)))))
                  (__tmp161634
                   (lambda ()
                     (let ((_%self148452157237%_ _%l157206%_))
                       (declare (not safe))
                       (let ((_%object157240157245%_
                              (##unchecked-structure-ref
                               _%self148452157237%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157241157246%_
                              (##unchecked-structure-ref
                               _%self148452157237%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157241157246%_ _%object157240157245%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161636 __tmp161635 __tmp161634))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!149133%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each149135%_
      (lambda (_%self156991%_ _%proc156993%_)
        (let* ((_%self156996%_ _%self156991%_) (_%proc157005%_ _%proc156993%_))
          (let ((_%h157014%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156996%_ '1 '#f '#f)))
                (_%l157016%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156996%_ '2 '#f '#f))))
            (let ((__tmp161639
                   (lambda ()
                     (let ((_%self147579157020%_ _%l157016%_))
                       (declare (not safe))
                       (let ((_%object157023157028%_
                              (##unchecked-structure-ref
                               _%self147579157020%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method157024157029%_
                              (##unchecked-structure-ref
                               _%self147579157020%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method157024157029%_ _%object157023157028%_)))))
                  (__tmp161638
                   (lambda ()
                     (let* ((_%self146069157032%_ _%h157014%_)
                            (_%proc157035%_ _%proc157005%_))
                       (declare (not safe))
                       (let ((_%object157038157043%_
                              (##unchecked-structure-ref
                               _%self146069157032%_
                               '1
                               '#f
                               'for-each))
                             (_%method157039157044%_
                              (##unchecked-structure-ref
                               _%self146069157032%_
                               '5
                               '#f
                               'for-each)))
                         (_%method157039157044%_
                          _%object157038157043%_
                          _%proc157035%_)))))
                  (__tmp161637
                   (lambda ()
                     (let ((_%self147870157047%_ _%l157016%_))
                       (declare (not safe))
                       (let ((_%object157050157055%_
                              (##unchecked-structure-ref
                               _%self147870157047%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method157051157056%_
                              (##unchecked-structure-ref
                               _%self147870157047%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method157051157056%_ _%object157050157055%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161639 __tmp161638 __tmp161637))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each149135%_
       '#f))
    (define _%locked-hash-table::HashTable::length149137%_
      (lambda (_%self156806%_)
        (let ((_%self156810%_ _%self156806%_))
          (let ((_%h156820%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156810%_ '1 '#f '#f)))
                (_%l156822%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156810%_ '2 '#f '#f))))
            ((lambda (_%g156824156826%_)
               (let ((_%val156829%_ _%g156824156826%_))
                 (if (fixnum? _%val156829%_)
                     _%val156829%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val156829%_)
                       '#!void))))
             (let ((__tmp161642
                    (lambda ()
                      (let ((_%self147579156833%_ _%l156822%_))
                        (declare (not safe))
                        (let ((_%object156836156841%_
                               (##unchecked-structure-ref
                                _%self147579156833%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method156837156842%_
                               (##unchecked-structure-ref
                                _%self147579156833%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method156837156842%_ _%object156836156841%_)))))
                   (__tmp161641
                    (lambda ()
                      (let ((_%self146380156845%_ _%h156820%_))
                        (declare (not safe))
                        (let ((_%object156848156853%_
                               (##unchecked-structure-ref
                                _%self146380156845%_
                                '1
                                '#f
                                'length))
                              (_%method156849156854%_
                               (##unchecked-structure-ref
                                _%self146380156845%_
                                '6
                                '#f
                                'length)))
                          (_%method156849156854%_ _%object156848156853%_)))))
                   (__tmp161640
                    (lambda ()
                      (let ((_%self147870156857%_ _%l156822%_))
                        (declare (not safe))
                        (let ((_%object156860156865%_
                               (##unchecked-structure-ref
                                _%self147870156857%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method156861156866%_
                               (##unchecked-structure-ref
                                _%self147870156857%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method156861156866%_ _%object156860156865%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp161642 __tmp161641 __tmp161640)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length149137%_
       '#f))
    (define _%locked-hash-table::HashTable::copy149139%_
      (lambda (_%self156625%_)
        (let ((_%self156629%_ _%self156625%_))
          (let ((_%h156639%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156629%_ '1 '#f '#f)))
                (_%l156641%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156629%_ '2 '#f '#f))))
            (let ((_%$obj156680%_
                   (let ((__tmp161645
                          (lambda ()
                            (let ((_%self147579156645%_ _%l156641%_))
                              (declare (not safe))
                              (let ((_%object156648156653%_
                                     (##unchecked-structure-ref
                                      _%self147579156645%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method156649156654%_
                                     (##unchecked-structure-ref
                                      _%self147579156645%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method156649156654%_
                                 _%object156648156653%_)))))
                         (__tmp161644
                          (lambda ()
                            (let ((_%self145482156657%_ _%h156639%_))
                              (declare (not safe))
                              (let ((_%object156660156665%_
                                     (##unchecked-structure-ref
                                      _%self145482156657%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method156661156666%_
                                     (##unchecked-structure-ref
                                      _%self145482156657%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method156661156666%_
                                 _%object156660156665%_)))))
                         (__tmp161643
                          (lambda ()
                            (let ((_%self147870156669%_ _%l156641%_))
                              (declare (not safe))
                              (let ((_%object156672156677%_
                                     (##unchecked-structure-ref
                                      _%self147870156669%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method156673156678%_
                                     (##unchecked-structure-ref
                                      _%self147870156669%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method156673156678%_
                                 _%object156672156677%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp161645 __tmp161644 __tmp161643))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj156680%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj156680%_)))
                       '#t)
                  _%$obj156680%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj156680%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy149139%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!149141%_
      (lambda (_%self156447%_)
        (let ((_%self156451%_ _%self156447%_))
          (let ((_%h156461%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156451%_ '1 '#f '#f)))
                (_%l156463%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156451%_ '2 '#f '#f))))
            (let ((__tmp161648
                   (lambda ()
                     (let ((_%self148161156467%_ _%l156463%_))
                       (declare (not safe))
                       (let ((_%object156470156475%_
                              (##unchecked-structure-ref
                               _%self148161156467%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method156471156476%_
                              (##unchecked-structure-ref
                               _%self148161156467%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method156471156476%_ _%object156470156475%_)))))
                  (__tmp161647
                   (lambda ()
                     (let ((_%self145190156479%_ _%h156461%_))
                       (declare (not safe))
                       (let ((_%object156482156487%_
                              (##unchecked-structure-ref
                               _%self145190156479%_
                               '1
                               '#f
                               'clear!))
                             (_%method156483156488%_
                              (##unchecked-structure-ref
                               _%self145190156479%_
                               '2
                               '#f
                               'clear!)))
                         (_%method156483156488%_ _%object156482156487%_)))))
                  (__tmp161646
                   (lambda ()
                     (let ((_%self148452156491%_ _%l156463%_))
                       (declare (not safe))
                       (let ((_%object156494156499%_
                              (##unchecked-structure-ref
                               _%self148452156491%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method156495156500%_
                              (##unchecked-structure-ref
                               _%self148452156491%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method156495156500%_ _%object156494156499%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161648 __tmp161647 __tmp161646))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!149141%_
       '#f))
    (let* ((_%klass156287%_ (macro-type-mutex))
           (_%id156290%_ 'Locker::read-lock!)
           (_%proc156293%_ mutex-lock!)
           (_%rebind?156296%_ '#f)
           (_%id156301%_ _%id156290%_)
           (_%proc156314%_ _%proc156293%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156287%_
       _%id156301%_
       _%proc156314%_
       _%rebind?156296%_))
    (let* ((_%klass156250%_ (macro-type-mutex))
           (_%id156253%_ 'Locker::read-unlock!)
           (_%proc156256%_ mutex-unlock!)
           (_%rebind?156259%_ '#f)
           (_%id156264%_ _%id156253%_)
           (_%proc156277%_ _%proc156256%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156250%_
       _%id156264%_
       _%proc156277%_
       _%rebind?156259%_))
    (let* ((_%klass156213%_ (macro-type-mutex))
           (_%id156216%_ 'Locker::write-lock!)
           (_%proc156219%_ mutex-lock!)
           (_%rebind?156222%_ '#f)
           (_%id156227%_ _%id156216%_)
           (_%proc156240%_ _%proc156219%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156213%_
       _%id156227%_
       _%proc156240%_
       _%rebind?156222%_))
    (let* ((_%klass156176%_ (macro-type-mutex))
           (_%id156179%_ 'Locker::write-unlock!)
           (_%proc156182%_ mutex-unlock!)
           (_%rebind?156185%_ '#f)
           (_%id156190%_ _%id156179%_)
           (_%proc156203%_ _%proc156182%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156176%_
       _%id156190%_
       _%proc156203%_
       _%rebind?156185%_))
    (define _%checked-hash-table::HashTable::ref149352%_
      (lambda (_%self156117%_ _%key156118%_ _%default156119%_)
        (let* ((_%self156122%_ _%self156117%_)
               (_%key156131%_ _%key156118%_)
               (_%default156139%_ _%default156119%_))
          (declare (not safe))
          (let ((_%h156150%_
                 (##unchecked-structure-ref _%self156122%_ '1 '#f '#f))
                (_%key?156152%_
                 (##unchecked-structure-ref _%self156122%_ '2 '#f '#f)))
            (if ((lambda (_%key?156155%_ _%key156156%_ _%default156157%_)
                   (_%key?156155%_ _%key156156%_))
                 _%key?156152%_
                 _%key156131%_
                 _%default156139%_)
                (let* ((_%self146674156159%_ _%h156150%_)
                       (_%key156162%_ _%key156131%_)
                       (_%default156165%_ _%default156139%_))
                  (declare (not safe))
                  (let ((_%object156168156173%_
                         (##unchecked-structure-ref
                          _%self146674156159%_
                          '1
                          '#f
                          'ref))
                        (_%method156169156174%_
                         (##unchecked-structure-ref
                          _%self146674156159%_
                          '7
                          '#f
                          'ref)))
                    (_%method156169156174%_
                     _%object156168156173%_
                     _%key156162%_
                     _%default156165%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key156131%_ (cons _%default156139%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref149352%_
       '#f))
    (define _%checked-hash-table::HashTable::set!149354%_
      (lambda (_%self155935%_ _%key155936%_ _%value155937%_)
        (let* ((_%self155940%_ _%self155935%_)
               (_%key155949%_ _%key155936%_)
               (_%value155957%_ _%value155937%_))
          (declare (not safe))
          (let ((_%h155968%_
                 (##unchecked-structure-ref _%self155940%_ '1 '#f '#f))
                (_%key?155970%_
                 (##unchecked-structure-ref _%self155940%_ '2 '#f '#f)))
            (if ((lambda (_%key?155973%_ _%key155974%_ _%value155975%_)
                   (_%key?155973%_ _%key155974%_))
                 _%key?155970%_
                 _%key155949%_
                 _%value155957%_)
                (let* ((_%self146969155977%_ _%h155968%_)
                       (_%key155980%_ _%key155949%_)
                       (_%value155983%_ _%value155957%_))
                  (declare (not safe))
                  (let ((_%object155986155991%_
                         (##unchecked-structure-ref
                          _%self146969155977%_
                          '1
                          '#f
                          'set!))
                        (_%method155987155992%_
                         (##unchecked-structure-ref
                          _%self146969155977%_
                          '8
                          '#f
                          'set!)))
                    (_%method155987155992%_
                     _%object155986155991%_
                     _%key155980%_
                     _%value155983%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key155949%_ (cons _%value155957%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!149354%_
       '#f))
    (define _%checked-hash-table::HashTable::update!149356%_
      (lambda (_%self155740%_ _%key155741%_ _%update155742%_ _%default155743%_)
        (let* ((_%self155746%_ _%self155740%_)
               (_%key155755%_ _%key155741%_)
               (_%update155763%_ _%update155742%_)
               (_%default155771%_ _%default155743%_))
          (declare (not safe))
          (let ((_%h155782%_
                 (##unchecked-structure-ref _%self155746%_ '1 '#f '#f))
                (_%key?155784%_
                 (##unchecked-structure-ref _%self155746%_ '2 '#f '#f)))
            (if ((lambda (_%key?155787%_
                          _%key155788%_
                          _%update155789%_
                          _%default155790%_)
                   (_%key?155787%_ _%key155788%_))
                 _%key?155784%_
                 _%key155755%_
                 _%update155763%_
                 _%default155771%_)
                (let* ((_%self147264155792%_ _%h155782%_)
                       (_%key155795%_ _%key155755%_)
                       (_%proc155798%_ _%update155763%_)
                       (_%default155801%_ _%default155771%_))
                  (declare (not safe))
                  (let ((_%object155804155809%_
                         (##unchecked-structure-ref
                          _%self147264155792%_
                          '1
                          '#f
                          'update!))
                        (_%method155805155810%_
                         (##unchecked-structure-ref
                          _%self147264155792%_
                          '9
                          '#f
                          'update!)))
                    (_%method155805155810%_
                     _%object155804155809%_
                     _%key155795%_
                     _%proc155798%_
                     _%default155801%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key155755%_
                         (cons _%update155763%_ (cons _%default155771%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!149356%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!149358%_
      (lambda (_%self155571%_ _%key155572%_)
        (let* ((_%self155575%_ _%self155571%_) (_%key155584%_ _%key155572%_))
          (declare (not safe))
          (let ((_%h155595%_
                 (##unchecked-structure-ref _%self155575%_ '1 '#f '#f))
                (_%key?155597%_
                 (##unchecked-structure-ref _%self155575%_ '2 '#f '#f)))
            (if ((lambda (_%key?155600%_ _%key155601%_)
                   (_%key?155600%_ _%key155601%_))
                 _%key?155597%_
                 _%key155584%_)
                (let* ((_%self145776155603%_ _%h155595%_)
                       (_%key155606%_ _%key155584%_))
                  (declare (not safe))
                  (let ((_%object155609155614%_
                         (##unchecked-structure-ref
                          _%self145776155603%_
                          '1
                          '#f
                          'delete!))
                        (_%method155610155615%_
                         (##unchecked-structure-ref
                          _%self145776155603%_
                          '4
                          '#f
                          'delete!)))
                    (_%method155610155615%_
                     _%object155609155614%_
                     _%key155606%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key155584%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!149358%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each149360%_
      (lambda (_%self155402%_ _%proc155403%_)
        (let* ((_%self155406%_ _%self155402%_) (_%proc155415%_ _%proc155403%_))
          (declare (not safe))
          (let ((_%h155426%_
                 (##unchecked-structure-ref _%self155406%_ '1 '#f '#f))
                (_%key?155428%_
                 (##unchecked-structure-ref _%self155406%_ '2 '#f '#f)))
            (if ((lambda (_%key?155431%_ _%proc155432%_) '#t)
                 _%key?155428%_
                 _%proc155415%_)
                (let* ((_%self146069155434%_ _%h155426%_)
                       (_%proc155437%_ _%proc155415%_))
                  (declare (not safe))
                  (let ((_%object155440155445%_
                         (##unchecked-structure-ref
                          _%self146069155434%_
                          '1
                          '#f
                          'for-each))
                        (_%method155441155446%_
                         (##unchecked-structure-ref
                          _%self146069155434%_
                          '5
                          '#f
                          'for-each)))
                    (_%method155441155446%_
                     _%object155440155445%_
                     _%proc155437%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc155415%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each149360%_
       '#f))
    (define _%checked-hash-table::HashTable::length149362%_
      (lambda (_%self155248%_)
        (let ((_%self155251%_ _%self155248%_))
          (declare (not safe))
          (let ((_%h155263%_
                 (##unchecked-structure-ref _%self155251%_ '1 '#f '#f))
                (_%key?155265%_
                 (##unchecked-structure-ref _%self155251%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146380155268%_ _%h155263%_))
                  (declare (not safe))
                  (let ((_%object155271155276%_
                         (##unchecked-structure-ref
                          _%self146380155268%_
                          '1
                          '#f
                          'length))
                        (_%method155272155277%_
                         (##unchecked-structure-ref
                          _%self146380155268%_
                          '6
                          '#f
                          'length)))
                    (_%method155272155277%_ _%object155271155276%_)))
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
       _%checked-hash-table::HashTable::length149362%_
       '#f))
    (define _%checked-hash-table::HashTable::copy149364%_
      (lambda (_%self155094%_)
        (let ((_%self155097%_ _%self155094%_))
          (declare (not safe))
          (let ((_%h155109%_
                 (##unchecked-structure-ref _%self155097%_ '1 '#f '#f))
                (_%key?155111%_
                 (##unchecked-structure-ref _%self155097%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self145482155114%_ _%h155109%_))
                  (declare (not safe))
                  (let ((_%object155117155122%_
                         (##unchecked-structure-ref
                          _%self145482155114%_
                          '1
                          '#f
                          'copy))
                        (_%method155118155123%_
                         (##unchecked-structure-ref
                          _%self145482155114%_
                          '3
                          '#f
                          'copy)))
                    (_%method155118155123%_ _%object155117155122%_)))
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
       _%checked-hash-table::HashTable::copy149364%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!149366%_
      (lambda (_%self154940%_)
        (let ((_%self154943%_ _%self154940%_))
          (declare (not safe))
          (let ((_%h154955%_
                 (##unchecked-structure-ref _%self154943%_ '1 '#f '#f))
                (_%key?154957%_
                 (##unchecked-structure-ref _%self154943%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self145190154960%_ _%h154955%_))
                  (declare (not safe))
                  (let ((_%object154963154968%_
                         (##unchecked-structure-ref
                          _%self145190154960%_
                          '1
                          '#f
                          'clear!))
                        (_%method154964154969%_
                         (##unchecked-structure-ref
                          _%self145190154960%_
                          '2
                          '#f
                          'clear!)))
                    (_%method154964154969%_ _%object154963154968%_)))
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
       _%checked-hash-table::HashTable::clear!149366%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table154810%_
               _%count154811%_
               _%free154812%_
               _%hash154813%_
               _%test154814%_
               _%seed154815%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table154810%_
           _%count154811%_
           _%free154812%_
           _%hash154813%_
           _%test154814%_
           _%seed154815%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords154220%_
               _%size-hint154210154221%_
               _%seed154211154222%_
               _%test154212154223%_
               _%hash154213154224%_
               _%lock154214154225%_
               _%check154215154226%_
               _%weak-keys154216154227%_
               _%weak-values154217154228%_)
        (let* ((_%size-hint154230%_
                (if (eq? _%size-hint154210154221%_ absent-value)
                    '#f
                    _%size-hint154210154221%_))
               (_%seed154232%_
                (if (eq? _%seed154211154222%_ absent-value)
                    '#f
                    _%seed154211154222%_))
               (_%test154234%_
                (if (eq? _%test154212154223%_ absent-value)
                    equal?
                    _%test154212154223%_))
               (_%hash154236%_
                (if (eq? _%hash154213154224%_ absent-value)
                    '#f
                    _%hash154213154224%_))
               (_%lock154238%_
                (if (eq? _%lock154214154225%_ absent-value)
                    '#f
                    _%lock154214154225%_))
               (_%check154240%_
                (if (eq? _%check154215154226%_ absent-value)
                    '#f
                    _%check154215154226%_))
               (_%weak-keys154242%_
                (if (eq? _%weak-keys154216154227%_ absent-value)
                    '#f
                    _%weak-keys154216154227%_))
               (_%weak-values154244%_
                (if (eq? _%weak-values154217154228%_ absent-value)
                    '#f
                    _%weak-values154217154228%_)))
          (letrec ((_%table-seed154247%_
                    (lambda ()
                      (if (fixnum? _%seed154232%_)
                          _%seed154232%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock154391%_
                    (lambda (_%ht154778%_)
                      (let ((_%ht154781%_ _%ht154778%_))
                        (if _%lock154238%_
                            (let ((_%$obj154793%_
                                   (let ((__tmp161649
                                          (let ((_%$obj154790%_
                                                 _%lock154238%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj154790%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj154790%_)))
                                                     '#t)
                                                _%$obj154790%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj154790%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht154781%_
                                      __tmp161649))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154793%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154793%_)))
                                       '#t)
                                  _%$obj154793%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154793%_))))
                            _%ht154781%_))))
                   (_%wrap-lock154392%_
                    (lambda (_%ht154766%_)
                      (let ((_%ht154769%_ _%ht154766%_))
                        (_%__wrap-lock154391%_ _%ht154769%_))))
                   (_%__wrap-checked154514%_
                    (lambda (_%ht154750%_ _%implicit154751%_)
                      (let ((_%ht154754%_ _%ht154750%_))
                        (if _%check154240%_
                            (let ((_%$obj154763%_
                                   (let ((__tmp161650
                                          (if (procedure? _%check154240%_)
                                              _%check154240%_
                                              _%implicit154751%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht154754%_
                                      __tmp161650))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154763%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154763%_)))
                                       '#t)
                                  _%$obj154763%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154763%_))))
                            _%ht154754%_))))
                   (_%wrap-checked154515%_
                    (lambda (_%ht154737%_ _%implicit154738%_)
                      (let ((_%ht154741%_ _%ht154737%_))
                        (_%__wrap-checked154514%_
                         _%ht154741%_
                         _%implicit154738%_))))
                   (_%make154516%_
                    (lambda (_%kons154685%_
                             _%key?154686%_
                             _%hash154687%_
                             _%test154688%_)
                      (let* ((_%size154691%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint154230%_)))
                             (_%table154693%_
                              (let ((__tmp161651 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size154691%_ __tmp161651)))
                             (_%ht154698%_
                              (let ((_%$obj154695%_
                                     (_%kons154685%_
                                      _%table154693%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size154691%_ '2))
                                      _%hash154687%_
                                      _%test154688%_
                                      (_%table-seed154247%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154695%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154695%_)))
                                         '#t)
                                    _%$obj154695%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154695%_)))))
                             (_%ht154720%_
                              (let* ((_%ht154701%_ _%ht154698%_)
                                     (_%ht154705%_ _%ht154701%_))
                                (_%__wrap-lock154391%_ _%ht154705%_)))
                             (_%implicit154723%_ _%key?154686%_)
                             (_%ht154727%_ _%ht154720%_))
                        (_%__wrap-checked154514%_
                         _%ht154727%_
                         _%implicit154723%_))))
                   (_%make-gc-hash-table154517%_
                    (lambda ()
                      (let* ((_%ht154650%_
                              (let ((_%$obj154647%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint154230%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154647%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154647%_)))
                                         '#t)
                                    _%$obj154647%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154647%_)))))
                             (_%ht154668%_
                              (let* ((_%ht154652%_ _%ht154650%_)
                                     (_%ht154656%_ _%ht154652%_))
                                (_%__wrap-lock154391%_ _%ht154656%_)))
                             (_%implicit154671%_ true)
                             (_%ht154675%_ _%ht154668%_))
                        (_%__wrap-checked154514%_
                         _%ht154675%_
                         _%implicit154671%_))))
                   (_%make-gambit-table154518%_
                    (lambda ()
                      (let* ((_%size154587%_
                              (let ((_%$e154584%_ _%size-hint154230%_))
                                (if _%$e154584%_
                                    _%$e154584%_
                                    (macro-absent-obj))))
                             (_%test154592%_
                              (let ((_%$e154589%_ _%test154234%_))
                                (if _%$e154589%_ _%$e154589%_ equal?)))
                             (_%hash154600%_
                              (let ((_%$e154594%_ _%hash154236%_))
                                (if _%$e154594%_
                                    _%$e154594%_
                                    (if (eq? _%test154592%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test154592%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht154605%_
                              (let ((_%$obj154602%_
                                     (make-table
                                      'size:
                                      _%size154587%_
                                      'test:
                                      _%test154592%_
                                      'hash:
                                      _%hash154600%_
                                      'weak-keys:
                                      _%weak-keys154242%_
                                      'weak-values:
                                      _%weak-values154244%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154602%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154602%_)))
                                         '#t)
                                    _%$obj154602%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154602%_)))))
                             (_%ht154628%_
                              (let* ((_%ht154608%_ _%ht154605%_)
                                     (_%ht154612%_ _%ht154608%_))
                                (_%__wrap-lock154391%_ _%ht154612%_)))
                             (_%implicit154631%_ true)
                             (_%ht154635%_ _%ht154628%_))
                        (_%__wrap-checked154514%_
                         _%ht154635%_
                         _%implicit154631%_)))))
            (if (or _%weak-keys154242%_ _%weak-values154244%_)
                (_%make-gambit-table154518%_)
                (if (and (or (eq? _%test154234%_ eq?)
                             (eq? _%test154234%_ ##eq?))
                         (or (not _%hash154236%_)
                             (eq? _%hash154236%_ eq?-hash)
                             (eq? _%hash154236%_ eq-hash))
                         (not _%seed154232%_))
                    (_%make-gc-hash-table154517%_)
                    (if (and (or (eq? _%test154234%_ eq?)
                                 (eq? _%test154234%_ ##eq?))
                             (or (not _%hash154236%_)
                                 (eq? _%hash154236%_ eq?-hash)
                                 (eq? _%hash154236%_ eq-hash)))
                        (_%make154516%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test154234%_ eqv?)
                                     (eq? _%test154234%_ ##eqv?))
                                 (or (not _%hash154236%_)
                                     (eq? _%hash154236%_ eqv?-hash)
                                     (eq? _%hash154236%_ eqv-hash)))
                            (_%make154516%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test154234%_ eq?)
                                         (eq? _%test154234%_ ##eq?))
                                     (or (eq? _%hash154236%_ symbolic-hash)
                                         (eq? _%hash154236%_ ##symbol-hash)))
                                (_%make154516%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test154234%_ eq?)
                                             (eq? _%test154234%_ ##eq?))
                                         (eq? _%hash154236%_ immediate-hash))
                                    (_%make154516%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test154234%_ equal?)
                                                 (eq? _%test154234%_ ##equal?)
                                                 (eq? _%test154234%_ string=?)
                                                 (eq? _%test154234%_
                                                      ##string=?))
                                             (or (eq? _%hash154236%_
                                                      string-hash)
                                                 (eq? _%hash154236%_
                                                      ##string=?-hash)))
                                        (_%make154516%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test154234%_ equal?)
                                                 (not _%hash154236%_))
                                            (_%make154516%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test154234%_)
                                                (if (procedure? _%hash154236%_)
                                                    (_%make154516%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash154236%_
                                                     _%test154234%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash154236%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test154234%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords154800%_ . _%args154801%_)
        (apply make-hash-table__%
               _%@@keywords154800%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154800%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154800%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154800%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154800%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154800%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154800%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154800%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154800%_
                  'weak-values:
                  absent-value))
               _%args154801%_)))
    (define make-hash-table
      (lambda _%args154218154807%_
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
               _%args154218154807%_)))
    (define make-hash-table-eq
      (lambda _%args154207%_
        (apply make-hash-table 'test: eq? _%args154207%_)))
    (define make-hash-table-eqv
      (lambda _%args154205%_
        (apply make-hash-table 'test: eqv? _%args154205%_)))
    (define make-hash-table-symbolic
      (lambda _%args154203%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args154203%_)))
    (define make-hash-table-string
      (lambda _%args154201%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args154201%_)))
    (define make-hash-table-immediate
      (lambda _%args154199%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args154199%_)))
    (define list->hash-table
      (lambda (_%lst154196%_ . _%args154197%_)
        (list->hash-table!
         _%lst154196%_
         (apply make-hash-table
                'size:
                (length _%lst154196%_)
                _%args154197%_))))
    (define list->hash-table-eq
      (lambda (_%lst154193%_ . _%args154194%_)
        (list->hash-table!
         _%lst154193%_
         (apply make-hash-table-eq
                'size:
                (length _%lst154193%_)
                _%args154194%_))))
    (define list->hash-table-eqv
      (lambda (_%lst154190%_ . _%args154191%_)
        (list->hash-table!
         _%lst154190%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst154190%_)
                _%args154191%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst154187%_ . _%args154188%_)
        (list->hash-table!
         _%lst154187%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst154187%_)
                _%args154188%_))))
    (define list->hash-table-string
      (lambda (_%lst154184%_ . _%args154185%_)
        (list->hash-table!
         _%lst154184%_
         (apply make-hash-table-string
                'size:
                (length _%lst154184%_)
                _%args154185%_))))
    (define list->hash-table-immediate
      (lambda (_%lst154181%_ . _%args154182%_)
        (list->hash-table!
         _%lst154181%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst154181%_)
                _%args154182%_))))
    (define list->hash-table!
      (lambda (_%lst154132%_ _%h154133%_)
        (for-each
         (lambda (_%el154135%_)
           (let* ((_%el154136154143%_ _%el154135%_)
                  (_%E154138154146%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el154136154143%_
                              '([k . v])))
                     '#!void))
                  (_%K154139154169%_
                   (lambda (_%v154149%_ _%k154150%_)
                     (let* ((_%self146969154152%_ _%h154133%_)
                            (_%key154155%_ _%k154150%_)
                            (_%value154158%_ _%v154149%_))
                       (declare (not safe))
                       (let ((_%object154161154166%_
                              (##unchecked-structure-ref
                               _%self146969154152%_
                               '1
                               '#f
                               'set!))
                             (_%method154162154167%_
                              (##unchecked-structure-ref
                               _%self146969154152%_
                               '8
                               '#f
                               'set!)))
                         (_%method154162154167%_
                          _%object154161154166%_
                          _%key154155%_
                          _%value154158%_))))))
             (if (pair? _%el154136154143%_)
                 (let ((_%hd154140154172%_
                        (let ()
                          (declare (not safe))
                          (##car _%el154136154143%_)))
                       (_%tl154141154174%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el154136154143%_))))
                   (let* ((_%k154177%_ _%hd154140154172%_)
                          (_%v154179%_ _%tl154141154174%_))
                     (_%K154139154169%_ _%v154179%_ _%k154177%_)))
                 (_%E154138154146%_))))
         _%lst154132%_)
        _%h154133%_))
    (define plist->hash-table
      (lambda (_%lst154129%_ . _%args154130%_)
        (plist->hash-table!
         _%lst154129%_
         (apply make-hash-table
                'size:
                (length _%lst154129%_)
                _%args154130%_))))
    (define plist->hash-table-eq
      (lambda (_%lst154126%_ . _%args154127%_)
        (plist->hash-table!
         _%lst154126%_
         (apply make-hash-table-eq
                'size:
                (length _%lst154126%_)
                _%args154127%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst154123%_ . _%args154124%_)
        (plist->hash-table!
         _%lst154123%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst154123%_)
                _%args154124%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst154120%_ . _%args154121%_)
        (plist->hash-table!
         _%lst154120%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst154120%_)
                _%args154121%_))))
    (define plist->hash-table-string
      (lambda (_%lst154117%_ . _%args154118%_)
        (plist->hash-table!
         _%lst154117%_
         (apply make-hash-table-string
                'size:
                (length _%lst154117%_)
                _%args154118%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst154114%_ . _%args154115%_)
        (plist->hash-table!
         _%lst154114%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst154114%_)
                _%args154115%_))))
    (define plist->hash-table!
      (lambda (_%lst154037%_ _%h154038%_)
        (let _%loop154040%_ ((_%rest154042%_ _%lst154037%_))
          (let* ((_%rest154043154055%_ _%rest154042%_)
                 (_%else154046154063%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst154037%_)))))
            (let ((_%K154049154095%_
                   (lambda (_%rest154074%_ _%val154075%_ _%key154076%_)
                     (let* ((_%self146969154078%_ _%h154038%_)
                            (_%key154081%_ _%key154076%_)
                            (_%value154084%_ _%val154075%_))
                       (declare (not safe))
                       (let ((_%object154087154092%_
                              (##unchecked-structure-ref
                               _%self146969154078%_
                               '1
                               '#f
                               'set!))
                             (_%method154088154093%_
                              (##unchecked-structure-ref
                               _%self146969154078%_
                               '8
                               '#f
                               'set!)))
                         (_%method154088154093%_
                          _%object154087154092%_
                          _%key154081%_
                          _%value154084%_)))
                     (_%loop154040%_ _%rest154074%_)))
                  (_%K154048154068%_ (lambda () _%h154038%_)))
              (let ((_%try-match154045154071%_
                     (lambda ()
                       (if (null? _%rest154043154055%_)
                           (_%K154048154068%_)
                           (_%else154046154063%_)))))
                (if (pair? _%rest154043154055%_)
                    (let ((_%tl154051154100%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest154043154055%_)))
                          (_%hd154050154098%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest154043154055%_))))
                      (if (pair? _%tl154051154100%_)
                          (let ((_%tl154053154107%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl154051154100%_)))
                                (_%hd154052154105%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl154051154100%_))))
                            (let ((_%key154103%_ _%hd154050154098%_)
                                  (_%val154110%_ _%hd154052154105%_)
                                  (_%rest154112%_ _%tl154053154107%_))
                              (_%K154049154095%_
                               _%rest154112%_
                               _%val154110%_
                               _%key154103%_)))
                          (_%else154046154063%_)))
                    (_%try-match154045154071%_))))))))
    (define __hash-length
      (lambda (_%h153986%_)
        (let* ((_%h153989%_ _%h153986%_)
               (_%self146381153998%_ _%h153989%_)
               (_%self146381154005%_
                (let ((_%$obj154002%_ _%self146381153998%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154002%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154002%_)))
                           '#t)
                      _%$obj154002%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154002%_)))))
               (_%self146381154007%_ _%self146381154005%_))
          (if __DEBUG
              (let ((_%val154027%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object154019154024%_
                              (##unchecked-structure-ref
                               _%self146381154007%_
                               '1
                               '#f
                               'length))
                             (_%method154020154025%_
                              (##unchecked-structure-ref
                               _%self146381154007%_
                               '6
                               '#f
                               'length)))
                         (_%method154020154025%_ _%object154019154024%_)))))
                (if (fixnum? _%val154027%_)
                    _%val154027%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val154027%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object154029154034%_
                       (##unchecked-structure-ref
                        _%self146381154007%_
                        '1
                        '#f
                        'length))
                      (_%method154030154035%_
                       (##unchecked-structure-ref
                        _%self146381154007%_
                        '6
                        '#f
                        'length)))
                  (_%method154030154035%_ _%object154029154034%_)))))))
    (define hash-length
      (lambda (_%h149641%_)
        (let* ((_%h149647%_
                (let ((_%$obj149644%_ _%h149641%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149644%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149644%_)))
                           '#t)
                      _%$obj149644%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149644%_)))))
               (_%h149649%_ _%h149647%_))
          (__hash-length _%h149649%_))))
    (define __hash-ref__%
      (lambda (_%h153914%_ _%key153915%_ _%default153916%_)
        (let* ((_%h153919%_ _%h153914%_)
               (_%result153972%_
                (let* ((_%self146675153928%_ _%h153919%_)
                       (_%key153931%_ _%key153915%_)
                       (_%default153934%_ _%default153916%_)
                       (_%self146675153941%_
                        (let ((_%$obj153938%_ _%self146675153928%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153938%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153938%_)))
                                   '#t)
                              _%$obj153938%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153938%_)))))
                       (_%self146675153943%_ _%self146675153941%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object153957153962%_
                               (##unchecked-structure-ref
                                _%self146675153943%_
                                '1
                                '#f
                                'ref))
                              (_%method153958153963%_
                               (##unchecked-structure-ref
                                _%self146675153943%_
                                '7
                                '#f
                                'ref)))
                          (_%method153958153963%_
                           _%object153957153962%_
                           _%key153931%_
                           _%default153934%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153964153969%_
                               (##unchecked-structure-ref
                                _%self146675153943%_
                                '1
                                '#f
                                'ref))
                              (_%method153965153970%_
                               (##unchecked-structure-ref
                                _%self146675153943%_
                                '7
                                '#f
                                'ref)))
                          (_%method153965153970%_
                           _%object153964153969%_
                           _%key153931%_
                           _%default153934%_)))))))
          (if (eq? _%result153972%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h153919%_
               'key:
               _%key153915%_)
              _%result153972%_))))
    (define __hash-ref__0
      (lambda (_%h153977%_ _%key153978%_)
        (let ((_%default153980%_ absent-obj))
          (__hash-ref__% _%h153977%_ _%key153978%_ _%default153980%_))))
    (define __hash-ref
      (lambda _g161652_
        (let ((_g161653_ (let () (declare (not safe)) (##length _g161652_))))
          (cond ((let () (declare (not safe)) (##fx= _g161653_ 2))
                 (apply __hash-ref__0 _g161652_))
                ((let () (declare (not safe)) (##fx= _g161653_ 3))
                 (apply __hash-ref__% _g161652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g161652_))))))
    (define hash-ref__%
      (lambda (_%h149780%_ _%key149781%_ _%default149782%_)
        (let* ((_%h149788%_
                (let ((_%$obj149785%_ _%h149780%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149785%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149785%_)))
                           '#t)
                      _%$obj149785%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149785%_)))))
               (_%h149790%_ _%h149788%_))
          (__hash-ref__% _%h149790%_ _%key149781%_ _%default149782%_))))
    (define hash-ref__0
      (lambda (_%h149803%_ _%key149804%_)
        (let ((_%default149806%_ absent-obj))
          (hash-ref__% _%h149803%_ _%key149804%_ _%default149806%_))))
    (define hash-ref
      (lambda _g161654_
        (let ((_g161655_ (let () (declare (not safe)) (##length _g161654_))))
          (cond ((let () (declare (not safe)) (##fx= _g161655_ 2))
                 (apply hash-ref__0 _g161654_))
                ((let () (declare (not safe)) (##fx= _g161655_ 3))
                 (apply hash-ref__% _g161654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g161654_))))))
    (define __hash-get
      (lambda (_%h153856%_ _%key153857%_)
        (let* ((_%h153860%_ _%h153856%_)
               (_%self146675153869%_ _%h153860%_)
               (_%key153872%_ _%key153857%_)
               (_%default153875%_ '#f)
               (_%self146675153882%_
                (let ((_%$obj153879%_ _%self146675153869%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153879%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153879%_)))
                           '#t)
                      _%$obj153879%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153879%_)))))
               (_%self146675153884%_ _%self146675153882%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153898153903%_
                       (##unchecked-structure-ref
                        _%self146675153884%_
                        '1
                        '#f
                        'ref))
                      (_%method153899153904%_
                       (##unchecked-structure-ref
                        _%self146675153884%_
                        '7
                        '#f
                        'ref)))
                  (_%method153899153904%_
                   _%object153898153903%_
                   _%key153872%_
                   _%default153875%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153905153910%_
                       (##unchecked-structure-ref
                        _%self146675153884%_
                        '1
                        '#f
                        'ref))
                      (_%method153906153911%_
                       (##unchecked-structure-ref
                        _%self146675153884%_
                        '7
                        '#f
                        'ref)))
                  (_%method153906153911%_
                   _%object153905153910%_
                   _%key153872%_
                   _%default153875%_)))))))
    (define hash-get
      (lambda (_%h149932%_ _%key149933%_)
        (let* ((_%h149939%_
                (let ((_%$obj149936%_ _%h149932%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149936%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149936%_)))
                           '#t)
                      _%$obj149936%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149936%_)))))
               (_%h149941%_ _%h149939%_))
          (__hash-get _%h149941%_ _%key149933%_))))
    (define __hash-put!
      (lambda (_%h153798%_ _%key153799%_ _%value153800%_)
        (let* ((_%h153803%_ _%h153798%_)
               (_%self146970153812%_ _%h153803%_)
               (_%key153815%_ _%key153799%_)
               (_%value153818%_ _%value153800%_)
               (_%self146970153825%_
                (let ((_%$obj153822%_ _%self146970153812%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153822%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153822%_)))
                           '#t)
                      _%$obj153822%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153822%_)))))
               (_%self146970153827%_ _%self146970153825%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153841153846%_
                       (##unchecked-structure-ref
                        _%self146970153827%_
                        '1
                        '#f
                        'set!))
                      (_%method153842153847%_
                       (##unchecked-structure-ref
                        _%self146970153827%_
                        '8
                        '#f
                        'set!)))
                  (_%method153842153847%_
                   _%object153841153846%_
                   _%key153815%_
                   _%value153818%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153848153853%_
                       (##unchecked-structure-ref
                        _%self146970153827%_
                        '1
                        '#f
                        'set!))
                      (_%method153849153854%_
                       (##unchecked-structure-ref
                        _%self146970153827%_
                        '8
                        '#f
                        'set!)))
                  (_%method153849153854%_
                   _%object153848153853%_
                   _%key153815%_
                   _%value153818%_)))))))
    (define hash-put!
      (lambda (_%h150071%_ _%key150072%_ _%value150073%_)
        (let* ((_%h150079%_
                (let ((_%$obj150076%_ _%h150071%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150076%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150076%_)))
                           '#t)
                      _%$obj150076%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150076%_)))))
               (_%h150081%_ _%h150079%_))
          (__hash-put! _%h150081%_ _%key150072%_ _%value150073%_))))
    (define __hash-update!__%
      (lambda (_%h153711%_ _%key153712%_ _%update153713%_ _%default153714%_)
        (let* ((_%h153717%_ _%h153711%_)
               (_%self147265153726%_ _%h153717%_)
               (_%key153729%_ _%key153712%_)
               (_%proc153732%_ _%update153713%_)
               (_%default153735%_ _%default153714%_)
               (_%self147265153742%_
                (let ((_%$obj153739%_ _%self147265153726%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153739%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153739%_)))
                           '#t)
                      _%$obj153739%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153739%_)))))
               (_%self147265153744%_ _%self147265153742%_))
          (if (procedure? _%proc153732%_)
              (let ((_%proc153760%_ _%proc153732%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object153769153774%_
                             (##unchecked-structure-ref
                              _%self147265153744%_
                              '1
                              '#f
                              'update!))
                            (_%method153770153775%_
                             (##unchecked-structure-ref
                              _%self147265153744%_
                              '9
                              '#f
                              'update!)))
                        (_%method153770153775%_
                         _%object153769153774%_
                         _%key153729%_
                         _%proc153760%_
                         _%default153735%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object153776153781%_
                             (##unchecked-structure-ref
                              _%self147265153744%_
                              '1
                              '#f
                              'update!))
                            (_%method153777153782%_
                             (##unchecked-structure-ref
                              _%self147265153744%_
                              '9
                              '#f
                              'update!)))
                        (_%method153777153782%_
                         _%object153776153781%_
                         _%key153729%_
                         _%proc153760%_
                         _%default153735%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc153732%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h153787%_ _%key153788%_ _%update153789%_)
        (let ((_%default153791%_ '#!void))
          (__hash-update!__%
           _%h153787%_
           _%key153788%_
           _%update153789%_
           _%default153791%_))))
    (define __hash-update!
      (lambda _g161656_
        (let ((_g161657_ (let () (declare (not safe)) (##length _g161656_))))
          (cond ((let () (declare (not safe)) (##fx= _g161657_ 3))
                 (apply __hash-update!__0 _g161656_))
                ((let () (declare (not safe)) (##fx= _g161657_ 4))
                 (apply __hash-update!__% _g161656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g161656_))))))
    (define hash-update!__%
      (lambda (_%h150212%_ _%key150213%_ _%update150214%_ _%default150215%_)
        (let* ((_%h150221%_
                (let ((_%$obj150218%_ _%h150212%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150218%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150218%_)))
                           '#t)
                      _%$obj150218%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150218%_)))))
               (_%h150223%_ _%h150221%_))
          (__hash-update!__%
           _%h150223%_
           _%key150213%_
           _%update150214%_
           _%default150215%_))))
    (define hash-update!__0
      (lambda (_%h150236%_ _%key150237%_ _%update150238%_)
        (let ((_%default150240%_ '#!void))
          (hash-update!__%
           _%h150236%_
           _%key150237%_
           _%update150238%_
           _%default150240%_))))
    (define hash-update!
      (lambda _g161658_
        (let ((_g161659_ (let () (declare (not safe)) (##length _g161658_))))
          (cond ((let () (declare (not safe)) (##fx= _g161659_ 3))
                 (apply hash-update!__0 _g161658_))
                ((let () (declare (not safe)) (##fx= _g161659_ 4))
                 (apply hash-update!__% _g161658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g161658_))))))
    (define __hash-remove!
      (lambda (_%h153657%_ _%key153658%_)
        (let* ((_%h153661%_ _%h153657%_)
               (_%self145777153670%_ _%h153661%_)
               (_%key153673%_ _%key153658%_)
               (_%self145777153680%_
                (let ((_%$obj153677%_ _%self145777153670%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153677%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153677%_)))
                           '#t)
                      _%$obj153677%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153677%_)))))
               (_%self145777153682%_ _%self145777153680%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153695153700%_
                       (##unchecked-structure-ref
                        _%self145777153682%_
                        '1
                        '#f
                        'delete!))
                      (_%method153696153701%_
                       (##unchecked-structure-ref
                        _%self145777153682%_
                        '4
                        '#f
                        'delete!)))
                  (_%method153696153701%_
                   _%object153695153700%_
                   _%key153673%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153702153707%_
                       (##unchecked-structure-ref
                        _%self145777153682%_
                        '1
                        '#f
                        'delete!))
                      (_%method153703153708%_
                       (##unchecked-structure-ref
                        _%self145777153682%_
                        '4
                        '#f
                        'delete!)))
                  (_%method153703153708%_
                   _%object153702153707%_
                   _%key153673%_)))))))
    (define hash-remove!
      (lambda (_%h150367%_ _%key150368%_)
        (let* ((_%h150374%_
                (let ((_%$obj150371%_ _%h150367%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150371%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150371%_)))
                           '#t)
                      _%$obj150371%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150371%_)))))
               (_%h150376%_ _%h150374%_))
          (__hash-remove! _%h150376%_ _%key150368%_))))
    (define __hash-key?
      (lambda (_%h153600%_ _%k153601%_)
        (let ((_%h153604%_ _%h153600%_))
          (not (eq? (let* ((_%self146675153613%_ _%h153604%_)
                           (_%key153616%_ _%k153601%_)
                           (_%default153619%_ absent-value)
                           (_%self146675153626%_
                            (let ((_%$obj153623%_ _%self146675153613%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj153623%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj153623%_)))
                                       '#t)
                                  _%$obj153623%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj153623%_)))))
                           (_%self146675153628%_ _%self146675153626%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object153642153647%_
                                   (##unchecked-structure-ref
                                    _%self146675153628%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method153643153648%_
                                   (##unchecked-structure-ref
                                    _%self146675153628%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method153643153648%_
                               _%object153642153647%_
                               _%key153616%_
                               _%default153619%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object153649153654%_
                                   (##unchecked-structure-ref
                                    _%self146675153628%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method153650153655%_
                                   (##unchecked-structure-ref
                                    _%self146675153628%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method153650153655%_
                               _%object153649153654%_
                               _%key153616%_
                               _%default153619%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h150506%_ _%k150507%_)
        (let* ((_%h150513%_
                (let ((_%$obj150510%_ _%h150506%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150510%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150510%_)))
                           '#t)
                      _%$obj150510%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150510%_)))))
               (_%h150515%_ _%h150513%_))
          (__hash-key? _%h150515%_ _%k150507%_))))
    (define __hash->list
      (lambda (_%h153532%_)
        (let* ((_%h153535%_ _%h153532%_) (_%lst153544%_ '()))
          (let* ((_%self146070153546%_ _%h153535%_)
                 (_%proc153552%_
                  (lambda (_%k153549%_ _%v153550%_)
                    (set! _%lst153544%_
                          (cons (cons _%k153549%_ _%v153550%_)
                                _%lst153544%_))))
                 (_%self146070153559%_
                  (let ((_%$obj153556%_ _%self146070153546%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153556%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153556%_)))
                             '#t)
                        _%$obj153556%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153556%_)))))
                 (_%self146070153561%_ _%self146070153559%_)
                 (_%proc153576%_ _%proc153552%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153585153590%_
                         (##unchecked-structure-ref
                          _%self146070153561%_
                          '1
                          '#f
                          'for-each))
                        (_%method153586153591%_
                         (##unchecked-structure-ref
                          _%self146070153561%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153586153591%_
                     _%object153585153590%_
                     _%proc153576%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153592153597%_
                         (##unchecked-structure-ref
                          _%self146070153561%_
                          '1
                          '#f
                          'for-each))
                        (_%method153593153598%_
                         (##unchecked-structure-ref
                          _%self146070153561%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153593153598%_
                     _%object153592153597%_
                     _%proc153576%_)))))
          _%lst153544%_)))
    (define hash->list
      (lambda (_%h150645%_)
        (let* ((_%h150651%_
                (let ((_%$obj150648%_ _%h150645%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150648%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150648%_)))
                           '#t)
                      _%$obj150648%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150648%_)))))
               (_%h150653%_ _%h150651%_))
          (__hash->list _%h150653%_))))
    (define __hash->plist
      (lambda (_%h153464%_)
        (let* ((_%h153467%_ _%h153464%_) (_%lst153476%_ '()))
          (let* ((_%self146070153478%_ _%h153467%_)
                 (_%proc153484%_
                  (lambda (_%k153481%_ _%v153482%_)
                    (set! _%lst153476%_
                          (cons _%k153481%_
                                (cons _%v153482%_ _%lst153476%_)))))
                 (_%self146070153491%_
                  (let ((_%$obj153488%_ _%self146070153478%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153488%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153488%_)))
                             '#t)
                        _%$obj153488%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153488%_)))))
                 (_%self146070153493%_ _%self146070153491%_)
                 (_%proc153508%_ _%proc153484%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153517153522%_
                         (##unchecked-structure-ref
                          _%self146070153493%_
                          '1
                          '#f
                          'for-each))
                        (_%method153518153523%_
                         (##unchecked-structure-ref
                          _%self146070153493%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153518153523%_
                     _%object153517153522%_
                     _%proc153508%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153524153529%_
                         (##unchecked-structure-ref
                          _%self146070153493%_
                          '1
                          '#f
                          'for-each))
                        (_%method153525153530%_
                         (##unchecked-structure-ref
                          _%self146070153493%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153525153530%_
                     _%object153524153529%_
                     _%proc153508%_)))))
          _%lst153476%_)))
    (define hash->plist
      (lambda (_%h150783%_)
        (let* ((_%h150789%_
                (let ((_%$obj150786%_ _%h150783%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150786%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150786%_)))
                           '#t)
                      _%$obj150786%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150786%_)))))
               (_%h150791%_ _%h150789%_))
          (__hash->plist _%h150791%_))))
    (define __hash-for-each
      (lambda (_%proc153393%_ _%h153394%_)
        (let* ((_%proc153397%_ _%proc153393%_)
               (_%h153405%_ _%h153394%_)
               (_%self146070153414%_ _%h153405%_)
               (_%proc153417%_ _%proc153397%_)
               (_%self146070153424%_
                (let ((_%$obj153421%_ _%self146070153414%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153421%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153421%_)))
                           '#t)
                      _%$obj153421%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153421%_)))))
               (_%self146070153426%_ _%self146070153424%_)
               (_%proc153440%_ _%proc153417%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153449153454%_
                       (##unchecked-structure-ref
                        _%self146070153426%_
                        '1
                        '#f
                        'for-each))
                      (_%method153450153455%_
                       (##unchecked-structure-ref
                        _%self146070153426%_
                        '5
                        '#f
                        'for-each)))
                  (_%method153450153455%_
                   _%object153449153454%_
                   _%proc153440%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153456153461%_
                       (##unchecked-structure-ref
                        _%self146070153426%_
                        '1
                        '#f
                        'for-each))
                      (_%method153457153462%_
                       (##unchecked-structure-ref
                        _%self146070153426%_
                        '5
                        '#f
                        'for-each)))
                  (_%method153457153462%_
                   _%object153456153461%_
                   _%proc153440%_)))))))
    (define hash-for-each
      (lambda (_%proc150921%_ _%h150922%_)
        (if (procedure? _%proc150921%_)
            (let* ((_%proc150926%_ _%proc150921%_)
                   (_%h150938%_
                    (let ((_%$obj150935%_ _%h150922%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150935%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150935%_)))
                               '#t)
                          _%$obj150935%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150935%_)))))
                   (_%h150940%_ _%h150938%_))
              (__hash-for-each _%proc150926%_ _%h150940%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc150921%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc153316%_ _%h153317%_)
        (let* ((_%proc153320%_ _%proc153316%_)
               (_%h153328%_ _%h153317%_)
               (_%result153337%_ '()))
          (let* ((_%self146070153339%_ _%h153328%_)
                 (_%proc153345%_
                  (lambda (_%k153342%_ _%v153343%_)
                    (set! _%result153337%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc153320%_ _%k153342%_ _%v153343%_))
                                _%result153337%_))))
                 (_%self146070153352%_
                  (let ((_%$obj153349%_ _%self146070153339%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153349%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153349%_)))
                             '#t)
                        _%$obj153349%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153349%_)))))
                 (_%self146070153354%_ _%self146070153352%_)
                 (_%proc153369%_ _%proc153345%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153378153383%_
                         (##unchecked-structure-ref
                          _%self146070153354%_
                          '1
                          '#f
                          'for-each))
                        (_%method153379153384%_
                         (##unchecked-structure-ref
                          _%self146070153354%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153379153384%_
                     _%object153378153383%_
                     _%proc153369%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153385153390%_
                         (##unchecked-structure-ref
                          _%self146070153354%_
                          '1
                          '#f
                          'for-each))
                        (_%method153386153391%_
                         (##unchecked-structure-ref
                          _%self146070153354%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153386153391%_
                     _%object153385153390%_
                     _%proc153369%_)))))
          _%result153337%_)))
    (define hash-map
      (lambda (_%proc151070%_ _%h151071%_)
        (if (procedure? _%proc151070%_)
            (let* ((_%proc151075%_ _%proc151070%_)
                   (_%h151087%_
                    (let ((_%$obj151084%_ _%h151071%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151084%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151084%_)))
                               '#t)
                          _%$obj151084%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151084%_)))))
                   (_%h151089%_ _%h151087%_))
              (__hash-map _%proc151075%_ _%h151089%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc151070%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc153238%_ _%iv153239%_ _%h153240%_)
        (let* ((_%proc153243%_ _%proc153238%_)
               (_%h153251%_ _%h153240%_)
               (_%result153260%_ _%iv153239%_))
          (let* ((_%self146070153262%_ _%h153251%_)
                 (_%proc153268%_
                  (lambda (_%k153265%_ _%v153266%_)
                    (set! _%result153260%_
                          (let ()
                            (declare (not safe))
                            (_%proc153243%_
                             _%k153265%_
                             _%v153266%_
                             _%result153260%_)))))
                 (_%self146070153275%_
                  (let ((_%$obj153272%_ _%self146070153262%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153272%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153272%_)))
                             '#t)
                        _%$obj153272%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153272%_)))))
                 (_%self146070153277%_ _%self146070153275%_)
                 (_%proc153292%_ _%proc153268%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153301153306%_
                         (##unchecked-structure-ref
                          _%self146070153277%_
                          '1
                          '#f
                          'for-each))
                        (_%method153302153307%_
                         (##unchecked-structure-ref
                          _%self146070153277%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153302153307%_
                     _%object153301153306%_
                     _%proc153292%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153308153313%_
                         (##unchecked-structure-ref
                          _%self146070153277%_
                          '1
                          '#f
                          'for-each))
                        (_%method153309153314%_
                         (##unchecked-structure-ref
                          _%self146070153277%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153309153314%_
                     _%object153308153313%_
                     _%proc153292%_)))))
          _%result153260%_)))
    (define hash-fold
      (lambda (_%proc151219%_ _%iv151220%_ _%h151221%_)
        (if (procedure? _%proc151219%_)
            (let* ((_%proc151225%_ _%proc151219%_)
                   (_%h151237%_
                    (let ((_%$obj151234%_ _%h151221%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151234%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151234%_)))
                               '#t)
                          _%$obj151234%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151234%_)))))
                   (_%h151239%_ _%h151237%_))
              (__hash-fold _%proc151225%_ _%iv151220%_ _%h151239%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc151219%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc153145%_ _%h153146%_ _%default-value153147%_)
        (let* ((_%proc153150%_ _%proc153145%_)
               (_%h153158%_ _%h153146%_)
               (__tmp161660
                (lambda (_%return153167%_)
                  (let* ((_%self146070153169%_ _%h153158%_)
                         (_%proc153178%_
                          (lambda (_%k153172%_ _%v153173%_)
                            (let ((_%$e153175%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc153150%_
                                      _%k153172%_
                                      _%v153173%_))))
                              (if _%$e153175%_
                                  (_%return153167%_ _%$e153175%_)
                                  '#!void))))
                         (_%self146070153185%_
                          (let ((_%$obj153182%_ _%self146070153169%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj153182%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj153182%_)))
                                     '#t)
                                _%$obj153182%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj153182%_)))))
                         (_%self146070153187%_ _%self146070153185%_)
                         (_%proc153202%_ _%proc153178%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object153211153216%_
                                 (##unchecked-structure-ref
                                  _%self146070153187%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153212153217%_
                                 (##unchecked-structure-ref
                                  _%self146070153187%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153212153217%_
                             _%object153211153216%_
                             _%proc153202%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object153218153223%_
                                 (##unchecked-structure-ref
                                  _%self146070153187%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153219153224%_
                                 (##unchecked-structure-ref
                                  _%self146070153187%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153219153224%_
                             _%object153218153223%_
                             _%proc153202%_)))))
                  _%default-value153147%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp161660))))
    (define __hash-find__0
      (lambda (_%proc153229%_ _%h153230%_)
        (let ((_%default-value153232%_ '#f))
          (__hash-find__%
           _%proc153229%_
           _%h153230%_
           _%default-value153232%_))))
    (define __hash-find
      (lambda _g161661_
        (let ((_g161662_ (let () (declare (not safe)) (##length _g161661_))))
          (cond ((let () (declare (not safe)) (##fx= _g161662_ 2))
                 (apply __hash-find__0 _g161661_))
                ((let () (declare (not safe)) (##fx= _g161662_ 3))
                 (apply __hash-find__% _g161661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g161661_))))))
    (define hash-find__%
      (lambda (_%proc151370%_ _%h151371%_ _%default-value151372%_)
        (if (procedure? _%proc151370%_)
            (let* ((_%proc151376%_ _%proc151370%_)
                   (_%h151388%_
                    (let ((_%$obj151385%_ _%h151371%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151385%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151385%_)))
                               '#t)
                          _%$obj151385%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151385%_)))))
                   (_%h151390%_ _%h151388%_))
              (__hash-find__%
               _%proc151376%_
               _%h151390%_
               _%default-value151372%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc151370%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc151403%_ _%h151404%_)
        (let ((_%default-value151406%_ '#f))
          (hash-find__% _%proc151403%_ _%h151404%_ _%default-value151406%_))))
    (define hash-find
      (lambda _g161663_
        (let ((_g161664_ (let () (declare (not safe)) (##length _g161663_))))
          (cond ((let () (declare (not safe)) (##fx= _g161664_ 2))
                 (apply hash-find__0 _g161663_))
                ((let () (declare (not safe)) (##fx= _g161664_ 3))
                 (apply hash-find__% _g161663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g161663_))))))
    (define __hash-keys
      (lambda (_%h153076%_)
        (let* ((_%h153079%_ _%h153076%_) (_%result153088%_ '()))
          (let* ((_%self146070153090%_ _%h153079%_)
                 (_%proc153096%_
                  (lambda (_%k153093%_ _%v153094%_)
                    (set! _%result153088%_
                          (cons _%k153093%_ _%result153088%_))))
                 (_%self146070153103%_
                  (let ((_%$obj153100%_ _%self146070153090%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153100%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153100%_)))
                             '#t)
                        _%$obj153100%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153100%_)))))
                 (_%self146070153105%_ _%self146070153103%_)
                 (_%proc153120%_ _%proc153096%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153129153134%_
                         (##unchecked-structure-ref
                          _%self146070153105%_
                          '1
                          '#f
                          'for-each))
                        (_%method153130153135%_
                         (##unchecked-structure-ref
                          _%self146070153105%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153130153135%_
                     _%object153129153134%_
                     _%proc153120%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153136153141%_
                         (##unchecked-structure-ref
                          _%self146070153105%_
                          '1
                          '#f
                          'for-each))
                        (_%method153137153142%_
                         (##unchecked-structure-ref
                          _%self146070153105%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153137153142%_
                     _%object153136153141%_
                     _%proc153120%_)))))
          _%result153088%_)))
    (define hash-keys
      (lambda (_%h151532%_)
        (let* ((_%h151538%_
                (let ((_%$obj151535%_ _%h151532%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151535%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151535%_)))
                           '#t)
                      _%$obj151535%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151535%_)))))
               (_%h151540%_ _%h151538%_))
          (__hash-keys _%h151540%_))))
    (define __hash-values
      (lambda (_%h153008%_)
        (let* ((_%h153011%_ _%h153008%_) (_%result153020%_ '()))
          (let* ((_%self146070153022%_ _%h153011%_)
                 (_%proc153028%_
                  (lambda (_%k153025%_ _%v153026%_)
                    (set! _%result153020%_
                          (cons _%v153026%_ _%result153020%_))))
                 (_%self146070153035%_
                  (let ((_%$obj153032%_ _%self146070153022%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153032%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153032%_)))
                             '#t)
                        _%$obj153032%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153032%_)))))
                 (_%self146070153037%_ _%self146070153035%_)
                 (_%proc153052%_ _%proc153028%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153061153066%_
                         (##unchecked-structure-ref
                          _%self146070153037%_
                          '1
                          '#f
                          'for-each))
                        (_%method153062153067%_
                         (##unchecked-structure-ref
                          _%self146070153037%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153062153067%_
                     _%object153061153066%_
                     _%proc153052%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153068153073%_
                         (##unchecked-structure-ref
                          _%self146070153037%_
                          '1
                          '#f
                          'for-each))
                        (_%method153069153074%_
                         (##unchecked-structure-ref
                          _%self146070153037%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153069153074%_
                     _%object153068153073%_
                     _%proc153052%_)))))
          _%result153020%_)))
    (define hash-values
      (lambda (_%h151670%_)
        (let* ((_%h151676%_
                (let ((_%$obj151673%_ _%h151670%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151673%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151673%_)))
                           '#t)
                      _%$obj151673%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151673%_)))))
               (_%h151678%_ _%h151676%_))
          (__hash-values _%h151678%_))))
    (define __hash-copy
      (lambda (_%h152957%_)
        (let* ((_%h152960%_ _%h152957%_)
               (_%self145483152969%_ _%h152960%_)
               (_%self145483152976%_
                (let ((_%$obj152973%_ _%self145483152969%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152973%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152973%_)))
                           '#t)
                      _%$obj152973%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152973%_)))))
               (_%self145483152978%_ _%self145483152976%_))
          (if __DEBUG
              (let ((_%$obj152998%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object152990152995%_
                              (##unchecked-structure-ref
                               _%self145483152978%_
                               '1
                               '#f
                               'copy))
                             (_%method152991152996%_
                              (##unchecked-structure-ref
                               _%self145483152978%_
                               '3
                               '#f
                               'copy)))
                         (_%method152991152996%_ _%object152990152995%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj152998%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj152998%_)))
                         '#t)
                    _%$obj152998%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj152998%_))))
              (let ()
                (declare (not safe))
                (let ((_%object153000153005%_
                       (##unchecked-structure-ref
                        _%self145483152978%_
                        '1
                        '#f
                        'copy))
                      (_%method153001153006%_
                       (##unchecked-structure-ref
                        _%self145483152978%_
                        '3
                        '#f
                        'copy)))
                  (_%method153001153006%_ _%object153000153005%_)))))))
    (define hash-copy
      (lambda (_%h151808%_)
        (let* ((_%h151814%_
                (let ((_%$obj151811%_ _%h151808%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151811%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151811%_)))
                           '#t)
                      _%$obj151811%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151811%_)))))
               (_%h151816%_ _%h151814%_))
          (__hash-copy _%h151816%_))))
    (define __hash-clear!
      (lambda (_%h152909%_)
        (let* ((_%h152912%_ _%h152909%_)
               (_%self145191152921%_ _%h152912%_)
               (_%self145191152928%_
                (let ((_%$obj152925%_ _%self145191152921%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152925%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152925%_)))
                           '#t)
                      _%$obj152925%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152925%_)))))
               (_%self145191152930%_ _%self145191152928%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object152942152947%_
                       (##unchecked-structure-ref
                        _%self145191152930%_
                        '1
                        '#f
                        'clear!))
                      (_%method152943152948%_
                       (##unchecked-structure-ref
                        _%self145191152930%_
                        '2
                        '#f
                        'clear!)))
                  (_%method152943152948%_ _%object152942152947%_)))
              (let ()
                (declare (not safe))
                (let ((_%object152949152954%_
                       (##unchecked-structure-ref
                        _%self145191152930%_
                        '1
                        '#f
                        'clear!))
                      (_%method152950152955%_
                       (##unchecked-structure-ref
                        _%self145191152930%_
                        '2
                        '#f
                        'clear!)))
                  (_%method152950152955%_ _%object152949152954%_)))))))
    (define hash-clear!
      (lambda (_%h151946%_)
        (let* ((_%h151952%_
                (let ((_%$obj151949%_ _%h151946%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151949%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151949%_)))
                           '#t)
                      _%$obj151949%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151949%_)))))
               (_%h151954%_ _%h151952%_))
          (__hash-clear! _%h151954%_))))
    (define __hash-merge
      (lambda (_%h152855%_ . _%rest152856%_)
        (let* ((_%h152859%_ _%h152855%_)
               (_%copy152907%_
                (let* ((_%self145483152868%_ _%h152859%_)
                       (_%self145483152875%_
                        (let ((_%$obj152872%_ _%self145483152868%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj152872%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj152872%_)))
                                   '#t)
                              _%$obj152872%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj152872%_)))))
                       (_%self145483152877%_ _%self145483152875%_))
                  (if __DEBUG
                      (let ((_%$obj152897%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object152889152894%_
                                      (##unchecked-structure-ref
                                       _%self145483152877%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method152890152895%_
                                      (##unchecked-structure-ref
                                       _%self145483152877%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method152890152895%_
                                  _%object152889152894%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj152897%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj152897%_)))
                                 '#t)
                            _%$obj152897%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj152897%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object152899152904%_
                               (##unchecked-structure-ref
                                _%self145483152877%_
                                '1
                                '#f
                                'copy))
                              (_%method152900152905%_
                               (##unchecked-structure-ref
                                _%self145483152877%_
                                '3
                                '#f
                                'copy)))
                          (_%method152900152905%_ _%object152899152904%_)))))))
          (apply hash-merge! _%copy152907%_ _%rest152856%_)
          _%copy152907%_)))
    (define hash-merge
      (lambda (_%h152084%_ . _%rest152085%_)
        (let* ((_%h152091%_
                (let ((_%$obj152088%_ _%h152084%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152088%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152088%_)))
                           '#t)
                      _%$obj152088%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152088%_)))))
               (_%h152093%_ _%h152091%_))
          (declare (not safe))
          (##apply __hash-merge _%h152093%_ _%rest152085%_))))
    (define __hash-merge-right
      (lambda (_%h152801%_ . _%rest152802%_)
        (let* ((_%h152805%_ _%h152801%_)
               (_%copy152853%_
                (let* ((_%self145483152814%_ _%h152805%_)
                       (_%self145483152821%_
                        (let ((_%$obj152818%_ _%self145483152814%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj152818%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj152818%_)))
                                   '#t)
                              _%$obj152818%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj152818%_)))))
                       (_%self145483152823%_ _%self145483152821%_))
                  (if __DEBUG
                      (let ((_%$obj152843%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object152835152840%_
                                      (##unchecked-structure-ref
                                       _%self145483152823%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method152836152841%_
                                      (##unchecked-structure-ref
                                       _%self145483152823%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method152836152841%_
                                  _%object152835152840%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj152843%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj152843%_)))
                                 '#t)
                            _%$obj152843%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj152843%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object152845152850%_
                               (##unchecked-structure-ref
                                _%self145483152823%_
                                '1
                                '#f
                                'copy))
                              (_%method152846152851%_
                               (##unchecked-structure-ref
                                _%self145483152823%_
                                '3
                                '#f
                                'copy)))
                          (_%method152846152851%_ _%object152845152850%_)))))))
          (apply hash-merge-right! _%copy152853%_ _%rest152802%_)
          _%copy152853%_)))
    (define hash-merge-right
      (lambda (_%h152223%_ . _%rest152224%_)
        (let* ((_%h152230%_
                (let ((_%$obj152227%_ _%h152223%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152227%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152227%_)))
                           '#t)
                      _%$obj152227%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152227%_)))))
               (_%h152232%_ _%h152230%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h152232%_ _%rest152224%_))))
    (define __hash-merge!
      (lambda (_%h152649%_ . _%rest152650%_)
        (let ((_%h152653%_ _%h152649%_))
          (let ((__tmp161665
                 (lambda (_%hr152662%_)
                   (let* ((_%hr152668%_
                           (let ((_%$obj152665%_ _%hr152662%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152665%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152665%_)))
                                      '#t)
                                 _%$obj152665%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152665%_)))))
                          (_%hr152670%_ _%hr152668%_)
                          (_%self146070152683%_ _%hr152670%_)
                          (_%proc152758%_
                           (lambda (_%k152686%_ _%v152687%_)
                             (if (let* ((_%h152689%_ _%h152653%_)
                                        (_%k152692%_ _%k152686%_)
                                        (_%h152699%_
                                         (let ((_%$obj152696%_ _%h152689%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj152696%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj152696%_)))
                                                    '#t)
                                               _%$obj152696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj152696%_)))))
                                        (_%h152701%_ _%h152699%_))
                                   (__hash-key? _%h152701%_ _%k152692%_))
                                 '#!void
                                 (let* ((_%self146970152717%_ _%h152653%_)
                                        (_%key152720%_ _%k152686%_)
                                        (_%value152723%_ _%v152687%_)
                                        (_%self146970152730%_
                                         (let ((_%$obj152727%_
                                                _%self146970152717%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj152727%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj152727%_)))
                                                    '#t)
                                               _%$obj152727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj152727%_)))))
                                        (_%self146970152732%_
                                         _%self146970152730%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object152743152748%_
                                                (##unchecked-structure-ref
                                                 _%self146970152732%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method152744152749%_
                                                (##unchecked-structure-ref
                                                 _%self146970152732%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method152744152749%_
                                            _%object152743152748%_
                                            _%key152720%_
                                            _%value152723%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object152750152755%_
                                                (##unchecked-structure-ref
                                                 _%self146970152732%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method152751152756%_
                                                (##unchecked-structure-ref
                                                 _%self146970152732%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method152751152756%_
                                            _%object152750152755%_
                                            _%key152720%_
                                            _%value152723%_))))))))
                          (_%self146070152765%_
                           (let ((_%$obj152762%_ _%self146070152683%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152762%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152762%_)))
                                      '#t)
                                 _%$obj152762%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152762%_)))))
                          (_%self146070152767%_ _%self146070152765%_)
                          (_%proc152777%_ _%proc152758%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object152786152791%_
                                  (##unchecked-structure-ref
                                   _%self146070152767%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152787152792%_
                                  (##unchecked-structure-ref
                                   _%self146070152767%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152787152792%_
                              _%object152786152791%_
                              _%proc152777%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object152793152798%_
                                  (##unchecked-structure-ref
                                   _%self146070152767%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152794152799%_
                                  (##unchecked-structure-ref
                                   _%self146070152767%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152794152799%_
                              _%object152793152798%_
                              _%proc152777%_))))))))
            (declare (not safe))
            (##for-each __tmp161665 _%rest152650%_))
          _%h152653%_)))
    (define hash-merge!
      (lambda (_%h152362%_ . _%rest152363%_)
        (let* ((_%h152369%_
                (let ((_%$obj152366%_ _%h152362%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152366%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152366%_)))
                           '#t)
                      _%$obj152366%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152366%_)))))
               (_%h152371%_ _%h152369%_))
          (declare (not safe))
          (##apply __hash-merge! _%h152371%_ _%rest152363%_))))
    (define __hash-merge-right!
      (lambda (_%h152520%_ . _%rest152521%_)
        (let ((_%h152524%_ _%h152520%_))
          (let ((__tmp161666
                 (lambda (_%hr152533%_)
                   (let* ((_%hr152539%_
                           (let ((_%$obj152536%_ _%hr152533%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152536%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152536%_)))
                                      '#t)
                                 _%$obj152536%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152536%_)))))
                          (_%hr152541%_ _%hr152539%_)
                          (_%self146070152554%_ _%hr152541%_)
                          (_%proc152606%_
                           (lambda (_%k152557%_ _%v152558%_)
                             (let* ((_%self146970152560%_ _%h152524%_)
                                    (_%key152563%_ _%k152557%_)
                                    (_%value152566%_ _%v152558%_)
                                    (_%self146970152573%_
                                     (let ((_%$obj152570%_
                                            _%self146970152560%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj152570%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj152570%_)))
                                                '#t)
                                           _%$obj152570%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj152570%_)))))
                                    (_%self146970152575%_
                                     _%self146970152573%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object152591152596%_
                                            (##unchecked-structure-ref
                                             _%self146970152575%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method152592152597%_
                                            (##unchecked-structure-ref
                                             _%self146970152575%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method152592152597%_
                                        _%object152591152596%_
                                        _%key152563%_
                                        _%value152566%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object152598152603%_
                                            (##unchecked-structure-ref
                                             _%self146970152575%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method152599152604%_
                                            (##unchecked-structure-ref
                                             _%self146970152575%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method152599152604%_
                                        _%object152598152603%_
                                        _%key152563%_
                                        _%value152566%_)))))))
                          (_%self146070152613%_
                           (let ((_%$obj152610%_ _%self146070152554%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152610%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152610%_)))
                                      '#t)
                                 _%$obj152610%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152610%_)))))
                          (_%self146070152615%_ _%self146070152613%_)
                          (_%proc152625%_ _%proc152606%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object152634152639%_
                                  (##unchecked-structure-ref
                                   _%self146070152615%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152635152640%_
                                  (##unchecked-structure-ref
                                   _%self146070152615%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152635152640%_
                              _%object152634152639%_
                              _%proc152625%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object152641152646%_
                                  (##unchecked-structure-ref
                                   _%self146070152615%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152642152647%_
                                  (##unchecked-structure-ref
                                   _%self146070152615%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152642152647%_
                              _%object152641152646%_
                              _%proc152625%_))))))))
            (declare (not safe))
            (##for-each __tmp161666 _%rest152521%_))
          _%h152524%_)))
    (define hash-merge-right!
      (lambda (_%h152501%_ . _%rest152502%_)
        (let* ((_%h152508%_
                (let ((_%$obj152505%_ _%h152501%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152505%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152505%_)))
                           '#t)
                      _%$obj152505%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152505%_)))))
               (_%h152510%_ _%h152508%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h152510%_ _%rest152502%_))))))
