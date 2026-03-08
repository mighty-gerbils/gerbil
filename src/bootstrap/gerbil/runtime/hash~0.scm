(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1773009264)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp162133 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp162133
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args160875%_
        (apply make-instance UnboundKeyError::t _%$args160875%_)))
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
      (lambda (_%where160749%_ _%message160750%_ . _%irritants160751%_)
        (let ((__tmp162134
               (let ((__obj162125
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj162125
                    _%message160750%_
                    'where:
                    _%where160749%_
                    'irritants:
                    _%irritants160751%_))
                 __obj162125)))
          (declare (not safe))
          (raise __tmp162134))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp162135 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp162135
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj162127
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj162127
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj162127))
    (define make-HashTable
      (lambda (_%obj160747%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj160747%_))))
    (define try-HashTable
      (lambda (_%obj160745%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj160745%_))))
    (define HashTable?
      (lambda (_%obj160743%_)
        (let ((__tmp162136
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj160743%_ __tmp162136))))
    (define is-HashTable?
      (lambda (_%obj160740%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj160740%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self145730145974%_)
        (let ((_%self145730145976%_ _%self145730145974%_))
          (declare (not safe))
          (let ((_%object145983145988%_
                 (##unchecked-structure-ref
                  _%self145730145976%_
                  '1
                  '#f
                  'clear!))
                (_%method145984145989%_
                 (##unchecked-structure-ref
                  _%self145730145976%_
                  '2
                  '#f
                  'clear!)))
            (_%method145984145989%_ _%object145983145988%_)))))
    (define ::HashTable-clear!
      (lambda (_%self145731145991%_)
        (let* ((_%self145731145996%_
                (let ((_%$obj145993%_ _%self145731145991%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145993%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145993%_)))
                           '#t)
                      _%$obj145993%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145993%_)))))
               (_%self145731145998%_ _%self145731145996%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146006146011%_
                       (##unchecked-structure-ref
                        _%self145731145998%_
                        '1
                        '#f
                        'clear!))
                      (_%method146007146012%_
                       (##unchecked-structure-ref
                        _%self145731145998%_
                        '2
                        '#f
                        'clear!)))
                  (_%method146007146012%_ _%object146006146011%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146013146018%_
                       (##unchecked-structure-ref
                        _%self145731145998%_
                        '1
                        '#f
                        'clear!))
                      (_%method146014146019%_
                       (##unchecked-structure-ref
                        _%self145731145998%_
                        '2
                        '#f
                        'clear!)))
                  (_%method146014146019%_ _%object146013146018%_)))))))
    (define __HashTable-copy
      (lambda (_%self146022146265%_)
        (let ((_%self146022146267%_ _%self146022146265%_))
          (declare (not safe))
          (let ((_%object146274146279%_
                 (##unchecked-structure-ref _%self146022146267%_ '1 '#f 'copy))
                (_%method146275146280%_
                 (##unchecked-structure-ref
                  _%self146022146267%_
                  '3
                  '#f
                  'copy)))
            (_%method146275146280%_ _%object146274146279%_)))))
    (define ::HashTable-copy
      (lambda (_%self146023146282%_)
        (let* ((_%self146023146287%_
                (let ((_%$obj146284%_ _%self146023146282%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146284%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146284%_)))
                           '#t)
                      _%$obj146284%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146284%_)))))
               (_%self146023146289%_ _%self146023146287%_))
          (if __DEBUG
              (let ((_%$obj146305%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object146297146302%_
                              (##unchecked-structure-ref
                               _%self146023146289%_
                               '1
                               '#f
                               'copy))
                             (_%method146298146303%_
                              (##unchecked-structure-ref
                               _%self146023146289%_
                               '3
                               '#f
                               'copy)))
                         (_%method146298146303%_ _%object146297146302%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj146305%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj146305%_)))
                         '#t)
                    _%$obj146305%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj146305%_))))
              (let ()
                (declare (not safe))
                (let ((_%object146307146312%_
                       (##unchecked-structure-ref
                        _%self146023146289%_
                        '1
                        '#f
                        'copy))
                      (_%method146308146313%_
                       (##unchecked-structure-ref
                        _%self146023146289%_
                        '3
                        '#f
                        'copy)))
                  (_%method146308146313%_ _%object146307146312%_)))))))
    (define __HashTable-delete!
      (lambda (_%self146316146559%_ _%key146560%_)
        (let ((_%self146316146562%_ _%self146316146559%_))
          (declare (not safe))
          (let ((_%object146569146574%_
                 (##unchecked-structure-ref
                  _%self146316146562%_
                  '1
                  '#f
                  'delete!))
                (_%method146570146575%_
                 (##unchecked-structure-ref
                  _%self146316146562%_
                  '4
                  '#f
                  'delete!)))
            (_%method146570146575%_ _%object146569146574%_ _%key146560%_)))))
    (define ::HashTable-delete!
      (lambda (_%self146317146577%_ _%key146578%_)
        (let* ((_%self146317146583%_
                (let ((_%$obj146580%_ _%self146317146577%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146580%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146580%_)))
                           '#t)
                      _%$obj146580%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146580%_)))))
               (_%self146317146585%_ _%self146317146583%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146593146598%_
                       (##unchecked-structure-ref
                        _%self146317146585%_
                        '1
                        '#f
                        'delete!))
                      (_%method146594146599%_
                       (##unchecked-structure-ref
                        _%self146317146585%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146594146599%_
                   _%object146593146598%_
                   _%key146578%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146600146605%_
                       (##unchecked-structure-ref
                        _%self146317146585%_
                        '1
                        '#f
                        'delete!))
                      (_%method146601146606%_
                       (##unchecked-structure-ref
                        _%self146317146585%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146601146606%_
                   _%object146600146605%_
                   _%key146578%_)))))))
    (define __HashTable-for-each
      (lambda (_%self146609146852%_ _%proc146853%_)
        (let* ((_%self146609146855%_ _%self146609146852%_)
               (_%proc146862%_ _%proc146853%_))
          (declare (not safe))
          (let ((_%object146870146875%_
                 (##unchecked-structure-ref
                  _%self146609146855%_
                  '1
                  '#f
                  'for-each))
                (_%method146871146876%_
                 (##unchecked-structure-ref
                  _%self146609146855%_
                  '5
                  '#f
                  'for-each)))
            (_%method146871146876%_ _%object146870146875%_ _%proc146862%_)))))
    (define ::HashTable-for-each
      (lambda (_%self146610146878%_ _%proc146879%_)
        (let* ((_%self146610146884%_
                (let ((_%$obj146881%_ _%self146610146878%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146881%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146881%_)))
                           '#t)
                      _%$obj146881%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146881%_)))))
               (_%self146610146886%_ _%self146610146884%_))
          (if (procedure? _%proc146879%_)
              (let ((_%proc146895%_ _%proc146879%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object146904146909%_
                             (##unchecked-structure-ref
                              _%self146610146886%_
                              '1
                              '#f
                              'for-each))
                            (_%method146905146910%_
                             (##unchecked-structure-ref
                              _%self146610146886%_
                              '5
                              '#f
                              'for-each)))
                        (_%method146905146910%_
                         _%object146904146909%_
                         _%proc146895%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object146911146916%_
                             (##unchecked-structure-ref
                              _%self146610146886%_
                              '1
                              '#f
                              'for-each))
                            (_%method146912146917%_
                             (##unchecked-structure-ref
                              _%self146610146886%_
                              '5
                              '#f
                              'for-each)))
                        (_%method146912146917%_
                         _%object146911146916%_
                         _%proc146895%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc146879%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self146920147163%_)
        (let ((_%self146920147165%_ _%self146920147163%_))
          (declare (not safe))
          (let ((_%object147172147177%_
                 (##unchecked-structure-ref
                  _%self146920147165%_
                  '1
                  '#f
                  'length))
                (_%method147173147178%_
                 (##unchecked-structure-ref
                  _%self146920147165%_
                  '6
                  '#f
                  'length)))
            (_%method147173147178%_ _%object147172147177%_)))))
    (define ::HashTable-length
      (lambda (_%self146921147180%_)
        (let* ((_%self146921147185%_
                (let ((_%$obj147182%_ _%self146921147180%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147182%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147182%_)))
                           '#t)
                      _%$obj147182%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147182%_)))))
               (_%self146921147187%_ _%self146921147185%_))
          (if __DEBUG
              (let ((_%val147203%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object147195147200%_
                              (##unchecked-structure-ref
                               _%self146921147187%_
                               '1
                               '#f
                               'length))
                             (_%method147196147201%_
                              (##unchecked-structure-ref
                               _%self146921147187%_
                               '6
                               '#f
                               'length)))
                         (_%method147196147201%_ _%object147195147200%_)))))
                (if (fixnum? _%val147203%_)
                    _%val147203%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val147203%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object147205147210%_
                       (##unchecked-structure-ref
                        _%self146921147187%_
                        '1
                        '#f
                        'length))
                      (_%method147206147211%_
                       (##unchecked-structure-ref
                        _%self146921147187%_
                        '6
                        '#f
                        'length)))
                  (_%method147206147211%_ _%object147205147210%_)))))))
    (define __HashTable-ref
      (lambda (_%self147214147457%_ _%key147458%_ _%default147459%_)
        (let ((_%self147214147461%_ _%self147214147457%_))
          (declare (not safe))
          (let ((_%object147468147473%_
                 (##unchecked-structure-ref _%self147214147461%_ '1 '#f 'ref))
                (_%method147469147474%_
                 (##unchecked-structure-ref _%self147214147461%_ '7 '#f 'ref)))
            (_%method147469147474%_
             _%object147468147473%_
             _%key147458%_
             _%default147459%_)))))
    (define ::HashTable-ref
      (lambda (_%self147215147476%_ _%key147477%_ _%default147478%_)
        (let* ((_%self147215147483%_
                (let ((_%$obj147480%_ _%self147215147476%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147480%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147480%_)))
                           '#t)
                      _%$obj147480%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147480%_)))))
               (_%self147215147485%_ _%self147215147483%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147493147498%_
                       (##unchecked-structure-ref
                        _%self147215147485%_
                        '1
                        '#f
                        'ref))
                      (_%method147494147499%_
                       (##unchecked-structure-ref
                        _%self147215147485%_
                        '7
                        '#f
                        'ref)))
                  (_%method147494147499%_
                   _%object147493147498%_
                   _%key147477%_
                   _%default147478%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147500147505%_
                       (##unchecked-structure-ref
                        _%self147215147485%_
                        '1
                        '#f
                        'ref))
                      (_%method147501147506%_
                       (##unchecked-structure-ref
                        _%self147215147485%_
                        '7
                        '#f
                        'ref)))
                  (_%method147501147506%_
                   _%object147500147505%_
                   _%key147477%_
                   _%default147478%_)))))))
    (define __HashTable-set!
      (lambda (_%self147509147752%_ _%key147753%_ _%value147754%_)
        (let ((_%self147509147756%_ _%self147509147752%_))
          (declare (not safe))
          (let ((_%object147763147768%_
                 (##unchecked-structure-ref _%self147509147756%_ '1 '#f 'set!))
                (_%method147764147769%_
                 (##unchecked-structure-ref
                  _%self147509147756%_
                  '8
                  '#f
                  'set!)))
            (_%method147764147769%_
             _%object147763147768%_
             _%key147753%_
             _%value147754%_)))))
    (define ::HashTable-set!
      (lambda (_%self147510147771%_ _%key147772%_ _%value147773%_)
        (let* ((_%self147510147778%_
                (let ((_%$obj147775%_ _%self147510147771%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147775%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147775%_)))
                           '#t)
                      _%$obj147775%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147775%_)))))
               (_%self147510147780%_ _%self147510147778%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147788147793%_
                       (##unchecked-structure-ref
                        _%self147510147780%_
                        '1
                        '#f
                        'set!))
                      (_%method147789147794%_
                       (##unchecked-structure-ref
                        _%self147510147780%_
                        '8
                        '#f
                        'set!)))
                  (_%method147789147794%_
                   _%object147788147793%_
                   _%key147772%_
                   _%value147773%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147795147800%_
                       (##unchecked-structure-ref
                        _%self147510147780%_
                        '1
                        '#f
                        'set!))
                      (_%method147796147801%_
                       (##unchecked-structure-ref
                        _%self147510147780%_
                        '8
                        '#f
                        'set!)))
                  (_%method147796147801%_
                   _%object147795147800%_
                   _%key147772%_
                   _%value147773%_)))))))
    (define __HashTable-update!
      (lambda (_%self147804148047%_
               _%key148048%_
               _%proc148049%_
               _%default148050%_)
        (let* ((_%self147804148052%_ _%self147804148047%_)
               (_%proc148059%_ _%proc148049%_))
          (declare (not safe))
          (let ((_%object148067148072%_
                 (##unchecked-structure-ref
                  _%self147804148052%_
                  '1
                  '#f
                  'update!))
                (_%method148068148073%_
                 (##unchecked-structure-ref
                  _%self147804148052%_
                  '9
                  '#f
                  'update!)))
            (_%method148068148073%_
             _%object148067148072%_
             _%key148048%_
             _%proc148059%_
             _%default148050%_)))))
    (define ::HashTable-update!
      (lambda (_%self147805148075%_
               _%key148076%_
               _%proc148077%_
               _%default148078%_)
        (let* ((_%self147805148083%_
                (let ((_%$obj148080%_ _%self147805148075%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148080%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148080%_)))
                           '#t)
                      _%$obj148080%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148080%_)))))
               (_%self147805148085%_ _%self147805148083%_))
          (if (procedure? _%proc148077%_)
              (let ((_%proc148094%_ _%proc148077%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object148103148108%_
                             (##unchecked-structure-ref
                              _%self147805148085%_
                              '1
                              '#f
                              'update!))
                            (_%method148104148109%_
                             (##unchecked-structure-ref
                              _%self147805148085%_
                              '9
                              '#f
                              'update!)))
                        (_%method148104148109%_
                         _%object148103148108%_
                         _%key148076%_
                         _%proc148094%_
                         _%default148078%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object148110148115%_
                             (##unchecked-structure-ref
                              _%self147805148085%_
                              '1
                              '#f
                              'update!))
                            (_%method148111148116%_
                             (##unchecked-structure-ref
                              _%self147805148085%_
                              '9
                              '#f
                              'update!)))
                        (_%method148111148116%_
                         _%object148110148115%_
                         _%key148076%_
                         _%proc148094%_
                         _%default148078%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc148077%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp162137 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp162137
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj162129
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj162129
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj162129))
    (define make-Locker
      (lambda (_%obj160738%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj160738%_))))
    (define try-Locker
      (lambda (_%obj160736%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj160736%_))))
    (define Locker?
      (lambda (_%obj160734%_)
        (let ((__tmp162138
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj160734%_ __tmp162138))))
    (define is-Locker?
      (lambda (_%obj160731%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj160731%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self148119148362%_)
        (let ((_%self148119148364%_ _%self148119148362%_))
          (declare (not safe))
          (let ((_%object148371148376%_
                 (##unchecked-structure-ref
                  _%self148119148364%_
                  '1
                  '#f
                  'read-lock!))
                (_%method148372148377%_
                 (##unchecked-structure-ref
                  _%self148119148364%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method148372148377%_ _%object148371148376%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self148120148379%_)
        (let* ((_%self148120148384%_
                (let ((_%$obj148381%_ _%self148120148379%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148381%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148381%_)))
                           '#t)
                      _%$obj148381%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148381%_)))))
               (_%self148120148386%_ _%self148120148384%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148394148399%_
                       (##unchecked-structure-ref
                        _%self148120148386%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method148395148400%_
                       (##unchecked-structure-ref
                        _%self148120148386%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method148395148400%_ _%object148394148399%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148401148406%_
                       (##unchecked-structure-ref
                        _%self148120148386%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method148402148407%_
                       (##unchecked-structure-ref
                        _%self148120148386%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method148402148407%_ _%object148401148406%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self148410148653%_)
        (let ((_%self148410148655%_ _%self148410148653%_))
          (declare (not safe))
          (let ((_%object148662148667%_
                 (##unchecked-structure-ref
                  _%self148410148655%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method148663148668%_
                 (##unchecked-structure-ref
                  _%self148410148655%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method148663148668%_ _%object148662148667%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self148411148670%_)
        (let* ((_%self148411148675%_
                (let ((_%$obj148672%_ _%self148411148670%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148672%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148672%_)))
                           '#t)
                      _%$obj148672%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148672%_)))))
               (_%self148411148677%_ _%self148411148675%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148685148690%_
                       (##unchecked-structure-ref
                        _%self148411148677%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148686148691%_
                       (##unchecked-structure-ref
                        _%self148411148677%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148686148691%_ _%object148685148690%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148692148697%_
                       (##unchecked-structure-ref
                        _%self148411148677%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148693148698%_
                       (##unchecked-structure-ref
                        _%self148411148677%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148693148698%_ _%object148692148697%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self148701148944%_)
        (let ((_%self148701148946%_ _%self148701148944%_))
          (declare (not safe))
          (let ((_%object148953148958%_
                 (##unchecked-structure-ref
                  _%self148701148946%_
                  '1
                  '#f
                  'write-lock!))
                (_%method148954148959%_
                 (##unchecked-structure-ref
                  _%self148701148946%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method148954148959%_ _%object148953148958%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self148702148961%_)
        (let* ((_%self148702148966%_
                (let ((_%$obj148963%_ _%self148702148961%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148963%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148963%_)))
                           '#t)
                      _%$obj148963%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148963%_)))))
               (_%self148702148968%_ _%self148702148966%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148976148981%_
                       (##unchecked-structure-ref
                        _%self148702148968%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method148977148982%_
                       (##unchecked-structure-ref
                        _%self148702148968%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method148977148982%_ _%object148976148981%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148983148988%_
                       (##unchecked-structure-ref
                        _%self148702148968%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method148984148989%_
                       (##unchecked-structure-ref
                        _%self148702148968%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method148984148989%_ _%object148983148988%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self148992149235%_)
        (let ((_%self148992149237%_ _%self148992149235%_))
          (declare (not safe))
          (let ((_%object149244149249%_
                 (##unchecked-structure-ref
                  _%self148992149237%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method149245149250%_
                 (##unchecked-structure-ref
                  _%self148992149237%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method149245149250%_ _%object149244149249%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self148993149252%_)
        (let* ((_%self148993149257%_
                (let ((_%$obj149254%_ _%self148993149252%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149254%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149254%_)))
                           '#t)
                      _%$obj149254%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj149254%_)))))
               (_%self148993149259%_ _%self148993149257%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object149267149272%_
                       (##unchecked-structure-ref
                        _%self148993149259%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method149268149273%_
                       (##unchecked-structure-ref
                        _%self148993149259%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method149268149273%_ _%object149267149272%_)))
              (let ()
                (declare (not safe))
                (let ((_%object149274149279%_
                       (##unchecked-structure-ref
                        _%self148993149259%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method149275149280%_
                       (##unchecked-structure-ref
                        _%self148993149259%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method149275149280%_ _%object149274149279%_)))))))
    (let* ((_%klass160694%_ __table::t)
           (_%id160697%_ 'HashTable::ref)
           (_%proc160700%_ raw-table-ref)
           (_%rebind?160703%_ '#f)
           (_%id160708%_ _%id160697%_)
           (_%proc160721%_ _%proc160700%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160694%_
       _%id160708%_
       _%proc160721%_
       _%rebind?160703%_))
    (let* ((_%klass160657%_ __table::t)
           (_%id160660%_ 'HashTable::set!)
           (_%proc160663%_ raw-table-set!)
           (_%rebind?160666%_ '#f)
           (_%id160671%_ _%id160660%_)
           (_%proc160684%_ _%proc160663%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160657%_
       _%id160671%_
       _%proc160684%_
       _%rebind?160666%_))
    (let* ((_%klass160620%_ __table::t)
           (_%id160623%_ 'HashTable::update!)
           (_%proc160626%_ raw-table-update!)
           (_%rebind?160629%_ '#f)
           (_%id160634%_ _%id160623%_)
           (_%proc160647%_ _%proc160626%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160620%_
       _%id160634%_
       _%proc160647%_
       _%rebind?160629%_))
    (let* ((_%klass160583%_ __table::t)
           (_%id160586%_ 'HashTable::delete!)
           (_%proc160589%_ raw-table-delete!)
           (_%rebind?160592%_ '#f)
           (_%id160597%_ _%id160586%_)
           (_%proc160610%_ _%proc160589%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160583%_
       _%id160597%_
       _%proc160610%_
       _%rebind?160592%_))
    (let* ((_%klass160546%_ __table::t)
           (_%id160549%_ 'HashTable::for-each)
           (_%proc160552%_ raw-table-for-each)
           (_%rebind?160555%_ '#f)
           (_%id160560%_ _%id160549%_)
           (_%proc160573%_ _%proc160552%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160546%_
       _%id160560%_
       _%proc160573%_
       _%rebind?160555%_))
    (let* ((_%klass160509%_ __table::t)
           (_%id160512%_ 'HashTable::length)
           (_%proc160515%_ &raw-table-count)
           (_%rebind?160518%_ '#f)
           (_%id160523%_ _%id160512%_)
           (_%proc160536%_ _%proc160515%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160509%_
       _%id160523%_
       _%proc160536%_
       _%rebind?160518%_))
    (let* ((_%klass160472%_ __table::t)
           (_%id160475%_ 'HashTable::copy)
           (_%proc160478%_ raw-table-copy)
           (_%rebind?160481%_ '#f)
           (_%id160486%_ _%id160475%_)
           (_%proc160499%_ _%proc160478%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160472%_
       _%id160486%_
       _%proc160499%_
       _%rebind?160481%_))
    (let* ((_%klass160435%_ __table::t)
           (_%id160438%_ 'HashTable::clear!)
           (_%proc160441%_ raw-table-clear!)
           (_%rebind?160444%_ '#f)
           (_%id160449%_ _%id160438%_)
           (_%proc160462%_ _%proc160441%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160435%_
       _%id160449%_
       _%proc160462%_
       _%rebind?160444%_))
    (let* ((_%klass160398%_ __gc-table::t)
           (_%id160401%_ 'HashTable::ref)
           (_%proc160404%_ gc-table-ref)
           (_%rebind?160407%_ '#f)
           (_%id160412%_ _%id160401%_)
           (_%proc160425%_ _%proc160404%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160398%_
       _%id160412%_
       _%proc160425%_
       _%rebind?160407%_))
    (let* ((_%klass160361%_ __gc-table::t)
           (_%id160364%_ 'HashTable::set!)
           (_%proc160367%_ gc-table-set!)
           (_%rebind?160370%_ '#f)
           (_%id160375%_ _%id160364%_)
           (_%proc160388%_ _%proc160367%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160361%_
       _%id160375%_
       _%proc160388%_
       _%rebind?160370%_))
    (let* ((_%klass160324%_ __gc-table::t)
           (_%id160327%_ 'HashTable::update!)
           (_%proc160330%_ gc-table-update!)
           (_%rebind?160333%_ '#f)
           (_%id160338%_ _%id160327%_)
           (_%proc160351%_ _%proc160330%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160324%_
       _%id160338%_
       _%proc160351%_
       _%rebind?160333%_))
    (let* ((_%klass160287%_ __gc-table::t)
           (_%id160290%_ 'HashTable::delete!)
           (_%proc160293%_ gc-table-delete!)
           (_%rebind?160296%_ '#f)
           (_%id160301%_ _%id160290%_)
           (_%proc160314%_ _%proc160293%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160287%_
       _%id160301%_
       _%proc160314%_
       _%rebind?160296%_))
    (let* ((_%klass160250%_ __gc-table::t)
           (_%id160253%_ 'HashTable::for-each)
           (_%proc160256%_ gc-table-for-each)
           (_%rebind?160259%_ '#f)
           (_%id160264%_ _%id160253%_)
           (_%proc160277%_ _%proc160256%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160250%_
       _%id160264%_
       _%proc160277%_
       _%rebind?160259%_))
    (let* ((_%klass160213%_ __gc-table::t)
           (_%id160216%_ 'HashTable::length)
           (_%proc160219%_ gc-table-length)
           (_%rebind?160222%_ '#f)
           (_%id160227%_ _%id160216%_)
           (_%proc160240%_ _%proc160219%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160213%_
       _%id160227%_
       _%proc160240%_
       _%rebind?160222%_))
    (let* ((_%klass160176%_ __gc-table::t)
           (_%id160179%_ 'HashTable::copy)
           (_%proc160182%_ gc-table-copy)
           (_%rebind?160185%_ '#f)
           (_%id160190%_ _%id160179%_)
           (_%proc160203%_ _%proc160182%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160176%_
       _%id160190%_
       _%proc160203%_
       _%rebind?160185%_))
    (let* ((_%klass160139%_ __gc-table::t)
           (_%id160142%_ 'HashTable::clear!)
           (_%proc160145%_ gc-table-clear!)
           (_%rebind?160148%_ '#f)
           (_%id160153%_ _%id160142%_)
           (_%proc160166%_ _%proc160145%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160139%_
       _%id160153%_
       _%proc160166%_
       _%rebind?160148%_))
    (define gambit-table-update!
      (lambda (_%table160132%_
               _%key160133%_
               _%update160134%_
               _%default160135%_)
        (let ((_%result160137%_
               (table-ref _%table160132%_ _%key160133%_ _%default160135%_)))
          (table-set!
           _%table160132%_
           _%key160133%_
           (_%update160134%_ _%default160135%_)))))
    (define gambit-table-for-each
      (lambda (_%table160129%_ _%proc160130%_)
        (table-for-each _%proc160130%_ _%table160129%_)))
    (define gambit-table-clear!
      (lambda (_%table160127%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table160127%_ '0 '5 '#f '#f))))
    (let* ((_%klass160090%_ (macro-type-table))
           (_%id160093%_ 'HashTable::ref)
           (_%proc160096%_ table-ref)
           (_%rebind?160099%_ '#f)
           (_%id160104%_ _%id160093%_)
           (_%proc160117%_ _%proc160096%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160090%_
       _%id160104%_
       _%proc160117%_
       _%rebind?160099%_))
    (let* ((_%klass160053%_ (macro-type-table))
           (_%id160056%_ 'HashTable::set!)
           (_%proc160059%_ table-set!)
           (_%rebind?160062%_ '#f)
           (_%id160067%_ _%id160056%_)
           (_%proc160080%_ _%proc160059%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160053%_
       _%id160067%_
       _%proc160080%_
       _%rebind?160062%_))
    (let* ((_%klass160016%_ (macro-type-table))
           (_%id160019%_ 'HashTable::update!)
           (_%proc160022%_ gambit-table-update!)
           (_%rebind?160025%_ '#f)
           (_%id160030%_ _%id160019%_)
           (_%proc160043%_ _%proc160022%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160016%_
       _%id160030%_
       _%proc160043%_
       _%rebind?160025%_))
    (let* ((_%klass159979%_ (macro-type-table))
           (_%id159982%_ 'HashTable::delete!)
           (_%proc159985%_ table-set!)
           (_%rebind?159988%_ '#f)
           (_%id159993%_ _%id159982%_)
           (_%proc160006%_ _%proc159985%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159979%_
       _%id159993%_
       _%proc160006%_
       _%rebind?159988%_))
    (let* ((_%klass159942%_ (macro-type-table))
           (_%id159945%_ 'HashTable::for-each)
           (_%proc159948%_ gambit-table-for-each)
           (_%rebind?159951%_ '#f)
           (_%id159956%_ _%id159945%_)
           (_%proc159969%_ _%proc159948%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159942%_
       _%id159956%_
       _%proc159969%_
       _%rebind?159951%_))
    (let* ((_%klass159905%_ (macro-type-table))
           (_%id159908%_ 'HashTable::length)
           (_%proc159911%_ table-length)
           (_%rebind?159914%_ '#f)
           (_%id159919%_ _%id159908%_)
           (_%proc159932%_ _%proc159911%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159905%_
       _%id159919%_
       _%proc159932%_
       _%rebind?159914%_))
    (let* ((_%klass159868%_ (macro-type-table))
           (_%id159871%_ 'HashTable::copy)
           (_%proc159874%_ table-copy)
           (_%rebind?159877%_ '#f)
           (_%id159882%_ _%id159871%_)
           (_%proc159895%_ _%proc159874%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159868%_
       _%id159882%_
       _%proc159895%_
       _%rebind?159877%_))
    (let* ((_%klass159831%_ (macro-type-table))
           (_%id159834%_ 'HashTable::clear!)
           (_%proc159837%_ gambit-table-clear!)
           (_%rebind?159840%_ '#f)
           (_%id159845%_ _%id159834%_)
           (_%proc159858%_ _%proc159837%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159831%_
       _%id159845%_
       _%proc159858%_
       _%rebind?159840%_))
    (define hash-table::t
      (let* ((_%slots159794%_ '(table count free hash test seed))
             (_%slot-vector159796%_ (list->vector (cons '#f _%slots159794%_)))
             (_%slot-table159822%_
              (let ((_%slot-table159798%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp162141
                       (lambda (_%slot159800%_ _%field159801%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159798%_
                            _%slot159800%_
                            _%field159801%_))
                         (let ((__tmp162142
                                (let ((_%sym159803%_ _%slot159800%_))
                                  (if (symbol? _%sym159803%_)
                                      (let ((_%sym159808%_ _%sym159803%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym159808%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym159803%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159798%_
                            __tmp162142
                            _%field159801%_))))
                      (__tmp162139
                       (let ((__tmp162140
                              (let ()
                                (declare (not safe))
                                (##length _%slots159794%_))))
                         (declare (not safe))
                         (##iota __tmp162140 '1))))
                  (declare (not safe))
                  (##for-each __tmp162141 _%slots159794%_ __tmp162139))
                _%slot-table159798%_))
             (_%flags159824%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields159826%_ '#())
             (_%properties159828%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots159794%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp162143 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags159824%_
         __table::t
         _%fields159826%_
         __tmp162143
         _%slot-vector159796%_
         _%slot-table159822%_
         _%properties159828%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots159757%_ '(gcht immediate))
             (_%slot-vector159759%_ (list->vector (cons '#f _%slots159757%_)))
             (_%slot-table159785%_
              (let ((_%slot-table159761%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp162146
                       (lambda (_%slot159763%_ _%field159764%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159761%_
                            _%slot159763%_
                            _%field159764%_))
                         (let ((__tmp162147
                                (let ((_%sym159766%_ _%slot159763%_))
                                  (if (symbol? _%sym159766%_)
                                      (let ((_%sym159771%_ _%sym159766%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym159771%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym159766%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159761%_
                            __tmp162147
                            _%field159764%_))))
                      (__tmp162144
                       (let ((__tmp162145
                              (let ()
                                (declare (not safe))
                                (##length _%slots159757%_))))
                         (declare (not safe))
                         (##iota __tmp162145 '1))))
                  (declare (not safe))
                  (##for-each __tmp162146 _%slots159757%_ __tmp162144))
                _%slot-table159761%_))
             (_%flags159787%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields159789%_ '#())
             (_%properties159791%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots159757%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp162148 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags159787%_
         __gc-table::t
         _%fields159789%_
         __tmp162148
         _%slot-vector159759%_
         _%slot-table159785%_
         _%properties159791%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp162150 (list))
            (__tmp162149
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp162150
         '(table lock)
         __tmp162149
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args159754%_
        (apply make-instance locked-hash-table::t _%$args159754%_)))
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
      (let ((__tmp162152 (list))
            (__tmp162151
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp162152
         '(table key-check)
         __tmp162151
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args159751%_
        (apply make-instance checked-hash-table::t _%$args159751%_)))
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
      (let ((__tmp162154 (list hash-table::t))
            (__tmp162153 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp162154
         '()
         __tmp162153
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args159748%_
        (apply make-instance eq-hash-table::t _%$args159748%_)))
    (define eqv-hash-table::t
      (let ((__tmp162156 (list hash-table::t))
            (__tmp162155 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp162156
         '()
         __tmp162155
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args159745%_
        (apply make-instance eqv-hash-table::t _%$args159745%_)))
    (define symbol-hash-table::t
      (let ((__tmp162158 (list hash-table::t))
            (__tmp162157 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp162158
         '()
         __tmp162157
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args159742%_
        (apply make-instance symbol-hash-table::t _%$args159742%_)))
    (define string-hash-table::t
      (let ((__tmp162160 (list hash-table::t))
            (__tmp162159 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp162160
         '()
         __tmp162159
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args159739%_
        (apply make-instance string-hash-table::t _%$args159739%_)))
    (define immediate-hash-table::t
      (let ((__tmp162162 (list hash-table::t))
            (__tmp162161 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp162162
         '()
         __tmp162161
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args159736%_
        (apply make-instance immediate-hash-table::t _%$args159736%_)))
    (let* ((_%klass159699%_ hash-table::t)
           (_%id159702%_ 'HashTable::ref)
           (_%proc159705%_ raw-table-ref)
           (_%rebind?159708%_ '#f)
           (_%id159713%_ _%id159702%_)
           (_%proc159726%_ _%proc159705%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159699%_
       _%id159713%_
       _%proc159726%_
       _%rebind?159708%_))
    (let* ((_%klass159662%_ hash-table::t)
           (_%id159665%_ 'HashTable::set!)
           (_%proc159668%_ raw-table-set!)
           (_%rebind?159671%_ '#f)
           (_%id159676%_ _%id159665%_)
           (_%proc159689%_ _%proc159668%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159662%_
       _%id159676%_
       _%proc159689%_
       _%rebind?159671%_))
    (let* ((_%klass159625%_ hash-table::t)
           (_%id159628%_ 'HashTable::update!)
           (_%proc159631%_ raw-table-update!)
           (_%rebind?159634%_ '#f)
           (_%id159639%_ _%id159628%_)
           (_%proc159652%_ _%proc159631%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159625%_
       _%id159639%_
       _%proc159652%_
       _%rebind?159634%_))
    (let* ((_%klass159588%_ hash-table::t)
           (_%id159591%_ 'HashTable::delete!)
           (_%proc159594%_ raw-table-delete!)
           (_%rebind?159597%_ '#f)
           (_%id159602%_ _%id159591%_)
           (_%proc159615%_ _%proc159594%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159588%_
       _%id159602%_
       _%proc159615%_
       _%rebind?159597%_))
    (let* ((_%klass159551%_ hash-table::t)
           (_%id159554%_ 'HashTable::for-each)
           (_%proc159557%_ raw-table-for-each)
           (_%rebind?159560%_ '#f)
           (_%id159565%_ _%id159554%_)
           (_%proc159578%_ _%proc159557%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159551%_
       _%id159565%_
       _%proc159578%_
       _%rebind?159560%_))
    (let* ((_%klass159514%_ hash-table::t)
           (_%id159517%_ 'HashTable::length)
           (_%proc159520%_ &raw-table-count)
           (_%rebind?159523%_ '#f)
           (_%id159528%_ _%id159517%_)
           (_%proc159541%_ _%proc159520%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159514%_
       _%id159528%_
       _%proc159541%_
       _%rebind?159523%_))
    (let* ((_%klass159477%_ hash-table::t)
           (_%id159480%_ 'HashTable::copy)
           (_%proc159483%_ raw-table-copy)
           (_%rebind?159486%_ '#f)
           (_%id159491%_ _%id159480%_)
           (_%proc159504%_ _%proc159483%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159477%_
       _%id159491%_
       _%proc159504%_
       _%rebind?159486%_))
    (let* ((_%klass159440%_ hash-table::t)
           (_%id159443%_ 'HashTable::clear!)
           (_%proc159446%_ raw-table-clear!)
           (_%rebind?159449%_ '#f)
           (_%id159454%_ _%id159443%_)
           (_%proc159467%_ _%proc159446%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159440%_
       _%id159454%_
       _%proc159467%_
       _%rebind?159449%_))
    (let* ((_%klass159403%_ eq-hash-table::t)
           (_%id159406%_ 'HashTable::ref)
           (_%proc159409%_ eq-table-ref)
           (_%rebind?159412%_ '#f)
           (_%id159417%_ _%id159406%_)
           (_%proc159430%_ _%proc159409%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159403%_
       _%id159417%_
       _%proc159430%_
       _%rebind?159412%_))
    (let* ((_%klass159366%_ eq-hash-table::t)
           (_%id159369%_ 'HashTable::set!)
           (_%proc159372%_ eq-table-set!)
           (_%rebind?159375%_ '#f)
           (_%id159380%_ _%id159369%_)
           (_%proc159393%_ _%proc159372%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159366%_
       _%id159380%_
       _%proc159393%_
       _%rebind?159375%_))
    (let* ((_%klass159329%_ eq-hash-table::t)
           (_%id159332%_ 'HashTable::update!)
           (_%proc159335%_ eq-table-update!)
           (_%rebind?159338%_ '#f)
           (_%id159343%_ _%id159332%_)
           (_%proc159356%_ _%proc159335%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159329%_
       _%id159343%_
       _%proc159356%_
       _%rebind?159338%_))
    (let* ((_%klass159292%_ eq-hash-table::t)
           (_%id159295%_ 'HashTable::delete!)
           (_%proc159298%_ eq-table-delete!)
           (_%rebind?159301%_ '#f)
           (_%id159306%_ _%id159295%_)
           (_%proc159319%_ _%proc159298%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159292%_
       _%id159306%_
       _%proc159319%_
       _%rebind?159301%_))
    (let* ((_%klass159255%_ eqv-hash-table::t)
           (_%id159258%_ 'HashTable::ref)
           (_%proc159261%_ eqv-table-ref)
           (_%rebind?159264%_ '#f)
           (_%id159269%_ _%id159258%_)
           (_%proc159282%_ _%proc159261%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159255%_
       _%id159269%_
       _%proc159282%_
       _%rebind?159264%_))
    (let* ((_%klass159218%_ eqv-hash-table::t)
           (_%id159221%_ 'HashTable::set!)
           (_%proc159224%_ eqv-table-set!)
           (_%rebind?159227%_ '#f)
           (_%id159232%_ _%id159221%_)
           (_%proc159245%_ _%proc159224%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159218%_
       _%id159232%_
       _%proc159245%_
       _%rebind?159227%_))
    (let* ((_%klass159181%_ eqv-hash-table::t)
           (_%id159184%_ 'HashTable::update!)
           (_%proc159187%_ eqv-table-update!)
           (_%rebind?159190%_ '#f)
           (_%id159195%_ _%id159184%_)
           (_%proc159208%_ _%proc159187%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159181%_
       _%id159195%_
       _%proc159208%_
       _%rebind?159190%_))
    (let* ((_%klass159144%_ eqv-hash-table::t)
           (_%id159147%_ 'HashTable::delete!)
           (_%proc159150%_ eqv-table-delete!)
           (_%rebind?159153%_ '#f)
           (_%id159158%_ _%id159147%_)
           (_%proc159171%_ _%proc159150%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159144%_
       _%id159158%_
       _%proc159171%_
       _%rebind?159153%_))
    (let* ((_%klass159107%_ symbol-hash-table::t)
           (_%id159110%_ 'HashTable::ref)
           (_%proc159113%_ symbolic-table-ref)
           (_%rebind?159116%_ '#f)
           (_%id159121%_ _%id159110%_)
           (_%proc159134%_ _%proc159113%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159107%_
       _%id159121%_
       _%proc159134%_
       _%rebind?159116%_))
    (let* ((_%klass159070%_ symbol-hash-table::t)
           (_%id159073%_ 'HashTable::set!)
           (_%proc159076%_ symbolic-table-set!)
           (_%rebind?159079%_ '#f)
           (_%id159084%_ _%id159073%_)
           (_%proc159097%_ _%proc159076%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159070%_
       _%id159084%_
       _%proc159097%_
       _%rebind?159079%_))
    (let* ((_%klass159033%_ symbol-hash-table::t)
           (_%id159036%_ 'HashTable::update!)
           (_%proc159039%_ symbolic-table-update!)
           (_%rebind?159042%_ '#f)
           (_%id159047%_ _%id159036%_)
           (_%proc159060%_ _%proc159039%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159033%_
       _%id159047%_
       _%proc159060%_
       _%rebind?159042%_))
    (let* ((_%klass158996%_ symbol-hash-table::t)
           (_%id158999%_ 'HashTable::delete!)
           (_%proc159002%_ symbolic-table-delete!)
           (_%rebind?159005%_ '#f)
           (_%id159010%_ _%id158999%_)
           (_%proc159023%_ _%proc159002%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158996%_
       _%id159010%_
       _%proc159023%_
       _%rebind?159005%_))
    (let* ((_%klass158959%_ string-hash-table::t)
           (_%id158962%_ 'HashTable::ref)
           (_%proc158965%_ string-table-ref)
           (_%rebind?158968%_ '#f)
           (_%id158973%_ _%id158962%_)
           (_%proc158986%_ _%proc158965%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158959%_
       _%id158973%_
       _%proc158986%_
       _%rebind?158968%_))
    (let* ((_%klass158922%_ string-hash-table::t)
           (_%id158925%_ 'HashTable::set!)
           (_%proc158928%_ string-table-set!)
           (_%rebind?158931%_ '#f)
           (_%id158936%_ _%id158925%_)
           (_%proc158949%_ _%proc158928%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158922%_
       _%id158936%_
       _%proc158949%_
       _%rebind?158931%_))
    (let* ((_%klass158885%_ string-hash-table::t)
           (_%id158888%_ 'HashTable::update!)
           (_%proc158891%_ string-table-update!)
           (_%rebind?158894%_ '#f)
           (_%id158899%_ _%id158888%_)
           (_%proc158912%_ _%proc158891%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158885%_
       _%id158899%_
       _%proc158912%_
       _%rebind?158894%_))
    (let* ((_%klass158848%_ string-hash-table::t)
           (_%id158851%_ 'HashTable::delete!)
           (_%proc158854%_ string-table-delete!)
           (_%rebind?158857%_ '#f)
           (_%id158862%_ _%id158851%_)
           (_%proc158875%_ _%proc158854%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158848%_
       _%id158862%_
       _%proc158875%_
       _%rebind?158857%_))
    (let* ((_%klass158811%_ immediate-hash-table::t)
           (_%id158814%_ 'HashTable::ref)
           (_%proc158817%_ immediate-table-ref)
           (_%rebind?158820%_ '#f)
           (_%id158825%_ _%id158814%_)
           (_%proc158838%_ _%proc158817%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158811%_
       _%id158825%_
       _%proc158838%_
       _%rebind?158820%_))
    (let* ((_%klass158774%_ immediate-hash-table::t)
           (_%id158777%_ 'HashTable::set!)
           (_%proc158780%_ immediate-table-set!)
           (_%rebind?158783%_ '#f)
           (_%id158788%_ _%id158777%_)
           (_%proc158801%_ _%proc158780%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158774%_
       _%id158788%_
       _%proc158801%_
       _%rebind?158783%_))
    (let* ((_%klass158737%_ immediate-hash-table::t)
           (_%id158740%_ 'HashTable::update!)
           (_%proc158743%_ immediate-table-update!)
           (_%rebind?158746%_ '#f)
           (_%id158751%_ _%id158740%_)
           (_%proc158764%_ _%proc158743%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158737%_
       _%id158751%_
       _%proc158764%_
       _%rebind?158746%_))
    (let* ((_%klass158700%_ immediate-hash-table::t)
           (_%id158703%_ 'HashTable::delete!)
           (_%proc158706%_ immediate-table-delete!)
           (_%rebind?158709%_ '#f)
           (_%id158714%_ _%id158703%_)
           (_%proc158727%_ _%proc158706%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158700%_
       _%id158714%_
       _%proc158727%_
       _%rebind?158709%_))
    (let* ((_%klass158663%_ gc-hash-table::t)
           (_%id158666%_ 'HashTable::ref)
           (_%proc158669%_ gc-table-ref)
           (_%rebind?158672%_ '#f)
           (_%id158677%_ _%id158666%_)
           (_%proc158690%_ _%proc158669%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158663%_
       _%id158677%_
       _%proc158690%_
       _%rebind?158672%_))
    (let* ((_%klass158626%_ gc-hash-table::t)
           (_%id158629%_ 'HashTable::set!)
           (_%proc158632%_ gc-table-set!)
           (_%rebind?158635%_ '#f)
           (_%id158640%_ _%id158629%_)
           (_%proc158653%_ _%proc158632%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158626%_
       _%id158640%_
       _%proc158653%_
       _%rebind?158635%_))
    (let* ((_%klass158589%_ gc-hash-table::t)
           (_%id158592%_ 'HashTable::update!)
           (_%proc158595%_ gc-table-update!)
           (_%rebind?158598%_ '#f)
           (_%id158603%_ _%id158592%_)
           (_%proc158616%_ _%proc158595%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158589%_
       _%id158603%_
       _%proc158616%_
       _%rebind?158598%_))
    (let* ((_%klass158552%_ gc-hash-table::t)
           (_%id158555%_ 'HashTable::delete!)
           (_%proc158558%_ gc-table-delete!)
           (_%rebind?158561%_ '#f)
           (_%id158566%_ _%id158555%_)
           (_%proc158579%_ _%proc158558%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158552%_
       _%id158566%_
       _%proc158579%_
       _%rebind?158561%_))
    (let* ((_%klass158515%_ gc-hash-table::t)
           (_%id158518%_ 'HashTable::for-each)
           (_%proc158521%_ gc-table-for-each)
           (_%rebind?158524%_ '#f)
           (_%id158529%_ _%id158518%_)
           (_%proc158542%_ _%proc158521%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158515%_
       _%id158529%_
       _%proc158542%_
       _%rebind?158524%_))
    (let* ((_%klass158478%_ gc-hash-table::t)
           (_%id158481%_ 'HashTable::length)
           (_%proc158484%_ gc-table-length)
           (_%rebind?158487%_ '#f)
           (_%id158492%_ _%id158481%_)
           (_%proc158505%_ _%proc158484%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158478%_
       _%id158492%_
       _%proc158505%_
       _%rebind?158487%_))
    (let* ((_%klass158441%_ gc-hash-table::t)
           (_%id158444%_ 'HashTable::copy)
           (_%proc158447%_ gc-table-copy)
           (_%rebind?158450%_ '#f)
           (_%id158455%_ _%id158444%_)
           (_%proc158468%_ _%proc158447%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158441%_
       _%id158455%_
       _%proc158468%_
       _%rebind?158450%_))
    (let* ((_%klass158404%_ gc-hash-table::t)
           (_%id158407%_ 'HashTable::clear!)
           (_%proc158410%_ gc-table-clear!)
           (_%rebind?158413%_ '#f)
           (_%id158418%_ _%id158407%_)
           (_%proc158431%_ _%proc158410%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158404%_
       _%id158418%_
       _%proc158431%_
       _%rebind?158413%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref149665%_
      (lambda (_%self158325%_ _%key158327%_ _%default158328%_)
        (let* ((_%self158331%_ _%self158325%_)
               (_%key158340%_ _%key158327%_)
               (_%default158348%_ _%default158328%_))
          (let ((_%h158357%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158331%_ '1 '#f '#f)))
                (_%l158359%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158331%_ '2 '#f '#f))))
            (let ((__tmp162165
                   (lambda ()
                     (let ((_%self148117158363%_ _%l158359%_))
                       (declare (not safe))
                       (let ((_%object158366158371%_
                              (##unchecked-structure-ref
                               _%self148117158363%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method158367158372%_
                              (##unchecked-structure-ref
                               _%self148117158363%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method158367158372%_ _%object158366158371%_)))))
                  (__tmp162164
                   (lambda ()
                     (let* ((_%self147212158375%_ _%h158357%_)
                            (_%key158378%_ _%key158340%_)
                            (_%default158381%_ _%default158348%_))
                       (declare (not safe))
                       (let ((_%object158384158389%_
                              (##unchecked-structure-ref
                               _%self147212158375%_
                               '1
                               '#f
                               'ref))
                             (_%method158385158390%_
                              (##unchecked-structure-ref
                               _%self147212158375%_
                               '7
                               '#f
                               'ref)))
                         (_%method158385158390%_
                          _%object158384158389%_
                          _%key158378%_
                          _%default158381%_)))))
                  (__tmp162163
                   (lambda ()
                     (let ((_%self148408158393%_ _%l158359%_))
                       (declare (not safe))
                       (let ((_%object158396158401%_
                              (##unchecked-structure-ref
                               _%self148408158393%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method158397158402%_
                              (##unchecked-structure-ref
                               _%self148408158393%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method158397158402%_ _%object158396158401%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162165 __tmp162164 __tmp162163))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref149665%_
       '#f))
    (define _%locked-hash-table::HashTable::set!149667%_
      (lambda (_%self158123%_ _%key158125%_ _%value158126%_)
        (let* ((_%self158129%_ _%self158123%_)
               (_%key158138%_ _%key158125%_)
               (_%value158146%_ _%value158126%_))
          (let ((_%h158155%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158129%_ '1 '#f '#f)))
                (_%l158157%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158129%_ '2 '#f '#f))))
            (let ((__tmp162168
                   (lambda ()
                     (let ((_%self148699158161%_ _%l158157%_))
                       (declare (not safe))
                       (let ((_%object158164158169%_
                              (##unchecked-structure-ref
                               _%self148699158161%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158165158170%_
                              (##unchecked-structure-ref
                               _%self148699158161%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158165158170%_ _%object158164158169%_)))))
                  (__tmp162167
                   (lambda ()
                     (let* ((_%self147507158173%_ _%h158155%_)
                            (_%key158176%_ _%key158138%_)
                            (_%value158179%_ _%value158146%_))
                       (declare (not safe))
                       (let ((_%object158182158187%_
                              (##unchecked-structure-ref
                               _%self147507158173%_
                               '1
                               '#f
                               'set!))
                             (_%method158183158188%_
                              (##unchecked-structure-ref
                               _%self147507158173%_
                               '8
                               '#f
                               'set!)))
                         (_%method158183158188%_
                          _%object158182158187%_
                          _%key158176%_
                          _%value158179%_)))))
                  (__tmp162166
                   (lambda ()
                     (let ((_%self148990158191%_ _%l158157%_))
                       (declare (not safe))
                       (let ((_%object158194158199%_
                              (##unchecked-structure-ref
                               _%self148990158191%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158195158200%_
                              (##unchecked-structure-ref
                               _%self148990158191%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158195158200%_ _%object158194158199%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162168 __tmp162167 __tmp162166))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!149667%_
       '#f))
    (define _%locked-hash-table::HashTable::update!149669%_
      (lambda (_%self157909%_ _%key157911%_ _%update157912%_ _%default157913%_)
        (let* ((_%self157916%_ _%self157909%_)
               (_%key157925%_ _%key157911%_)
               (_%update157933%_ _%update157912%_)
               (_%default157941%_ _%default157913%_))
          (let ((_%h157950%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157916%_ '1 '#f '#f)))
                (_%l157952%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157916%_ '2 '#f '#f))))
            (let ((__tmp162171
                   (lambda ()
                     (let ((_%self148699157956%_ _%l157952%_))
                       (declare (not safe))
                       (let ((_%object157959157964%_
                              (##unchecked-structure-ref
                               _%self148699157956%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157960157965%_
                              (##unchecked-structure-ref
                               _%self148699157956%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157960157965%_ _%object157959157964%_)))))
                  (__tmp162170
                   (lambda ()
                     (let* ((_%self147802157968%_ _%h157950%_)
                            (_%key157971%_ _%key157925%_)
                            (_%proc157974%_ _%update157933%_)
                            (_%default157977%_ _%default157941%_))
                       (declare (not safe))
                       (let ((_%object157980157985%_
                              (##unchecked-structure-ref
                               _%self147802157968%_
                               '1
                               '#f
                               'update!))
                             (_%method157981157986%_
                              (##unchecked-structure-ref
                               _%self147802157968%_
                               '9
                               '#f
                               'update!)))
                         (_%method157981157986%_
                          _%object157980157985%_
                          _%key157971%_
                          _%proc157974%_
                          _%default157977%_)))))
                  (__tmp162169
                   (lambda ()
                     (let ((_%self148990157989%_ _%l157952%_))
                       (declare (not safe))
                       (let ((_%object157992157997%_
                              (##unchecked-structure-ref
                               _%self148990157989%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157993157998%_
                              (##unchecked-structure-ref
                               _%self148990157989%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157993157998%_ _%object157992157997%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162171 __tmp162170 __tmp162169))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!149669%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!149671%_
      (lambda (_%self157719%_ _%key157721%_)
        (let* ((_%self157724%_ _%self157719%_) (_%key157733%_ _%key157721%_))
          (let ((_%h157742%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157724%_ '1 '#f '#f)))
                (_%l157744%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157724%_ '2 '#f '#f))))
            (let ((__tmp162174
                   (lambda ()
                     (let ((_%self148699157748%_ _%l157744%_))
                       (declare (not safe))
                       (let ((_%object157751157756%_
                              (##unchecked-structure-ref
                               _%self148699157748%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157752157757%_
                              (##unchecked-structure-ref
                               _%self148699157748%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157752157757%_ _%object157751157756%_)))))
                  (__tmp162173
                   (lambda ()
                     (let* ((_%self146314157760%_ _%h157742%_)
                            (_%key157763%_ _%key157733%_))
                       (declare (not safe))
                       (let ((_%object157766157771%_
                              (##unchecked-structure-ref
                               _%self146314157760%_
                               '1
                               '#f
                               'delete!))
                             (_%method157767157772%_
                              (##unchecked-structure-ref
                               _%self146314157760%_
                               '4
                               '#f
                               'delete!)))
                         (_%method157767157772%_
                          _%object157766157771%_
                          _%key157763%_)))))
                  (__tmp162172
                   (lambda ()
                     (let ((_%self148990157775%_ _%l157744%_))
                       (declare (not safe))
                       (let ((_%object157778157783%_
                              (##unchecked-structure-ref
                               _%self148990157775%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157779157784%_
                              (##unchecked-structure-ref
                               _%self148990157775%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157779157784%_ _%object157778157783%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162174 __tmp162173 __tmp162172))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!149671%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each149673%_
      (lambda (_%self157529%_ _%proc157531%_)
        (let* ((_%self157534%_ _%self157529%_) (_%proc157543%_ _%proc157531%_))
          (let ((_%h157552%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157534%_ '1 '#f '#f)))
                (_%l157554%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157534%_ '2 '#f '#f))))
            (let ((__tmp162177
                   (lambda ()
                     (let ((_%self148117157558%_ _%l157554%_))
                       (declare (not safe))
                       (let ((_%object157561157566%_
                              (##unchecked-structure-ref
                               _%self148117157558%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method157562157567%_
                              (##unchecked-structure-ref
                               _%self148117157558%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method157562157567%_ _%object157561157566%_)))))
                  (__tmp162176
                   (lambda ()
                     (let* ((_%self146607157570%_ _%h157552%_)
                            (_%proc157573%_ _%proc157543%_))
                       (declare (not safe))
                       (let ((_%object157576157581%_
                              (##unchecked-structure-ref
                               _%self146607157570%_
                               '1
                               '#f
                               'for-each))
                             (_%method157577157582%_
                              (##unchecked-structure-ref
                               _%self146607157570%_
                               '5
                               '#f
                               'for-each)))
                         (_%method157577157582%_
                          _%object157576157581%_
                          _%proc157573%_)))))
                  (__tmp162175
                   (lambda ()
                     (let ((_%self148408157585%_ _%l157554%_))
                       (declare (not safe))
                       (let ((_%object157588157593%_
                              (##unchecked-structure-ref
                               _%self148408157585%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method157589157594%_
                              (##unchecked-structure-ref
                               _%self148408157585%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method157589157594%_ _%object157588157593%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162177 __tmp162176 __tmp162175))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each149673%_
       '#f))
    (define _%locked-hash-table::HashTable::length149675%_
      (lambda (_%self157344%_)
        (let ((_%self157348%_ _%self157344%_))
          (let ((_%h157358%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157348%_ '1 '#f '#f)))
                (_%l157360%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157348%_ '2 '#f '#f))))
            ((lambda (_%g157362157364%_)
               (let ((_%val157367%_ _%g157362157364%_))
                 (if (fixnum? _%val157367%_)
                     _%val157367%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val157367%_)
                       '#!void))))
             (let ((__tmp162180
                    (lambda ()
                      (let ((_%self148117157371%_ _%l157360%_))
                        (declare (not safe))
                        (let ((_%object157374157379%_
                               (##unchecked-structure-ref
                                _%self148117157371%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method157375157380%_
                               (##unchecked-structure-ref
                                _%self148117157371%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method157375157380%_ _%object157374157379%_)))))
                   (__tmp162179
                    (lambda ()
                      (let ((_%self146918157383%_ _%h157358%_))
                        (declare (not safe))
                        (let ((_%object157386157391%_
                               (##unchecked-structure-ref
                                _%self146918157383%_
                                '1
                                '#f
                                'length))
                              (_%method157387157392%_
                               (##unchecked-structure-ref
                                _%self146918157383%_
                                '6
                                '#f
                                'length)))
                          (_%method157387157392%_ _%object157386157391%_)))))
                   (__tmp162178
                    (lambda ()
                      (let ((_%self148408157395%_ _%l157360%_))
                        (declare (not safe))
                        (let ((_%object157398157403%_
                               (##unchecked-structure-ref
                                _%self148408157395%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method157399157404%_
                               (##unchecked-structure-ref
                                _%self148408157395%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method157399157404%_ _%object157398157403%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp162180 __tmp162179 __tmp162178)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length149675%_
       '#f))
    (define _%locked-hash-table::HashTable::copy149677%_
      (lambda (_%self157163%_)
        (let ((_%self157167%_ _%self157163%_))
          (let ((_%h157177%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157167%_ '1 '#f '#f)))
                (_%l157179%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157167%_ '2 '#f '#f))))
            (let ((_%$obj157218%_
                   (let ((__tmp162183
                          (lambda ()
                            (let ((_%self148117157183%_ _%l157179%_))
                              (declare (not safe))
                              (let ((_%object157186157191%_
                                     (##unchecked-structure-ref
                                      _%self148117157183%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method157187157192%_
                                     (##unchecked-structure-ref
                                      _%self148117157183%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method157187157192%_
                                 _%object157186157191%_)))))
                         (__tmp162182
                          (lambda ()
                            (let ((_%self146020157195%_ _%h157177%_))
                              (declare (not safe))
                              (let ((_%object157198157203%_
                                     (##unchecked-structure-ref
                                      _%self146020157195%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method157199157204%_
                                     (##unchecked-structure-ref
                                      _%self146020157195%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method157199157204%_
                                 _%object157198157203%_)))))
                         (__tmp162181
                          (lambda ()
                            (let ((_%self148408157207%_ _%l157179%_))
                              (declare (not safe))
                              (let ((_%object157210157215%_
                                     (##unchecked-structure-ref
                                      _%self148408157207%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method157211157216%_
                                     (##unchecked-structure-ref
                                      _%self148408157207%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method157211157216%_
                                 _%object157210157215%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp162183 __tmp162182 __tmp162181))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj157218%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj157218%_)))
                       '#t)
                  _%$obj157218%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj157218%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy149677%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!149679%_
      (lambda (_%self156985%_)
        (let ((_%self156989%_ _%self156985%_))
          (let ((_%h156999%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156989%_ '1 '#f '#f)))
                (_%l157001%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156989%_ '2 '#f '#f))))
            (let ((__tmp162186
                   (lambda ()
                     (let ((_%self148699157005%_ _%l157001%_))
                       (declare (not safe))
                       (let ((_%object157008157013%_
                              (##unchecked-structure-ref
                               _%self148699157005%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157009157014%_
                              (##unchecked-structure-ref
                               _%self148699157005%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157009157014%_ _%object157008157013%_)))))
                  (__tmp162185
                   (lambda ()
                     (let ((_%self145728157017%_ _%h156999%_))
                       (declare (not safe))
                       (let ((_%object157020157025%_
                              (##unchecked-structure-ref
                               _%self145728157017%_
                               '1
                               '#f
                               'clear!))
                             (_%method157021157026%_
                              (##unchecked-structure-ref
                               _%self145728157017%_
                               '2
                               '#f
                               'clear!)))
                         (_%method157021157026%_ _%object157020157025%_)))))
                  (__tmp162184
                   (lambda ()
                     (let ((_%self148990157029%_ _%l157001%_))
                       (declare (not safe))
                       (let ((_%object157032157037%_
                              (##unchecked-structure-ref
                               _%self148990157029%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157033157038%_
                              (##unchecked-structure-ref
                               _%self148990157029%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157033157038%_ _%object157032157037%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162186 __tmp162185 __tmp162184))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!149679%_
       '#f))
    (let* ((_%klass156825%_ (macro-type-mutex))
           (_%id156828%_ 'Locker::read-lock!)
           (_%proc156831%_ mutex-lock!)
           (_%rebind?156834%_ '#f)
           (_%id156839%_ _%id156828%_)
           (_%proc156852%_ _%proc156831%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156825%_
       _%id156839%_
       _%proc156852%_
       _%rebind?156834%_))
    (let* ((_%klass156788%_ (macro-type-mutex))
           (_%id156791%_ 'Locker::read-unlock!)
           (_%proc156794%_ mutex-unlock!)
           (_%rebind?156797%_ '#f)
           (_%id156802%_ _%id156791%_)
           (_%proc156815%_ _%proc156794%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156788%_
       _%id156802%_
       _%proc156815%_
       _%rebind?156797%_))
    (let* ((_%klass156751%_ (macro-type-mutex))
           (_%id156754%_ 'Locker::write-lock!)
           (_%proc156757%_ mutex-lock!)
           (_%rebind?156760%_ '#f)
           (_%id156765%_ _%id156754%_)
           (_%proc156778%_ _%proc156757%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156751%_
       _%id156765%_
       _%proc156778%_
       _%rebind?156760%_))
    (let* ((_%klass156714%_ (macro-type-mutex))
           (_%id156717%_ 'Locker::write-unlock!)
           (_%proc156720%_ mutex-unlock!)
           (_%rebind?156723%_ '#f)
           (_%id156728%_ _%id156717%_)
           (_%proc156741%_ _%proc156720%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156714%_
       _%id156728%_
       _%proc156741%_
       _%rebind?156723%_))
    (define _%checked-hash-table::HashTable::ref149890%_
      (lambda (_%self156655%_ _%key156656%_ _%default156657%_)
        (let* ((_%self156660%_ _%self156655%_)
               (_%key156669%_ _%key156656%_)
               (_%default156677%_ _%default156657%_))
          (declare (not safe))
          (let ((_%h156688%_
                 (##unchecked-structure-ref _%self156660%_ '1 '#f '#f))
                (_%key?156690%_
                 (##unchecked-structure-ref _%self156660%_ '2 '#f '#f)))
            (if ((lambda (_%key?156693%_ _%key156694%_ _%default156695%_)
                   (_%key?156693%_ _%key156694%_))
                 _%key?156690%_
                 _%key156669%_
                 _%default156677%_)
                (let* ((_%self147212156697%_ _%h156688%_)
                       (_%key156700%_ _%key156669%_)
                       (_%default156703%_ _%default156677%_))
                  (declare (not safe))
                  (let ((_%object156706156711%_
                         (##unchecked-structure-ref
                          _%self147212156697%_
                          '1
                          '#f
                          'ref))
                        (_%method156707156712%_
                         (##unchecked-structure-ref
                          _%self147212156697%_
                          '7
                          '#f
                          'ref)))
                    (_%method156707156712%_
                     _%object156706156711%_
                     _%key156700%_
                     _%default156703%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key156669%_ (cons _%default156677%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref149890%_
       '#f))
    (define _%checked-hash-table::HashTable::set!149892%_
      (lambda (_%self156473%_ _%key156474%_ _%value156475%_)
        (let* ((_%self156478%_ _%self156473%_)
               (_%key156487%_ _%key156474%_)
               (_%value156495%_ _%value156475%_))
          (declare (not safe))
          (let ((_%h156506%_
                 (##unchecked-structure-ref _%self156478%_ '1 '#f '#f))
                (_%key?156508%_
                 (##unchecked-structure-ref _%self156478%_ '2 '#f '#f)))
            (if ((lambda (_%key?156511%_ _%key156512%_ _%value156513%_)
                   (_%key?156511%_ _%key156512%_))
                 _%key?156508%_
                 _%key156487%_
                 _%value156495%_)
                (let* ((_%self147507156515%_ _%h156506%_)
                       (_%key156518%_ _%key156487%_)
                       (_%value156521%_ _%value156495%_))
                  (declare (not safe))
                  (let ((_%object156524156529%_
                         (##unchecked-structure-ref
                          _%self147507156515%_
                          '1
                          '#f
                          'set!))
                        (_%method156525156530%_
                         (##unchecked-structure-ref
                          _%self147507156515%_
                          '8
                          '#f
                          'set!)))
                    (_%method156525156530%_
                     _%object156524156529%_
                     _%key156518%_
                     _%value156521%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key156487%_ (cons _%value156495%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!149892%_
       '#f))
    (define _%checked-hash-table::HashTable::update!149894%_
      (lambda (_%self156278%_ _%key156279%_ _%update156280%_ _%default156281%_)
        (let* ((_%self156284%_ _%self156278%_)
               (_%key156293%_ _%key156279%_)
               (_%update156301%_ _%update156280%_)
               (_%default156309%_ _%default156281%_))
          (declare (not safe))
          (let ((_%h156320%_
                 (##unchecked-structure-ref _%self156284%_ '1 '#f '#f))
                (_%key?156322%_
                 (##unchecked-structure-ref _%self156284%_ '2 '#f '#f)))
            (if ((lambda (_%key?156325%_
                          _%key156326%_
                          _%update156327%_
                          _%default156328%_)
                   (_%key?156325%_ _%key156326%_))
                 _%key?156322%_
                 _%key156293%_
                 _%update156301%_
                 _%default156309%_)
                (let* ((_%self147802156330%_ _%h156320%_)
                       (_%key156333%_ _%key156293%_)
                       (_%proc156336%_ _%update156301%_)
                       (_%default156339%_ _%default156309%_))
                  (declare (not safe))
                  (let ((_%object156342156347%_
                         (##unchecked-structure-ref
                          _%self147802156330%_
                          '1
                          '#f
                          'update!))
                        (_%method156343156348%_
                         (##unchecked-structure-ref
                          _%self147802156330%_
                          '9
                          '#f
                          'update!)))
                    (_%method156343156348%_
                     _%object156342156347%_
                     _%key156333%_
                     _%proc156336%_
                     _%default156339%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key156293%_
                         (cons _%update156301%_ (cons _%default156309%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!149894%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!149896%_
      (lambda (_%self156109%_ _%key156110%_)
        (let* ((_%self156113%_ _%self156109%_) (_%key156122%_ _%key156110%_))
          (declare (not safe))
          (let ((_%h156133%_
                 (##unchecked-structure-ref _%self156113%_ '1 '#f '#f))
                (_%key?156135%_
                 (##unchecked-structure-ref _%self156113%_ '2 '#f '#f)))
            (if ((lambda (_%key?156138%_ _%key156139%_)
                   (_%key?156138%_ _%key156139%_))
                 _%key?156135%_
                 _%key156122%_)
                (let* ((_%self146314156141%_ _%h156133%_)
                       (_%key156144%_ _%key156122%_))
                  (declare (not safe))
                  (let ((_%object156147156152%_
                         (##unchecked-structure-ref
                          _%self146314156141%_
                          '1
                          '#f
                          'delete!))
                        (_%method156148156153%_
                         (##unchecked-structure-ref
                          _%self146314156141%_
                          '4
                          '#f
                          'delete!)))
                    (_%method156148156153%_
                     _%object156147156152%_
                     _%key156144%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key156122%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!149896%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each149898%_
      (lambda (_%self155940%_ _%proc155941%_)
        (let* ((_%self155944%_ _%self155940%_) (_%proc155953%_ _%proc155941%_))
          (declare (not safe))
          (let ((_%h155964%_
                 (##unchecked-structure-ref _%self155944%_ '1 '#f '#f))
                (_%key?155966%_
                 (##unchecked-structure-ref _%self155944%_ '2 '#f '#f)))
            (if ((lambda (_%key?155969%_ _%proc155970%_) '#t)
                 _%key?155966%_
                 _%proc155953%_)
                (let* ((_%self146607155972%_ _%h155964%_)
                       (_%proc155975%_ _%proc155953%_))
                  (declare (not safe))
                  (let ((_%object155978155983%_
                         (##unchecked-structure-ref
                          _%self146607155972%_
                          '1
                          '#f
                          'for-each))
                        (_%method155979155984%_
                         (##unchecked-structure-ref
                          _%self146607155972%_
                          '5
                          '#f
                          'for-each)))
                    (_%method155979155984%_
                     _%object155978155983%_
                     _%proc155975%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc155953%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each149898%_
       '#f))
    (define _%checked-hash-table::HashTable::length149900%_
      (lambda (_%self155786%_)
        (let ((_%self155789%_ _%self155786%_))
          (declare (not safe))
          (let ((_%h155801%_
                 (##unchecked-structure-ref _%self155789%_ '1 '#f '#f))
                (_%key?155803%_
                 (##unchecked-structure-ref _%self155789%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146918155806%_ _%h155801%_))
                  (declare (not safe))
                  (let ((_%object155809155814%_
                         (##unchecked-structure-ref
                          _%self146918155806%_
                          '1
                          '#f
                          'length))
                        (_%method155810155815%_
                         (##unchecked-structure-ref
                          _%self146918155806%_
                          '6
                          '#f
                          'length)))
                    (_%method155810155815%_ _%object155809155814%_)))
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
       _%checked-hash-table::HashTable::length149900%_
       '#f))
    (define _%checked-hash-table::HashTable::copy149902%_
      (lambda (_%self155632%_)
        (let ((_%self155635%_ _%self155632%_))
          (declare (not safe))
          (let ((_%h155647%_
                 (##unchecked-structure-ref _%self155635%_ '1 '#f '#f))
                (_%key?155649%_
                 (##unchecked-structure-ref _%self155635%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146020155652%_ _%h155647%_))
                  (declare (not safe))
                  (let ((_%object155655155660%_
                         (##unchecked-structure-ref
                          _%self146020155652%_
                          '1
                          '#f
                          'copy))
                        (_%method155656155661%_
                         (##unchecked-structure-ref
                          _%self146020155652%_
                          '3
                          '#f
                          'copy)))
                    (_%method155656155661%_ _%object155655155660%_)))
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
       _%checked-hash-table::HashTable::copy149902%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!149904%_
      (lambda (_%self155478%_)
        (let ((_%self155481%_ _%self155478%_))
          (declare (not safe))
          (let ((_%h155493%_
                 (##unchecked-structure-ref _%self155481%_ '1 '#f '#f))
                (_%key?155495%_
                 (##unchecked-structure-ref _%self155481%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self145728155498%_ _%h155493%_))
                  (declare (not safe))
                  (let ((_%object155501155506%_
                         (##unchecked-structure-ref
                          _%self145728155498%_
                          '1
                          '#f
                          'clear!))
                        (_%method155502155507%_
                         (##unchecked-structure-ref
                          _%self145728155498%_
                          '2
                          '#f
                          'clear!)))
                    (_%method155502155507%_ _%object155501155506%_)))
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
       _%checked-hash-table::HashTable::clear!149904%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table155348%_
               _%count155349%_
               _%free155350%_
               _%hash155351%_
               _%test155352%_
               _%seed155353%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table155348%_
           _%count155349%_
           _%free155350%_
           _%hash155351%_
           _%test155352%_
           _%seed155353%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords154758%_
               _%size-hint154748154759%_
               _%seed154749154760%_
               _%test154750154761%_
               _%hash154751154762%_
               _%lock154752154763%_
               _%check154753154764%_
               _%weak-keys154754154765%_
               _%weak-values154755154766%_)
        (let* ((_%size-hint154768%_
                (if (eq? _%size-hint154748154759%_ absent-value)
                    '#f
                    _%size-hint154748154759%_))
               (_%seed154770%_
                (if (eq? _%seed154749154760%_ absent-value)
                    '#f
                    _%seed154749154760%_))
               (_%test154772%_
                (if (eq? _%test154750154761%_ absent-value)
                    equal?
                    _%test154750154761%_))
               (_%hash154774%_
                (if (eq? _%hash154751154762%_ absent-value)
                    '#f
                    _%hash154751154762%_))
               (_%lock154776%_
                (if (eq? _%lock154752154763%_ absent-value)
                    '#f
                    _%lock154752154763%_))
               (_%check154778%_
                (if (eq? _%check154753154764%_ absent-value)
                    '#f
                    _%check154753154764%_))
               (_%weak-keys154780%_
                (if (eq? _%weak-keys154754154765%_ absent-value)
                    '#f
                    _%weak-keys154754154765%_))
               (_%weak-values154782%_
                (if (eq? _%weak-values154755154766%_ absent-value)
                    '#f
                    _%weak-values154755154766%_)))
          (letrec ((_%table-seed154785%_
                    (lambda ()
                      (if (fixnum? _%seed154770%_)
                          _%seed154770%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock154929%_
                    (lambda (_%ht155316%_)
                      (let ((_%ht155319%_ _%ht155316%_))
                        (if _%lock154776%_
                            (let ((_%$obj155331%_
                                   (let ((__tmp162187
                                          (let ((_%$obj155328%_
                                                 _%lock154776%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj155328%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj155328%_)))
                                                     '#t)
                                                _%$obj155328%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj155328%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht155319%_
                                      __tmp162187))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj155331%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj155331%_)))
                                       '#t)
                                  _%$obj155331%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj155331%_))))
                            _%ht155319%_))))
                   (_%wrap-lock154930%_
                    (lambda (_%ht155304%_)
                      (let ((_%ht155307%_ _%ht155304%_))
                        (_%__wrap-lock154929%_ _%ht155307%_))))
                   (_%__wrap-checked155052%_
                    (lambda (_%ht155288%_ _%implicit155289%_)
                      (let ((_%ht155292%_ _%ht155288%_))
                        (if _%check154778%_
                            (let ((_%$obj155301%_
                                   (let ((__tmp162188
                                          (if (procedure? _%check154778%_)
                                              _%check154778%_
                                              _%implicit155289%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht155292%_
                                      __tmp162188))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj155301%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj155301%_)))
                                       '#t)
                                  _%$obj155301%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj155301%_))))
                            _%ht155292%_))))
                   (_%wrap-checked155053%_
                    (lambda (_%ht155275%_ _%implicit155276%_)
                      (let ((_%ht155279%_ _%ht155275%_))
                        (_%__wrap-checked155052%_
                         _%ht155279%_
                         _%implicit155276%_))))
                   (_%make155054%_
                    (lambda (_%kons155223%_
                             _%key?155224%_
                             _%hash155225%_
                             _%test155226%_)
                      (let* ((_%size155229%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint154768%_)))
                             (_%table155231%_
                              (let ((__tmp162189 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size155229%_ __tmp162189)))
                             (_%ht155236%_
                              (let ((_%$obj155233%_
                                     (_%kons155223%_
                                      _%table155231%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size155229%_ '2))
                                      _%hash155225%_
                                      _%test155226%_
                                      (_%table-seed154785%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155233%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155233%_)))
                                         '#t)
                                    _%$obj155233%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155233%_)))))
                             (_%ht155258%_
                              (let* ((_%ht155239%_ _%ht155236%_)
                                     (_%ht155243%_ _%ht155239%_))
                                (_%__wrap-lock154929%_ _%ht155243%_)))
                             (_%implicit155261%_ _%key?155224%_)
                             (_%ht155265%_ _%ht155258%_))
                        (_%__wrap-checked155052%_
                         _%ht155265%_
                         _%implicit155261%_))))
                   (_%make-gc-hash-table155055%_
                    (lambda ()
                      (let* ((_%ht155188%_
                              (let ((_%$obj155185%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint154768%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155185%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155185%_)))
                                         '#t)
                                    _%$obj155185%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155185%_)))))
                             (_%ht155206%_
                              (let* ((_%ht155190%_ _%ht155188%_)
                                     (_%ht155194%_ _%ht155190%_))
                                (_%__wrap-lock154929%_ _%ht155194%_)))
                             (_%implicit155209%_ true)
                             (_%ht155213%_ _%ht155206%_))
                        (_%__wrap-checked155052%_
                         _%ht155213%_
                         _%implicit155209%_))))
                   (_%make-gambit-table155056%_
                    (lambda ()
                      (let* ((_%size155125%_
                              (let ((_%$e155122%_ _%size-hint154768%_))
                                (if _%$e155122%_
                                    _%$e155122%_
                                    (macro-absent-obj))))
                             (_%test155130%_
                              (let ((_%$e155127%_ _%test154772%_))
                                (if _%$e155127%_ _%$e155127%_ equal?)))
                             (_%hash155138%_
                              (let ((_%$e155132%_ _%hash154774%_))
                                (if _%$e155132%_
                                    _%$e155132%_
                                    (if (eq? _%test155130%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test155130%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht155143%_
                              (let ((_%$obj155140%_
                                     (make-table
                                      'size:
                                      _%size155125%_
                                      'test:
                                      _%test155130%_
                                      'hash:
                                      _%hash155138%_
                                      'weak-keys:
                                      _%weak-keys154780%_
                                      'weak-values:
                                      _%weak-values154782%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155140%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155140%_)))
                                         '#t)
                                    _%$obj155140%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155140%_)))))
                             (_%ht155166%_
                              (let* ((_%ht155146%_ _%ht155143%_)
                                     (_%ht155150%_ _%ht155146%_))
                                (_%__wrap-lock154929%_ _%ht155150%_)))
                             (_%implicit155169%_ true)
                             (_%ht155173%_ _%ht155166%_))
                        (_%__wrap-checked155052%_
                         _%ht155173%_
                         _%implicit155169%_)))))
            (if (or _%weak-keys154780%_ _%weak-values154782%_)
                (_%make-gambit-table155056%_)
                (if (and (or (eq? _%test154772%_ eq?)
                             (eq? _%test154772%_ ##eq?))
                         (or (not _%hash154774%_)
                             (eq? _%hash154774%_ eq?-hash)
                             (eq? _%hash154774%_ eq-hash))
                         (not _%seed154770%_))
                    (_%make-gc-hash-table155055%_)
                    (if (and (or (eq? _%test154772%_ eq?)
                                 (eq? _%test154772%_ ##eq?))
                             (or (not _%hash154774%_)
                                 (eq? _%hash154774%_ eq?-hash)
                                 (eq? _%hash154774%_ eq-hash)))
                        (_%make155054%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test154772%_ eqv?)
                                     (eq? _%test154772%_ ##eqv?))
                                 (or (not _%hash154774%_)
                                     (eq? _%hash154774%_ eqv?-hash)
                                     (eq? _%hash154774%_ eqv-hash)))
                            (_%make155054%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test154772%_ eq?)
                                         (eq? _%test154772%_ ##eq?))
                                     (or (eq? _%hash154774%_ symbolic-hash)
                                         (eq? _%hash154774%_ ##symbol-hash)))
                                (_%make155054%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test154772%_ eq?)
                                             (eq? _%test154772%_ ##eq?))
                                         (eq? _%hash154774%_ immediate-hash))
                                    (_%make155054%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test154772%_ equal?)
                                                 (eq? _%test154772%_ ##equal?)
                                                 (eq? _%test154772%_ string=?)
                                                 (eq? _%test154772%_
                                                      ##string=?))
                                             (or (eq? _%hash154774%_
                                                      string-hash)
                                                 (eq? _%hash154774%_
                                                      ##string=?-hash)))
                                        (_%make155054%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test154772%_ equal?)
                                                 (not _%hash154774%_))
                                            (_%make155054%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test154772%_)
                                                (if (procedure? _%hash154774%_)
                                                    (_%make155054%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash154774%_
                                                     _%test154772%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash154774%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test154772%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords155338%_ . _%args155339%_)
        (apply make-hash-table__%
               _%@@keywords155338%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155338%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155338%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155338%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155338%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155338%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155338%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155338%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155338%_
                  'weak-values:
                  absent-value))
               _%args155339%_)))
    (define make-hash-table
      (lambda _%args154756155345%_
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
               _%args154756155345%_)))
    (define make-hash-table-eq
      (lambda _%args154745%_
        (apply make-hash-table 'test: eq? _%args154745%_)))
    (define make-hash-table-eqv
      (lambda _%args154743%_
        (apply make-hash-table 'test: eqv? _%args154743%_)))
    (define make-hash-table-symbolic
      (lambda _%args154741%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args154741%_)))
    (define make-hash-table-string
      (lambda _%args154739%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args154739%_)))
    (define make-hash-table-immediate
      (lambda _%args154737%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args154737%_)))
    (define list->hash-table
      (lambda (_%lst154734%_ . _%args154735%_)
        (list->hash-table!
         _%lst154734%_
         (apply make-hash-table
                'size:
                (length _%lst154734%_)
                _%args154735%_))))
    (define list->hash-table-eq
      (lambda (_%lst154731%_ . _%args154732%_)
        (list->hash-table!
         _%lst154731%_
         (apply make-hash-table-eq
                'size:
                (length _%lst154731%_)
                _%args154732%_))))
    (define list->hash-table-eqv
      (lambda (_%lst154728%_ . _%args154729%_)
        (list->hash-table!
         _%lst154728%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst154728%_)
                _%args154729%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst154725%_ . _%args154726%_)
        (list->hash-table!
         _%lst154725%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst154725%_)
                _%args154726%_))))
    (define list->hash-table-string
      (lambda (_%lst154722%_ . _%args154723%_)
        (list->hash-table!
         _%lst154722%_
         (apply make-hash-table-string
                'size:
                (length _%lst154722%_)
                _%args154723%_))))
    (define list->hash-table-immediate
      (lambda (_%lst154719%_ . _%args154720%_)
        (list->hash-table!
         _%lst154719%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst154719%_)
                _%args154720%_))))
    (define list->hash-table!
      (lambda (_%lst154670%_ _%h154671%_)
        (for-each
         (lambda (_%el154673%_)
           (let* ((_%el154674154681%_ _%el154673%_)
                  (_%E154676154684%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el154674154681%_
                              '([k . v])))
                     '#!void))
                  (_%K154677154707%_
                   (lambda (_%v154687%_ _%k154688%_)
                     (let* ((_%self147507154690%_ _%h154671%_)
                            (_%key154693%_ _%k154688%_)
                            (_%value154696%_ _%v154687%_))
                       (declare (not safe))
                       (let ((_%object154699154704%_
                              (##unchecked-structure-ref
                               _%self147507154690%_
                               '1
                               '#f
                               'set!))
                             (_%method154700154705%_
                              (##unchecked-structure-ref
                               _%self147507154690%_
                               '8
                               '#f
                               'set!)))
                         (_%method154700154705%_
                          _%object154699154704%_
                          _%key154693%_
                          _%value154696%_))))))
             (if (pair? _%el154674154681%_)
                 (let ((_%hd154678154710%_
                        (let ()
                          (declare (not safe))
                          (##car _%el154674154681%_)))
                       (_%tl154679154712%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el154674154681%_))))
                   (let* ((_%k154715%_ _%hd154678154710%_)
                          (_%v154717%_ _%tl154679154712%_))
                     (_%K154677154707%_ _%v154717%_ _%k154715%_)))
                 (_%E154676154684%_))))
         _%lst154670%_)
        _%h154671%_))
    (define plist->hash-table
      (lambda (_%lst154667%_ . _%args154668%_)
        (plist->hash-table!
         _%lst154667%_
         (apply make-hash-table
                'size:
                (length _%lst154667%_)
                _%args154668%_))))
    (define plist->hash-table-eq
      (lambda (_%lst154664%_ . _%args154665%_)
        (plist->hash-table!
         _%lst154664%_
         (apply make-hash-table-eq
                'size:
                (length _%lst154664%_)
                _%args154665%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst154661%_ . _%args154662%_)
        (plist->hash-table!
         _%lst154661%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst154661%_)
                _%args154662%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst154658%_ . _%args154659%_)
        (plist->hash-table!
         _%lst154658%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst154658%_)
                _%args154659%_))))
    (define plist->hash-table-string
      (lambda (_%lst154655%_ . _%args154656%_)
        (plist->hash-table!
         _%lst154655%_
         (apply make-hash-table-string
                'size:
                (length _%lst154655%_)
                _%args154656%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst154652%_ . _%args154653%_)
        (plist->hash-table!
         _%lst154652%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst154652%_)
                _%args154653%_))))
    (define plist->hash-table!
      (lambda (_%lst154575%_ _%h154576%_)
        (let _%loop154578%_ ((_%rest154580%_ _%lst154575%_))
          (let* ((_%rest154581154593%_ _%rest154580%_)
                 (_%else154584154601%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst154575%_)))))
            (let ((_%K154587154633%_
                   (lambda (_%rest154612%_ _%val154613%_ _%key154614%_)
                     (let* ((_%self147507154616%_ _%h154576%_)
                            (_%key154619%_ _%key154614%_)
                            (_%value154622%_ _%val154613%_))
                       (declare (not safe))
                       (let ((_%object154625154630%_
                              (##unchecked-structure-ref
                               _%self147507154616%_
                               '1
                               '#f
                               'set!))
                             (_%method154626154631%_
                              (##unchecked-structure-ref
                               _%self147507154616%_
                               '8
                               '#f
                               'set!)))
                         (_%method154626154631%_
                          _%object154625154630%_
                          _%key154619%_
                          _%value154622%_)))
                     (_%loop154578%_ _%rest154612%_)))
                  (_%K154586154606%_ (lambda () _%h154576%_)))
              (let ((_%try-match154583154609%_
                     (lambda ()
                       (if (null? _%rest154581154593%_)
                           (_%K154586154606%_)
                           (_%else154584154601%_)))))
                (if (pair? _%rest154581154593%_)
                    (let ((_%tl154589154638%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest154581154593%_)))
                          (_%hd154588154636%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest154581154593%_))))
                      (if (pair? _%tl154589154638%_)
                          (let ((_%tl154591154645%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl154589154638%_)))
                                (_%hd154590154643%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl154589154638%_))))
                            (let ((_%key154641%_ _%hd154588154636%_)
                                  (_%val154648%_ _%hd154590154643%_)
                                  (_%rest154650%_ _%tl154591154645%_))
                              (_%K154587154633%_
                               _%rest154650%_
                               _%val154648%_
                               _%key154641%_)))
                          (_%else154584154601%_)))
                    (_%try-match154583154609%_))))))))
    (define __hash-length
      (lambda (_%h154524%_)
        (let* ((_%h154527%_ _%h154524%_)
               (_%self146919154536%_ _%h154527%_)
               (_%self146919154543%_
                (let ((_%$obj154540%_ _%self146919154536%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154540%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154540%_)))
                           '#t)
                      _%$obj154540%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154540%_)))))
               (_%self146919154545%_ _%self146919154543%_))
          (if __DEBUG
              (let ((_%val154565%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object154557154562%_
                              (##unchecked-structure-ref
                               _%self146919154545%_
                               '1
                               '#f
                               'length))
                             (_%method154558154563%_
                              (##unchecked-structure-ref
                               _%self146919154545%_
                               '6
                               '#f
                               'length)))
                         (_%method154558154563%_ _%object154557154562%_)))))
                (if (fixnum? _%val154565%_)
                    _%val154565%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val154565%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object154567154572%_
                       (##unchecked-structure-ref
                        _%self146919154545%_
                        '1
                        '#f
                        'length))
                      (_%method154568154573%_
                       (##unchecked-structure-ref
                        _%self146919154545%_
                        '6
                        '#f
                        'length)))
                  (_%method154568154573%_ _%object154567154572%_)))))))
    (define hash-length
      (lambda (_%h150179%_)
        (let* ((_%h150185%_
                (let ((_%$obj150182%_ _%h150179%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150182%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150182%_)))
                           '#t)
                      _%$obj150182%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150182%_)))))
               (_%h150187%_ _%h150185%_))
          (__hash-length _%h150187%_))))
    (define __hash-ref__%
      (lambda (_%h154452%_ _%key154453%_ _%default154454%_)
        (let* ((_%h154457%_ _%h154452%_)
               (_%result154510%_
                (let* ((_%self147213154466%_ _%h154457%_)
                       (_%key154469%_ _%key154453%_)
                       (_%default154472%_ _%default154454%_)
                       (_%self147213154479%_
                        (let ((_%$obj154476%_ _%self147213154466%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj154476%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj154476%_)))
                                   '#t)
                              _%$obj154476%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj154476%_)))))
                       (_%self147213154481%_ _%self147213154479%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object154495154500%_
                               (##unchecked-structure-ref
                                _%self147213154481%_
                                '1
                                '#f
                                'ref))
                              (_%method154496154501%_
                               (##unchecked-structure-ref
                                _%self147213154481%_
                                '7
                                '#f
                                'ref)))
                          (_%method154496154501%_
                           _%object154495154500%_
                           _%key154469%_
                           _%default154472%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object154502154507%_
                               (##unchecked-structure-ref
                                _%self147213154481%_
                                '1
                                '#f
                                'ref))
                              (_%method154503154508%_
                               (##unchecked-structure-ref
                                _%self147213154481%_
                                '7
                                '#f
                                'ref)))
                          (_%method154503154508%_
                           _%object154502154507%_
                           _%key154469%_
                           _%default154472%_)))))))
          (if (eq? _%result154510%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h154457%_
               'key:
               _%key154453%_)
              _%result154510%_))))
    (define __hash-ref__0
      (lambda (_%h154515%_ _%key154516%_)
        (let ((_%default154518%_ absent-obj))
          (__hash-ref__% _%h154515%_ _%key154516%_ _%default154518%_))))
    (define __hash-ref
      (lambda _g162190_
        (let ((_g162191_ (let () (declare (not safe)) (##length _g162190_))))
          (cond ((let () (declare (not safe)) (##fx= _g162191_ 2))
                 (apply __hash-ref__0 _g162190_))
                ((let () (declare (not safe)) (##fx= _g162191_ 3))
                 (apply __hash-ref__% _g162190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g162190_))))))
    (define hash-ref__%
      (lambda (_%h150318%_ _%key150319%_ _%default150320%_)
        (let* ((_%h150326%_
                (let ((_%$obj150323%_ _%h150318%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150323%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150323%_)))
                           '#t)
                      _%$obj150323%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150323%_)))))
               (_%h150328%_ _%h150326%_))
          (__hash-ref__% _%h150328%_ _%key150319%_ _%default150320%_))))
    (define hash-ref__0
      (lambda (_%h150341%_ _%key150342%_)
        (let ((_%default150344%_ absent-obj))
          (hash-ref__% _%h150341%_ _%key150342%_ _%default150344%_))))
    (define hash-ref
      (lambda _g162192_
        (let ((_g162193_ (let () (declare (not safe)) (##length _g162192_))))
          (cond ((let () (declare (not safe)) (##fx= _g162193_ 2))
                 (apply hash-ref__0 _g162192_))
                ((let () (declare (not safe)) (##fx= _g162193_ 3))
                 (apply hash-ref__% _g162192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g162192_))))))
    (define __hash-get
      (lambda (_%h154394%_ _%key154395%_)
        (let* ((_%h154398%_ _%h154394%_)
               (_%self147213154407%_ _%h154398%_)
               (_%key154410%_ _%key154395%_)
               (_%default154413%_ '#f)
               (_%self147213154420%_
                (let ((_%$obj154417%_ _%self147213154407%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154417%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154417%_)))
                           '#t)
                      _%$obj154417%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154417%_)))))
               (_%self147213154422%_ _%self147213154420%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154436154441%_
                       (##unchecked-structure-ref
                        _%self147213154422%_
                        '1
                        '#f
                        'ref))
                      (_%method154437154442%_
                       (##unchecked-structure-ref
                        _%self147213154422%_
                        '7
                        '#f
                        'ref)))
                  (_%method154437154442%_
                   _%object154436154441%_
                   _%key154410%_
                   _%default154413%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154443154448%_
                       (##unchecked-structure-ref
                        _%self147213154422%_
                        '1
                        '#f
                        'ref))
                      (_%method154444154449%_
                       (##unchecked-structure-ref
                        _%self147213154422%_
                        '7
                        '#f
                        'ref)))
                  (_%method154444154449%_
                   _%object154443154448%_
                   _%key154410%_
                   _%default154413%_)))))))
    (define hash-get
      (lambda (_%h150470%_ _%key150471%_)
        (let* ((_%h150477%_
                (let ((_%$obj150474%_ _%h150470%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150474%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150474%_)))
                           '#t)
                      _%$obj150474%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150474%_)))))
               (_%h150479%_ _%h150477%_))
          (__hash-get _%h150479%_ _%key150471%_))))
    (define __hash-put!
      (lambda (_%h154336%_ _%key154337%_ _%value154338%_)
        (let* ((_%h154341%_ _%h154336%_)
               (_%self147508154350%_ _%h154341%_)
               (_%key154353%_ _%key154337%_)
               (_%value154356%_ _%value154338%_)
               (_%self147508154363%_
                (let ((_%$obj154360%_ _%self147508154350%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154360%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154360%_)))
                           '#t)
                      _%$obj154360%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154360%_)))))
               (_%self147508154365%_ _%self147508154363%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154379154384%_
                       (##unchecked-structure-ref
                        _%self147508154365%_
                        '1
                        '#f
                        'set!))
                      (_%method154380154385%_
                       (##unchecked-structure-ref
                        _%self147508154365%_
                        '8
                        '#f
                        'set!)))
                  (_%method154380154385%_
                   _%object154379154384%_
                   _%key154353%_
                   _%value154356%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154386154391%_
                       (##unchecked-structure-ref
                        _%self147508154365%_
                        '1
                        '#f
                        'set!))
                      (_%method154387154392%_
                       (##unchecked-structure-ref
                        _%self147508154365%_
                        '8
                        '#f
                        'set!)))
                  (_%method154387154392%_
                   _%object154386154391%_
                   _%key154353%_
                   _%value154356%_)))))))
    (define hash-put!
      (lambda (_%h150609%_ _%key150610%_ _%value150611%_)
        (let* ((_%h150617%_
                (let ((_%$obj150614%_ _%h150609%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150614%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150614%_)))
                           '#t)
                      _%$obj150614%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150614%_)))))
               (_%h150619%_ _%h150617%_))
          (__hash-put! _%h150619%_ _%key150610%_ _%value150611%_))))
    (define __hash-update!__%
      (lambda (_%h154249%_ _%key154250%_ _%update154251%_ _%default154252%_)
        (let* ((_%h154255%_ _%h154249%_)
               (_%self147803154264%_ _%h154255%_)
               (_%key154267%_ _%key154250%_)
               (_%proc154270%_ _%update154251%_)
               (_%default154273%_ _%default154252%_)
               (_%self147803154280%_
                (let ((_%$obj154277%_ _%self147803154264%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154277%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154277%_)))
                           '#t)
                      _%$obj154277%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154277%_)))))
               (_%self147803154282%_ _%self147803154280%_))
          (if (procedure? _%proc154270%_)
              (let ((_%proc154298%_ _%proc154270%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object154307154312%_
                             (##unchecked-structure-ref
                              _%self147803154282%_
                              '1
                              '#f
                              'update!))
                            (_%method154308154313%_
                             (##unchecked-structure-ref
                              _%self147803154282%_
                              '9
                              '#f
                              'update!)))
                        (_%method154308154313%_
                         _%object154307154312%_
                         _%key154267%_
                         _%proc154298%_
                         _%default154273%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object154314154319%_
                             (##unchecked-structure-ref
                              _%self147803154282%_
                              '1
                              '#f
                              'update!))
                            (_%method154315154320%_
                             (##unchecked-structure-ref
                              _%self147803154282%_
                              '9
                              '#f
                              'update!)))
                        (_%method154315154320%_
                         _%object154314154319%_
                         _%key154267%_
                         _%proc154298%_
                         _%default154273%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc154270%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h154325%_ _%key154326%_ _%update154327%_)
        (let ((_%default154329%_ '#!void))
          (__hash-update!__%
           _%h154325%_
           _%key154326%_
           _%update154327%_
           _%default154329%_))))
    (define __hash-update!
      (lambda _g162194_
        (let ((_g162195_ (let () (declare (not safe)) (##length _g162194_))))
          (cond ((let () (declare (not safe)) (##fx= _g162195_ 3))
                 (apply __hash-update!__0 _g162194_))
                ((let () (declare (not safe)) (##fx= _g162195_ 4))
                 (apply __hash-update!__% _g162194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g162194_))))))
    (define hash-update!__%
      (lambda (_%h150750%_ _%key150751%_ _%update150752%_ _%default150753%_)
        (let* ((_%h150759%_
                (let ((_%$obj150756%_ _%h150750%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150756%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150756%_)))
                           '#t)
                      _%$obj150756%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150756%_)))))
               (_%h150761%_ _%h150759%_))
          (__hash-update!__%
           _%h150761%_
           _%key150751%_
           _%update150752%_
           _%default150753%_))))
    (define hash-update!__0
      (lambda (_%h150774%_ _%key150775%_ _%update150776%_)
        (let ((_%default150778%_ '#!void))
          (hash-update!__%
           _%h150774%_
           _%key150775%_
           _%update150776%_
           _%default150778%_))))
    (define hash-update!
      (lambda _g162196_
        (let ((_g162197_ (let () (declare (not safe)) (##length _g162196_))))
          (cond ((let () (declare (not safe)) (##fx= _g162197_ 3))
                 (apply hash-update!__0 _g162196_))
                ((let () (declare (not safe)) (##fx= _g162197_ 4))
                 (apply hash-update!__% _g162196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g162196_))))))
    (define __hash-remove!
      (lambda (_%h154195%_ _%key154196%_)
        (let* ((_%h154199%_ _%h154195%_)
               (_%self146315154208%_ _%h154199%_)
               (_%key154211%_ _%key154196%_)
               (_%self146315154218%_
                (let ((_%$obj154215%_ _%self146315154208%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154215%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154215%_)))
                           '#t)
                      _%$obj154215%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154215%_)))))
               (_%self146315154220%_ _%self146315154218%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154233154238%_
                       (##unchecked-structure-ref
                        _%self146315154220%_
                        '1
                        '#f
                        'delete!))
                      (_%method154234154239%_
                       (##unchecked-structure-ref
                        _%self146315154220%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154234154239%_
                   _%object154233154238%_
                   _%key154211%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154240154245%_
                       (##unchecked-structure-ref
                        _%self146315154220%_
                        '1
                        '#f
                        'delete!))
                      (_%method154241154246%_
                       (##unchecked-structure-ref
                        _%self146315154220%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154241154246%_
                   _%object154240154245%_
                   _%key154211%_)))))))
    (define hash-remove!
      (lambda (_%h150905%_ _%key150906%_)
        (let* ((_%h150912%_
                (let ((_%$obj150909%_ _%h150905%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150909%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150909%_)))
                           '#t)
                      _%$obj150909%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150909%_)))))
               (_%h150914%_ _%h150912%_))
          (__hash-remove! _%h150914%_ _%key150906%_))))
    (define __hash-key?
      (lambda (_%h154138%_ _%k154139%_)
        (let ((_%h154142%_ _%h154138%_))
          (not (eq? (let* ((_%self147213154151%_ _%h154142%_)
                           (_%key154154%_ _%k154139%_)
                           (_%default154157%_ absent-value)
                           (_%self147213154164%_
                            (let ((_%$obj154161%_ _%self147213154151%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154161%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154161%_)))
                                       '#t)
                                  _%$obj154161%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154161%_)))))
                           (_%self147213154166%_ _%self147213154164%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object154180154185%_
                                   (##unchecked-structure-ref
                                    _%self147213154166%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154181154186%_
                                   (##unchecked-structure-ref
                                    _%self147213154166%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154181154186%_
                               _%object154180154185%_
                               _%key154154%_
                               _%default154157%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object154187154192%_
                                   (##unchecked-structure-ref
                                    _%self147213154166%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154188154193%_
                                   (##unchecked-structure-ref
                                    _%self147213154166%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154188154193%_
                               _%object154187154192%_
                               _%key154154%_
                               _%default154157%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h151044%_ _%k151045%_)
        (let* ((_%h151051%_
                (let ((_%$obj151048%_ _%h151044%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151048%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151048%_)))
                           '#t)
                      _%$obj151048%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151048%_)))))
               (_%h151053%_ _%h151051%_))
          (__hash-key? _%h151053%_ _%k151045%_))))
    (define __hash->list
      (lambda (_%h154070%_)
        (let* ((_%h154073%_ _%h154070%_) (_%lst154082%_ '()))
          (let* ((_%self146608154084%_ _%h154073%_)
                 (_%proc154090%_
                  (lambda (_%k154087%_ _%v154088%_)
                    (set! _%lst154082%_
                          (cons (cons _%k154087%_ _%v154088%_)
                                _%lst154082%_))))
                 (_%self146608154097%_
                  (let ((_%$obj154094%_ _%self146608154084%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154094%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154094%_)))
                             '#t)
                        _%$obj154094%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154094%_)))))
                 (_%self146608154099%_ _%self146608154097%_)
                 (_%proc154114%_ _%proc154090%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154123154128%_
                         (##unchecked-structure-ref
                          _%self146608154099%_
                          '1
                          '#f
                          'for-each))
                        (_%method154124154129%_
                         (##unchecked-structure-ref
                          _%self146608154099%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154124154129%_
                     _%object154123154128%_
                     _%proc154114%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154130154135%_
                         (##unchecked-structure-ref
                          _%self146608154099%_
                          '1
                          '#f
                          'for-each))
                        (_%method154131154136%_
                         (##unchecked-structure-ref
                          _%self146608154099%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154131154136%_
                     _%object154130154135%_
                     _%proc154114%_)))))
          _%lst154082%_)))
    (define hash->list
      (lambda (_%h151183%_)
        (let* ((_%h151189%_
                (let ((_%$obj151186%_ _%h151183%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151186%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151186%_)))
                           '#t)
                      _%$obj151186%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151186%_)))))
               (_%h151191%_ _%h151189%_))
          (__hash->list _%h151191%_))))
    (define __hash->plist
      (lambda (_%h154002%_)
        (let* ((_%h154005%_ _%h154002%_) (_%lst154014%_ '()))
          (let* ((_%self146608154016%_ _%h154005%_)
                 (_%proc154022%_
                  (lambda (_%k154019%_ _%v154020%_)
                    (set! _%lst154014%_
                          (cons _%k154019%_
                                (cons _%v154020%_ _%lst154014%_)))))
                 (_%self146608154029%_
                  (let ((_%$obj154026%_ _%self146608154016%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154026%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154026%_)))
                             '#t)
                        _%$obj154026%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154026%_)))))
                 (_%self146608154031%_ _%self146608154029%_)
                 (_%proc154046%_ _%proc154022%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154055154060%_
                         (##unchecked-structure-ref
                          _%self146608154031%_
                          '1
                          '#f
                          'for-each))
                        (_%method154056154061%_
                         (##unchecked-structure-ref
                          _%self146608154031%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154056154061%_
                     _%object154055154060%_
                     _%proc154046%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154062154067%_
                         (##unchecked-structure-ref
                          _%self146608154031%_
                          '1
                          '#f
                          'for-each))
                        (_%method154063154068%_
                         (##unchecked-structure-ref
                          _%self146608154031%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154063154068%_
                     _%object154062154067%_
                     _%proc154046%_)))))
          _%lst154014%_)))
    (define hash->plist
      (lambda (_%h151321%_)
        (let* ((_%h151327%_
                (let ((_%$obj151324%_ _%h151321%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151324%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151324%_)))
                           '#t)
                      _%$obj151324%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151324%_)))))
               (_%h151329%_ _%h151327%_))
          (__hash->plist _%h151329%_))))
    (define __hash-for-each
      (lambda (_%proc153931%_ _%h153932%_)
        (let* ((_%proc153935%_ _%proc153931%_)
               (_%h153943%_ _%h153932%_)
               (_%self146608153952%_ _%h153943%_)
               (_%proc153955%_ _%proc153935%_)
               (_%self146608153962%_
                (let ((_%$obj153959%_ _%self146608153952%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153959%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153959%_)))
                           '#t)
                      _%$obj153959%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153959%_)))))
               (_%self146608153964%_ _%self146608153962%_)
               (_%proc153978%_ _%proc153955%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153987153992%_
                       (##unchecked-structure-ref
                        _%self146608153964%_
                        '1
                        '#f
                        'for-each))
                      (_%method153988153993%_
                       (##unchecked-structure-ref
                        _%self146608153964%_
                        '5
                        '#f
                        'for-each)))
                  (_%method153988153993%_
                   _%object153987153992%_
                   _%proc153978%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153994153999%_
                       (##unchecked-structure-ref
                        _%self146608153964%_
                        '1
                        '#f
                        'for-each))
                      (_%method153995154000%_
                       (##unchecked-structure-ref
                        _%self146608153964%_
                        '5
                        '#f
                        'for-each)))
                  (_%method153995154000%_
                   _%object153994153999%_
                   _%proc153978%_)))))))
    (define hash-for-each
      (lambda (_%proc151459%_ _%h151460%_)
        (if (procedure? _%proc151459%_)
            (let* ((_%proc151464%_ _%proc151459%_)
                   (_%h151476%_
                    (let ((_%$obj151473%_ _%h151460%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151473%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151473%_)))
                               '#t)
                          _%$obj151473%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151473%_)))))
                   (_%h151478%_ _%h151476%_))
              (__hash-for-each _%proc151464%_ _%h151478%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc151459%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc153854%_ _%h153855%_)
        (let* ((_%proc153858%_ _%proc153854%_)
               (_%h153866%_ _%h153855%_)
               (_%result153875%_ '()))
          (let* ((_%self146608153877%_ _%h153866%_)
                 (_%proc153883%_
                  (lambda (_%k153880%_ _%v153881%_)
                    (set! _%result153875%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc153858%_ _%k153880%_ _%v153881%_))
                                _%result153875%_))))
                 (_%self146608153890%_
                  (let ((_%$obj153887%_ _%self146608153877%_))
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
                 (_%self146608153892%_ _%self146608153890%_)
                 (_%proc153907%_ _%proc153883%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153916153921%_
                         (##unchecked-structure-ref
                          _%self146608153892%_
                          '1
                          '#f
                          'for-each))
                        (_%method153917153922%_
                         (##unchecked-structure-ref
                          _%self146608153892%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153917153922%_
                     _%object153916153921%_
                     _%proc153907%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153923153928%_
                         (##unchecked-structure-ref
                          _%self146608153892%_
                          '1
                          '#f
                          'for-each))
                        (_%method153924153929%_
                         (##unchecked-structure-ref
                          _%self146608153892%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153924153929%_
                     _%object153923153928%_
                     _%proc153907%_)))))
          _%result153875%_)))
    (define hash-map
      (lambda (_%proc151608%_ _%h151609%_)
        (if (procedure? _%proc151608%_)
            (let* ((_%proc151613%_ _%proc151608%_)
                   (_%h151625%_
                    (let ((_%$obj151622%_ _%h151609%_))
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
              (__hash-map _%proc151613%_ _%h151627%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc151608%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc153776%_ _%iv153777%_ _%h153778%_)
        (let* ((_%proc153781%_ _%proc153776%_)
               (_%h153789%_ _%h153778%_)
               (_%result153798%_ _%iv153777%_))
          (let* ((_%self146608153800%_ _%h153789%_)
                 (_%proc153806%_
                  (lambda (_%k153803%_ _%v153804%_)
                    (set! _%result153798%_
                          (let ()
                            (declare (not safe))
                            (_%proc153781%_
                             _%k153803%_
                             _%v153804%_
                             _%result153798%_)))))
                 (_%self146608153813%_
                  (let ((_%$obj153810%_ _%self146608153800%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153810%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153810%_)))
                             '#t)
                        _%$obj153810%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153810%_)))))
                 (_%self146608153815%_ _%self146608153813%_)
                 (_%proc153830%_ _%proc153806%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153839153844%_
                         (##unchecked-structure-ref
                          _%self146608153815%_
                          '1
                          '#f
                          'for-each))
                        (_%method153840153845%_
                         (##unchecked-structure-ref
                          _%self146608153815%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153840153845%_
                     _%object153839153844%_
                     _%proc153830%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153846153851%_
                         (##unchecked-structure-ref
                          _%self146608153815%_
                          '1
                          '#f
                          'for-each))
                        (_%method153847153852%_
                         (##unchecked-structure-ref
                          _%self146608153815%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153847153852%_
                     _%object153846153851%_
                     _%proc153830%_)))))
          _%result153798%_)))
    (define hash-fold
      (lambda (_%proc151757%_ _%iv151758%_ _%h151759%_)
        (if (procedure? _%proc151757%_)
            (let* ((_%proc151763%_ _%proc151757%_)
                   (_%h151775%_
                    (let ((_%$obj151772%_ _%h151759%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151772%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151772%_)))
                               '#t)
                          _%$obj151772%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151772%_)))))
                   (_%h151777%_ _%h151775%_))
              (__hash-fold _%proc151763%_ _%iv151758%_ _%h151777%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc151757%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc153683%_ _%h153684%_ _%default-value153685%_)
        (let* ((_%proc153688%_ _%proc153683%_)
               (_%h153696%_ _%h153684%_)
               (__tmp162198
                (lambda (_%return153705%_)
                  (let* ((_%self146608153707%_ _%h153696%_)
                         (_%proc153716%_
                          (lambda (_%k153710%_ _%v153711%_)
                            (let ((_%$e153713%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc153688%_
                                      _%k153710%_
                                      _%v153711%_))))
                              (if _%$e153713%_
                                  (_%return153705%_ _%$e153713%_)
                                  '#!void))))
                         (_%self146608153723%_
                          (let ((_%$obj153720%_ _%self146608153707%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj153720%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj153720%_)))
                                     '#t)
                                _%$obj153720%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj153720%_)))))
                         (_%self146608153725%_ _%self146608153723%_)
                         (_%proc153740%_ _%proc153716%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object153749153754%_
                                 (##unchecked-structure-ref
                                  _%self146608153725%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153750153755%_
                                 (##unchecked-structure-ref
                                  _%self146608153725%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153750153755%_
                             _%object153749153754%_
                             _%proc153740%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object153756153761%_
                                 (##unchecked-structure-ref
                                  _%self146608153725%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153757153762%_
                                 (##unchecked-structure-ref
                                  _%self146608153725%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153757153762%_
                             _%object153756153761%_
                             _%proc153740%_)))))
                  _%default-value153685%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp162198))))
    (define __hash-find__0
      (lambda (_%proc153767%_ _%h153768%_)
        (let ((_%default-value153770%_ '#f))
          (__hash-find__%
           _%proc153767%_
           _%h153768%_
           _%default-value153770%_))))
    (define __hash-find
      (lambda _g162199_
        (let ((_g162200_ (let () (declare (not safe)) (##length _g162199_))))
          (cond ((let () (declare (not safe)) (##fx= _g162200_ 2))
                 (apply __hash-find__0 _g162199_))
                ((let () (declare (not safe)) (##fx= _g162200_ 3))
                 (apply __hash-find__% _g162199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g162199_))))))
    (define hash-find__%
      (lambda (_%proc151908%_ _%h151909%_ _%default-value151910%_)
        (if (procedure? _%proc151908%_)
            (let* ((_%proc151914%_ _%proc151908%_)
                   (_%h151926%_
                    (let ((_%$obj151923%_ _%h151909%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151923%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151923%_)))
                               '#t)
                          _%$obj151923%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151923%_)))))
                   (_%h151928%_ _%h151926%_))
              (__hash-find__%
               _%proc151914%_
               _%h151928%_
               _%default-value151910%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc151908%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc151941%_ _%h151942%_)
        (let ((_%default-value151944%_ '#f))
          (hash-find__% _%proc151941%_ _%h151942%_ _%default-value151944%_))))
    (define hash-find
      (lambda _g162201_
        (let ((_g162202_ (let () (declare (not safe)) (##length _g162201_))))
          (cond ((let () (declare (not safe)) (##fx= _g162202_ 2))
                 (apply hash-find__0 _g162201_))
                ((let () (declare (not safe)) (##fx= _g162202_ 3))
                 (apply hash-find__% _g162201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g162201_))))))
    (define __hash-keys
      (lambda (_%h153614%_)
        (let* ((_%h153617%_ _%h153614%_) (_%result153626%_ '()))
          (let* ((_%self146608153628%_ _%h153617%_)
                 (_%proc153634%_
                  (lambda (_%k153631%_ _%v153632%_)
                    (set! _%result153626%_
                          (cons _%k153631%_ _%result153626%_))))
                 (_%self146608153641%_
                  (let ((_%$obj153638%_ _%self146608153628%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153638%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153638%_)))
                             '#t)
                        _%$obj153638%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153638%_)))))
                 (_%self146608153643%_ _%self146608153641%_)
                 (_%proc153658%_ _%proc153634%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153667153672%_
                         (##unchecked-structure-ref
                          _%self146608153643%_
                          '1
                          '#f
                          'for-each))
                        (_%method153668153673%_
                         (##unchecked-structure-ref
                          _%self146608153643%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153668153673%_
                     _%object153667153672%_
                     _%proc153658%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153674153679%_
                         (##unchecked-structure-ref
                          _%self146608153643%_
                          '1
                          '#f
                          'for-each))
                        (_%method153675153680%_
                         (##unchecked-structure-ref
                          _%self146608153643%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153675153680%_
                     _%object153674153679%_
                     _%proc153658%_)))))
          _%result153626%_)))
    (define hash-keys
      (lambda (_%h152070%_)
        (let* ((_%h152076%_
                (let ((_%$obj152073%_ _%h152070%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152073%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152073%_)))
                           '#t)
                      _%$obj152073%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152073%_)))))
               (_%h152078%_ _%h152076%_))
          (__hash-keys _%h152078%_))))
    (define __hash-values
      (lambda (_%h153546%_)
        (let* ((_%h153549%_ _%h153546%_) (_%result153558%_ '()))
          (let* ((_%self146608153560%_ _%h153549%_)
                 (_%proc153566%_
                  (lambda (_%k153563%_ _%v153564%_)
                    (set! _%result153558%_
                          (cons _%v153564%_ _%result153558%_))))
                 (_%self146608153573%_
                  (let ((_%$obj153570%_ _%self146608153560%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153570%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153570%_)))
                             '#t)
                        _%$obj153570%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153570%_)))))
                 (_%self146608153575%_ _%self146608153573%_)
                 (_%proc153590%_ _%proc153566%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153599153604%_
                         (##unchecked-structure-ref
                          _%self146608153575%_
                          '1
                          '#f
                          'for-each))
                        (_%method153600153605%_
                         (##unchecked-structure-ref
                          _%self146608153575%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153600153605%_
                     _%object153599153604%_
                     _%proc153590%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153606153611%_
                         (##unchecked-structure-ref
                          _%self146608153575%_
                          '1
                          '#f
                          'for-each))
                        (_%method153607153612%_
                         (##unchecked-structure-ref
                          _%self146608153575%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153607153612%_
                     _%object153606153611%_
                     _%proc153590%_)))))
          _%result153558%_)))
    (define hash-values
      (lambda (_%h152208%_)
        (let* ((_%h152214%_
                (let ((_%$obj152211%_ _%h152208%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152211%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152211%_)))
                           '#t)
                      _%$obj152211%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152211%_)))))
               (_%h152216%_ _%h152214%_))
          (__hash-values _%h152216%_))))
    (define __hash-copy
      (lambda (_%h153495%_)
        (let* ((_%h153498%_ _%h153495%_)
               (_%self146021153507%_ _%h153498%_)
               (_%self146021153514%_
                (let ((_%$obj153511%_ _%self146021153507%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153511%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153511%_)))
                           '#t)
                      _%$obj153511%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153511%_)))))
               (_%self146021153516%_ _%self146021153514%_))
          (if __DEBUG
              (let ((_%$obj153536%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object153528153533%_
                              (##unchecked-structure-ref
                               _%self146021153516%_
                               '1
                               '#f
                               'copy))
                             (_%method153529153534%_
                              (##unchecked-structure-ref
                               _%self146021153516%_
                               '3
                               '#f
                               'copy)))
                         (_%method153529153534%_ _%object153528153533%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj153536%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj153536%_)))
                         '#t)
                    _%$obj153536%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj153536%_))))
              (let ()
                (declare (not safe))
                (let ((_%object153538153543%_
                       (##unchecked-structure-ref
                        _%self146021153516%_
                        '1
                        '#f
                        'copy))
                      (_%method153539153544%_
                       (##unchecked-structure-ref
                        _%self146021153516%_
                        '3
                        '#f
                        'copy)))
                  (_%method153539153544%_ _%object153538153543%_)))))))
    (define hash-copy
      (lambda (_%h152346%_)
        (let* ((_%h152352%_
                (let ((_%$obj152349%_ _%h152346%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152349%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152349%_)))
                           '#t)
                      _%$obj152349%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152349%_)))))
               (_%h152354%_ _%h152352%_))
          (__hash-copy _%h152354%_))))
    (define __hash-clear!
      (lambda (_%h153447%_)
        (let* ((_%h153450%_ _%h153447%_)
               (_%self145729153459%_ _%h153450%_)
               (_%self145729153466%_
                (let ((_%$obj153463%_ _%self145729153459%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153463%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153463%_)))
                           '#t)
                      _%$obj153463%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153463%_)))))
               (_%self145729153468%_ _%self145729153466%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153480153485%_
                       (##unchecked-structure-ref
                        _%self145729153468%_
                        '1
                        '#f
                        'clear!))
                      (_%method153481153486%_
                       (##unchecked-structure-ref
                        _%self145729153468%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153481153486%_ _%object153480153485%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153487153492%_
                       (##unchecked-structure-ref
                        _%self145729153468%_
                        '1
                        '#f
                        'clear!))
                      (_%method153488153493%_
                       (##unchecked-structure-ref
                        _%self145729153468%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153488153493%_ _%object153487153492%_)))))))
    (define hash-clear!
      (lambda (_%h152484%_)
        (let* ((_%h152490%_
                (let ((_%$obj152487%_ _%h152484%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152487%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152487%_)))
                           '#t)
                      _%$obj152487%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152487%_)))))
               (_%h152492%_ _%h152490%_))
          (__hash-clear! _%h152492%_))))
    (define __hash-merge
      (lambda (_%h153393%_ . _%rest153394%_)
        (let* ((_%h153397%_ _%h153393%_)
               (_%copy153445%_
                (let* ((_%self146021153406%_ _%h153397%_)
                       (_%self146021153413%_
                        (let ((_%$obj153410%_ _%self146021153406%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153410%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153410%_)))
                                   '#t)
                              _%$obj153410%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153410%_)))))
                       (_%self146021153415%_ _%self146021153413%_))
                  (if __DEBUG
                      (let ((_%$obj153435%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object153427153432%_
                                      (##unchecked-structure-ref
                                       _%self146021153415%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method153428153433%_
                                      (##unchecked-structure-ref
                                       _%self146021153415%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method153428153433%_
                                  _%object153427153432%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj153435%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj153435%_)))
                                 '#t)
                            _%$obj153435%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj153435%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153437153442%_
                               (##unchecked-structure-ref
                                _%self146021153415%_
                                '1
                                '#f
                                'copy))
                              (_%method153438153443%_
                               (##unchecked-structure-ref
                                _%self146021153415%_
                                '3
                                '#f
                                'copy)))
                          (_%method153438153443%_ _%object153437153442%_)))))))
          (apply hash-merge! _%copy153445%_ _%rest153394%_)
          _%copy153445%_)))
    (define hash-merge
      (lambda (_%h152622%_ . _%rest152623%_)
        (let* ((_%h152629%_
                (let ((_%$obj152626%_ _%h152622%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152626%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152626%_)))
                           '#t)
                      _%$obj152626%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152626%_)))))
               (_%h152631%_ _%h152629%_))
          (declare (not safe))
          (##apply __hash-merge _%h152631%_ _%rest152623%_))))
    (define __hash-merge-right
      (lambda (_%h153339%_ . _%rest153340%_)
        (let* ((_%h153343%_ _%h153339%_)
               (_%copy153391%_
                (let* ((_%self146021153352%_ _%h153343%_)
                       (_%self146021153359%_
                        (let ((_%$obj153356%_ _%self146021153352%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153356%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153356%_)))
                                   '#t)
                              _%$obj153356%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153356%_)))))
                       (_%self146021153361%_ _%self146021153359%_))
                  (if __DEBUG
                      (let ((_%$obj153381%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object153373153378%_
                                      (##unchecked-structure-ref
                                       _%self146021153361%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method153374153379%_
                                      (##unchecked-structure-ref
                                       _%self146021153361%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method153374153379%_
                                  _%object153373153378%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj153381%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj153381%_)))
                                 '#t)
                            _%$obj153381%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj153381%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153383153388%_
                               (##unchecked-structure-ref
                                _%self146021153361%_
                                '1
                                '#f
                                'copy))
                              (_%method153384153389%_
                               (##unchecked-structure-ref
                                _%self146021153361%_
                                '3
                                '#f
                                'copy)))
                          (_%method153384153389%_ _%object153383153388%_)))))))
          (apply hash-merge-right! _%copy153391%_ _%rest153340%_)
          _%copy153391%_)))
    (define hash-merge-right
      (lambda (_%h152761%_ . _%rest152762%_)
        (let* ((_%h152768%_
                (let ((_%$obj152765%_ _%h152761%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152765%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152765%_)))
                           '#t)
                      _%$obj152765%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152765%_)))))
               (_%h152770%_ _%h152768%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h152770%_ _%rest152762%_))))
    (define __hash-merge!
      (lambda (_%h153187%_ . _%rest153188%_)
        (let ((_%h153191%_ _%h153187%_))
          (let ((__tmp162203
                 (lambda (_%hr153200%_)
                   (let* ((_%hr153206%_
                           (let ((_%$obj153203%_ _%hr153200%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153203%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153203%_)))
                                      '#t)
                                 _%$obj153203%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153203%_)))))
                          (_%hr153208%_ _%hr153206%_)
                          (_%self146608153221%_ _%hr153208%_)
                          (_%proc153296%_
                           (lambda (_%k153224%_ _%v153225%_)
                             (if (let* ((_%h153227%_ _%h153191%_)
                                        (_%k153230%_ _%k153224%_)
                                        (_%h153237%_
                                         (let ((_%$obj153234%_ _%h153227%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj153234%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj153234%_)))
                                                    '#t)
                                               _%$obj153234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj153234%_)))))
                                        (_%h153239%_ _%h153237%_))
                                   (__hash-key? _%h153239%_ _%k153230%_))
                                 '#!void
                                 (let* ((_%self147508153255%_ _%h153191%_)
                                        (_%key153258%_ _%k153224%_)
                                        (_%value153261%_ _%v153225%_)
                                        (_%self147508153268%_
                                         (let ((_%$obj153265%_
                                                _%self147508153255%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj153265%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj153265%_)))
                                                    '#t)
                                               _%$obj153265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj153265%_)))))
                                        (_%self147508153270%_
                                         _%self147508153268%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object153281153286%_
                                                (##unchecked-structure-ref
                                                 _%self147508153270%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method153282153287%_
                                                (##unchecked-structure-ref
                                                 _%self147508153270%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method153282153287%_
                                            _%object153281153286%_
                                            _%key153258%_
                                            _%value153261%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object153288153293%_
                                                (##unchecked-structure-ref
                                                 _%self147508153270%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method153289153294%_
                                                (##unchecked-structure-ref
                                                 _%self147508153270%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method153289153294%_
                                            _%object153288153293%_
                                            _%key153258%_
                                            _%value153261%_))))))))
                          (_%self146608153303%_
                           (let ((_%$obj153300%_ _%self146608153221%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153300%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153300%_)))
                                      '#t)
                                 _%$obj153300%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153300%_)))))
                          (_%self146608153305%_ _%self146608153303%_)
                          (_%proc153315%_ _%proc153296%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object153324153329%_
                                  (##unchecked-structure-ref
                                   _%self146608153305%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153325153330%_
                                  (##unchecked-structure-ref
                                   _%self146608153305%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153325153330%_
                              _%object153324153329%_
                              _%proc153315%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object153331153336%_
                                  (##unchecked-structure-ref
                                   _%self146608153305%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153332153337%_
                                  (##unchecked-structure-ref
                                   _%self146608153305%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153332153337%_
                              _%object153331153336%_
                              _%proc153315%_))))))))
            (declare (not safe))
            (##for-each __tmp162203 _%rest153188%_))
          _%h153191%_)))
    (define hash-merge!
      (lambda (_%h152900%_ . _%rest152901%_)
        (let* ((_%h152907%_
                (let ((_%$obj152904%_ _%h152900%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152904%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152904%_)))
                           '#t)
                      _%$obj152904%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152904%_)))))
               (_%h152909%_ _%h152907%_))
          (declare (not safe))
          (##apply __hash-merge! _%h152909%_ _%rest152901%_))))
    (define __hash-merge-right!
      (lambda (_%h153058%_ . _%rest153059%_)
        (let ((_%h153062%_ _%h153058%_))
          (let ((__tmp162204
                 (lambda (_%hr153071%_)
                   (let* ((_%hr153077%_
                           (let ((_%$obj153074%_ _%hr153071%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153074%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153074%_)))
                                      '#t)
                                 _%$obj153074%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153074%_)))))
                          (_%hr153079%_ _%hr153077%_)
                          (_%self146608153092%_ _%hr153079%_)
                          (_%proc153144%_
                           (lambda (_%k153095%_ _%v153096%_)
                             (let* ((_%self147508153098%_ _%h153062%_)
                                    (_%key153101%_ _%k153095%_)
                                    (_%value153104%_ _%v153096%_)
                                    (_%self147508153111%_
                                     (let ((_%$obj153108%_
                                            _%self147508153098%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj153108%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj153108%_)))
                                                '#t)
                                           _%$obj153108%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj153108%_)))))
                                    (_%self147508153113%_
                                     _%self147508153111%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153129153134%_
                                            (##unchecked-structure-ref
                                             _%self147508153113%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153130153135%_
                                            (##unchecked-structure-ref
                                             _%self147508153113%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153130153135%_
                                        _%object153129153134%_
                                        _%key153101%_
                                        _%value153104%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153136153141%_
                                            (##unchecked-structure-ref
                                             _%self147508153113%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153137153142%_
                                            (##unchecked-structure-ref
                                             _%self147508153113%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153137153142%_
                                        _%object153136153141%_
                                        _%key153101%_
                                        _%value153104%_)))))))
                          (_%self146608153151%_
                           (let ((_%$obj153148%_ _%self146608153092%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153148%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153148%_)))
                                      '#t)
                                 _%$obj153148%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153148%_)))))
                          (_%self146608153153%_ _%self146608153151%_)
                          (_%proc153163%_ _%proc153144%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object153172153177%_
                                  (##unchecked-structure-ref
                                   _%self146608153153%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153173153178%_
                                  (##unchecked-structure-ref
                                   _%self146608153153%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153173153178%_
                              _%object153172153177%_
                              _%proc153163%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object153179153184%_
                                  (##unchecked-structure-ref
                                   _%self146608153153%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153180153185%_
                                  (##unchecked-structure-ref
                                   _%self146608153153%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153180153185%_
                              _%object153179153184%_
                              _%proc153163%_))))))))
            (declare (not safe))
            (##for-each __tmp162204 _%rest153059%_))
          _%h153062%_)))
    (define hash-merge-right!
      (lambda (_%h153039%_ . _%rest153040%_)
        (let* ((_%h153046%_
                (let ((_%$obj153043%_ _%h153039%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153043%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153043%_)))
                           '#t)
                      _%$obj153043%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153043%_)))))
               (_%h153048%_ _%h153046%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h153048%_ _%rest153040%_))))))
