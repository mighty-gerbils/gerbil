(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1771025396)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp160474 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp160474
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args159216%_
        (apply make-instance UnboundKeyError::t _%$args159216%_)))
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
      (lambda (_%where159090%_ _%message159091%_ . _%irritants159092%_)
        (let ((__tmp160475
               (let ((__obj160466
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj160466
                    _%message159091%_
                    'where:
                    _%where159090%_
                    'irritants:
                    _%irritants159092%_))
                 __obj160466)))
          (declare (not safe))
          (raise __tmp160475))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp160476 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp160476
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj160468
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj160468
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj160468))
    (define make-HashTable
      (lambda (_%obj159088%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj159088%_))))
    (define try-HashTable
      (lambda (_%obj159086%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj159086%_))))
    (define HashTable?
      (lambda (_%obj159084%_)
        (let ((__tmp160477
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj159084%_ __tmp160477))))
    (define is-HashTable?
      (lambda (_%obj159081%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj159081%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self144071144315%_)
        (let ((_%self144071144317%_ _%self144071144315%_))
          (declare (not safe))
          (let ((_%object144324144329%_
                 (##unchecked-structure-ref
                  _%self144071144317%_
                  '1
                  '#f
                  'clear!))
                (_%method144325144330%_
                 (##unchecked-structure-ref
                  _%self144071144317%_
                  '2
                  '#f
                  'clear!)))
            (_%method144325144330%_ _%object144324144329%_)))))
    (define ::HashTable-clear!
      (lambda (_%self144072144332%_)
        (let* ((_%self144072144337%_
                (let ((_%$obj144334%_ _%self144072144332%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144334%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144334%_)))
                           '#t)
                      _%$obj144334%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144334%_)))))
               (_%self144072144339%_ _%self144072144337%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object144347144352%_
                       (##unchecked-structure-ref
                        _%self144072144339%_
                        '1
                        '#f
                        'clear!))
                      (_%method144348144353%_
                       (##unchecked-structure-ref
                        _%self144072144339%_
                        '2
                        '#f
                        'clear!)))
                  (_%method144348144353%_ _%object144347144352%_)))
              (let ()
                (declare (not safe))
                (let ((_%object144354144359%_
                       (##unchecked-structure-ref
                        _%self144072144339%_
                        '1
                        '#f
                        'clear!))
                      (_%method144355144360%_
                       (##unchecked-structure-ref
                        _%self144072144339%_
                        '2
                        '#f
                        'clear!)))
                  (_%method144355144360%_ _%object144354144359%_)))))))
    (define __HashTable-copy
      (lambda (_%self144363144606%_)
        (let ((_%self144363144608%_ _%self144363144606%_))
          (declare (not safe))
          (let ((_%object144615144620%_
                 (##unchecked-structure-ref _%self144363144608%_ '1 '#f 'copy))
                (_%method144616144621%_
                 (##unchecked-structure-ref
                  _%self144363144608%_
                  '3
                  '#f
                  'copy)))
            (_%method144616144621%_ _%object144615144620%_)))))
    (define ::HashTable-copy
      (lambda (_%self144364144623%_)
        (let* ((_%self144364144628%_
                (let ((_%$obj144625%_ _%self144364144623%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144625%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144625%_)))
                           '#t)
                      _%$obj144625%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144625%_)))))
               (_%self144364144630%_ _%self144364144628%_))
          (if __DEBUG
              (let ((_%$obj144646%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object144638144643%_
                              (##unchecked-structure-ref
                               _%self144364144630%_
                               '1
                               '#f
                               'copy))
                             (_%method144639144644%_
                              (##unchecked-structure-ref
                               _%self144364144630%_
                               '3
                               '#f
                               'copy)))
                         (_%method144639144644%_ _%object144638144643%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj144646%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj144646%_)))
                         '#t)
                    _%$obj144646%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj144646%_))))
              (let ()
                (declare (not safe))
                (let ((_%object144648144653%_
                       (##unchecked-structure-ref
                        _%self144364144630%_
                        '1
                        '#f
                        'copy))
                      (_%method144649144654%_
                       (##unchecked-structure-ref
                        _%self144364144630%_
                        '3
                        '#f
                        'copy)))
                  (_%method144649144654%_ _%object144648144653%_)))))))
    (define __HashTable-delete!
      (lambda (_%self144657144900%_ _%key144901%_)
        (let ((_%self144657144903%_ _%self144657144900%_))
          (declare (not safe))
          (let ((_%object144910144915%_
                 (##unchecked-structure-ref
                  _%self144657144903%_
                  '1
                  '#f
                  'delete!))
                (_%method144911144916%_
                 (##unchecked-structure-ref
                  _%self144657144903%_
                  '4
                  '#f
                  'delete!)))
            (_%method144911144916%_ _%object144910144915%_ _%key144901%_)))))
    (define ::HashTable-delete!
      (lambda (_%self144658144918%_ _%key144919%_)
        (let* ((_%self144658144924%_
                (let ((_%$obj144921%_ _%self144658144918%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144921%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144921%_)))
                           '#t)
                      _%$obj144921%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144921%_)))))
               (_%self144658144926%_ _%self144658144924%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object144934144939%_
                       (##unchecked-structure-ref
                        _%self144658144926%_
                        '1
                        '#f
                        'delete!))
                      (_%method144935144940%_
                       (##unchecked-structure-ref
                        _%self144658144926%_
                        '4
                        '#f
                        'delete!)))
                  (_%method144935144940%_
                   _%object144934144939%_
                   _%key144919%_)))
              (let ()
                (declare (not safe))
                (let ((_%object144941144946%_
                       (##unchecked-structure-ref
                        _%self144658144926%_
                        '1
                        '#f
                        'delete!))
                      (_%method144942144947%_
                       (##unchecked-structure-ref
                        _%self144658144926%_
                        '4
                        '#f
                        'delete!)))
                  (_%method144942144947%_
                   _%object144941144946%_
                   _%key144919%_)))))))
    (define __HashTable-for-each
      (lambda (_%self144950145193%_ _%proc145194%_)
        (let* ((_%self144950145196%_ _%self144950145193%_)
               (_%proc145203%_ _%proc145194%_))
          (declare (not safe))
          (let ((_%object145211145216%_
                 (##unchecked-structure-ref
                  _%self144950145196%_
                  '1
                  '#f
                  'for-each))
                (_%method145212145217%_
                 (##unchecked-structure-ref
                  _%self144950145196%_
                  '5
                  '#f
                  'for-each)))
            (_%method145212145217%_ _%object145211145216%_ _%proc145203%_)))))
    (define ::HashTable-for-each
      (lambda (_%self144951145219%_ _%proc145220%_)
        (let* ((_%self144951145225%_
                (let ((_%$obj145222%_ _%self144951145219%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145222%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145222%_)))
                           '#t)
                      _%$obj145222%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145222%_)))))
               (_%self144951145227%_ _%self144951145225%_))
          (if (procedure? _%proc145220%_)
              (let ((_%proc145236%_ _%proc145220%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object145245145250%_
                             (##unchecked-structure-ref
                              _%self144951145227%_
                              '1
                              '#f
                              'for-each))
                            (_%method145246145251%_
                             (##unchecked-structure-ref
                              _%self144951145227%_
                              '5
                              '#f
                              'for-each)))
                        (_%method145246145251%_
                         _%object145245145250%_
                         _%proc145236%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object145252145257%_
                             (##unchecked-structure-ref
                              _%self144951145227%_
                              '1
                              '#f
                              'for-each))
                            (_%method145253145258%_
                             (##unchecked-structure-ref
                              _%self144951145227%_
                              '5
                              '#f
                              'for-each)))
                        (_%method145253145258%_
                         _%object145252145257%_
                         _%proc145236%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc145220%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self145261145504%_)
        (let ((_%self145261145506%_ _%self145261145504%_))
          (declare (not safe))
          (let ((_%object145513145518%_
                 (##unchecked-structure-ref
                  _%self145261145506%_
                  '1
                  '#f
                  'length))
                (_%method145514145519%_
                 (##unchecked-structure-ref
                  _%self145261145506%_
                  '6
                  '#f
                  'length)))
            (_%method145514145519%_ _%object145513145518%_)))))
    (define ::HashTable-length
      (lambda (_%self145262145521%_)
        (let* ((_%self145262145526%_
                (let ((_%$obj145523%_ _%self145262145521%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145523%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145523%_)))
                           '#t)
                      _%$obj145523%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145523%_)))))
               (_%self145262145528%_ _%self145262145526%_))
          (if __DEBUG
              (let ((_%val145544%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object145536145541%_
                              (##unchecked-structure-ref
                               _%self145262145528%_
                               '1
                               '#f
                               'length))
                             (_%method145537145542%_
                              (##unchecked-structure-ref
                               _%self145262145528%_
                               '6
                               '#f
                               'length)))
                         (_%method145537145542%_ _%object145536145541%_)))))
                (if (fixnum? _%val145544%_)
                    _%val145544%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val145544%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object145546145551%_
                       (##unchecked-structure-ref
                        _%self145262145528%_
                        '1
                        '#f
                        'length))
                      (_%method145547145552%_
                       (##unchecked-structure-ref
                        _%self145262145528%_
                        '6
                        '#f
                        'length)))
                  (_%method145547145552%_ _%object145546145551%_)))))))
    (define __HashTable-ref
      (lambda (_%self145555145798%_ _%key145799%_ _%default145800%_)
        (let ((_%self145555145802%_ _%self145555145798%_))
          (declare (not safe))
          (let ((_%object145809145814%_
                 (##unchecked-structure-ref _%self145555145802%_ '1 '#f 'ref))
                (_%method145810145815%_
                 (##unchecked-structure-ref _%self145555145802%_ '7 '#f 'ref)))
            (_%method145810145815%_
             _%object145809145814%_
             _%key145799%_
             _%default145800%_)))))
    (define ::HashTable-ref
      (lambda (_%self145556145817%_ _%key145818%_ _%default145819%_)
        (let* ((_%self145556145824%_
                (let ((_%$obj145821%_ _%self145556145817%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145821%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145821%_)))
                           '#t)
                      _%$obj145821%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145821%_)))))
               (_%self145556145826%_ _%self145556145824%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145834145839%_
                       (##unchecked-structure-ref
                        _%self145556145826%_
                        '1
                        '#f
                        'ref))
                      (_%method145835145840%_
                       (##unchecked-structure-ref
                        _%self145556145826%_
                        '7
                        '#f
                        'ref)))
                  (_%method145835145840%_
                   _%object145834145839%_
                   _%key145818%_
                   _%default145819%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145841145846%_
                       (##unchecked-structure-ref
                        _%self145556145826%_
                        '1
                        '#f
                        'ref))
                      (_%method145842145847%_
                       (##unchecked-structure-ref
                        _%self145556145826%_
                        '7
                        '#f
                        'ref)))
                  (_%method145842145847%_
                   _%object145841145846%_
                   _%key145818%_
                   _%default145819%_)))))))
    (define __HashTable-set!
      (lambda (_%self145850146093%_ _%key146094%_ _%value146095%_)
        (let ((_%self145850146097%_ _%self145850146093%_))
          (declare (not safe))
          (let ((_%object146104146109%_
                 (##unchecked-structure-ref _%self145850146097%_ '1 '#f 'set!))
                (_%method146105146110%_
                 (##unchecked-structure-ref
                  _%self145850146097%_
                  '8
                  '#f
                  'set!)))
            (_%method146105146110%_
             _%object146104146109%_
             _%key146094%_
             _%value146095%_)))))
    (define ::HashTable-set!
      (lambda (_%self145851146112%_ _%key146113%_ _%value146114%_)
        (let* ((_%self145851146119%_
                (let ((_%$obj146116%_ _%self145851146112%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146116%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146116%_)))
                           '#t)
                      _%$obj146116%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146116%_)))))
               (_%self145851146121%_ _%self145851146119%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146129146134%_
                       (##unchecked-structure-ref
                        _%self145851146121%_
                        '1
                        '#f
                        'set!))
                      (_%method146130146135%_
                       (##unchecked-structure-ref
                        _%self145851146121%_
                        '8
                        '#f
                        'set!)))
                  (_%method146130146135%_
                   _%object146129146134%_
                   _%key146113%_
                   _%value146114%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146136146141%_
                       (##unchecked-structure-ref
                        _%self145851146121%_
                        '1
                        '#f
                        'set!))
                      (_%method146137146142%_
                       (##unchecked-structure-ref
                        _%self145851146121%_
                        '8
                        '#f
                        'set!)))
                  (_%method146137146142%_
                   _%object146136146141%_
                   _%key146113%_
                   _%value146114%_)))))))
    (define __HashTable-update!
      (lambda (_%self146145146388%_
               _%key146389%_
               _%proc146390%_
               _%default146391%_)
        (let* ((_%self146145146393%_ _%self146145146388%_)
               (_%proc146400%_ _%proc146390%_))
          (declare (not safe))
          (let ((_%object146408146413%_
                 (##unchecked-structure-ref
                  _%self146145146393%_
                  '1
                  '#f
                  'update!))
                (_%method146409146414%_
                 (##unchecked-structure-ref
                  _%self146145146393%_
                  '9
                  '#f
                  'update!)))
            (_%method146409146414%_
             _%object146408146413%_
             _%key146389%_
             _%proc146400%_
             _%default146391%_)))))
    (define ::HashTable-update!
      (lambda (_%self146146146416%_
               _%key146417%_
               _%proc146418%_
               _%default146419%_)
        (let* ((_%self146146146424%_
                (let ((_%$obj146421%_ _%self146146146416%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146421%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146421%_)))
                           '#t)
                      _%$obj146421%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146421%_)))))
               (_%self146146146426%_ _%self146146146424%_))
          (if (procedure? _%proc146418%_)
              (let ((_%proc146435%_ _%proc146418%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object146444146449%_
                             (##unchecked-structure-ref
                              _%self146146146426%_
                              '1
                              '#f
                              'update!))
                            (_%method146445146450%_
                             (##unchecked-structure-ref
                              _%self146146146426%_
                              '9
                              '#f
                              'update!)))
                        (_%method146445146450%_
                         _%object146444146449%_
                         _%key146417%_
                         _%proc146435%_
                         _%default146419%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object146451146456%_
                             (##unchecked-structure-ref
                              _%self146146146426%_
                              '1
                              '#f
                              'update!))
                            (_%method146452146457%_
                             (##unchecked-structure-ref
                              _%self146146146426%_
                              '9
                              '#f
                              'update!)))
                        (_%method146452146457%_
                         _%object146451146456%_
                         _%key146417%_
                         _%proc146435%_
                         _%default146419%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc146418%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp160478 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp160478
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj160470
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj160470
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj160470))
    (define make-Locker
      (lambda (_%obj159079%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj159079%_))))
    (define try-Locker
      (lambda (_%obj159077%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj159077%_))))
    (define Locker?
      (lambda (_%obj159075%_)
        (let ((__tmp160479
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj159075%_ __tmp160479))))
    (define is-Locker?
      (lambda (_%obj159072%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj159072%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self146460146703%_)
        (let ((_%self146460146705%_ _%self146460146703%_))
          (declare (not safe))
          (let ((_%object146712146717%_
                 (##unchecked-structure-ref
                  _%self146460146705%_
                  '1
                  '#f
                  'read-lock!))
                (_%method146713146718%_
                 (##unchecked-structure-ref
                  _%self146460146705%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method146713146718%_ _%object146712146717%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self146461146720%_)
        (let* ((_%self146461146725%_
                (let ((_%$obj146722%_ _%self146461146720%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146722%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146722%_)))
                           '#t)
                      _%$obj146722%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj146722%_)))))
               (_%self146461146727%_ _%self146461146725%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146735146740%_
                       (##unchecked-structure-ref
                        _%self146461146727%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method146736146741%_
                       (##unchecked-structure-ref
                        _%self146461146727%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method146736146741%_ _%object146735146740%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146742146747%_
                       (##unchecked-structure-ref
                        _%self146461146727%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method146743146748%_
                       (##unchecked-structure-ref
                        _%self146461146727%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method146743146748%_ _%object146742146747%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self146751146994%_)
        (let ((_%self146751146996%_ _%self146751146994%_))
          (declare (not safe))
          (let ((_%object147003147008%_
                 (##unchecked-structure-ref
                  _%self146751146996%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method147004147009%_
                 (##unchecked-structure-ref
                  _%self146751146996%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method147004147009%_ _%object147003147008%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self146752147011%_)
        (let* ((_%self146752147016%_
                (let ((_%$obj147013%_ _%self146752147011%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147013%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147013%_)))
                           '#t)
                      _%$obj147013%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147013%_)))))
               (_%self146752147018%_ _%self146752147016%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147026147031%_
                       (##unchecked-structure-ref
                        _%self146752147018%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method147027147032%_
                       (##unchecked-structure-ref
                        _%self146752147018%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method147027147032%_ _%object147026147031%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147033147038%_
                       (##unchecked-structure-ref
                        _%self146752147018%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method147034147039%_
                       (##unchecked-structure-ref
                        _%self146752147018%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method147034147039%_ _%object147033147038%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self147042147285%_)
        (let ((_%self147042147287%_ _%self147042147285%_))
          (declare (not safe))
          (let ((_%object147294147299%_
                 (##unchecked-structure-ref
                  _%self147042147287%_
                  '1
                  '#f
                  'write-lock!))
                (_%method147295147300%_
                 (##unchecked-structure-ref
                  _%self147042147287%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method147295147300%_ _%object147294147299%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self147043147302%_)
        (let* ((_%self147043147307%_
                (let ((_%$obj147304%_ _%self147043147302%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147304%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147304%_)))
                           '#t)
                      _%$obj147304%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147304%_)))))
               (_%self147043147309%_ _%self147043147307%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147317147322%_
                       (##unchecked-structure-ref
                        _%self147043147309%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method147318147323%_
                       (##unchecked-structure-ref
                        _%self147043147309%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method147318147323%_ _%object147317147322%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147324147329%_
                       (##unchecked-structure-ref
                        _%self147043147309%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method147325147330%_
                       (##unchecked-structure-ref
                        _%self147043147309%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method147325147330%_ _%object147324147329%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self147333147576%_)
        (let ((_%self147333147578%_ _%self147333147576%_))
          (declare (not safe))
          (let ((_%object147585147590%_
                 (##unchecked-structure-ref
                  _%self147333147578%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method147586147591%_
                 (##unchecked-structure-ref
                  _%self147333147578%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method147586147591%_ _%object147585147590%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self147334147593%_)
        (let* ((_%self147334147598%_
                (let ((_%$obj147595%_ _%self147334147593%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147595%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147595%_)))
                           '#t)
                      _%$obj147595%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147595%_)))))
               (_%self147334147600%_ _%self147334147598%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147608147613%_
                       (##unchecked-structure-ref
                        _%self147334147600%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method147609147614%_
                       (##unchecked-structure-ref
                        _%self147334147600%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method147609147614%_ _%object147608147613%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147615147620%_
                       (##unchecked-structure-ref
                        _%self147334147600%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method147616147621%_
                       (##unchecked-structure-ref
                        _%self147334147600%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method147616147621%_ _%object147615147620%_)))))))
    (let* ((_%klass159035%_ __table::t)
           (_%id159038%_ 'HashTable::ref)
           (_%proc159041%_ raw-table-ref)
           (_%rebind?159044%_ '#f)
           (_%id159049%_ _%id159038%_)
           (_%proc159062%_ _%proc159041%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159035%_
       _%id159049%_
       _%proc159062%_
       _%rebind?159044%_))
    (let* ((_%klass158998%_ __table::t)
           (_%id159001%_ 'HashTable::set!)
           (_%proc159004%_ raw-table-set!)
           (_%rebind?159007%_ '#f)
           (_%id159012%_ _%id159001%_)
           (_%proc159025%_ _%proc159004%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158998%_
       _%id159012%_
       _%proc159025%_
       _%rebind?159007%_))
    (let* ((_%klass158961%_ __table::t)
           (_%id158964%_ 'HashTable::update!)
           (_%proc158967%_ raw-table-update!)
           (_%rebind?158970%_ '#f)
           (_%id158975%_ _%id158964%_)
           (_%proc158988%_ _%proc158967%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158961%_
       _%id158975%_
       _%proc158988%_
       _%rebind?158970%_))
    (let* ((_%klass158924%_ __table::t)
           (_%id158927%_ 'HashTable::delete!)
           (_%proc158930%_ raw-table-delete!)
           (_%rebind?158933%_ '#f)
           (_%id158938%_ _%id158927%_)
           (_%proc158951%_ _%proc158930%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158924%_
       _%id158938%_
       _%proc158951%_
       _%rebind?158933%_))
    (let* ((_%klass158887%_ __table::t)
           (_%id158890%_ 'HashTable::for-each)
           (_%proc158893%_ raw-table-for-each)
           (_%rebind?158896%_ '#f)
           (_%id158901%_ _%id158890%_)
           (_%proc158914%_ _%proc158893%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158887%_
       _%id158901%_
       _%proc158914%_
       _%rebind?158896%_))
    (let* ((_%klass158850%_ __table::t)
           (_%id158853%_ 'HashTable::length)
           (_%proc158856%_ &raw-table-count)
           (_%rebind?158859%_ '#f)
           (_%id158864%_ _%id158853%_)
           (_%proc158877%_ _%proc158856%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158850%_
       _%id158864%_
       _%proc158877%_
       _%rebind?158859%_))
    (let* ((_%klass158813%_ __table::t)
           (_%id158816%_ 'HashTable::copy)
           (_%proc158819%_ raw-table-copy)
           (_%rebind?158822%_ '#f)
           (_%id158827%_ _%id158816%_)
           (_%proc158840%_ _%proc158819%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158813%_
       _%id158827%_
       _%proc158840%_
       _%rebind?158822%_))
    (let* ((_%klass158776%_ __table::t)
           (_%id158779%_ 'HashTable::clear!)
           (_%proc158782%_ raw-table-clear!)
           (_%rebind?158785%_ '#f)
           (_%id158790%_ _%id158779%_)
           (_%proc158803%_ _%proc158782%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158776%_
       _%id158790%_
       _%proc158803%_
       _%rebind?158785%_))
    (let* ((_%klass158739%_ __gc-table::t)
           (_%id158742%_ 'HashTable::ref)
           (_%proc158745%_ gc-table-ref)
           (_%rebind?158748%_ '#f)
           (_%id158753%_ _%id158742%_)
           (_%proc158766%_ _%proc158745%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158739%_
       _%id158753%_
       _%proc158766%_
       _%rebind?158748%_))
    (let* ((_%klass158702%_ __gc-table::t)
           (_%id158705%_ 'HashTable::set!)
           (_%proc158708%_ gc-table-set!)
           (_%rebind?158711%_ '#f)
           (_%id158716%_ _%id158705%_)
           (_%proc158729%_ _%proc158708%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158702%_
       _%id158716%_
       _%proc158729%_
       _%rebind?158711%_))
    (let* ((_%klass158665%_ __gc-table::t)
           (_%id158668%_ 'HashTable::update!)
           (_%proc158671%_ gc-table-update!)
           (_%rebind?158674%_ '#f)
           (_%id158679%_ _%id158668%_)
           (_%proc158692%_ _%proc158671%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158665%_
       _%id158679%_
       _%proc158692%_
       _%rebind?158674%_))
    (let* ((_%klass158628%_ __gc-table::t)
           (_%id158631%_ 'HashTable::delete!)
           (_%proc158634%_ gc-table-delete!)
           (_%rebind?158637%_ '#f)
           (_%id158642%_ _%id158631%_)
           (_%proc158655%_ _%proc158634%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158628%_
       _%id158642%_
       _%proc158655%_
       _%rebind?158637%_))
    (let* ((_%klass158591%_ __gc-table::t)
           (_%id158594%_ 'HashTable::for-each)
           (_%proc158597%_ gc-table-for-each)
           (_%rebind?158600%_ '#f)
           (_%id158605%_ _%id158594%_)
           (_%proc158618%_ _%proc158597%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158591%_
       _%id158605%_
       _%proc158618%_
       _%rebind?158600%_))
    (let* ((_%klass158554%_ __gc-table::t)
           (_%id158557%_ 'HashTable::length)
           (_%proc158560%_ gc-table-length)
           (_%rebind?158563%_ '#f)
           (_%id158568%_ _%id158557%_)
           (_%proc158581%_ _%proc158560%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158554%_
       _%id158568%_
       _%proc158581%_
       _%rebind?158563%_))
    (let* ((_%klass158517%_ __gc-table::t)
           (_%id158520%_ 'HashTable::copy)
           (_%proc158523%_ gc-table-copy)
           (_%rebind?158526%_ '#f)
           (_%id158531%_ _%id158520%_)
           (_%proc158544%_ _%proc158523%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158517%_
       _%id158531%_
       _%proc158544%_
       _%rebind?158526%_))
    (let* ((_%klass158480%_ __gc-table::t)
           (_%id158483%_ 'HashTable::clear!)
           (_%proc158486%_ gc-table-clear!)
           (_%rebind?158489%_ '#f)
           (_%id158494%_ _%id158483%_)
           (_%proc158507%_ _%proc158486%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158480%_
       _%id158494%_
       _%proc158507%_
       _%rebind?158489%_))
    (define gambit-table-update!
      (lambda (_%table158473%_
               _%key158474%_
               _%update158475%_
               _%default158476%_)
        (let ((_%result158478%_
               (table-ref _%table158473%_ _%key158474%_ _%default158476%_)))
          (table-set!
           _%table158473%_
           _%key158474%_
           (_%update158475%_ _%default158476%_)))))
    (define gambit-table-for-each
      (lambda (_%table158470%_ _%proc158471%_)
        (table-for-each _%proc158471%_ _%table158470%_)))
    (define gambit-table-clear!
      (lambda (_%table158468%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table158468%_ '0 '5 '#f '#f))))
    (let* ((_%klass158431%_ (macro-type-table))
           (_%id158434%_ 'HashTable::ref)
           (_%proc158437%_ table-ref)
           (_%rebind?158440%_ '#f)
           (_%id158445%_ _%id158434%_)
           (_%proc158458%_ _%proc158437%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158431%_
       _%id158445%_
       _%proc158458%_
       _%rebind?158440%_))
    (let* ((_%klass158394%_ (macro-type-table))
           (_%id158397%_ 'HashTable::set!)
           (_%proc158400%_ table-set!)
           (_%rebind?158403%_ '#f)
           (_%id158408%_ _%id158397%_)
           (_%proc158421%_ _%proc158400%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158394%_
       _%id158408%_
       _%proc158421%_
       _%rebind?158403%_))
    (let* ((_%klass158357%_ (macro-type-table))
           (_%id158360%_ 'HashTable::update!)
           (_%proc158363%_ gambit-table-update!)
           (_%rebind?158366%_ '#f)
           (_%id158371%_ _%id158360%_)
           (_%proc158384%_ _%proc158363%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158357%_
       _%id158371%_
       _%proc158384%_
       _%rebind?158366%_))
    (let* ((_%klass158320%_ (macro-type-table))
           (_%id158323%_ 'HashTable::delete!)
           (_%proc158326%_ table-set!)
           (_%rebind?158329%_ '#f)
           (_%id158334%_ _%id158323%_)
           (_%proc158347%_ _%proc158326%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158320%_
       _%id158334%_
       _%proc158347%_
       _%rebind?158329%_))
    (let* ((_%klass158283%_ (macro-type-table))
           (_%id158286%_ 'HashTable::for-each)
           (_%proc158289%_ gambit-table-for-each)
           (_%rebind?158292%_ '#f)
           (_%id158297%_ _%id158286%_)
           (_%proc158310%_ _%proc158289%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158283%_
       _%id158297%_
       _%proc158310%_
       _%rebind?158292%_))
    (let* ((_%klass158246%_ (macro-type-table))
           (_%id158249%_ 'HashTable::length)
           (_%proc158252%_ table-length)
           (_%rebind?158255%_ '#f)
           (_%id158260%_ _%id158249%_)
           (_%proc158273%_ _%proc158252%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158246%_
       _%id158260%_
       _%proc158273%_
       _%rebind?158255%_))
    (let* ((_%klass158209%_ (macro-type-table))
           (_%id158212%_ 'HashTable::copy)
           (_%proc158215%_ table-copy)
           (_%rebind?158218%_ '#f)
           (_%id158223%_ _%id158212%_)
           (_%proc158236%_ _%proc158215%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158209%_
       _%id158223%_
       _%proc158236%_
       _%rebind?158218%_))
    (let* ((_%klass158172%_ (macro-type-table))
           (_%id158175%_ 'HashTable::clear!)
           (_%proc158178%_ gambit-table-clear!)
           (_%rebind?158181%_ '#f)
           (_%id158186%_ _%id158175%_)
           (_%proc158199%_ _%proc158178%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158172%_
       _%id158186%_
       _%proc158199%_
       _%rebind?158181%_))
    (define hash-table::t
      (let* ((_%slots158135%_ '(table count free hash test seed))
             (_%slot-vector158137%_ (list->vector (cons '#f _%slots158135%_)))
             (_%slot-table158163%_
              (let ((_%slot-table158139%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp160482
                       (lambda (_%slot158141%_ _%field158142%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158139%_
                            _%slot158141%_
                            _%field158142%_))
                         (let ((__tmp160483
                                (let ((_%sym158144%_ _%slot158141%_))
                                  (if (symbol? _%sym158144%_)
                                      (let ((_%sym158149%_ _%sym158144%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym158149%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym158144%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158139%_
                            __tmp160483
                            _%field158142%_))))
                      (__tmp160480
                       (let ((__tmp160481
                              (let ()
                                (declare (not safe))
                                (##length _%slots158135%_))))
                         (declare (not safe))
                         (##iota __tmp160481 '1))))
                  (declare (not safe))
                  (##for-each __tmp160482 _%slots158135%_ __tmp160480))
                _%slot-table158139%_))
             (_%flags158165%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields158167%_ '#())
             (_%properties158169%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots158135%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp160484 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags158165%_
         __table::t
         _%fields158167%_
         __tmp160484
         _%slot-vector158137%_
         _%slot-table158163%_
         _%properties158169%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots158098%_ '(gcht immediate))
             (_%slot-vector158100%_ (list->vector (cons '#f _%slots158098%_)))
             (_%slot-table158126%_
              (let ((_%slot-table158102%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp160487
                       (lambda (_%slot158104%_ _%field158105%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158102%_
                            _%slot158104%_
                            _%field158105%_))
                         (let ((__tmp160488
                                (let ((_%sym158107%_ _%slot158104%_))
                                  (if (symbol? _%sym158107%_)
                                      (let ((_%sym158112%_ _%sym158107%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym158112%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym158107%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table158102%_
                            __tmp160488
                            _%field158105%_))))
                      (__tmp160485
                       (let ((__tmp160486
                              (let ()
                                (declare (not safe))
                                (##length _%slots158098%_))))
                         (declare (not safe))
                         (##iota __tmp160486 '1))))
                  (declare (not safe))
                  (##for-each __tmp160487 _%slots158098%_ __tmp160485))
                _%slot-table158102%_))
             (_%flags158128%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields158130%_ '#())
             (_%properties158132%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots158098%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp160489 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags158128%_
         __gc-table::t
         _%fields158130%_
         __tmp160489
         _%slot-vector158100%_
         _%slot-table158126%_
         _%properties158132%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp160491 (list))
            (__tmp160490
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp160491
         '(table lock)
         __tmp160490
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args158095%_
        (apply make-instance locked-hash-table::t _%$args158095%_)))
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
      (let ((__tmp160493 (list))
            (__tmp160492
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp160493
         '(table key-check)
         __tmp160492
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args158092%_
        (apply make-instance checked-hash-table::t _%$args158092%_)))
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
      (let ((__tmp160495 (list hash-table::t))
            (__tmp160494 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp160495
         '()
         __tmp160494
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args158089%_
        (apply make-instance eq-hash-table::t _%$args158089%_)))
    (define eqv-hash-table::t
      (let ((__tmp160497 (list hash-table::t))
            (__tmp160496 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp160497
         '()
         __tmp160496
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args158086%_
        (apply make-instance eqv-hash-table::t _%$args158086%_)))
    (define symbol-hash-table::t
      (let ((__tmp160499 (list hash-table::t))
            (__tmp160498 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp160499
         '()
         __tmp160498
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args158083%_
        (apply make-instance symbol-hash-table::t _%$args158083%_)))
    (define string-hash-table::t
      (let ((__tmp160501 (list hash-table::t))
            (__tmp160500 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp160501
         '()
         __tmp160500
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args158080%_
        (apply make-instance string-hash-table::t _%$args158080%_)))
    (define immediate-hash-table::t
      (let ((__tmp160503 (list hash-table::t))
            (__tmp160502 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp160503
         '()
         __tmp160502
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args158077%_
        (apply make-instance immediate-hash-table::t _%$args158077%_)))
    (let* ((_%klass158040%_ hash-table::t)
           (_%id158043%_ 'HashTable::ref)
           (_%proc158046%_ raw-table-ref)
           (_%rebind?158049%_ '#f)
           (_%id158054%_ _%id158043%_)
           (_%proc158067%_ _%proc158046%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158040%_
       _%id158054%_
       _%proc158067%_
       _%rebind?158049%_))
    (let* ((_%klass158003%_ hash-table::t)
           (_%id158006%_ 'HashTable::set!)
           (_%proc158009%_ raw-table-set!)
           (_%rebind?158012%_ '#f)
           (_%id158017%_ _%id158006%_)
           (_%proc158030%_ _%proc158009%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158003%_
       _%id158017%_
       _%proc158030%_
       _%rebind?158012%_))
    (let* ((_%klass157966%_ hash-table::t)
           (_%id157969%_ 'HashTable::update!)
           (_%proc157972%_ raw-table-update!)
           (_%rebind?157975%_ '#f)
           (_%id157980%_ _%id157969%_)
           (_%proc157993%_ _%proc157972%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157966%_
       _%id157980%_
       _%proc157993%_
       _%rebind?157975%_))
    (let* ((_%klass157929%_ hash-table::t)
           (_%id157932%_ 'HashTable::delete!)
           (_%proc157935%_ raw-table-delete!)
           (_%rebind?157938%_ '#f)
           (_%id157943%_ _%id157932%_)
           (_%proc157956%_ _%proc157935%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157929%_
       _%id157943%_
       _%proc157956%_
       _%rebind?157938%_))
    (let* ((_%klass157892%_ hash-table::t)
           (_%id157895%_ 'HashTable::for-each)
           (_%proc157898%_ raw-table-for-each)
           (_%rebind?157901%_ '#f)
           (_%id157906%_ _%id157895%_)
           (_%proc157919%_ _%proc157898%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157892%_
       _%id157906%_
       _%proc157919%_
       _%rebind?157901%_))
    (let* ((_%klass157855%_ hash-table::t)
           (_%id157858%_ 'HashTable::length)
           (_%proc157861%_ &raw-table-count)
           (_%rebind?157864%_ '#f)
           (_%id157869%_ _%id157858%_)
           (_%proc157882%_ _%proc157861%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157855%_
       _%id157869%_
       _%proc157882%_
       _%rebind?157864%_))
    (let* ((_%klass157818%_ hash-table::t)
           (_%id157821%_ 'HashTable::copy)
           (_%proc157824%_ raw-table-copy)
           (_%rebind?157827%_ '#f)
           (_%id157832%_ _%id157821%_)
           (_%proc157845%_ _%proc157824%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157818%_
       _%id157832%_
       _%proc157845%_
       _%rebind?157827%_))
    (let* ((_%klass157781%_ hash-table::t)
           (_%id157784%_ 'HashTable::clear!)
           (_%proc157787%_ raw-table-clear!)
           (_%rebind?157790%_ '#f)
           (_%id157795%_ _%id157784%_)
           (_%proc157808%_ _%proc157787%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157781%_
       _%id157795%_
       _%proc157808%_
       _%rebind?157790%_))
    (let* ((_%klass157744%_ eq-hash-table::t)
           (_%id157747%_ 'HashTable::ref)
           (_%proc157750%_ eq-table-ref)
           (_%rebind?157753%_ '#f)
           (_%id157758%_ _%id157747%_)
           (_%proc157771%_ _%proc157750%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157744%_
       _%id157758%_
       _%proc157771%_
       _%rebind?157753%_))
    (let* ((_%klass157707%_ eq-hash-table::t)
           (_%id157710%_ 'HashTable::set!)
           (_%proc157713%_ eq-table-set!)
           (_%rebind?157716%_ '#f)
           (_%id157721%_ _%id157710%_)
           (_%proc157734%_ _%proc157713%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157707%_
       _%id157721%_
       _%proc157734%_
       _%rebind?157716%_))
    (let* ((_%klass157670%_ eq-hash-table::t)
           (_%id157673%_ 'HashTable::update!)
           (_%proc157676%_ eq-table-update!)
           (_%rebind?157679%_ '#f)
           (_%id157684%_ _%id157673%_)
           (_%proc157697%_ _%proc157676%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157670%_
       _%id157684%_
       _%proc157697%_
       _%rebind?157679%_))
    (let* ((_%klass157633%_ eq-hash-table::t)
           (_%id157636%_ 'HashTable::delete!)
           (_%proc157639%_ eq-table-delete!)
           (_%rebind?157642%_ '#f)
           (_%id157647%_ _%id157636%_)
           (_%proc157660%_ _%proc157639%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157633%_
       _%id157647%_
       _%proc157660%_
       _%rebind?157642%_))
    (let* ((_%klass157596%_ eqv-hash-table::t)
           (_%id157599%_ 'HashTable::ref)
           (_%proc157602%_ eqv-table-ref)
           (_%rebind?157605%_ '#f)
           (_%id157610%_ _%id157599%_)
           (_%proc157623%_ _%proc157602%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157596%_
       _%id157610%_
       _%proc157623%_
       _%rebind?157605%_))
    (let* ((_%klass157559%_ eqv-hash-table::t)
           (_%id157562%_ 'HashTable::set!)
           (_%proc157565%_ eqv-table-set!)
           (_%rebind?157568%_ '#f)
           (_%id157573%_ _%id157562%_)
           (_%proc157586%_ _%proc157565%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157559%_
       _%id157573%_
       _%proc157586%_
       _%rebind?157568%_))
    (let* ((_%klass157522%_ eqv-hash-table::t)
           (_%id157525%_ 'HashTable::update!)
           (_%proc157528%_ eqv-table-update!)
           (_%rebind?157531%_ '#f)
           (_%id157536%_ _%id157525%_)
           (_%proc157549%_ _%proc157528%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157522%_
       _%id157536%_
       _%proc157549%_
       _%rebind?157531%_))
    (let* ((_%klass157485%_ eqv-hash-table::t)
           (_%id157488%_ 'HashTable::delete!)
           (_%proc157491%_ eqv-table-delete!)
           (_%rebind?157494%_ '#f)
           (_%id157499%_ _%id157488%_)
           (_%proc157512%_ _%proc157491%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157485%_
       _%id157499%_
       _%proc157512%_
       _%rebind?157494%_))
    (let* ((_%klass157448%_ symbol-hash-table::t)
           (_%id157451%_ 'HashTable::ref)
           (_%proc157454%_ symbolic-table-ref)
           (_%rebind?157457%_ '#f)
           (_%id157462%_ _%id157451%_)
           (_%proc157475%_ _%proc157454%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157448%_
       _%id157462%_
       _%proc157475%_
       _%rebind?157457%_))
    (let* ((_%klass157411%_ symbol-hash-table::t)
           (_%id157414%_ 'HashTable::set!)
           (_%proc157417%_ symbolic-table-set!)
           (_%rebind?157420%_ '#f)
           (_%id157425%_ _%id157414%_)
           (_%proc157438%_ _%proc157417%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157411%_
       _%id157425%_
       _%proc157438%_
       _%rebind?157420%_))
    (let* ((_%klass157374%_ symbol-hash-table::t)
           (_%id157377%_ 'HashTable::update!)
           (_%proc157380%_ symbolic-table-update!)
           (_%rebind?157383%_ '#f)
           (_%id157388%_ _%id157377%_)
           (_%proc157401%_ _%proc157380%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157374%_
       _%id157388%_
       _%proc157401%_
       _%rebind?157383%_))
    (let* ((_%klass157337%_ symbol-hash-table::t)
           (_%id157340%_ 'HashTable::delete!)
           (_%proc157343%_ symbolic-table-delete!)
           (_%rebind?157346%_ '#f)
           (_%id157351%_ _%id157340%_)
           (_%proc157364%_ _%proc157343%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157337%_
       _%id157351%_
       _%proc157364%_
       _%rebind?157346%_))
    (let* ((_%klass157300%_ string-hash-table::t)
           (_%id157303%_ 'HashTable::ref)
           (_%proc157306%_ string-table-ref)
           (_%rebind?157309%_ '#f)
           (_%id157314%_ _%id157303%_)
           (_%proc157327%_ _%proc157306%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157300%_
       _%id157314%_
       _%proc157327%_
       _%rebind?157309%_))
    (let* ((_%klass157263%_ string-hash-table::t)
           (_%id157266%_ 'HashTable::set!)
           (_%proc157269%_ string-table-set!)
           (_%rebind?157272%_ '#f)
           (_%id157277%_ _%id157266%_)
           (_%proc157290%_ _%proc157269%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157263%_
       _%id157277%_
       _%proc157290%_
       _%rebind?157272%_))
    (let* ((_%klass157226%_ string-hash-table::t)
           (_%id157229%_ 'HashTable::update!)
           (_%proc157232%_ string-table-update!)
           (_%rebind?157235%_ '#f)
           (_%id157240%_ _%id157229%_)
           (_%proc157253%_ _%proc157232%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157226%_
       _%id157240%_
       _%proc157253%_
       _%rebind?157235%_))
    (let* ((_%klass157189%_ string-hash-table::t)
           (_%id157192%_ 'HashTable::delete!)
           (_%proc157195%_ string-table-delete!)
           (_%rebind?157198%_ '#f)
           (_%id157203%_ _%id157192%_)
           (_%proc157216%_ _%proc157195%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157189%_
       _%id157203%_
       _%proc157216%_
       _%rebind?157198%_))
    (let* ((_%klass157152%_ immediate-hash-table::t)
           (_%id157155%_ 'HashTable::ref)
           (_%proc157158%_ immediate-table-ref)
           (_%rebind?157161%_ '#f)
           (_%id157166%_ _%id157155%_)
           (_%proc157179%_ _%proc157158%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157152%_
       _%id157166%_
       _%proc157179%_
       _%rebind?157161%_))
    (let* ((_%klass157115%_ immediate-hash-table::t)
           (_%id157118%_ 'HashTable::set!)
           (_%proc157121%_ immediate-table-set!)
           (_%rebind?157124%_ '#f)
           (_%id157129%_ _%id157118%_)
           (_%proc157142%_ _%proc157121%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157115%_
       _%id157129%_
       _%proc157142%_
       _%rebind?157124%_))
    (let* ((_%klass157078%_ immediate-hash-table::t)
           (_%id157081%_ 'HashTable::update!)
           (_%proc157084%_ immediate-table-update!)
           (_%rebind?157087%_ '#f)
           (_%id157092%_ _%id157081%_)
           (_%proc157105%_ _%proc157084%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157078%_
       _%id157092%_
       _%proc157105%_
       _%rebind?157087%_))
    (let* ((_%klass157041%_ immediate-hash-table::t)
           (_%id157044%_ 'HashTable::delete!)
           (_%proc157047%_ immediate-table-delete!)
           (_%rebind?157050%_ '#f)
           (_%id157055%_ _%id157044%_)
           (_%proc157068%_ _%proc157047%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157041%_
       _%id157055%_
       _%proc157068%_
       _%rebind?157050%_))
    (let* ((_%klass157004%_ gc-hash-table::t)
           (_%id157007%_ 'HashTable::ref)
           (_%proc157010%_ gc-table-ref)
           (_%rebind?157013%_ '#f)
           (_%id157018%_ _%id157007%_)
           (_%proc157031%_ _%proc157010%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157004%_
       _%id157018%_
       _%proc157031%_
       _%rebind?157013%_))
    (let* ((_%klass156967%_ gc-hash-table::t)
           (_%id156970%_ 'HashTable::set!)
           (_%proc156973%_ gc-table-set!)
           (_%rebind?156976%_ '#f)
           (_%id156981%_ _%id156970%_)
           (_%proc156994%_ _%proc156973%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156967%_
       _%id156981%_
       _%proc156994%_
       _%rebind?156976%_))
    (let* ((_%klass156930%_ gc-hash-table::t)
           (_%id156933%_ 'HashTable::update!)
           (_%proc156936%_ gc-table-update!)
           (_%rebind?156939%_ '#f)
           (_%id156944%_ _%id156933%_)
           (_%proc156957%_ _%proc156936%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156930%_
       _%id156944%_
       _%proc156957%_
       _%rebind?156939%_))
    (let* ((_%klass156893%_ gc-hash-table::t)
           (_%id156896%_ 'HashTable::delete!)
           (_%proc156899%_ gc-table-delete!)
           (_%rebind?156902%_ '#f)
           (_%id156907%_ _%id156896%_)
           (_%proc156920%_ _%proc156899%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156893%_
       _%id156907%_
       _%proc156920%_
       _%rebind?156902%_))
    (let* ((_%klass156856%_ gc-hash-table::t)
           (_%id156859%_ 'HashTable::for-each)
           (_%proc156862%_ gc-table-for-each)
           (_%rebind?156865%_ '#f)
           (_%id156870%_ _%id156859%_)
           (_%proc156883%_ _%proc156862%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156856%_
       _%id156870%_
       _%proc156883%_
       _%rebind?156865%_))
    (let* ((_%klass156819%_ gc-hash-table::t)
           (_%id156822%_ 'HashTable::length)
           (_%proc156825%_ gc-table-length)
           (_%rebind?156828%_ '#f)
           (_%id156833%_ _%id156822%_)
           (_%proc156846%_ _%proc156825%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156819%_
       _%id156833%_
       _%proc156846%_
       _%rebind?156828%_))
    (let* ((_%klass156782%_ gc-hash-table::t)
           (_%id156785%_ 'HashTable::copy)
           (_%proc156788%_ gc-table-copy)
           (_%rebind?156791%_ '#f)
           (_%id156796%_ _%id156785%_)
           (_%proc156809%_ _%proc156788%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156782%_
       _%id156796%_
       _%proc156809%_
       _%rebind?156791%_))
    (let* ((_%klass156745%_ gc-hash-table::t)
           (_%id156748%_ 'HashTable::clear!)
           (_%proc156751%_ gc-table-clear!)
           (_%rebind?156754%_ '#f)
           (_%id156759%_ _%id156748%_)
           (_%proc156772%_ _%proc156751%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156745%_
       _%id156759%_
       _%proc156772%_
       _%rebind?156754%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref148006%_
      (lambda (_%self156666%_ _%key156668%_ _%default156669%_)
        (let* ((_%self156672%_ _%self156666%_)
               (_%key156681%_ _%key156668%_)
               (_%default156689%_ _%default156669%_))
          (let ((_%h156698%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156672%_ '1 '#f '#f)))
                (_%l156700%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156672%_ '2 '#f '#f))))
            (let ((__tmp160506
                   (lambda ()
                     (let ((_%self146458156704%_ _%l156700%_))
                       (declare (not safe))
                       (let ((_%object156707156712%_
                              (##unchecked-structure-ref
                               _%self146458156704%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method156708156713%_
                              (##unchecked-structure-ref
                               _%self146458156704%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method156708156713%_ _%object156707156712%_)))))
                  (__tmp160505
                   (lambda ()
                     (let* ((_%self145553156716%_ _%h156698%_)
                            (_%key156719%_ _%key156681%_)
                            (_%default156722%_ _%default156689%_))
                       (declare (not safe))
                       (let ((_%object156725156730%_
                              (##unchecked-structure-ref
                               _%self145553156716%_
                               '1
                               '#f
                               'ref))
                             (_%method156726156731%_
                              (##unchecked-structure-ref
                               _%self145553156716%_
                               '7
                               '#f
                               'ref)))
                         (_%method156726156731%_
                          _%object156725156730%_
                          _%key156719%_
                          _%default156722%_)))))
                  (__tmp160504
                   (lambda ()
                     (let ((_%self146749156734%_ _%l156700%_))
                       (declare (not safe))
                       (let ((_%object156737156742%_
                              (##unchecked-structure-ref
                               _%self146749156734%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method156738156743%_
                              (##unchecked-structure-ref
                               _%self146749156734%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method156738156743%_ _%object156737156742%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp160506 __tmp160505 __tmp160504))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref148006%_
       '#f))
    (define _%locked-hash-table::HashTable::set!148008%_
      (lambda (_%self156464%_ _%key156466%_ _%value156467%_)
        (let* ((_%self156470%_ _%self156464%_)
               (_%key156479%_ _%key156466%_)
               (_%value156487%_ _%value156467%_))
          (let ((_%h156496%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156470%_ '1 '#f '#f)))
                (_%l156498%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156470%_ '2 '#f '#f))))
            (let ((__tmp160509
                   (lambda ()
                     (let ((_%self147040156502%_ _%l156498%_))
                       (declare (not safe))
                       (let ((_%object156505156510%_
                              (##unchecked-structure-ref
                               _%self147040156502%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method156506156511%_
                              (##unchecked-structure-ref
                               _%self147040156502%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method156506156511%_ _%object156505156510%_)))))
                  (__tmp160508
                   (lambda ()
                     (let* ((_%self145848156514%_ _%h156496%_)
                            (_%key156517%_ _%key156479%_)
                            (_%value156520%_ _%value156487%_))
                       (declare (not safe))
                       (let ((_%object156523156528%_
                              (##unchecked-structure-ref
                               _%self145848156514%_
                               '1
                               '#f
                               'set!))
                             (_%method156524156529%_
                              (##unchecked-structure-ref
                               _%self145848156514%_
                               '8
                               '#f
                               'set!)))
                         (_%method156524156529%_
                          _%object156523156528%_
                          _%key156517%_
                          _%value156520%_)))))
                  (__tmp160507
                   (lambda ()
                     (let ((_%self147331156532%_ _%l156498%_))
                       (declare (not safe))
                       (let ((_%object156535156540%_
                              (##unchecked-structure-ref
                               _%self147331156532%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method156536156541%_
                              (##unchecked-structure-ref
                               _%self147331156532%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method156536156541%_ _%object156535156540%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp160509 __tmp160508 __tmp160507))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!148008%_
       '#f))
    (define _%locked-hash-table::HashTable::update!148010%_
      (lambda (_%self156250%_ _%key156252%_ _%update156253%_ _%default156254%_)
        (let* ((_%self156257%_ _%self156250%_)
               (_%key156266%_ _%key156252%_)
               (_%update156274%_ _%update156253%_)
               (_%default156282%_ _%default156254%_))
          (let ((_%h156291%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156257%_ '1 '#f '#f)))
                (_%l156293%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156257%_ '2 '#f '#f))))
            (let ((__tmp160512
                   (lambda ()
                     (let ((_%self147040156297%_ _%l156293%_))
                       (declare (not safe))
                       (let ((_%object156300156305%_
                              (##unchecked-structure-ref
                               _%self147040156297%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method156301156306%_
                              (##unchecked-structure-ref
                               _%self147040156297%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method156301156306%_ _%object156300156305%_)))))
                  (__tmp160511
                   (lambda ()
                     (let* ((_%self146143156309%_ _%h156291%_)
                            (_%key156312%_ _%key156266%_)
                            (_%proc156315%_ _%update156274%_)
                            (_%default156318%_ _%default156282%_))
                       (declare (not safe))
                       (let ((_%object156321156326%_
                              (##unchecked-structure-ref
                               _%self146143156309%_
                               '1
                               '#f
                               'update!))
                             (_%method156322156327%_
                              (##unchecked-structure-ref
                               _%self146143156309%_
                               '9
                               '#f
                               'update!)))
                         (_%method156322156327%_
                          _%object156321156326%_
                          _%key156312%_
                          _%proc156315%_
                          _%default156318%_)))))
                  (__tmp160510
                   (lambda ()
                     (let ((_%self147331156330%_ _%l156293%_))
                       (declare (not safe))
                       (let ((_%object156333156338%_
                              (##unchecked-structure-ref
                               _%self147331156330%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method156334156339%_
                              (##unchecked-structure-ref
                               _%self147331156330%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method156334156339%_ _%object156333156338%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp160512 __tmp160511 __tmp160510))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!148010%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!148012%_
      (lambda (_%self156060%_ _%key156062%_)
        (let* ((_%self156065%_ _%self156060%_) (_%key156074%_ _%key156062%_))
          (let ((_%h156083%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156065%_ '1 '#f '#f)))
                (_%l156085%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156065%_ '2 '#f '#f))))
            (let ((__tmp160515
                   (lambda ()
                     (let ((_%self147040156089%_ _%l156085%_))
                       (declare (not safe))
                       (let ((_%object156092156097%_
                              (##unchecked-structure-ref
                               _%self147040156089%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method156093156098%_
                              (##unchecked-structure-ref
                               _%self147040156089%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method156093156098%_ _%object156092156097%_)))))
                  (__tmp160514
                   (lambda ()
                     (let* ((_%self144655156101%_ _%h156083%_)
                            (_%key156104%_ _%key156074%_))
                       (declare (not safe))
                       (let ((_%object156107156112%_
                              (##unchecked-structure-ref
                               _%self144655156101%_
                               '1
                               '#f
                               'delete!))
                             (_%method156108156113%_
                              (##unchecked-structure-ref
                               _%self144655156101%_
                               '4
                               '#f
                               'delete!)))
                         (_%method156108156113%_
                          _%object156107156112%_
                          _%key156104%_)))))
                  (__tmp160513
                   (lambda ()
                     (let ((_%self147331156116%_ _%l156085%_))
                       (declare (not safe))
                       (let ((_%object156119156124%_
                              (##unchecked-structure-ref
                               _%self147331156116%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method156120156125%_
                              (##unchecked-structure-ref
                               _%self147331156116%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method156120156125%_ _%object156119156124%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp160515 __tmp160514 __tmp160513))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!148012%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each148014%_
      (lambda (_%self155870%_ _%proc155872%_)
        (let* ((_%self155875%_ _%self155870%_) (_%proc155884%_ _%proc155872%_))
          (let ((_%h155893%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155875%_ '1 '#f '#f)))
                (_%l155895%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155875%_ '2 '#f '#f))))
            (let ((__tmp160518
                   (lambda ()
                     (let ((_%self146458155899%_ _%l155895%_))
                       (declare (not safe))
                       (let ((_%object155902155907%_
                              (##unchecked-structure-ref
                               _%self146458155899%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method155903155908%_
                              (##unchecked-structure-ref
                               _%self146458155899%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method155903155908%_ _%object155902155907%_)))))
                  (__tmp160517
                   (lambda ()
                     (let* ((_%self144948155911%_ _%h155893%_)
                            (_%proc155914%_ _%proc155884%_))
                       (declare (not safe))
                       (let ((_%object155917155922%_
                              (##unchecked-structure-ref
                               _%self144948155911%_
                               '1
                               '#f
                               'for-each))
                             (_%method155918155923%_
                              (##unchecked-structure-ref
                               _%self144948155911%_
                               '5
                               '#f
                               'for-each)))
                         (_%method155918155923%_
                          _%object155917155922%_
                          _%proc155914%_)))))
                  (__tmp160516
                   (lambda ()
                     (let ((_%self146749155926%_ _%l155895%_))
                       (declare (not safe))
                       (let ((_%object155929155934%_
                              (##unchecked-structure-ref
                               _%self146749155926%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method155930155935%_
                              (##unchecked-structure-ref
                               _%self146749155926%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method155930155935%_ _%object155929155934%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp160518 __tmp160517 __tmp160516))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each148014%_
       '#f))
    (define _%locked-hash-table::HashTable::length148016%_
      (lambda (_%self155685%_)
        (let ((_%self155689%_ _%self155685%_))
          (let ((_%h155699%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155689%_ '1 '#f '#f)))
                (_%l155701%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155689%_ '2 '#f '#f))))
            ((lambda (_%g155703155705%_)
               (let ((_%val155708%_ _%g155703155705%_))
                 (if (fixnum? _%val155708%_)
                     _%val155708%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val155708%_)
                       '#!void))))
             (let ((__tmp160521
                    (lambda ()
                      (let ((_%self146458155712%_ _%l155701%_))
                        (declare (not safe))
                        (let ((_%object155715155720%_
                               (##unchecked-structure-ref
                                _%self146458155712%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method155716155721%_
                               (##unchecked-structure-ref
                                _%self146458155712%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method155716155721%_ _%object155715155720%_)))))
                   (__tmp160520
                    (lambda ()
                      (let ((_%self145259155724%_ _%h155699%_))
                        (declare (not safe))
                        (let ((_%object155727155732%_
                               (##unchecked-structure-ref
                                _%self145259155724%_
                                '1
                                '#f
                                'length))
                              (_%method155728155733%_
                               (##unchecked-structure-ref
                                _%self145259155724%_
                                '6
                                '#f
                                'length)))
                          (_%method155728155733%_ _%object155727155732%_)))))
                   (__tmp160519
                    (lambda ()
                      (let ((_%self146749155736%_ _%l155701%_))
                        (declare (not safe))
                        (let ((_%object155739155744%_
                               (##unchecked-structure-ref
                                _%self146749155736%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method155740155745%_
                               (##unchecked-structure-ref
                                _%self146749155736%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method155740155745%_ _%object155739155744%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp160521 __tmp160520 __tmp160519)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length148016%_
       '#f))
    (define _%locked-hash-table::HashTable::copy148018%_
      (lambda (_%self155504%_)
        (let ((_%self155508%_ _%self155504%_))
          (let ((_%h155518%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155508%_ '1 '#f '#f)))
                (_%l155520%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155508%_ '2 '#f '#f))))
            (let ((_%$obj155559%_
                   (let ((__tmp160524
                          (lambda ()
                            (let ((_%self146458155524%_ _%l155520%_))
                              (declare (not safe))
                              (let ((_%object155527155532%_
                                     (##unchecked-structure-ref
                                      _%self146458155524%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method155528155533%_
                                     (##unchecked-structure-ref
                                      _%self146458155524%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method155528155533%_
                                 _%object155527155532%_)))))
                         (__tmp160523
                          (lambda ()
                            (let ((_%self144361155536%_ _%h155518%_))
                              (declare (not safe))
                              (let ((_%object155539155544%_
                                     (##unchecked-structure-ref
                                      _%self144361155536%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method155540155545%_
                                     (##unchecked-structure-ref
                                      _%self144361155536%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method155540155545%_
                                 _%object155539155544%_)))))
                         (__tmp160522
                          (lambda ()
                            (let ((_%self146749155548%_ _%l155520%_))
                              (declare (not safe))
                              (let ((_%object155551155556%_
                                     (##unchecked-structure-ref
                                      _%self146749155548%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method155552155557%_
                                     (##unchecked-structure-ref
                                      _%self146749155548%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method155552155557%_
                                 _%object155551155556%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp160524 __tmp160523 __tmp160522))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj155559%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj155559%_)))
                       '#t)
                  _%$obj155559%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj155559%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy148018%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!148020%_
      (lambda (_%self155326%_)
        (let ((_%self155330%_ _%self155326%_))
          (let ((_%h155340%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155330%_ '1 '#f '#f)))
                (_%l155342%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155330%_ '2 '#f '#f))))
            (let ((__tmp160527
                   (lambda ()
                     (let ((_%self147040155346%_ _%l155342%_))
                       (declare (not safe))
                       (let ((_%object155349155354%_
                              (##unchecked-structure-ref
                               _%self147040155346%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method155350155355%_
                              (##unchecked-structure-ref
                               _%self147040155346%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method155350155355%_ _%object155349155354%_)))))
                  (__tmp160526
                   (lambda ()
                     (let ((_%self144069155358%_ _%h155340%_))
                       (declare (not safe))
                       (let ((_%object155361155366%_
                              (##unchecked-structure-ref
                               _%self144069155358%_
                               '1
                               '#f
                               'clear!))
                             (_%method155362155367%_
                              (##unchecked-structure-ref
                               _%self144069155358%_
                               '2
                               '#f
                               'clear!)))
                         (_%method155362155367%_ _%object155361155366%_)))))
                  (__tmp160525
                   (lambda ()
                     (let ((_%self147331155370%_ _%l155342%_))
                       (declare (not safe))
                       (let ((_%object155373155378%_
                              (##unchecked-structure-ref
                               _%self147331155370%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method155374155379%_
                              (##unchecked-structure-ref
                               _%self147331155370%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method155374155379%_ _%object155373155378%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp160527 __tmp160526 __tmp160525))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!148020%_
       '#f))
    (let* ((_%klass155166%_ (macro-type-mutex))
           (_%id155169%_ 'Locker::read-lock!)
           (_%proc155172%_ mutex-lock!)
           (_%rebind?155175%_ '#f)
           (_%id155180%_ _%id155169%_)
           (_%proc155193%_ _%proc155172%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155166%_
       _%id155180%_
       _%proc155193%_
       _%rebind?155175%_))
    (let* ((_%klass155129%_ (macro-type-mutex))
           (_%id155132%_ 'Locker::read-unlock!)
           (_%proc155135%_ mutex-unlock!)
           (_%rebind?155138%_ '#f)
           (_%id155143%_ _%id155132%_)
           (_%proc155156%_ _%proc155135%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155129%_
       _%id155143%_
       _%proc155156%_
       _%rebind?155138%_))
    (let* ((_%klass155092%_ (macro-type-mutex))
           (_%id155095%_ 'Locker::write-lock!)
           (_%proc155098%_ mutex-lock!)
           (_%rebind?155101%_ '#f)
           (_%id155106%_ _%id155095%_)
           (_%proc155119%_ _%proc155098%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155092%_
       _%id155106%_
       _%proc155119%_
       _%rebind?155101%_))
    (let* ((_%klass155055%_ (macro-type-mutex))
           (_%id155058%_ 'Locker::write-unlock!)
           (_%proc155061%_ mutex-unlock!)
           (_%rebind?155064%_ '#f)
           (_%id155069%_ _%id155058%_)
           (_%proc155082%_ _%proc155061%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155055%_
       _%id155069%_
       _%proc155082%_
       _%rebind?155064%_))
    (define _%checked-hash-table::HashTable::ref148231%_
      (lambda (_%self154996%_ _%key154997%_ _%default154998%_)
        (let* ((_%self155001%_ _%self154996%_)
               (_%key155010%_ _%key154997%_)
               (_%default155018%_ _%default154998%_))
          (declare (not safe))
          (let ((_%h155029%_
                 (##unchecked-structure-ref _%self155001%_ '1 '#f '#f))
                (_%key?155031%_
                 (##unchecked-structure-ref _%self155001%_ '2 '#f '#f)))
            (if ((lambda (_%key?155034%_ _%key155035%_ _%default155036%_)
                   (_%key?155034%_ _%key155035%_))
                 _%key?155031%_
                 _%key155010%_
                 _%default155018%_)
                (let* ((_%self145553155038%_ _%h155029%_)
                       (_%key155041%_ _%key155010%_)
                       (_%default155044%_ _%default155018%_))
                  (declare (not safe))
                  (let ((_%object155047155052%_
                         (##unchecked-structure-ref
                          _%self145553155038%_
                          '1
                          '#f
                          'ref))
                        (_%method155048155053%_
                         (##unchecked-structure-ref
                          _%self145553155038%_
                          '7
                          '#f
                          'ref)))
                    (_%method155048155053%_
                     _%object155047155052%_
                     _%key155041%_
                     _%default155044%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key155010%_ (cons _%default155018%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref148231%_
       '#f))
    (define _%checked-hash-table::HashTable::set!148233%_
      (lambda (_%self154814%_ _%key154815%_ _%value154816%_)
        (let* ((_%self154819%_ _%self154814%_)
               (_%key154828%_ _%key154815%_)
               (_%value154836%_ _%value154816%_))
          (declare (not safe))
          (let ((_%h154847%_
                 (##unchecked-structure-ref _%self154819%_ '1 '#f '#f))
                (_%key?154849%_
                 (##unchecked-structure-ref _%self154819%_ '2 '#f '#f)))
            (if ((lambda (_%key?154852%_ _%key154853%_ _%value154854%_)
                   (_%key?154852%_ _%key154853%_))
                 _%key?154849%_
                 _%key154828%_
                 _%value154836%_)
                (let* ((_%self145848154856%_ _%h154847%_)
                       (_%key154859%_ _%key154828%_)
                       (_%value154862%_ _%value154836%_))
                  (declare (not safe))
                  (let ((_%object154865154870%_
                         (##unchecked-structure-ref
                          _%self145848154856%_
                          '1
                          '#f
                          'set!))
                        (_%method154866154871%_
                         (##unchecked-structure-ref
                          _%self145848154856%_
                          '8
                          '#f
                          'set!)))
                    (_%method154866154871%_
                     _%object154865154870%_
                     _%key154859%_
                     _%value154862%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key154828%_ (cons _%value154836%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!148233%_
       '#f))
    (define _%checked-hash-table::HashTable::update!148235%_
      (lambda (_%self154619%_ _%key154620%_ _%update154621%_ _%default154622%_)
        (let* ((_%self154625%_ _%self154619%_)
               (_%key154634%_ _%key154620%_)
               (_%update154642%_ _%update154621%_)
               (_%default154650%_ _%default154622%_))
          (declare (not safe))
          (let ((_%h154661%_
                 (##unchecked-structure-ref _%self154625%_ '1 '#f '#f))
                (_%key?154663%_
                 (##unchecked-structure-ref _%self154625%_ '2 '#f '#f)))
            (if ((lambda (_%key?154666%_
                          _%key154667%_
                          _%update154668%_
                          _%default154669%_)
                   (_%key?154666%_ _%key154667%_))
                 _%key?154663%_
                 _%key154634%_
                 _%update154642%_
                 _%default154650%_)
                (let* ((_%self146143154671%_ _%h154661%_)
                       (_%key154674%_ _%key154634%_)
                       (_%proc154677%_ _%update154642%_)
                       (_%default154680%_ _%default154650%_))
                  (declare (not safe))
                  (let ((_%object154683154688%_
                         (##unchecked-structure-ref
                          _%self146143154671%_
                          '1
                          '#f
                          'update!))
                        (_%method154684154689%_
                         (##unchecked-structure-ref
                          _%self146143154671%_
                          '9
                          '#f
                          'update!)))
                    (_%method154684154689%_
                     _%object154683154688%_
                     _%key154674%_
                     _%proc154677%_
                     _%default154680%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key154634%_
                         (cons _%update154642%_ (cons _%default154650%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!148235%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!148237%_
      (lambda (_%self154450%_ _%key154451%_)
        (let* ((_%self154454%_ _%self154450%_) (_%key154463%_ _%key154451%_))
          (declare (not safe))
          (let ((_%h154474%_
                 (##unchecked-structure-ref _%self154454%_ '1 '#f '#f))
                (_%key?154476%_
                 (##unchecked-structure-ref _%self154454%_ '2 '#f '#f)))
            (if ((lambda (_%key?154479%_ _%key154480%_)
                   (_%key?154479%_ _%key154480%_))
                 _%key?154476%_
                 _%key154463%_)
                (let* ((_%self144655154482%_ _%h154474%_)
                       (_%key154485%_ _%key154463%_))
                  (declare (not safe))
                  (let ((_%object154488154493%_
                         (##unchecked-structure-ref
                          _%self144655154482%_
                          '1
                          '#f
                          'delete!))
                        (_%method154489154494%_
                         (##unchecked-structure-ref
                          _%self144655154482%_
                          '4
                          '#f
                          'delete!)))
                    (_%method154489154494%_
                     _%object154488154493%_
                     _%key154485%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key154463%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!148237%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each148239%_
      (lambda (_%self154281%_ _%proc154282%_)
        (let* ((_%self154285%_ _%self154281%_) (_%proc154294%_ _%proc154282%_))
          (declare (not safe))
          (let ((_%h154305%_
                 (##unchecked-structure-ref _%self154285%_ '1 '#f '#f))
                (_%key?154307%_
                 (##unchecked-structure-ref _%self154285%_ '2 '#f '#f)))
            (if ((lambda (_%key?154310%_ _%proc154311%_) '#t)
                 _%key?154307%_
                 _%proc154294%_)
                (let* ((_%self144948154313%_ _%h154305%_)
                       (_%proc154316%_ _%proc154294%_))
                  (declare (not safe))
                  (let ((_%object154319154324%_
                         (##unchecked-structure-ref
                          _%self144948154313%_
                          '1
                          '#f
                          'for-each))
                        (_%method154320154325%_
                         (##unchecked-structure-ref
                          _%self144948154313%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154320154325%_
                     _%object154319154324%_
                     _%proc154316%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc154294%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each148239%_
       '#f))
    (define _%checked-hash-table::HashTable::length148241%_
      (lambda (_%self154127%_)
        (let ((_%self154130%_ _%self154127%_))
          (declare (not safe))
          (let ((_%h154142%_
                 (##unchecked-structure-ref _%self154130%_ '1 '#f '#f))
                (_%key?154144%_
                 (##unchecked-structure-ref _%self154130%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self145259154147%_ _%h154142%_))
                  (declare (not safe))
                  (let ((_%object154150154155%_
                         (##unchecked-structure-ref
                          _%self145259154147%_
                          '1
                          '#f
                          'length))
                        (_%method154151154156%_
                         (##unchecked-structure-ref
                          _%self145259154147%_
                          '6
                          '#f
                          'length)))
                    (_%method154151154156%_ _%object154150154155%_)))
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
       _%checked-hash-table::HashTable::length148241%_
       '#f))
    (define _%checked-hash-table::HashTable::copy148243%_
      (lambda (_%self153973%_)
        (let ((_%self153976%_ _%self153973%_))
          (declare (not safe))
          (let ((_%h153988%_
                 (##unchecked-structure-ref _%self153976%_ '1 '#f '#f))
                (_%key?153990%_
                 (##unchecked-structure-ref _%self153976%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self144361153993%_ _%h153988%_))
                  (declare (not safe))
                  (let ((_%object153996154001%_
                         (##unchecked-structure-ref
                          _%self144361153993%_
                          '1
                          '#f
                          'copy))
                        (_%method153997154002%_
                         (##unchecked-structure-ref
                          _%self144361153993%_
                          '3
                          '#f
                          'copy)))
                    (_%method153997154002%_ _%object153996154001%_)))
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
       _%checked-hash-table::HashTable::copy148243%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!148245%_
      (lambda (_%self153819%_)
        (let ((_%self153822%_ _%self153819%_))
          (declare (not safe))
          (let ((_%h153834%_
                 (##unchecked-structure-ref _%self153822%_ '1 '#f '#f))
                (_%key?153836%_
                 (##unchecked-structure-ref _%self153822%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self144069153839%_ _%h153834%_))
                  (declare (not safe))
                  (let ((_%object153842153847%_
                         (##unchecked-structure-ref
                          _%self144069153839%_
                          '1
                          '#f
                          'clear!))
                        (_%method153843153848%_
                         (##unchecked-structure-ref
                          _%self144069153839%_
                          '2
                          '#f
                          'clear!)))
                    (_%method153843153848%_ _%object153842153847%_)))
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
       _%checked-hash-table::HashTable::clear!148245%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table153689%_
               _%count153690%_
               _%free153691%_
               _%hash153692%_
               _%test153693%_
               _%seed153694%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table153689%_
           _%count153690%_
           _%free153691%_
           _%hash153692%_
           _%test153693%_
           _%seed153694%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords153099%_
               _%size-hint153089153100%_
               _%seed153090153101%_
               _%test153091153102%_
               _%hash153092153103%_
               _%lock153093153104%_
               _%check153094153105%_
               _%weak-keys153095153106%_
               _%weak-values153096153107%_)
        (let* ((_%size-hint153109%_
                (if (eq? _%size-hint153089153100%_ absent-value)
                    '#f
                    _%size-hint153089153100%_))
               (_%seed153111%_
                (if (eq? _%seed153090153101%_ absent-value)
                    '#f
                    _%seed153090153101%_))
               (_%test153113%_
                (if (eq? _%test153091153102%_ absent-value)
                    equal?
                    _%test153091153102%_))
               (_%hash153115%_
                (if (eq? _%hash153092153103%_ absent-value)
                    '#f
                    _%hash153092153103%_))
               (_%lock153117%_
                (if (eq? _%lock153093153104%_ absent-value)
                    '#f
                    _%lock153093153104%_))
               (_%check153119%_
                (if (eq? _%check153094153105%_ absent-value)
                    '#f
                    _%check153094153105%_))
               (_%weak-keys153121%_
                (if (eq? _%weak-keys153095153106%_ absent-value)
                    '#f
                    _%weak-keys153095153106%_))
               (_%weak-values153123%_
                (if (eq? _%weak-values153096153107%_ absent-value)
                    '#f
                    _%weak-values153096153107%_)))
          (letrec ((_%table-seed153126%_
                    (lambda ()
                      (if (fixnum? _%seed153111%_)
                          _%seed153111%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock153270%_
                    (lambda (_%ht153657%_)
                      (let ((_%ht153660%_ _%ht153657%_))
                        (if _%lock153117%_
                            (let ((_%$obj153672%_
                                   (let ((__tmp160528
                                          (let ((_%$obj153669%_
                                                 _%lock153117%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj153669%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj153669%_)))
                                                     '#t)
                                                _%$obj153669%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj153669%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht153660%_
                                      __tmp160528))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj153672%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj153672%_)))
                                       '#t)
                                  _%$obj153672%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj153672%_))))
                            _%ht153660%_))))
                   (_%wrap-lock153271%_
                    (lambda (_%ht153645%_)
                      (let ((_%ht153648%_ _%ht153645%_))
                        (_%__wrap-lock153270%_ _%ht153648%_))))
                   (_%__wrap-checked153393%_
                    (lambda (_%ht153629%_ _%implicit153630%_)
                      (let ((_%ht153633%_ _%ht153629%_))
                        (if _%check153119%_
                            (let ((_%$obj153642%_
                                   (let ((__tmp160529
                                          (if (procedure? _%check153119%_)
                                              _%check153119%_
                                              _%implicit153630%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht153633%_
                                      __tmp160529))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj153642%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj153642%_)))
                                       '#t)
                                  _%$obj153642%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj153642%_))))
                            _%ht153633%_))))
                   (_%wrap-checked153394%_
                    (lambda (_%ht153616%_ _%implicit153617%_)
                      (let ((_%ht153620%_ _%ht153616%_))
                        (_%__wrap-checked153393%_
                         _%ht153620%_
                         _%implicit153617%_))))
                   (_%make153395%_
                    (lambda (_%kons153564%_
                             _%key?153565%_
                             _%hash153566%_
                             _%test153567%_)
                      (let* ((_%size153570%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint153109%_)))
                             (_%table153572%_
                              (let ((__tmp160530 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size153570%_ __tmp160530)))
                             (_%ht153577%_
                              (let ((_%$obj153574%_
                                     (_%kons153564%_
                                      _%table153572%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size153570%_ '2))
                                      _%hash153566%_
                                      _%test153567%_
                                      (_%table-seed153126%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj153574%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj153574%_)))
                                         '#t)
                                    _%$obj153574%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj153574%_)))))
                             (_%ht153599%_
                              (let* ((_%ht153580%_ _%ht153577%_)
                                     (_%ht153584%_ _%ht153580%_))
                                (_%__wrap-lock153270%_ _%ht153584%_)))
                             (_%implicit153602%_ _%key?153565%_)
                             (_%ht153606%_ _%ht153599%_))
                        (_%__wrap-checked153393%_
                         _%ht153606%_
                         _%implicit153602%_))))
                   (_%make-gc-hash-table153396%_
                    (lambda ()
                      (let* ((_%ht153529%_
                              (let ((_%$obj153526%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint153109%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj153526%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj153526%_)))
                                         '#t)
                                    _%$obj153526%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj153526%_)))))
                             (_%ht153547%_
                              (let* ((_%ht153531%_ _%ht153529%_)
                                     (_%ht153535%_ _%ht153531%_))
                                (_%__wrap-lock153270%_ _%ht153535%_)))
                             (_%implicit153550%_ true)
                             (_%ht153554%_ _%ht153547%_))
                        (_%__wrap-checked153393%_
                         _%ht153554%_
                         _%implicit153550%_))))
                   (_%make-gambit-table153397%_
                    (lambda ()
                      (let* ((_%size153466%_
                              (let ((_%$e153463%_ _%size-hint153109%_))
                                (if _%$e153463%_
                                    _%$e153463%_
                                    (macro-absent-obj))))
                             (_%test153471%_
                              (let ((_%$e153468%_ _%test153113%_))
                                (if _%$e153468%_ _%$e153468%_ equal?)))
                             (_%hash153479%_
                              (let ((_%$e153473%_ _%hash153115%_))
                                (if _%$e153473%_
                                    _%$e153473%_
                                    (if (eq? _%test153471%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test153471%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht153484%_
                              (let ((_%$obj153481%_
                                     (make-table
                                      'size:
                                      _%size153466%_
                                      'test:
                                      _%test153471%_
                                      'hash:
                                      _%hash153479%_
                                      'weak-keys:
                                      _%weak-keys153121%_
                                      'weak-values:
                                      _%weak-values153123%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj153481%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj153481%_)))
                                         '#t)
                                    _%$obj153481%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj153481%_)))))
                             (_%ht153507%_
                              (let* ((_%ht153487%_ _%ht153484%_)
                                     (_%ht153491%_ _%ht153487%_))
                                (_%__wrap-lock153270%_ _%ht153491%_)))
                             (_%implicit153510%_ true)
                             (_%ht153514%_ _%ht153507%_))
                        (_%__wrap-checked153393%_
                         _%ht153514%_
                         _%implicit153510%_)))))
            (if (or _%weak-keys153121%_ _%weak-values153123%_)
                (_%make-gambit-table153397%_)
                (if (and (or (eq? _%test153113%_ eq?)
                             (eq? _%test153113%_ ##eq?))
                         (or (not _%hash153115%_)
                             (eq? _%hash153115%_ eq?-hash)
                             (eq? _%hash153115%_ eq-hash))
                         (not _%seed153111%_))
                    (_%make-gc-hash-table153396%_)
                    (if (and (or (eq? _%test153113%_ eq?)
                                 (eq? _%test153113%_ ##eq?))
                             (or (not _%hash153115%_)
                                 (eq? _%hash153115%_ eq?-hash)
                                 (eq? _%hash153115%_ eq-hash)))
                        (_%make153395%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test153113%_ eqv?)
                                     (eq? _%test153113%_ ##eqv?))
                                 (or (not _%hash153115%_)
                                     (eq? _%hash153115%_ eqv?-hash)
                                     (eq? _%hash153115%_ eqv-hash)))
                            (_%make153395%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test153113%_ eq?)
                                         (eq? _%test153113%_ ##eq?))
                                     (or (eq? _%hash153115%_ symbolic-hash)
                                         (eq? _%hash153115%_ ##symbol-hash)))
                                (_%make153395%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test153113%_ eq?)
                                             (eq? _%test153113%_ ##eq?))
                                         (eq? _%hash153115%_ immediate-hash))
                                    (_%make153395%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test153113%_ equal?)
                                                 (eq? _%test153113%_ ##equal?)
                                                 (eq? _%test153113%_ string=?)
                                                 (eq? _%test153113%_
                                                      ##string=?))
                                             (or (eq? _%hash153115%_
                                                      string-hash)
                                                 (eq? _%hash153115%_
                                                      ##string=?-hash)))
                                        (_%make153395%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test153113%_ equal?)
                                                 (not _%hash153115%_))
                                            (_%make153395%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test153113%_)
                                                (if (procedure? _%hash153115%_)
                                                    (_%make153395%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash153115%_
                                                     _%test153113%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash153115%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test153113%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords153679%_ . _%args153680%_)
        (apply make-hash-table__%
               _%@@keywords153679%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153679%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153679%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153679%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153679%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153679%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153679%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153679%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153679%_
                  'weak-values:
                  absent-value))
               _%args153680%_)))
    (define make-hash-table
      (lambda _%args153097153686%_
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
               _%args153097153686%_)))
    (define make-hash-table-eq
      (lambda _%args153086%_
        (apply make-hash-table 'test: eq? _%args153086%_)))
    (define make-hash-table-eqv
      (lambda _%args153084%_
        (apply make-hash-table 'test: eqv? _%args153084%_)))
    (define make-hash-table-symbolic
      (lambda _%args153082%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args153082%_)))
    (define make-hash-table-string
      (lambda _%args153080%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args153080%_)))
    (define make-hash-table-immediate
      (lambda _%args153078%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args153078%_)))
    (define list->hash-table
      (lambda (_%lst153075%_ . _%args153076%_)
        (list->hash-table!
         _%lst153075%_
         (apply make-hash-table
                'size:
                (length _%lst153075%_)
                _%args153076%_))))
    (define list->hash-table-eq
      (lambda (_%lst153072%_ . _%args153073%_)
        (list->hash-table!
         _%lst153072%_
         (apply make-hash-table-eq
                'size:
                (length _%lst153072%_)
                _%args153073%_))))
    (define list->hash-table-eqv
      (lambda (_%lst153069%_ . _%args153070%_)
        (list->hash-table!
         _%lst153069%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst153069%_)
                _%args153070%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst153066%_ . _%args153067%_)
        (list->hash-table!
         _%lst153066%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst153066%_)
                _%args153067%_))))
    (define list->hash-table-string
      (lambda (_%lst153063%_ . _%args153064%_)
        (list->hash-table!
         _%lst153063%_
         (apply make-hash-table-string
                'size:
                (length _%lst153063%_)
                _%args153064%_))))
    (define list->hash-table-immediate
      (lambda (_%lst153060%_ . _%args153061%_)
        (list->hash-table!
         _%lst153060%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst153060%_)
                _%args153061%_))))
    (define list->hash-table!
      (lambda (_%lst153011%_ _%h153012%_)
        (for-each
         (lambda (_%el153014%_)
           (let* ((_%el153015153022%_ _%el153014%_)
                  (_%E153017153025%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el153015153022%_
                              '([k . v])))
                     '#!void))
                  (_%K153018153048%_
                   (lambda (_%v153028%_ _%k153029%_)
                     (let* ((_%self145848153031%_ _%h153012%_)
                            (_%key153034%_ _%k153029%_)
                            (_%value153037%_ _%v153028%_))
                       (declare (not safe))
                       (let ((_%object153040153045%_
                              (##unchecked-structure-ref
                               _%self145848153031%_
                               '1
                               '#f
                               'set!))
                             (_%method153041153046%_
                              (##unchecked-structure-ref
                               _%self145848153031%_
                               '8
                               '#f
                               'set!)))
                         (_%method153041153046%_
                          _%object153040153045%_
                          _%key153034%_
                          _%value153037%_))))))
             (if (pair? _%el153015153022%_)
                 (let ((_%hd153019153051%_
                        (let ()
                          (declare (not safe))
                          (##car _%el153015153022%_)))
                       (_%tl153020153053%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el153015153022%_))))
                   (let* ((_%k153056%_ _%hd153019153051%_)
                          (_%v153058%_ _%tl153020153053%_))
                     (_%K153018153048%_ _%v153058%_ _%k153056%_)))
                 (_%E153017153025%_))))
         _%lst153011%_)
        _%h153012%_))
    (define plist->hash-table
      (lambda (_%lst153008%_ . _%args153009%_)
        (plist->hash-table!
         _%lst153008%_
         (apply make-hash-table
                'size:
                (length _%lst153008%_)
                _%args153009%_))))
    (define plist->hash-table-eq
      (lambda (_%lst153005%_ . _%args153006%_)
        (plist->hash-table!
         _%lst153005%_
         (apply make-hash-table-eq
                'size:
                (length _%lst153005%_)
                _%args153006%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst153002%_ . _%args153003%_)
        (plist->hash-table!
         _%lst153002%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst153002%_)
                _%args153003%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst152999%_ . _%args153000%_)
        (plist->hash-table!
         _%lst152999%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst152999%_)
                _%args153000%_))))
    (define plist->hash-table-string
      (lambda (_%lst152996%_ . _%args152997%_)
        (plist->hash-table!
         _%lst152996%_
         (apply make-hash-table-string
                'size:
                (length _%lst152996%_)
                _%args152997%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst152993%_ . _%args152994%_)
        (plist->hash-table!
         _%lst152993%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst152993%_)
                _%args152994%_))))
    (define plist->hash-table!
      (lambda (_%lst152916%_ _%h152917%_)
        (let _%loop152919%_ ((_%rest152921%_ _%lst152916%_))
          (let* ((_%rest152922152934%_ _%rest152921%_)
                 (_%else152925152942%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst152916%_)))))
            (let ((_%K152928152974%_
                   (lambda (_%rest152953%_ _%val152954%_ _%key152955%_)
                     (let* ((_%self145848152957%_ _%h152917%_)
                            (_%key152960%_ _%key152955%_)
                            (_%value152963%_ _%val152954%_))
                       (declare (not safe))
                       (let ((_%object152966152971%_
                              (##unchecked-structure-ref
                               _%self145848152957%_
                               '1
                               '#f
                               'set!))
                             (_%method152967152972%_
                              (##unchecked-structure-ref
                               _%self145848152957%_
                               '8
                               '#f
                               'set!)))
                         (_%method152967152972%_
                          _%object152966152971%_
                          _%key152960%_
                          _%value152963%_)))
                     (_%loop152919%_ _%rest152953%_)))
                  (_%K152927152947%_ (lambda () _%h152917%_)))
              (let ((_%try-match152924152950%_
                     (lambda ()
                       (if (null? _%rest152922152934%_)
                           (_%K152927152947%_)
                           (_%else152925152942%_)))))
                (if (pair? _%rest152922152934%_)
                    (let ((_%tl152930152979%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest152922152934%_)))
                          (_%hd152929152977%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest152922152934%_))))
                      (if (pair? _%tl152930152979%_)
                          (let ((_%tl152932152986%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl152930152979%_)))
                                (_%hd152931152984%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl152930152979%_))))
                            (let ((_%key152982%_ _%hd152929152977%_)
                                  (_%val152989%_ _%hd152931152984%_)
                                  (_%rest152991%_ _%tl152932152986%_))
                              (_%K152928152974%_
                               _%rest152991%_
                               _%val152989%_
                               _%key152982%_)))
                          (_%else152925152942%_)))
                    (_%try-match152924152950%_))))))))
    (define __hash-length
      (lambda (_%h152865%_)
        (let* ((_%h152868%_ _%h152865%_)
               (_%self145260152877%_ _%h152868%_)
               (_%self145260152884%_
                (let ((_%$obj152881%_ _%self145260152877%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152881%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152881%_)))
                           '#t)
                      _%$obj152881%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152881%_)))))
               (_%self145260152886%_ _%self145260152884%_))
          (if __DEBUG
              (let ((_%val152906%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object152898152903%_
                              (##unchecked-structure-ref
                               _%self145260152886%_
                               '1
                               '#f
                               'length))
                             (_%method152899152904%_
                              (##unchecked-structure-ref
                               _%self145260152886%_
                               '6
                               '#f
                               'length)))
                         (_%method152899152904%_ _%object152898152903%_)))))
                (if (fixnum? _%val152906%_)
                    _%val152906%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val152906%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object152908152913%_
                       (##unchecked-structure-ref
                        _%self145260152886%_
                        '1
                        '#f
                        'length))
                      (_%method152909152914%_
                       (##unchecked-structure-ref
                        _%self145260152886%_
                        '6
                        '#f
                        'length)))
                  (_%method152909152914%_ _%object152908152913%_)))))))
    (define hash-length
      (lambda (_%h148520%_)
        (let* ((_%h148526%_
                (let ((_%$obj148523%_ _%h148520%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148523%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148523%_)))
                           '#t)
                      _%$obj148523%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148523%_)))))
               (_%h148528%_ _%h148526%_))
          (__hash-length _%h148528%_))))
    (define __hash-ref__%
      (lambda (_%h152793%_ _%key152794%_ _%default152795%_)
        (let* ((_%h152798%_ _%h152793%_)
               (_%result152851%_
                (let* ((_%self145554152807%_ _%h152798%_)
                       (_%key152810%_ _%key152794%_)
                       (_%default152813%_ _%default152795%_)
                       (_%self145554152820%_
                        (let ((_%$obj152817%_ _%self145554152807%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj152817%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj152817%_)))
                                   '#t)
                              _%$obj152817%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj152817%_)))))
                       (_%self145554152822%_ _%self145554152820%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object152836152841%_
                               (##unchecked-structure-ref
                                _%self145554152822%_
                                '1
                                '#f
                                'ref))
                              (_%method152837152842%_
                               (##unchecked-structure-ref
                                _%self145554152822%_
                                '7
                                '#f
                                'ref)))
                          (_%method152837152842%_
                           _%object152836152841%_
                           _%key152810%_
                           _%default152813%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object152843152848%_
                               (##unchecked-structure-ref
                                _%self145554152822%_
                                '1
                                '#f
                                'ref))
                              (_%method152844152849%_
                               (##unchecked-structure-ref
                                _%self145554152822%_
                                '7
                                '#f
                                'ref)))
                          (_%method152844152849%_
                           _%object152843152848%_
                           _%key152810%_
                           _%default152813%_)))))))
          (if (eq? _%result152851%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h152798%_
               'key:
               _%key152794%_)
              _%result152851%_))))
    (define __hash-ref__0
      (lambda (_%h152856%_ _%key152857%_)
        (let ((_%default152859%_ absent-obj))
          (__hash-ref__% _%h152856%_ _%key152857%_ _%default152859%_))))
    (define __hash-ref
      (lambda _g160531_
        (let ((_g160532_ (let () (declare (not safe)) (##length _g160531_))))
          (cond ((let () (declare (not safe)) (##fx= _g160532_ 2))
                 (apply __hash-ref__0 _g160531_))
                ((let () (declare (not safe)) (##fx= _g160532_ 3))
                 (apply __hash-ref__% _g160531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g160531_))))))
    (define hash-ref__%
      (lambda (_%h148659%_ _%key148660%_ _%default148661%_)
        (let* ((_%h148667%_
                (let ((_%$obj148664%_ _%h148659%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148664%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148664%_)))
                           '#t)
                      _%$obj148664%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148664%_)))))
               (_%h148669%_ _%h148667%_))
          (__hash-ref__% _%h148669%_ _%key148660%_ _%default148661%_))))
    (define hash-ref__0
      (lambda (_%h148682%_ _%key148683%_)
        (let ((_%default148685%_ absent-obj))
          (hash-ref__% _%h148682%_ _%key148683%_ _%default148685%_))))
    (define hash-ref
      (lambda _g160533_
        (let ((_g160534_ (let () (declare (not safe)) (##length _g160533_))))
          (cond ((let () (declare (not safe)) (##fx= _g160534_ 2))
                 (apply hash-ref__0 _g160533_))
                ((let () (declare (not safe)) (##fx= _g160534_ 3))
                 (apply hash-ref__% _g160533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g160533_))))))
    (define __hash-get
      (lambda (_%h152735%_ _%key152736%_)
        (let* ((_%h152739%_ _%h152735%_)
               (_%self145554152748%_ _%h152739%_)
               (_%key152751%_ _%key152736%_)
               (_%default152754%_ '#f)
               (_%self145554152761%_
                (let ((_%$obj152758%_ _%self145554152748%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152758%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152758%_)))
                           '#t)
                      _%$obj152758%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152758%_)))))
               (_%self145554152763%_ _%self145554152761%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object152777152782%_
                       (##unchecked-structure-ref
                        _%self145554152763%_
                        '1
                        '#f
                        'ref))
                      (_%method152778152783%_
                       (##unchecked-structure-ref
                        _%self145554152763%_
                        '7
                        '#f
                        'ref)))
                  (_%method152778152783%_
                   _%object152777152782%_
                   _%key152751%_
                   _%default152754%_)))
              (let ()
                (declare (not safe))
                (let ((_%object152784152789%_
                       (##unchecked-structure-ref
                        _%self145554152763%_
                        '1
                        '#f
                        'ref))
                      (_%method152785152790%_
                       (##unchecked-structure-ref
                        _%self145554152763%_
                        '7
                        '#f
                        'ref)))
                  (_%method152785152790%_
                   _%object152784152789%_
                   _%key152751%_
                   _%default152754%_)))))))
    (define hash-get
      (lambda (_%h148811%_ _%key148812%_)
        (let* ((_%h148818%_
                (let ((_%$obj148815%_ _%h148811%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148815%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148815%_)))
                           '#t)
                      _%$obj148815%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148815%_)))))
               (_%h148820%_ _%h148818%_))
          (__hash-get _%h148820%_ _%key148812%_))))
    (define __hash-put!
      (lambda (_%h152677%_ _%key152678%_ _%value152679%_)
        (let* ((_%h152682%_ _%h152677%_)
               (_%self145849152691%_ _%h152682%_)
               (_%key152694%_ _%key152678%_)
               (_%value152697%_ _%value152679%_)
               (_%self145849152704%_
                (let ((_%$obj152701%_ _%self145849152691%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152701%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152701%_)))
                           '#t)
                      _%$obj152701%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152701%_)))))
               (_%self145849152706%_ _%self145849152704%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object152720152725%_
                       (##unchecked-structure-ref
                        _%self145849152706%_
                        '1
                        '#f
                        'set!))
                      (_%method152721152726%_
                       (##unchecked-structure-ref
                        _%self145849152706%_
                        '8
                        '#f
                        'set!)))
                  (_%method152721152726%_
                   _%object152720152725%_
                   _%key152694%_
                   _%value152697%_)))
              (let ()
                (declare (not safe))
                (let ((_%object152727152732%_
                       (##unchecked-structure-ref
                        _%self145849152706%_
                        '1
                        '#f
                        'set!))
                      (_%method152728152733%_
                       (##unchecked-structure-ref
                        _%self145849152706%_
                        '8
                        '#f
                        'set!)))
                  (_%method152728152733%_
                   _%object152727152732%_
                   _%key152694%_
                   _%value152697%_)))))))
    (define hash-put!
      (lambda (_%h148950%_ _%key148951%_ _%value148952%_)
        (let* ((_%h148958%_
                (let ((_%$obj148955%_ _%h148950%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148955%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148955%_)))
                           '#t)
                      _%$obj148955%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148955%_)))))
               (_%h148960%_ _%h148958%_))
          (__hash-put! _%h148960%_ _%key148951%_ _%value148952%_))))
    (define __hash-update!__%
      (lambda (_%h152590%_ _%key152591%_ _%update152592%_ _%default152593%_)
        (let* ((_%h152596%_ _%h152590%_)
               (_%self146144152605%_ _%h152596%_)
               (_%key152608%_ _%key152591%_)
               (_%proc152611%_ _%update152592%_)
               (_%default152614%_ _%default152593%_)
               (_%self146144152621%_
                (let ((_%$obj152618%_ _%self146144152605%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152618%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152618%_)))
                           '#t)
                      _%$obj152618%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152618%_)))))
               (_%self146144152623%_ _%self146144152621%_))
          (if (procedure? _%proc152611%_)
              (let ((_%proc152639%_ _%proc152611%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object152648152653%_
                             (##unchecked-structure-ref
                              _%self146144152623%_
                              '1
                              '#f
                              'update!))
                            (_%method152649152654%_
                             (##unchecked-structure-ref
                              _%self146144152623%_
                              '9
                              '#f
                              'update!)))
                        (_%method152649152654%_
                         _%object152648152653%_
                         _%key152608%_
                         _%proc152639%_
                         _%default152614%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object152655152660%_
                             (##unchecked-structure-ref
                              _%self146144152623%_
                              '1
                              '#f
                              'update!))
                            (_%method152656152661%_
                             (##unchecked-structure-ref
                              _%self146144152623%_
                              '9
                              '#f
                              'update!)))
                        (_%method152656152661%_
                         _%object152655152660%_
                         _%key152608%_
                         _%proc152639%_
                         _%default152614%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc152611%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h152666%_ _%key152667%_ _%update152668%_)
        (let ((_%default152670%_ '#!void))
          (__hash-update!__%
           _%h152666%_
           _%key152667%_
           _%update152668%_
           _%default152670%_))))
    (define __hash-update!
      (lambda _g160535_
        (let ((_g160536_ (let () (declare (not safe)) (##length _g160535_))))
          (cond ((let () (declare (not safe)) (##fx= _g160536_ 3))
                 (apply __hash-update!__0 _g160535_))
                ((let () (declare (not safe)) (##fx= _g160536_ 4))
                 (apply __hash-update!__% _g160535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g160535_))))))
    (define hash-update!__%
      (lambda (_%h149091%_ _%key149092%_ _%update149093%_ _%default149094%_)
        (let* ((_%h149100%_
                (let ((_%$obj149097%_ _%h149091%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149097%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149097%_)))
                           '#t)
                      _%$obj149097%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149097%_)))))
               (_%h149102%_ _%h149100%_))
          (__hash-update!__%
           _%h149102%_
           _%key149092%_
           _%update149093%_
           _%default149094%_))))
    (define hash-update!__0
      (lambda (_%h149115%_ _%key149116%_ _%update149117%_)
        (let ((_%default149119%_ '#!void))
          (hash-update!__%
           _%h149115%_
           _%key149116%_
           _%update149117%_
           _%default149119%_))))
    (define hash-update!
      (lambda _g160537_
        (let ((_g160538_ (let () (declare (not safe)) (##length _g160537_))))
          (cond ((let () (declare (not safe)) (##fx= _g160538_ 3))
                 (apply hash-update!__0 _g160537_))
                ((let () (declare (not safe)) (##fx= _g160538_ 4))
                 (apply hash-update!__% _g160537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g160537_))))))
    (define __hash-remove!
      (lambda (_%h152536%_ _%key152537%_)
        (let* ((_%h152540%_ _%h152536%_)
               (_%self144656152549%_ _%h152540%_)
               (_%key152552%_ _%key152537%_)
               (_%self144656152559%_
                (let ((_%$obj152556%_ _%self144656152549%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152556%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152556%_)))
                           '#t)
                      _%$obj152556%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152556%_)))))
               (_%self144656152561%_ _%self144656152559%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object152574152579%_
                       (##unchecked-structure-ref
                        _%self144656152561%_
                        '1
                        '#f
                        'delete!))
                      (_%method152575152580%_
                       (##unchecked-structure-ref
                        _%self144656152561%_
                        '4
                        '#f
                        'delete!)))
                  (_%method152575152580%_
                   _%object152574152579%_
                   _%key152552%_)))
              (let ()
                (declare (not safe))
                (let ((_%object152581152586%_
                       (##unchecked-structure-ref
                        _%self144656152561%_
                        '1
                        '#f
                        'delete!))
                      (_%method152582152587%_
                       (##unchecked-structure-ref
                        _%self144656152561%_
                        '4
                        '#f
                        'delete!)))
                  (_%method152582152587%_
                   _%object152581152586%_
                   _%key152552%_)))))))
    (define hash-remove!
      (lambda (_%h149246%_ _%key149247%_)
        (let* ((_%h149253%_
                (let ((_%$obj149250%_ _%h149246%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149250%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149250%_)))
                           '#t)
                      _%$obj149250%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149250%_)))))
               (_%h149255%_ _%h149253%_))
          (__hash-remove! _%h149255%_ _%key149247%_))))
    (define __hash-key?
      (lambda (_%h152479%_ _%k152480%_)
        (let ((_%h152483%_ _%h152479%_))
          (not (eq? (let* ((_%self145554152492%_ _%h152483%_)
                           (_%key152495%_ _%k152480%_)
                           (_%default152498%_ absent-value)
                           (_%self145554152505%_
                            (let ((_%$obj152502%_ _%self145554152492%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj152502%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj152502%_)))
                                       '#t)
                                  _%$obj152502%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj152502%_)))))
                           (_%self145554152507%_ _%self145554152505%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object152521152526%_
                                   (##unchecked-structure-ref
                                    _%self145554152507%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method152522152527%_
                                   (##unchecked-structure-ref
                                    _%self145554152507%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method152522152527%_
                               _%object152521152526%_
                               _%key152495%_
                               _%default152498%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object152528152533%_
                                   (##unchecked-structure-ref
                                    _%self145554152507%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method152529152534%_
                                   (##unchecked-structure-ref
                                    _%self145554152507%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method152529152534%_
                               _%object152528152533%_
                               _%key152495%_
                               _%default152498%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h149385%_ _%k149386%_)
        (let* ((_%h149392%_
                (let ((_%$obj149389%_ _%h149385%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149389%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149389%_)))
                           '#t)
                      _%$obj149389%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149389%_)))))
               (_%h149394%_ _%h149392%_))
          (__hash-key? _%h149394%_ _%k149386%_))))
    (define __hash->list
      (lambda (_%h152411%_)
        (let* ((_%h152414%_ _%h152411%_) (_%lst152423%_ '()))
          (let* ((_%self144949152425%_ _%h152414%_)
                 (_%proc152431%_
                  (lambda (_%k152428%_ _%v152429%_)
                    (set! _%lst152423%_
                          (cons (cons _%k152428%_ _%v152429%_)
                                _%lst152423%_))))
                 (_%self144949152438%_
                  (let ((_%$obj152435%_ _%self144949152425%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152435%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152435%_)))
                             '#t)
                        _%$obj152435%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152435%_)))))
                 (_%self144949152440%_ _%self144949152438%_)
                 (_%proc152455%_ _%proc152431%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152464152469%_
                         (##unchecked-structure-ref
                          _%self144949152440%_
                          '1
                          '#f
                          'for-each))
                        (_%method152465152470%_
                         (##unchecked-structure-ref
                          _%self144949152440%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152465152470%_
                     _%object152464152469%_
                     _%proc152455%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152471152476%_
                         (##unchecked-structure-ref
                          _%self144949152440%_
                          '1
                          '#f
                          'for-each))
                        (_%method152472152477%_
                         (##unchecked-structure-ref
                          _%self144949152440%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152472152477%_
                     _%object152471152476%_
                     _%proc152455%_)))))
          _%lst152423%_)))
    (define hash->list
      (lambda (_%h149524%_)
        (let* ((_%h149530%_
                (let ((_%$obj149527%_ _%h149524%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149527%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149527%_)))
                           '#t)
                      _%$obj149527%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149527%_)))))
               (_%h149532%_ _%h149530%_))
          (__hash->list _%h149532%_))))
    (define __hash->plist
      (lambda (_%h152343%_)
        (let* ((_%h152346%_ _%h152343%_) (_%lst152355%_ '()))
          (let* ((_%self144949152357%_ _%h152346%_)
                 (_%proc152363%_
                  (lambda (_%k152360%_ _%v152361%_)
                    (set! _%lst152355%_
                          (cons _%k152360%_
                                (cons _%v152361%_ _%lst152355%_)))))
                 (_%self144949152370%_
                  (let ((_%$obj152367%_ _%self144949152357%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152367%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152367%_)))
                             '#t)
                        _%$obj152367%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152367%_)))))
                 (_%self144949152372%_ _%self144949152370%_)
                 (_%proc152387%_ _%proc152363%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152396152401%_
                         (##unchecked-structure-ref
                          _%self144949152372%_
                          '1
                          '#f
                          'for-each))
                        (_%method152397152402%_
                         (##unchecked-structure-ref
                          _%self144949152372%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152397152402%_
                     _%object152396152401%_
                     _%proc152387%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152403152408%_
                         (##unchecked-structure-ref
                          _%self144949152372%_
                          '1
                          '#f
                          'for-each))
                        (_%method152404152409%_
                         (##unchecked-structure-ref
                          _%self144949152372%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152404152409%_
                     _%object152403152408%_
                     _%proc152387%_)))))
          _%lst152355%_)))
    (define hash->plist
      (lambda (_%h149662%_)
        (let* ((_%h149668%_
                (let ((_%$obj149665%_ _%h149662%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149665%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149665%_)))
                           '#t)
                      _%$obj149665%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149665%_)))))
               (_%h149670%_ _%h149668%_))
          (__hash->plist _%h149670%_))))
    (define __hash-for-each
      (lambda (_%proc152272%_ _%h152273%_)
        (let* ((_%proc152276%_ _%proc152272%_)
               (_%h152284%_ _%h152273%_)
               (_%self144949152293%_ _%h152284%_)
               (_%proc152296%_ _%proc152276%_)
               (_%self144949152303%_
                (let ((_%$obj152300%_ _%self144949152293%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152300%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152300%_)))
                           '#t)
                      _%$obj152300%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152300%_)))))
               (_%self144949152305%_ _%self144949152303%_)
               (_%proc152319%_ _%proc152296%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object152328152333%_
                       (##unchecked-structure-ref
                        _%self144949152305%_
                        '1
                        '#f
                        'for-each))
                      (_%method152329152334%_
                       (##unchecked-structure-ref
                        _%self144949152305%_
                        '5
                        '#f
                        'for-each)))
                  (_%method152329152334%_
                   _%object152328152333%_
                   _%proc152319%_)))
              (let ()
                (declare (not safe))
                (let ((_%object152335152340%_
                       (##unchecked-structure-ref
                        _%self144949152305%_
                        '1
                        '#f
                        'for-each))
                      (_%method152336152341%_
                       (##unchecked-structure-ref
                        _%self144949152305%_
                        '5
                        '#f
                        'for-each)))
                  (_%method152336152341%_
                   _%object152335152340%_
                   _%proc152319%_)))))))
    (define hash-for-each
      (lambda (_%proc149800%_ _%h149801%_)
        (if (procedure? _%proc149800%_)
            (let* ((_%proc149805%_ _%proc149800%_)
                   (_%h149817%_
                    (let ((_%$obj149814%_ _%h149801%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj149814%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj149814%_)))
                               '#t)
                          _%$obj149814%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj149814%_)))))
                   (_%h149819%_ _%h149817%_))
              (__hash-for-each _%proc149805%_ _%h149819%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc149800%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc152195%_ _%h152196%_)
        (let* ((_%proc152199%_ _%proc152195%_)
               (_%h152207%_ _%h152196%_)
               (_%result152216%_ '()))
          (let* ((_%self144949152218%_ _%h152207%_)
                 (_%proc152224%_
                  (lambda (_%k152221%_ _%v152222%_)
                    (set! _%result152216%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc152199%_ _%k152221%_ _%v152222%_))
                                _%result152216%_))))
                 (_%self144949152231%_
                  (let ((_%$obj152228%_ _%self144949152218%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152228%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152228%_)))
                             '#t)
                        _%$obj152228%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152228%_)))))
                 (_%self144949152233%_ _%self144949152231%_)
                 (_%proc152248%_ _%proc152224%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152257152262%_
                         (##unchecked-structure-ref
                          _%self144949152233%_
                          '1
                          '#f
                          'for-each))
                        (_%method152258152263%_
                         (##unchecked-structure-ref
                          _%self144949152233%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152258152263%_
                     _%object152257152262%_
                     _%proc152248%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152264152269%_
                         (##unchecked-structure-ref
                          _%self144949152233%_
                          '1
                          '#f
                          'for-each))
                        (_%method152265152270%_
                         (##unchecked-structure-ref
                          _%self144949152233%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152265152270%_
                     _%object152264152269%_
                     _%proc152248%_)))))
          _%result152216%_)))
    (define hash-map
      (lambda (_%proc149949%_ _%h149950%_)
        (if (procedure? _%proc149949%_)
            (let* ((_%proc149954%_ _%proc149949%_)
                   (_%h149966%_
                    (let ((_%$obj149963%_ _%h149950%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj149963%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj149963%_)))
                               '#t)
                          _%$obj149963%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj149963%_)))))
                   (_%h149968%_ _%h149966%_))
              (__hash-map _%proc149954%_ _%h149968%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc149949%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc152117%_ _%iv152118%_ _%h152119%_)
        (let* ((_%proc152122%_ _%proc152117%_)
               (_%h152130%_ _%h152119%_)
               (_%result152139%_ _%iv152118%_))
          (let* ((_%self144949152141%_ _%h152130%_)
                 (_%proc152147%_
                  (lambda (_%k152144%_ _%v152145%_)
                    (set! _%result152139%_
                          (let ()
                            (declare (not safe))
                            (_%proc152122%_
                             _%k152144%_
                             _%v152145%_
                             _%result152139%_)))))
                 (_%self144949152154%_
                  (let ((_%$obj152151%_ _%self144949152141%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152151%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152151%_)))
                             '#t)
                        _%$obj152151%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152151%_)))))
                 (_%self144949152156%_ _%self144949152154%_)
                 (_%proc152171%_ _%proc152147%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152180152185%_
                         (##unchecked-structure-ref
                          _%self144949152156%_
                          '1
                          '#f
                          'for-each))
                        (_%method152181152186%_
                         (##unchecked-structure-ref
                          _%self144949152156%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152181152186%_
                     _%object152180152185%_
                     _%proc152171%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152187152192%_
                         (##unchecked-structure-ref
                          _%self144949152156%_
                          '1
                          '#f
                          'for-each))
                        (_%method152188152193%_
                         (##unchecked-structure-ref
                          _%self144949152156%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152188152193%_
                     _%object152187152192%_
                     _%proc152171%_)))))
          _%result152139%_)))
    (define hash-fold
      (lambda (_%proc150098%_ _%iv150099%_ _%h150100%_)
        (if (procedure? _%proc150098%_)
            (let* ((_%proc150104%_ _%proc150098%_)
                   (_%h150116%_
                    (let ((_%$obj150113%_ _%h150100%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150113%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150113%_)))
                               '#t)
                          _%$obj150113%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150113%_)))))
                   (_%h150118%_ _%h150116%_))
              (__hash-fold _%proc150104%_ _%iv150099%_ _%h150118%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc150098%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc152024%_ _%h152025%_ _%default-value152026%_)
        (let* ((_%proc152029%_ _%proc152024%_)
               (_%h152037%_ _%h152025%_)
               (__tmp160539
                (lambda (_%return152046%_)
                  (let* ((_%self144949152048%_ _%h152037%_)
                         (_%proc152057%_
                          (lambda (_%k152051%_ _%v152052%_)
                            (let ((_%$e152054%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc152029%_
                                      _%k152051%_
                                      _%v152052%_))))
                              (if _%$e152054%_
                                  (_%return152046%_ _%$e152054%_)
                                  '#!void))))
                         (_%self144949152064%_
                          (let ((_%$obj152061%_ _%self144949152048%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj152061%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj152061%_)))
                                     '#t)
                                _%$obj152061%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj152061%_)))))
                         (_%self144949152066%_ _%self144949152064%_)
                         (_%proc152081%_ _%proc152057%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object152090152095%_
                                 (##unchecked-structure-ref
                                  _%self144949152066%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method152091152096%_
                                 (##unchecked-structure-ref
                                  _%self144949152066%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method152091152096%_
                             _%object152090152095%_
                             _%proc152081%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object152097152102%_
                                 (##unchecked-structure-ref
                                  _%self144949152066%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method152098152103%_
                                 (##unchecked-structure-ref
                                  _%self144949152066%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method152098152103%_
                             _%object152097152102%_
                             _%proc152081%_)))))
                  _%default-value152026%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp160539))))
    (define __hash-find__0
      (lambda (_%proc152108%_ _%h152109%_)
        (let ((_%default-value152111%_ '#f))
          (__hash-find__%
           _%proc152108%_
           _%h152109%_
           _%default-value152111%_))))
    (define __hash-find
      (lambda _g160540_
        (let ((_g160541_ (let () (declare (not safe)) (##length _g160540_))))
          (cond ((let () (declare (not safe)) (##fx= _g160541_ 2))
                 (apply __hash-find__0 _g160540_))
                ((let () (declare (not safe)) (##fx= _g160541_ 3))
                 (apply __hash-find__% _g160540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g160540_))))))
    (define hash-find__%
      (lambda (_%proc150249%_ _%h150250%_ _%default-value150251%_)
        (if (procedure? _%proc150249%_)
            (let* ((_%proc150255%_ _%proc150249%_)
                   (_%h150267%_
                    (let ((_%$obj150264%_ _%h150250%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150264%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150264%_)))
                               '#t)
                          _%$obj150264%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150264%_)))))
                   (_%h150269%_ _%h150267%_))
              (__hash-find__%
               _%proc150255%_
               _%h150269%_
               _%default-value150251%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc150249%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc150282%_ _%h150283%_)
        (let ((_%default-value150285%_ '#f))
          (hash-find__% _%proc150282%_ _%h150283%_ _%default-value150285%_))))
    (define hash-find
      (lambda _g160542_
        (let ((_g160543_ (let () (declare (not safe)) (##length _g160542_))))
          (cond ((let () (declare (not safe)) (##fx= _g160543_ 2))
                 (apply hash-find__0 _g160542_))
                ((let () (declare (not safe)) (##fx= _g160543_ 3))
                 (apply hash-find__% _g160542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g160542_))))))
    (define __hash-keys
      (lambda (_%h151955%_)
        (let* ((_%h151958%_ _%h151955%_) (_%result151967%_ '()))
          (let* ((_%self144949151969%_ _%h151958%_)
                 (_%proc151975%_
                  (lambda (_%k151972%_ _%v151973%_)
                    (set! _%result151967%_
                          (cons _%k151972%_ _%result151967%_))))
                 (_%self144949151982%_
                  (let ((_%$obj151979%_ _%self144949151969%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj151979%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj151979%_)))
                             '#t)
                        _%$obj151979%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj151979%_)))))
                 (_%self144949151984%_ _%self144949151982%_)
                 (_%proc151999%_ _%proc151975%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152008152013%_
                         (##unchecked-structure-ref
                          _%self144949151984%_
                          '1
                          '#f
                          'for-each))
                        (_%method152009152014%_
                         (##unchecked-structure-ref
                          _%self144949151984%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152009152014%_
                     _%object152008152013%_
                     _%proc151999%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152015152020%_
                         (##unchecked-structure-ref
                          _%self144949151984%_
                          '1
                          '#f
                          'for-each))
                        (_%method152016152021%_
                         (##unchecked-structure-ref
                          _%self144949151984%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152016152021%_
                     _%object152015152020%_
                     _%proc151999%_)))))
          _%result151967%_)))
    (define hash-keys
      (lambda (_%h150411%_)
        (let* ((_%h150417%_
                (let ((_%$obj150414%_ _%h150411%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150414%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150414%_)))
                           '#t)
                      _%$obj150414%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150414%_)))))
               (_%h150419%_ _%h150417%_))
          (__hash-keys _%h150419%_))))
    (define __hash-values
      (lambda (_%h151887%_)
        (let* ((_%h151890%_ _%h151887%_) (_%result151899%_ '()))
          (let* ((_%self144949151901%_ _%h151890%_)
                 (_%proc151907%_
                  (lambda (_%k151904%_ _%v151905%_)
                    (set! _%result151899%_
                          (cons _%v151905%_ _%result151899%_))))
                 (_%self144949151914%_
                  (let ((_%$obj151911%_ _%self144949151901%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj151911%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj151911%_)))
                             '#t)
                        _%$obj151911%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj151911%_)))))
                 (_%self144949151916%_ _%self144949151914%_)
                 (_%proc151931%_ _%proc151907%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object151940151945%_
                         (##unchecked-structure-ref
                          _%self144949151916%_
                          '1
                          '#f
                          'for-each))
                        (_%method151941151946%_
                         (##unchecked-structure-ref
                          _%self144949151916%_
                          '5
                          '#f
                          'for-each)))
                    (_%method151941151946%_
                     _%object151940151945%_
                     _%proc151931%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object151947151952%_
                         (##unchecked-structure-ref
                          _%self144949151916%_
                          '1
                          '#f
                          'for-each))
                        (_%method151948151953%_
                         (##unchecked-structure-ref
                          _%self144949151916%_
                          '5
                          '#f
                          'for-each)))
                    (_%method151948151953%_
                     _%object151947151952%_
                     _%proc151931%_)))))
          _%result151899%_)))
    (define hash-values
      (lambda (_%h150549%_)
        (let* ((_%h150555%_
                (let ((_%$obj150552%_ _%h150549%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150552%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150552%_)))
                           '#t)
                      _%$obj150552%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150552%_)))))
               (_%h150557%_ _%h150555%_))
          (__hash-values _%h150557%_))))
    (define __hash-copy
      (lambda (_%h151836%_)
        (let* ((_%h151839%_ _%h151836%_)
               (_%self144362151848%_ _%h151839%_)
               (_%self144362151855%_
                (let ((_%$obj151852%_ _%self144362151848%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151852%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151852%_)))
                           '#t)
                      _%$obj151852%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151852%_)))))
               (_%self144362151857%_ _%self144362151855%_))
          (if __DEBUG
              (let ((_%$obj151877%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object151869151874%_
                              (##unchecked-structure-ref
                               _%self144362151857%_
                               '1
                               '#f
                               'copy))
                             (_%method151870151875%_
                              (##unchecked-structure-ref
                               _%self144362151857%_
                               '3
                               '#f
                               'copy)))
                         (_%method151870151875%_ _%object151869151874%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj151877%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj151877%_)))
                         '#t)
                    _%$obj151877%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj151877%_))))
              (let ()
                (declare (not safe))
                (let ((_%object151879151884%_
                       (##unchecked-structure-ref
                        _%self144362151857%_
                        '1
                        '#f
                        'copy))
                      (_%method151880151885%_
                       (##unchecked-structure-ref
                        _%self144362151857%_
                        '3
                        '#f
                        'copy)))
                  (_%method151880151885%_ _%object151879151884%_)))))))
    (define hash-copy
      (lambda (_%h150687%_)
        (let* ((_%h150693%_
                (let ((_%$obj150690%_ _%h150687%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150690%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150690%_)))
                           '#t)
                      _%$obj150690%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150690%_)))))
               (_%h150695%_ _%h150693%_))
          (__hash-copy _%h150695%_))))
    (define __hash-clear!
      (lambda (_%h151788%_)
        (let* ((_%h151791%_ _%h151788%_)
               (_%self144070151800%_ _%h151791%_)
               (_%self144070151807%_
                (let ((_%$obj151804%_ _%self144070151800%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151804%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151804%_)))
                           '#t)
                      _%$obj151804%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151804%_)))))
               (_%self144070151809%_ _%self144070151807%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object151821151826%_
                       (##unchecked-structure-ref
                        _%self144070151809%_
                        '1
                        '#f
                        'clear!))
                      (_%method151822151827%_
                       (##unchecked-structure-ref
                        _%self144070151809%_
                        '2
                        '#f
                        'clear!)))
                  (_%method151822151827%_ _%object151821151826%_)))
              (let ()
                (declare (not safe))
                (let ((_%object151828151833%_
                       (##unchecked-structure-ref
                        _%self144070151809%_
                        '1
                        '#f
                        'clear!))
                      (_%method151829151834%_
                       (##unchecked-structure-ref
                        _%self144070151809%_
                        '2
                        '#f
                        'clear!)))
                  (_%method151829151834%_ _%object151828151833%_)))))))
    (define hash-clear!
      (lambda (_%h150825%_)
        (let* ((_%h150831%_
                (let ((_%$obj150828%_ _%h150825%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150828%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150828%_)))
                           '#t)
                      _%$obj150828%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150828%_)))))
               (_%h150833%_ _%h150831%_))
          (__hash-clear! _%h150833%_))))
    (define __hash-merge
      (lambda (_%h151734%_ . _%rest151735%_)
        (let* ((_%h151738%_ _%h151734%_)
               (_%copy151786%_
                (let* ((_%self144362151747%_ _%h151738%_)
                       (_%self144362151754%_
                        (let ((_%$obj151751%_ _%self144362151747%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj151751%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj151751%_)))
                                   '#t)
                              _%$obj151751%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj151751%_)))))
                       (_%self144362151756%_ _%self144362151754%_))
                  (if __DEBUG
                      (let ((_%$obj151776%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object151768151773%_
                                      (##unchecked-structure-ref
                                       _%self144362151756%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method151769151774%_
                                      (##unchecked-structure-ref
                                       _%self144362151756%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method151769151774%_
                                  _%object151768151773%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj151776%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj151776%_)))
                                 '#t)
                            _%$obj151776%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj151776%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object151778151783%_
                               (##unchecked-structure-ref
                                _%self144362151756%_
                                '1
                                '#f
                                'copy))
                              (_%method151779151784%_
                               (##unchecked-structure-ref
                                _%self144362151756%_
                                '3
                                '#f
                                'copy)))
                          (_%method151779151784%_ _%object151778151783%_)))))))
          (apply hash-merge! _%copy151786%_ _%rest151735%_)
          _%copy151786%_)))
    (define hash-merge
      (lambda (_%h150963%_ . _%rest150964%_)
        (let* ((_%h150970%_
                (let ((_%$obj150967%_ _%h150963%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150967%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150967%_)))
                           '#t)
                      _%$obj150967%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150967%_)))))
               (_%h150972%_ _%h150970%_))
          (declare (not safe))
          (##apply __hash-merge _%h150972%_ _%rest150964%_))))
    (define __hash-merge-right
      (lambda (_%h151680%_ . _%rest151681%_)
        (let* ((_%h151684%_ _%h151680%_)
               (_%copy151732%_
                (let* ((_%self144362151693%_ _%h151684%_)
                       (_%self144362151700%_
                        (let ((_%$obj151697%_ _%self144362151693%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj151697%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj151697%_)))
                                   '#t)
                              _%$obj151697%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj151697%_)))))
                       (_%self144362151702%_ _%self144362151700%_))
                  (if __DEBUG
                      (let ((_%$obj151722%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object151714151719%_
                                      (##unchecked-structure-ref
                                       _%self144362151702%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method151715151720%_
                                      (##unchecked-structure-ref
                                       _%self144362151702%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method151715151720%_
                                  _%object151714151719%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj151722%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj151722%_)))
                                 '#t)
                            _%$obj151722%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj151722%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object151724151729%_
                               (##unchecked-structure-ref
                                _%self144362151702%_
                                '1
                                '#f
                                'copy))
                              (_%method151725151730%_
                               (##unchecked-structure-ref
                                _%self144362151702%_
                                '3
                                '#f
                                'copy)))
                          (_%method151725151730%_ _%object151724151729%_)))))))
          (apply hash-merge-right! _%copy151732%_ _%rest151681%_)
          _%copy151732%_)))
    (define hash-merge-right
      (lambda (_%h151102%_ . _%rest151103%_)
        (let* ((_%h151109%_
                (let ((_%$obj151106%_ _%h151102%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151106%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151106%_)))
                           '#t)
                      _%$obj151106%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151106%_)))))
               (_%h151111%_ _%h151109%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h151111%_ _%rest151103%_))))
    (define __hash-merge!
      (lambda (_%h151528%_ . _%rest151529%_)
        (let ((_%h151532%_ _%h151528%_))
          (let ((__tmp160544
                 (lambda (_%hr151541%_)
                   (let* ((_%hr151547%_
                           (let ((_%$obj151544%_ _%hr151541%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj151544%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj151544%_)))
                                      '#t)
                                 _%$obj151544%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj151544%_)))))
                          (_%hr151549%_ _%hr151547%_)
                          (_%self144949151562%_ _%hr151549%_)
                          (_%proc151637%_
                           (lambda (_%k151565%_ _%v151566%_)
                             (if (let* ((_%h151568%_ _%h151532%_)
                                        (_%k151571%_ _%k151565%_)
                                        (_%h151578%_
                                         (let ((_%$obj151575%_ _%h151568%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj151575%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj151575%_)))
                                                    '#t)
                                               _%$obj151575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj151575%_)))))
                                        (_%h151580%_ _%h151578%_))
                                   (__hash-key? _%h151580%_ _%k151571%_))
                                 '#!void
                                 (let* ((_%self145849151596%_ _%h151532%_)
                                        (_%key151599%_ _%k151565%_)
                                        (_%value151602%_ _%v151566%_)
                                        (_%self145849151609%_
                                         (let ((_%$obj151606%_
                                                _%self145849151596%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj151606%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj151606%_)))
                                                    '#t)
                                               _%$obj151606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj151606%_)))))
                                        (_%self145849151611%_
                                         _%self145849151609%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object151622151627%_
                                                (##unchecked-structure-ref
                                                 _%self145849151611%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method151623151628%_
                                                (##unchecked-structure-ref
                                                 _%self145849151611%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method151623151628%_
                                            _%object151622151627%_
                                            _%key151599%_
                                            _%value151602%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object151629151634%_
                                                (##unchecked-structure-ref
                                                 _%self145849151611%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method151630151635%_
                                                (##unchecked-structure-ref
                                                 _%self145849151611%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method151630151635%_
                                            _%object151629151634%_
                                            _%key151599%_
                                            _%value151602%_))))))))
                          (_%self144949151644%_
                           (let ((_%$obj151641%_ _%self144949151562%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj151641%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj151641%_)))
                                      '#t)
                                 _%$obj151641%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj151641%_)))))
                          (_%self144949151646%_ _%self144949151644%_)
                          (_%proc151656%_ _%proc151637%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object151665151670%_
                                  (##unchecked-structure-ref
                                   _%self144949151646%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method151666151671%_
                                  (##unchecked-structure-ref
                                   _%self144949151646%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method151666151671%_
                              _%object151665151670%_
                              _%proc151656%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object151672151677%_
                                  (##unchecked-structure-ref
                                   _%self144949151646%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method151673151678%_
                                  (##unchecked-structure-ref
                                   _%self144949151646%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method151673151678%_
                              _%object151672151677%_
                              _%proc151656%_))))))))
            (declare (not safe))
            (##for-each __tmp160544 _%rest151529%_))
          _%h151532%_)))
    (define hash-merge!
      (lambda (_%h151241%_ . _%rest151242%_)
        (let* ((_%h151248%_
                (let ((_%$obj151245%_ _%h151241%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151245%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151245%_)))
                           '#t)
                      _%$obj151245%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151245%_)))))
               (_%h151250%_ _%h151248%_))
          (declare (not safe))
          (##apply __hash-merge! _%h151250%_ _%rest151242%_))))
    (define __hash-merge-right!
      (lambda (_%h151399%_ . _%rest151400%_)
        (let ((_%h151403%_ _%h151399%_))
          (let ((__tmp160545
                 (lambda (_%hr151412%_)
                   (let* ((_%hr151418%_
                           (let ((_%$obj151415%_ _%hr151412%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj151415%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj151415%_)))
                                      '#t)
                                 _%$obj151415%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj151415%_)))))
                          (_%hr151420%_ _%hr151418%_)
                          (_%self144949151433%_ _%hr151420%_)
                          (_%proc151485%_
                           (lambda (_%k151436%_ _%v151437%_)
                             (let* ((_%self145849151439%_ _%h151403%_)
                                    (_%key151442%_ _%k151436%_)
                                    (_%value151445%_ _%v151437%_)
                                    (_%self145849151452%_
                                     (let ((_%$obj151449%_
                                            _%self145849151439%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj151449%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj151449%_)))
                                                '#t)
                                           _%$obj151449%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj151449%_)))))
                                    (_%self145849151454%_
                                     _%self145849151452%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object151470151475%_
                                            (##unchecked-structure-ref
                                             _%self145849151454%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method151471151476%_
                                            (##unchecked-structure-ref
                                             _%self145849151454%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method151471151476%_
                                        _%object151470151475%_
                                        _%key151442%_
                                        _%value151445%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object151477151482%_
                                            (##unchecked-structure-ref
                                             _%self145849151454%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method151478151483%_
                                            (##unchecked-structure-ref
                                             _%self145849151454%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method151478151483%_
                                        _%object151477151482%_
                                        _%key151442%_
                                        _%value151445%_)))))))
                          (_%self144949151492%_
                           (let ((_%$obj151489%_ _%self144949151433%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj151489%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj151489%_)))
                                      '#t)
                                 _%$obj151489%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj151489%_)))))
                          (_%self144949151494%_ _%self144949151492%_)
                          (_%proc151504%_ _%proc151485%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object151513151518%_
                                  (##unchecked-structure-ref
                                   _%self144949151494%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method151514151519%_
                                  (##unchecked-structure-ref
                                   _%self144949151494%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method151514151519%_
                              _%object151513151518%_
                              _%proc151504%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object151520151525%_
                                  (##unchecked-structure-ref
                                   _%self144949151494%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method151521151526%_
                                  (##unchecked-structure-ref
                                   _%self144949151494%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method151521151526%_
                              _%object151520151525%_
                              _%proc151504%_))))))))
            (declare (not safe))
            (##for-each __tmp160545 _%rest151400%_))
          _%h151403%_)))
    (define hash-merge-right!
      (lambda (_%h151380%_ . _%rest151381%_)
        (let* ((_%h151387%_
                (let ((_%$obj151384%_ _%h151380%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151384%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151384%_)))
                           '#t)
                      _%$obj151384%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151384%_)))))
               (_%h151389%_ _%h151387%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h151389%_ _%rest151381%_))))))
