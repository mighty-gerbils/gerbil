(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1770744574)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp159347 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp159347
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args158089%_
        (apply make-instance UnboundKeyError::t _%$args158089%_)))
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
      (lambda (_%where157963%_ _%message157964%_ . _%irritants157965%_)
        (let ((__tmp159348
               (let ((__obj159339
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj159339
                    _%message157964%_
                    'where:
                    _%where157963%_
                    'irritants:
                    _%irritants157965%_))
                 __obj159339)))
          (declare (not safe))
          (raise __tmp159348))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp159349 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp159349
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj159341
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj159341
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj159341))
    (define make-HashTable
      (lambda (_%obj157961%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj157961%_))))
    (define try-HashTable
      (lambda (_%obj157959%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj157959%_))))
    (define HashTable?
      (lambda (_%obj157957%_)
        (let ((__tmp159350
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj157957%_ __tmp159350))))
    (define is-HashTable?
      (lambda (_%obj157954%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj157954%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self142944143188%_)
        (let ((_%self142944143190%_ _%self142944143188%_))
          (declare (not safe))
          (let ((_%object143197143202%_
                 (##unchecked-structure-ref
                  _%self142944143190%_
                  '1
                  '#f
                  'clear!))
                (_%method143198143203%_
                 (##unchecked-structure-ref
                  _%self142944143190%_
                  '2
                  '#f
                  'clear!)))
            (_%method143198143203%_ _%object143197143202%_)))))
    (define ::HashTable-clear!
      (lambda (_%self142945143205%_)
        (let* ((_%self142945143210%_
                (let ((_%$obj143207%_ _%self142945143205%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143207%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143207%_)))
                           '#t)
                      _%$obj143207%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143207%_)))))
               (_%self142945143212%_ _%self142945143210%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object143220143225%_
                       (##unchecked-structure-ref
                        _%self142945143212%_
                        '1
                        '#f
                        'clear!))
                      (_%method143221143226%_
                       (##unchecked-structure-ref
                        _%self142945143212%_
                        '2
                        '#f
                        'clear!)))
                  (_%method143221143226%_ _%object143220143225%_)))
              (let ()
                (declare (not safe))
                (let ((_%object143227143232%_
                       (##unchecked-structure-ref
                        _%self142945143212%_
                        '1
                        '#f
                        'clear!))
                      (_%method143228143233%_
                       (##unchecked-structure-ref
                        _%self142945143212%_
                        '2
                        '#f
                        'clear!)))
                  (_%method143228143233%_ _%object143227143232%_)))))))
    (define __HashTable-copy
      (lambda (_%self143236143479%_)
        (let ((_%self143236143481%_ _%self143236143479%_))
          (declare (not safe))
          (let ((_%object143488143493%_
                 (##unchecked-structure-ref _%self143236143481%_ '1 '#f 'copy))
                (_%method143489143494%_
                 (##unchecked-structure-ref
                  _%self143236143481%_
                  '3
                  '#f
                  'copy)))
            (_%method143489143494%_ _%object143488143493%_)))))
    (define ::HashTable-copy
      (lambda (_%self143237143496%_)
        (let* ((_%self143237143501%_
                (let ((_%$obj143498%_ _%self143237143496%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143498%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143498%_)))
                           '#t)
                      _%$obj143498%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143498%_)))))
               (_%self143237143503%_ _%self143237143501%_))
          (if __DEBUG
              (let ((_%$obj143519%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object143511143516%_
                              (##unchecked-structure-ref
                               _%self143237143503%_
                               '1
                               '#f
                               'copy))
                             (_%method143512143517%_
                              (##unchecked-structure-ref
                               _%self143237143503%_
                               '3
                               '#f
                               'copy)))
                         (_%method143512143517%_ _%object143511143516%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj143519%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj143519%_)))
                         '#t)
                    _%$obj143519%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj143519%_))))
              (let ()
                (declare (not safe))
                (let ((_%object143521143526%_
                       (##unchecked-structure-ref
                        _%self143237143503%_
                        '1
                        '#f
                        'copy))
                      (_%method143522143527%_
                       (##unchecked-structure-ref
                        _%self143237143503%_
                        '3
                        '#f
                        'copy)))
                  (_%method143522143527%_ _%object143521143526%_)))))))
    (define __HashTable-delete!
      (lambda (_%self143530143773%_ _%key143774%_)
        (let ((_%self143530143776%_ _%self143530143773%_))
          (declare (not safe))
          (let ((_%object143783143788%_
                 (##unchecked-structure-ref
                  _%self143530143776%_
                  '1
                  '#f
                  'delete!))
                (_%method143784143789%_
                 (##unchecked-structure-ref
                  _%self143530143776%_
                  '4
                  '#f
                  'delete!)))
            (_%method143784143789%_ _%object143783143788%_ _%key143774%_)))))
    (define ::HashTable-delete!
      (lambda (_%self143531143791%_ _%key143792%_)
        (let* ((_%self143531143797%_
                (let ((_%$obj143794%_ _%self143531143791%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143794%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143794%_)))
                           '#t)
                      _%$obj143794%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143794%_)))))
               (_%self143531143799%_ _%self143531143797%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object143807143812%_
                       (##unchecked-structure-ref
                        _%self143531143799%_
                        '1
                        '#f
                        'delete!))
                      (_%method143808143813%_
                       (##unchecked-structure-ref
                        _%self143531143799%_
                        '4
                        '#f
                        'delete!)))
                  (_%method143808143813%_
                   _%object143807143812%_
                   _%key143792%_)))
              (let ()
                (declare (not safe))
                (let ((_%object143814143819%_
                       (##unchecked-structure-ref
                        _%self143531143799%_
                        '1
                        '#f
                        'delete!))
                      (_%method143815143820%_
                       (##unchecked-structure-ref
                        _%self143531143799%_
                        '4
                        '#f
                        'delete!)))
                  (_%method143815143820%_
                   _%object143814143819%_
                   _%key143792%_)))))))
    (define __HashTable-for-each
      (lambda (_%self143823144066%_ _%proc144067%_)
        (let* ((_%self143823144069%_ _%self143823144066%_)
               (_%proc144076%_ _%proc144067%_))
          (declare (not safe))
          (let ((_%object144084144089%_
                 (##unchecked-structure-ref
                  _%self143823144069%_
                  '1
                  '#f
                  'for-each))
                (_%method144085144090%_
                 (##unchecked-structure-ref
                  _%self143823144069%_
                  '5
                  '#f
                  'for-each)))
            (_%method144085144090%_ _%object144084144089%_ _%proc144076%_)))))
    (define ::HashTable-for-each
      (lambda (_%self143824144092%_ _%proc144093%_)
        (let* ((_%self143824144098%_
                (let ((_%$obj144095%_ _%self143824144092%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144095%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144095%_)))
                           '#t)
                      _%$obj144095%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144095%_)))))
               (_%self143824144100%_ _%self143824144098%_))
          (if (procedure? _%proc144093%_)
              (let ((_%proc144109%_ _%proc144093%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object144118144123%_
                             (##unchecked-structure-ref
                              _%self143824144100%_
                              '1
                              '#f
                              'for-each))
                            (_%method144119144124%_
                             (##unchecked-structure-ref
                              _%self143824144100%_
                              '5
                              '#f
                              'for-each)))
                        (_%method144119144124%_
                         _%object144118144123%_
                         _%proc144109%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object144125144130%_
                             (##unchecked-structure-ref
                              _%self143824144100%_
                              '1
                              '#f
                              'for-each))
                            (_%method144126144131%_
                             (##unchecked-structure-ref
                              _%self143824144100%_
                              '5
                              '#f
                              'for-each)))
                        (_%method144126144131%_
                         _%object144125144130%_
                         _%proc144109%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc144093%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self144134144377%_)
        (let ((_%self144134144379%_ _%self144134144377%_))
          (declare (not safe))
          (let ((_%object144386144391%_
                 (##unchecked-structure-ref
                  _%self144134144379%_
                  '1
                  '#f
                  'length))
                (_%method144387144392%_
                 (##unchecked-structure-ref
                  _%self144134144379%_
                  '6
                  '#f
                  'length)))
            (_%method144387144392%_ _%object144386144391%_)))))
    (define ::HashTable-length
      (lambda (_%self144135144394%_)
        (let* ((_%self144135144399%_
                (let ((_%$obj144396%_ _%self144135144394%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144396%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144396%_)))
                           '#t)
                      _%$obj144396%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144396%_)))))
               (_%self144135144401%_ _%self144135144399%_))
          (if __DEBUG
              (let ((_%val144417%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object144409144414%_
                              (##unchecked-structure-ref
                               _%self144135144401%_
                               '1
                               '#f
                               'length))
                             (_%method144410144415%_
                              (##unchecked-structure-ref
                               _%self144135144401%_
                               '6
                               '#f
                               'length)))
                         (_%method144410144415%_ _%object144409144414%_)))))
                (if (fixnum? _%val144417%_)
                    _%val144417%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val144417%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object144419144424%_
                       (##unchecked-structure-ref
                        _%self144135144401%_
                        '1
                        '#f
                        'length))
                      (_%method144420144425%_
                       (##unchecked-structure-ref
                        _%self144135144401%_
                        '6
                        '#f
                        'length)))
                  (_%method144420144425%_ _%object144419144424%_)))))))
    (define __HashTable-ref
      (lambda (_%self144428144671%_ _%key144672%_ _%default144673%_)
        (let ((_%self144428144675%_ _%self144428144671%_))
          (declare (not safe))
          (let ((_%object144682144687%_
                 (##unchecked-structure-ref _%self144428144675%_ '1 '#f 'ref))
                (_%method144683144688%_
                 (##unchecked-structure-ref _%self144428144675%_ '7 '#f 'ref)))
            (_%method144683144688%_
             _%object144682144687%_
             _%key144672%_
             _%default144673%_)))))
    (define ::HashTable-ref
      (lambda (_%self144429144690%_ _%key144691%_ _%default144692%_)
        (let* ((_%self144429144697%_
                (let ((_%$obj144694%_ _%self144429144690%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144694%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144694%_)))
                           '#t)
                      _%$obj144694%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144694%_)))))
               (_%self144429144699%_ _%self144429144697%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object144707144712%_
                       (##unchecked-structure-ref
                        _%self144429144699%_
                        '1
                        '#f
                        'ref))
                      (_%method144708144713%_
                       (##unchecked-structure-ref
                        _%self144429144699%_
                        '7
                        '#f
                        'ref)))
                  (_%method144708144713%_
                   _%object144707144712%_
                   _%key144691%_
                   _%default144692%_)))
              (let ()
                (declare (not safe))
                (let ((_%object144714144719%_
                       (##unchecked-structure-ref
                        _%self144429144699%_
                        '1
                        '#f
                        'ref))
                      (_%method144715144720%_
                       (##unchecked-structure-ref
                        _%self144429144699%_
                        '7
                        '#f
                        'ref)))
                  (_%method144715144720%_
                   _%object144714144719%_
                   _%key144691%_
                   _%default144692%_)))))))
    (define __HashTable-set!
      (lambda (_%self144723144966%_ _%key144967%_ _%value144968%_)
        (let ((_%self144723144970%_ _%self144723144966%_))
          (declare (not safe))
          (let ((_%object144977144982%_
                 (##unchecked-structure-ref _%self144723144970%_ '1 '#f 'set!))
                (_%method144978144983%_
                 (##unchecked-structure-ref
                  _%self144723144970%_
                  '8
                  '#f
                  'set!)))
            (_%method144978144983%_
             _%object144977144982%_
             _%key144967%_
             _%value144968%_)))))
    (define ::HashTable-set!
      (lambda (_%self144724144985%_ _%key144986%_ _%value144987%_)
        (let* ((_%self144724144992%_
                (let ((_%$obj144989%_ _%self144724144985%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144989%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144989%_)))
                           '#t)
                      _%$obj144989%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144989%_)))))
               (_%self144724144994%_ _%self144724144992%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145002145007%_
                       (##unchecked-structure-ref
                        _%self144724144994%_
                        '1
                        '#f
                        'set!))
                      (_%method145003145008%_
                       (##unchecked-structure-ref
                        _%self144724144994%_
                        '8
                        '#f
                        'set!)))
                  (_%method145003145008%_
                   _%object145002145007%_
                   _%key144986%_
                   _%value144987%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145009145014%_
                       (##unchecked-structure-ref
                        _%self144724144994%_
                        '1
                        '#f
                        'set!))
                      (_%method145010145015%_
                       (##unchecked-structure-ref
                        _%self144724144994%_
                        '8
                        '#f
                        'set!)))
                  (_%method145010145015%_
                   _%object145009145014%_
                   _%key144986%_
                   _%value144987%_)))))))
    (define __HashTable-update!
      (lambda (_%self145018145261%_
               _%key145262%_
               _%proc145263%_
               _%default145264%_)
        (let* ((_%self145018145266%_ _%self145018145261%_)
               (_%proc145273%_ _%proc145263%_))
          (declare (not safe))
          (let ((_%object145281145286%_
                 (##unchecked-structure-ref
                  _%self145018145266%_
                  '1
                  '#f
                  'update!))
                (_%method145282145287%_
                 (##unchecked-structure-ref
                  _%self145018145266%_
                  '9
                  '#f
                  'update!)))
            (_%method145282145287%_
             _%object145281145286%_
             _%key145262%_
             _%proc145273%_
             _%default145264%_)))))
    (define ::HashTable-update!
      (lambda (_%self145019145289%_
               _%key145290%_
               _%proc145291%_
               _%default145292%_)
        (let* ((_%self145019145297%_
                (let ((_%$obj145294%_ _%self145019145289%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145294%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145294%_)))
                           '#t)
                      _%$obj145294%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145294%_)))))
               (_%self145019145299%_ _%self145019145297%_))
          (if (procedure? _%proc145291%_)
              (let ((_%proc145308%_ _%proc145291%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object145317145322%_
                             (##unchecked-structure-ref
                              _%self145019145299%_
                              '1
                              '#f
                              'update!))
                            (_%method145318145323%_
                             (##unchecked-structure-ref
                              _%self145019145299%_
                              '9
                              '#f
                              'update!)))
                        (_%method145318145323%_
                         _%object145317145322%_
                         _%key145290%_
                         _%proc145308%_
                         _%default145292%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object145324145329%_
                             (##unchecked-structure-ref
                              _%self145019145299%_
                              '1
                              '#f
                              'update!))
                            (_%method145325145330%_
                             (##unchecked-structure-ref
                              _%self145019145299%_
                              '9
                              '#f
                              'update!)))
                        (_%method145325145330%_
                         _%object145324145329%_
                         _%key145290%_
                         _%proc145308%_
                         _%default145292%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc145291%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp159351 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp159351
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj159343
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj159343
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj159343))
    (define make-Locker
      (lambda (_%obj157952%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj157952%_))))
    (define try-Locker
      (lambda (_%obj157950%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj157950%_))))
    (define Locker?
      (lambda (_%obj157948%_)
        (let ((__tmp159352
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj157948%_ __tmp159352))))
    (define is-Locker?
      (lambda (_%obj157945%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj157945%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self145333145576%_)
        (let ((_%self145333145578%_ _%self145333145576%_))
          (declare (not safe))
          (let ((_%object145585145590%_
                 (##unchecked-structure-ref
                  _%self145333145578%_
                  '1
                  '#f
                  'read-lock!))
                (_%method145586145591%_
                 (##unchecked-structure-ref
                  _%self145333145578%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method145586145591%_ _%object145585145590%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self145334145593%_)
        (let* ((_%self145334145598%_
                (let ((_%$obj145595%_ _%self145334145593%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145595%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145595%_)))
                           '#t)
                      _%$obj145595%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj145595%_)))))
               (_%self145334145600%_ _%self145334145598%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145608145613%_
                       (##unchecked-structure-ref
                        _%self145334145600%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method145609145614%_
                       (##unchecked-structure-ref
                        _%self145334145600%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method145609145614%_ _%object145608145613%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145615145620%_
                       (##unchecked-structure-ref
                        _%self145334145600%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method145616145621%_
                       (##unchecked-structure-ref
                        _%self145334145600%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method145616145621%_ _%object145615145620%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self145624145867%_)
        (let ((_%self145624145869%_ _%self145624145867%_))
          (declare (not safe))
          (let ((_%object145876145881%_
                 (##unchecked-structure-ref
                  _%self145624145869%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method145877145882%_
                 (##unchecked-structure-ref
                  _%self145624145869%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method145877145882%_ _%object145876145881%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self145625145884%_)
        (let* ((_%self145625145889%_
                (let ((_%$obj145886%_ _%self145625145884%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145886%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145886%_)))
                           '#t)
                      _%$obj145886%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj145886%_)))))
               (_%self145625145891%_ _%self145625145889%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145899145904%_
                       (##unchecked-structure-ref
                        _%self145625145891%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method145900145905%_
                       (##unchecked-structure-ref
                        _%self145625145891%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method145900145905%_ _%object145899145904%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145906145911%_
                       (##unchecked-structure-ref
                        _%self145625145891%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method145907145912%_
                       (##unchecked-structure-ref
                        _%self145625145891%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method145907145912%_ _%object145906145911%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self145915146158%_)
        (let ((_%self145915146160%_ _%self145915146158%_))
          (declare (not safe))
          (let ((_%object146167146172%_
                 (##unchecked-structure-ref
                  _%self145915146160%_
                  '1
                  '#f
                  'write-lock!))
                (_%method146168146173%_
                 (##unchecked-structure-ref
                  _%self145915146160%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method146168146173%_ _%object146167146172%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self145916146175%_)
        (let* ((_%self145916146180%_
                (let ((_%$obj146177%_ _%self145916146175%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146177%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146177%_)))
                           '#t)
                      _%$obj146177%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj146177%_)))))
               (_%self145916146182%_ _%self145916146180%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146190146195%_
                       (##unchecked-structure-ref
                        _%self145916146182%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method146191146196%_
                       (##unchecked-structure-ref
                        _%self145916146182%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method146191146196%_ _%object146190146195%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146197146202%_
                       (##unchecked-structure-ref
                        _%self145916146182%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method146198146203%_
                       (##unchecked-structure-ref
                        _%self145916146182%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method146198146203%_ _%object146197146202%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self146206146449%_)
        (let ((_%self146206146451%_ _%self146206146449%_))
          (declare (not safe))
          (let ((_%object146458146463%_
                 (##unchecked-structure-ref
                  _%self146206146451%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method146459146464%_
                 (##unchecked-structure-ref
                  _%self146206146451%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method146459146464%_ _%object146458146463%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self146207146466%_)
        (let* ((_%self146207146471%_
                (let ((_%$obj146468%_ _%self146207146466%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146468%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146468%_)))
                           '#t)
                      _%$obj146468%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj146468%_)))))
               (_%self146207146473%_ _%self146207146471%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146481146486%_
                       (##unchecked-structure-ref
                        _%self146207146473%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method146482146487%_
                       (##unchecked-structure-ref
                        _%self146207146473%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method146482146487%_ _%object146481146486%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146488146493%_
                       (##unchecked-structure-ref
                        _%self146207146473%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method146489146494%_
                       (##unchecked-structure-ref
                        _%self146207146473%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method146489146494%_ _%object146488146493%_)))))))
    (let* ((_%klass157908%_ __table::t)
           (_%id157911%_ 'HashTable::ref)
           (_%proc157914%_ raw-table-ref)
           (_%rebind?157917%_ '#f)
           (_%id157922%_ _%id157911%_)
           (_%proc157935%_ _%proc157914%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157908%_
       _%id157922%_
       _%proc157935%_
       _%rebind?157917%_))
    (let* ((_%klass157871%_ __table::t)
           (_%id157874%_ 'HashTable::set!)
           (_%proc157877%_ raw-table-set!)
           (_%rebind?157880%_ '#f)
           (_%id157885%_ _%id157874%_)
           (_%proc157898%_ _%proc157877%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157871%_
       _%id157885%_
       _%proc157898%_
       _%rebind?157880%_))
    (let* ((_%klass157834%_ __table::t)
           (_%id157837%_ 'HashTable::update!)
           (_%proc157840%_ raw-table-update!)
           (_%rebind?157843%_ '#f)
           (_%id157848%_ _%id157837%_)
           (_%proc157861%_ _%proc157840%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157834%_
       _%id157848%_
       _%proc157861%_
       _%rebind?157843%_))
    (let* ((_%klass157797%_ __table::t)
           (_%id157800%_ 'HashTable::delete!)
           (_%proc157803%_ raw-table-delete!)
           (_%rebind?157806%_ '#f)
           (_%id157811%_ _%id157800%_)
           (_%proc157824%_ _%proc157803%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157797%_
       _%id157811%_
       _%proc157824%_
       _%rebind?157806%_))
    (let* ((_%klass157760%_ __table::t)
           (_%id157763%_ 'HashTable::for-each)
           (_%proc157766%_ raw-table-for-each)
           (_%rebind?157769%_ '#f)
           (_%id157774%_ _%id157763%_)
           (_%proc157787%_ _%proc157766%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157760%_
       _%id157774%_
       _%proc157787%_
       _%rebind?157769%_))
    (let* ((_%klass157723%_ __table::t)
           (_%id157726%_ 'HashTable::length)
           (_%proc157729%_ &raw-table-count)
           (_%rebind?157732%_ '#f)
           (_%id157737%_ _%id157726%_)
           (_%proc157750%_ _%proc157729%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157723%_
       _%id157737%_
       _%proc157750%_
       _%rebind?157732%_))
    (let* ((_%klass157686%_ __table::t)
           (_%id157689%_ 'HashTable::copy)
           (_%proc157692%_ raw-table-copy)
           (_%rebind?157695%_ '#f)
           (_%id157700%_ _%id157689%_)
           (_%proc157713%_ _%proc157692%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157686%_
       _%id157700%_
       _%proc157713%_
       _%rebind?157695%_))
    (let* ((_%klass157649%_ __table::t)
           (_%id157652%_ 'HashTable::clear!)
           (_%proc157655%_ raw-table-clear!)
           (_%rebind?157658%_ '#f)
           (_%id157663%_ _%id157652%_)
           (_%proc157676%_ _%proc157655%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157649%_
       _%id157663%_
       _%proc157676%_
       _%rebind?157658%_))
    (let* ((_%klass157612%_ __gc-table::t)
           (_%id157615%_ 'HashTable::ref)
           (_%proc157618%_ gc-table-ref)
           (_%rebind?157621%_ '#f)
           (_%id157626%_ _%id157615%_)
           (_%proc157639%_ _%proc157618%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157612%_
       _%id157626%_
       _%proc157639%_
       _%rebind?157621%_))
    (let* ((_%klass157575%_ __gc-table::t)
           (_%id157578%_ 'HashTable::set!)
           (_%proc157581%_ gc-table-set!)
           (_%rebind?157584%_ '#f)
           (_%id157589%_ _%id157578%_)
           (_%proc157602%_ _%proc157581%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157575%_
       _%id157589%_
       _%proc157602%_
       _%rebind?157584%_))
    (let* ((_%klass157538%_ __gc-table::t)
           (_%id157541%_ 'HashTable::update!)
           (_%proc157544%_ gc-table-update!)
           (_%rebind?157547%_ '#f)
           (_%id157552%_ _%id157541%_)
           (_%proc157565%_ _%proc157544%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157538%_
       _%id157552%_
       _%proc157565%_
       _%rebind?157547%_))
    (let* ((_%klass157501%_ __gc-table::t)
           (_%id157504%_ 'HashTable::delete!)
           (_%proc157507%_ gc-table-delete!)
           (_%rebind?157510%_ '#f)
           (_%id157515%_ _%id157504%_)
           (_%proc157528%_ _%proc157507%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157501%_
       _%id157515%_
       _%proc157528%_
       _%rebind?157510%_))
    (let* ((_%klass157464%_ __gc-table::t)
           (_%id157467%_ 'HashTable::for-each)
           (_%proc157470%_ gc-table-for-each)
           (_%rebind?157473%_ '#f)
           (_%id157478%_ _%id157467%_)
           (_%proc157491%_ _%proc157470%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157464%_
       _%id157478%_
       _%proc157491%_
       _%rebind?157473%_))
    (let* ((_%klass157427%_ __gc-table::t)
           (_%id157430%_ 'HashTable::length)
           (_%proc157433%_ gc-table-length)
           (_%rebind?157436%_ '#f)
           (_%id157441%_ _%id157430%_)
           (_%proc157454%_ _%proc157433%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157427%_
       _%id157441%_
       _%proc157454%_
       _%rebind?157436%_))
    (let* ((_%klass157390%_ __gc-table::t)
           (_%id157393%_ 'HashTable::copy)
           (_%proc157396%_ gc-table-copy)
           (_%rebind?157399%_ '#f)
           (_%id157404%_ _%id157393%_)
           (_%proc157417%_ _%proc157396%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157390%_
       _%id157404%_
       _%proc157417%_
       _%rebind?157399%_))
    (let* ((_%klass157353%_ __gc-table::t)
           (_%id157356%_ 'HashTable::clear!)
           (_%proc157359%_ gc-table-clear!)
           (_%rebind?157362%_ '#f)
           (_%id157367%_ _%id157356%_)
           (_%proc157380%_ _%proc157359%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157353%_
       _%id157367%_
       _%proc157380%_
       _%rebind?157362%_))
    (define gambit-table-update!
      (lambda (_%table157346%_
               _%key157347%_
               _%update157348%_
               _%default157349%_)
        (let ((_%result157351%_
               (table-ref _%table157346%_ _%key157347%_ _%default157349%_)))
          (table-set!
           _%table157346%_
           _%key157347%_
           (_%update157348%_ _%default157349%_)))))
    (define gambit-table-for-each
      (lambda (_%table157343%_ _%proc157344%_)
        (table-for-each _%proc157344%_ _%table157343%_)))
    (define gambit-table-clear!
      (lambda (_%table157341%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table157341%_ '0 '5 '#f '#f))))
    (let* ((_%klass157304%_ (macro-type-table))
           (_%id157307%_ 'HashTable::ref)
           (_%proc157310%_ table-ref)
           (_%rebind?157313%_ '#f)
           (_%id157318%_ _%id157307%_)
           (_%proc157331%_ _%proc157310%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157304%_
       _%id157318%_
       _%proc157331%_
       _%rebind?157313%_))
    (let* ((_%klass157267%_ (macro-type-table))
           (_%id157270%_ 'HashTable::set!)
           (_%proc157273%_ table-set!)
           (_%rebind?157276%_ '#f)
           (_%id157281%_ _%id157270%_)
           (_%proc157294%_ _%proc157273%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157267%_
       _%id157281%_
       _%proc157294%_
       _%rebind?157276%_))
    (let* ((_%klass157230%_ (macro-type-table))
           (_%id157233%_ 'HashTable::update!)
           (_%proc157236%_ gambit-table-update!)
           (_%rebind?157239%_ '#f)
           (_%id157244%_ _%id157233%_)
           (_%proc157257%_ _%proc157236%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157230%_
       _%id157244%_
       _%proc157257%_
       _%rebind?157239%_))
    (let* ((_%klass157193%_ (macro-type-table))
           (_%id157196%_ 'HashTable::delete!)
           (_%proc157199%_ table-set!)
           (_%rebind?157202%_ '#f)
           (_%id157207%_ _%id157196%_)
           (_%proc157220%_ _%proc157199%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157193%_
       _%id157207%_
       _%proc157220%_
       _%rebind?157202%_))
    (let* ((_%klass157156%_ (macro-type-table))
           (_%id157159%_ 'HashTable::for-each)
           (_%proc157162%_ gambit-table-for-each)
           (_%rebind?157165%_ '#f)
           (_%id157170%_ _%id157159%_)
           (_%proc157183%_ _%proc157162%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157156%_
       _%id157170%_
       _%proc157183%_
       _%rebind?157165%_))
    (let* ((_%klass157119%_ (macro-type-table))
           (_%id157122%_ 'HashTable::length)
           (_%proc157125%_ table-length)
           (_%rebind?157128%_ '#f)
           (_%id157133%_ _%id157122%_)
           (_%proc157146%_ _%proc157125%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157119%_
       _%id157133%_
       _%proc157146%_
       _%rebind?157128%_))
    (let* ((_%klass157082%_ (macro-type-table))
           (_%id157085%_ 'HashTable::copy)
           (_%proc157088%_ table-copy)
           (_%rebind?157091%_ '#f)
           (_%id157096%_ _%id157085%_)
           (_%proc157109%_ _%proc157088%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157082%_
       _%id157096%_
       _%proc157109%_
       _%rebind?157091%_))
    (let* ((_%klass157045%_ (macro-type-table))
           (_%id157048%_ 'HashTable::clear!)
           (_%proc157051%_ gambit-table-clear!)
           (_%rebind?157054%_ '#f)
           (_%id157059%_ _%id157048%_)
           (_%proc157072%_ _%proc157051%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157045%_
       _%id157059%_
       _%proc157072%_
       _%rebind?157054%_))
    (define hash-table::t
      (let* ((_%slots157008%_ '(table count free hash test seed))
             (_%slot-vector157010%_ (list->vector (cons '#f _%slots157008%_)))
             (_%slot-table157036%_
              (let ((_%slot-table157012%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp159355
                       (lambda (_%slot157014%_ _%field157015%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table157012%_
                            _%slot157014%_
                            _%field157015%_))
                         (let ((__tmp159356
                                (let ((_%sym157017%_ _%slot157014%_))
                                  (if (symbol? _%sym157017%_)
                                      (let ((_%sym157022%_ _%sym157017%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym157022%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym157017%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table157012%_
                            __tmp159356
                            _%field157015%_))))
                      (__tmp159353
                       (let ((__tmp159354
                              (let ()
                                (declare (not safe))
                                (##length _%slots157008%_))))
                         (declare (not safe))
                         (##iota __tmp159354 '1))))
                  (declare (not safe))
                  (##for-each __tmp159355 _%slots157008%_ __tmp159353))
                _%slot-table157012%_))
             (_%flags157038%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields157040%_ '#())
             (_%properties157042%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots157008%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp159357 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags157038%_
         __table::t
         _%fields157040%_
         __tmp159357
         _%slot-vector157010%_
         _%slot-table157036%_
         _%properties157042%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots156971%_ '(gcht immediate))
             (_%slot-vector156973%_ (list->vector (cons '#f _%slots156971%_)))
             (_%slot-table156999%_
              (let ((_%slot-table156975%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp159360
                       (lambda (_%slot156977%_ _%field156978%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table156975%_
                            _%slot156977%_
                            _%field156978%_))
                         (let ((__tmp159361
                                (let ((_%sym156980%_ _%slot156977%_))
                                  (if (symbol? _%sym156980%_)
                                      (let ((_%sym156985%_ _%sym156980%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym156985%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym156980%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table156975%_
                            __tmp159361
                            _%field156978%_))))
                      (__tmp159358
                       (let ((__tmp159359
                              (let ()
                                (declare (not safe))
                                (##length _%slots156971%_))))
                         (declare (not safe))
                         (##iota __tmp159359 '1))))
                  (declare (not safe))
                  (##for-each __tmp159360 _%slots156971%_ __tmp159358))
                _%slot-table156975%_))
             (_%flags157001%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields157003%_ '#())
             (_%properties157005%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots156971%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp159362 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags157001%_
         __gc-table::t
         _%fields157003%_
         __tmp159362
         _%slot-vector156973%_
         _%slot-table156999%_
         _%properties157005%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp159364 (list))
            (__tmp159363
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp159364
         '(table lock)
         __tmp159363
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args156968%_
        (apply make-instance locked-hash-table::t _%$args156968%_)))
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
      (let ((__tmp159366 (list))
            (__tmp159365
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp159366
         '(table key-check)
         __tmp159365
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args156965%_
        (apply make-instance checked-hash-table::t _%$args156965%_)))
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
      (let ((__tmp159368 (list hash-table::t))
            (__tmp159367 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp159368
         '()
         __tmp159367
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args156962%_
        (apply make-instance eq-hash-table::t _%$args156962%_)))
    (define eqv-hash-table::t
      (let ((__tmp159370 (list hash-table::t))
            (__tmp159369 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp159370
         '()
         __tmp159369
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args156959%_
        (apply make-instance eqv-hash-table::t _%$args156959%_)))
    (define symbol-hash-table::t
      (let ((__tmp159372 (list hash-table::t))
            (__tmp159371 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp159372
         '()
         __tmp159371
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args156956%_
        (apply make-instance symbol-hash-table::t _%$args156956%_)))
    (define string-hash-table::t
      (let ((__tmp159374 (list hash-table::t))
            (__tmp159373 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp159374
         '()
         __tmp159373
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args156953%_
        (apply make-instance string-hash-table::t _%$args156953%_)))
    (define immediate-hash-table::t
      (let ((__tmp159376 (list hash-table::t))
            (__tmp159375 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp159376
         '()
         __tmp159375
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args156950%_
        (apply make-instance immediate-hash-table::t _%$args156950%_)))
    (let* ((_%klass156913%_ hash-table::t)
           (_%id156916%_ 'HashTable::ref)
           (_%proc156919%_ raw-table-ref)
           (_%rebind?156922%_ '#f)
           (_%id156927%_ _%id156916%_)
           (_%proc156940%_ _%proc156919%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156913%_
       _%id156927%_
       _%proc156940%_
       _%rebind?156922%_))
    (let* ((_%klass156876%_ hash-table::t)
           (_%id156879%_ 'HashTable::set!)
           (_%proc156882%_ raw-table-set!)
           (_%rebind?156885%_ '#f)
           (_%id156890%_ _%id156879%_)
           (_%proc156903%_ _%proc156882%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156876%_
       _%id156890%_
       _%proc156903%_
       _%rebind?156885%_))
    (let* ((_%klass156839%_ hash-table::t)
           (_%id156842%_ 'HashTable::update!)
           (_%proc156845%_ raw-table-update!)
           (_%rebind?156848%_ '#f)
           (_%id156853%_ _%id156842%_)
           (_%proc156866%_ _%proc156845%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156839%_
       _%id156853%_
       _%proc156866%_
       _%rebind?156848%_))
    (let* ((_%klass156802%_ hash-table::t)
           (_%id156805%_ 'HashTable::delete!)
           (_%proc156808%_ raw-table-delete!)
           (_%rebind?156811%_ '#f)
           (_%id156816%_ _%id156805%_)
           (_%proc156829%_ _%proc156808%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156802%_
       _%id156816%_
       _%proc156829%_
       _%rebind?156811%_))
    (let* ((_%klass156765%_ hash-table::t)
           (_%id156768%_ 'HashTable::for-each)
           (_%proc156771%_ raw-table-for-each)
           (_%rebind?156774%_ '#f)
           (_%id156779%_ _%id156768%_)
           (_%proc156792%_ _%proc156771%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156765%_
       _%id156779%_
       _%proc156792%_
       _%rebind?156774%_))
    (let* ((_%klass156728%_ hash-table::t)
           (_%id156731%_ 'HashTable::length)
           (_%proc156734%_ &raw-table-count)
           (_%rebind?156737%_ '#f)
           (_%id156742%_ _%id156731%_)
           (_%proc156755%_ _%proc156734%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156728%_
       _%id156742%_
       _%proc156755%_
       _%rebind?156737%_))
    (let* ((_%klass156691%_ hash-table::t)
           (_%id156694%_ 'HashTable::copy)
           (_%proc156697%_ raw-table-copy)
           (_%rebind?156700%_ '#f)
           (_%id156705%_ _%id156694%_)
           (_%proc156718%_ _%proc156697%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156691%_
       _%id156705%_
       _%proc156718%_
       _%rebind?156700%_))
    (let* ((_%klass156654%_ hash-table::t)
           (_%id156657%_ 'HashTable::clear!)
           (_%proc156660%_ raw-table-clear!)
           (_%rebind?156663%_ '#f)
           (_%id156668%_ _%id156657%_)
           (_%proc156681%_ _%proc156660%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156654%_
       _%id156668%_
       _%proc156681%_
       _%rebind?156663%_))
    (let* ((_%klass156617%_ eq-hash-table::t)
           (_%id156620%_ 'HashTable::ref)
           (_%proc156623%_ eq-table-ref)
           (_%rebind?156626%_ '#f)
           (_%id156631%_ _%id156620%_)
           (_%proc156644%_ _%proc156623%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156617%_
       _%id156631%_
       _%proc156644%_
       _%rebind?156626%_))
    (let* ((_%klass156580%_ eq-hash-table::t)
           (_%id156583%_ 'HashTable::set!)
           (_%proc156586%_ eq-table-set!)
           (_%rebind?156589%_ '#f)
           (_%id156594%_ _%id156583%_)
           (_%proc156607%_ _%proc156586%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156580%_
       _%id156594%_
       _%proc156607%_
       _%rebind?156589%_))
    (let* ((_%klass156543%_ eq-hash-table::t)
           (_%id156546%_ 'HashTable::update!)
           (_%proc156549%_ eq-table-update!)
           (_%rebind?156552%_ '#f)
           (_%id156557%_ _%id156546%_)
           (_%proc156570%_ _%proc156549%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156543%_
       _%id156557%_
       _%proc156570%_
       _%rebind?156552%_))
    (let* ((_%klass156506%_ eq-hash-table::t)
           (_%id156509%_ 'HashTable::delete!)
           (_%proc156512%_ eq-table-delete!)
           (_%rebind?156515%_ '#f)
           (_%id156520%_ _%id156509%_)
           (_%proc156533%_ _%proc156512%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156506%_
       _%id156520%_
       _%proc156533%_
       _%rebind?156515%_))
    (let* ((_%klass156469%_ eqv-hash-table::t)
           (_%id156472%_ 'HashTable::ref)
           (_%proc156475%_ eqv-table-ref)
           (_%rebind?156478%_ '#f)
           (_%id156483%_ _%id156472%_)
           (_%proc156496%_ _%proc156475%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156469%_
       _%id156483%_
       _%proc156496%_
       _%rebind?156478%_))
    (let* ((_%klass156432%_ eqv-hash-table::t)
           (_%id156435%_ 'HashTable::set!)
           (_%proc156438%_ eqv-table-set!)
           (_%rebind?156441%_ '#f)
           (_%id156446%_ _%id156435%_)
           (_%proc156459%_ _%proc156438%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156432%_
       _%id156446%_
       _%proc156459%_
       _%rebind?156441%_))
    (let* ((_%klass156395%_ eqv-hash-table::t)
           (_%id156398%_ 'HashTable::update!)
           (_%proc156401%_ eqv-table-update!)
           (_%rebind?156404%_ '#f)
           (_%id156409%_ _%id156398%_)
           (_%proc156422%_ _%proc156401%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156395%_
       _%id156409%_
       _%proc156422%_
       _%rebind?156404%_))
    (let* ((_%klass156358%_ eqv-hash-table::t)
           (_%id156361%_ 'HashTable::delete!)
           (_%proc156364%_ eqv-table-delete!)
           (_%rebind?156367%_ '#f)
           (_%id156372%_ _%id156361%_)
           (_%proc156385%_ _%proc156364%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156358%_
       _%id156372%_
       _%proc156385%_
       _%rebind?156367%_))
    (let* ((_%klass156321%_ symbol-hash-table::t)
           (_%id156324%_ 'HashTable::ref)
           (_%proc156327%_ symbolic-table-ref)
           (_%rebind?156330%_ '#f)
           (_%id156335%_ _%id156324%_)
           (_%proc156348%_ _%proc156327%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156321%_
       _%id156335%_
       _%proc156348%_
       _%rebind?156330%_))
    (let* ((_%klass156284%_ symbol-hash-table::t)
           (_%id156287%_ 'HashTable::set!)
           (_%proc156290%_ symbolic-table-set!)
           (_%rebind?156293%_ '#f)
           (_%id156298%_ _%id156287%_)
           (_%proc156311%_ _%proc156290%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156284%_
       _%id156298%_
       _%proc156311%_
       _%rebind?156293%_))
    (let* ((_%klass156247%_ symbol-hash-table::t)
           (_%id156250%_ 'HashTable::update!)
           (_%proc156253%_ symbolic-table-update!)
           (_%rebind?156256%_ '#f)
           (_%id156261%_ _%id156250%_)
           (_%proc156274%_ _%proc156253%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156247%_
       _%id156261%_
       _%proc156274%_
       _%rebind?156256%_))
    (let* ((_%klass156210%_ symbol-hash-table::t)
           (_%id156213%_ 'HashTable::delete!)
           (_%proc156216%_ symbolic-table-delete!)
           (_%rebind?156219%_ '#f)
           (_%id156224%_ _%id156213%_)
           (_%proc156237%_ _%proc156216%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156210%_
       _%id156224%_
       _%proc156237%_
       _%rebind?156219%_))
    (let* ((_%klass156173%_ string-hash-table::t)
           (_%id156176%_ 'HashTable::ref)
           (_%proc156179%_ string-table-ref)
           (_%rebind?156182%_ '#f)
           (_%id156187%_ _%id156176%_)
           (_%proc156200%_ _%proc156179%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156173%_
       _%id156187%_
       _%proc156200%_
       _%rebind?156182%_))
    (let* ((_%klass156136%_ string-hash-table::t)
           (_%id156139%_ 'HashTable::set!)
           (_%proc156142%_ string-table-set!)
           (_%rebind?156145%_ '#f)
           (_%id156150%_ _%id156139%_)
           (_%proc156163%_ _%proc156142%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156136%_
       _%id156150%_
       _%proc156163%_
       _%rebind?156145%_))
    (let* ((_%klass156099%_ string-hash-table::t)
           (_%id156102%_ 'HashTable::update!)
           (_%proc156105%_ string-table-update!)
           (_%rebind?156108%_ '#f)
           (_%id156113%_ _%id156102%_)
           (_%proc156126%_ _%proc156105%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156099%_
       _%id156113%_
       _%proc156126%_
       _%rebind?156108%_))
    (let* ((_%klass156062%_ string-hash-table::t)
           (_%id156065%_ 'HashTable::delete!)
           (_%proc156068%_ string-table-delete!)
           (_%rebind?156071%_ '#f)
           (_%id156076%_ _%id156065%_)
           (_%proc156089%_ _%proc156068%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156062%_
       _%id156076%_
       _%proc156089%_
       _%rebind?156071%_))
    (let* ((_%klass156025%_ immediate-hash-table::t)
           (_%id156028%_ 'HashTable::ref)
           (_%proc156031%_ immediate-table-ref)
           (_%rebind?156034%_ '#f)
           (_%id156039%_ _%id156028%_)
           (_%proc156052%_ _%proc156031%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156025%_
       _%id156039%_
       _%proc156052%_
       _%rebind?156034%_))
    (let* ((_%klass155988%_ immediate-hash-table::t)
           (_%id155991%_ 'HashTable::set!)
           (_%proc155994%_ immediate-table-set!)
           (_%rebind?155997%_ '#f)
           (_%id156002%_ _%id155991%_)
           (_%proc156015%_ _%proc155994%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155988%_
       _%id156002%_
       _%proc156015%_
       _%rebind?155997%_))
    (let* ((_%klass155951%_ immediate-hash-table::t)
           (_%id155954%_ 'HashTable::update!)
           (_%proc155957%_ immediate-table-update!)
           (_%rebind?155960%_ '#f)
           (_%id155965%_ _%id155954%_)
           (_%proc155978%_ _%proc155957%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155951%_
       _%id155965%_
       _%proc155978%_
       _%rebind?155960%_))
    (let* ((_%klass155914%_ immediate-hash-table::t)
           (_%id155917%_ 'HashTable::delete!)
           (_%proc155920%_ immediate-table-delete!)
           (_%rebind?155923%_ '#f)
           (_%id155928%_ _%id155917%_)
           (_%proc155941%_ _%proc155920%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155914%_
       _%id155928%_
       _%proc155941%_
       _%rebind?155923%_))
    (let* ((_%klass155877%_ gc-hash-table::t)
           (_%id155880%_ 'HashTable::ref)
           (_%proc155883%_ gc-table-ref)
           (_%rebind?155886%_ '#f)
           (_%id155891%_ _%id155880%_)
           (_%proc155904%_ _%proc155883%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155877%_
       _%id155891%_
       _%proc155904%_
       _%rebind?155886%_))
    (let* ((_%klass155840%_ gc-hash-table::t)
           (_%id155843%_ 'HashTable::set!)
           (_%proc155846%_ gc-table-set!)
           (_%rebind?155849%_ '#f)
           (_%id155854%_ _%id155843%_)
           (_%proc155867%_ _%proc155846%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155840%_
       _%id155854%_
       _%proc155867%_
       _%rebind?155849%_))
    (let* ((_%klass155803%_ gc-hash-table::t)
           (_%id155806%_ 'HashTable::update!)
           (_%proc155809%_ gc-table-update!)
           (_%rebind?155812%_ '#f)
           (_%id155817%_ _%id155806%_)
           (_%proc155830%_ _%proc155809%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155803%_
       _%id155817%_
       _%proc155830%_
       _%rebind?155812%_))
    (let* ((_%klass155766%_ gc-hash-table::t)
           (_%id155769%_ 'HashTable::delete!)
           (_%proc155772%_ gc-table-delete!)
           (_%rebind?155775%_ '#f)
           (_%id155780%_ _%id155769%_)
           (_%proc155793%_ _%proc155772%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155766%_
       _%id155780%_
       _%proc155793%_
       _%rebind?155775%_))
    (let* ((_%klass155729%_ gc-hash-table::t)
           (_%id155732%_ 'HashTable::for-each)
           (_%proc155735%_ gc-table-for-each)
           (_%rebind?155738%_ '#f)
           (_%id155743%_ _%id155732%_)
           (_%proc155756%_ _%proc155735%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155729%_
       _%id155743%_
       _%proc155756%_
       _%rebind?155738%_))
    (let* ((_%klass155692%_ gc-hash-table::t)
           (_%id155695%_ 'HashTable::length)
           (_%proc155698%_ gc-table-length)
           (_%rebind?155701%_ '#f)
           (_%id155706%_ _%id155695%_)
           (_%proc155719%_ _%proc155698%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155692%_
       _%id155706%_
       _%proc155719%_
       _%rebind?155701%_))
    (let* ((_%klass155655%_ gc-hash-table::t)
           (_%id155658%_ 'HashTable::copy)
           (_%proc155661%_ gc-table-copy)
           (_%rebind?155664%_ '#f)
           (_%id155669%_ _%id155658%_)
           (_%proc155682%_ _%proc155661%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155655%_
       _%id155669%_
       _%proc155682%_
       _%rebind?155664%_))
    (let* ((_%klass155618%_ gc-hash-table::t)
           (_%id155621%_ 'HashTable::clear!)
           (_%proc155624%_ gc-table-clear!)
           (_%rebind?155627%_ '#f)
           (_%id155632%_ _%id155621%_)
           (_%proc155645%_ _%proc155624%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155618%_
       _%id155632%_
       _%proc155645%_
       _%rebind?155627%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref146879%_
      (lambda (_%self155539%_ _%key155541%_ _%default155542%_)
        (let* ((_%self155545%_ _%self155539%_)
               (_%key155554%_ _%key155541%_)
               (_%default155562%_ _%default155542%_))
          (let ((_%h155571%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155545%_ '1 '#f '#f)))
                (_%l155573%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155545%_ '2 '#f '#f))))
            (let ((__tmp159379
                   (lambda ()
                     (let ((_%self145331155577%_ _%l155573%_))
                       (declare (not safe))
                       (let ((_%object155580155585%_
                              (##unchecked-structure-ref
                               _%self145331155577%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method155581155586%_
                              (##unchecked-structure-ref
                               _%self145331155577%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method155581155586%_ _%object155580155585%_)))))
                  (__tmp159378
                   (lambda ()
                     (let* ((_%self144426155589%_ _%h155571%_)
                            (_%key155592%_ _%key155554%_)
                            (_%default155595%_ _%default155562%_))
                       (declare (not safe))
                       (let ((_%object155598155603%_
                              (##unchecked-structure-ref
                               _%self144426155589%_
                               '1
                               '#f
                               'ref))
                             (_%method155599155604%_
                              (##unchecked-structure-ref
                               _%self144426155589%_
                               '7
                               '#f
                               'ref)))
                         (_%method155599155604%_
                          _%object155598155603%_
                          _%key155592%_
                          _%default155595%_)))))
                  (__tmp159377
                   (lambda ()
                     (let ((_%self145622155607%_ _%l155573%_))
                       (declare (not safe))
                       (let ((_%object155610155615%_
                              (##unchecked-structure-ref
                               _%self145622155607%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method155611155616%_
                              (##unchecked-structure-ref
                               _%self145622155607%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method155611155616%_ _%object155610155615%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp159379 __tmp159378 __tmp159377))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref146879%_
       '#f))
    (define _%locked-hash-table::HashTable::set!146881%_
      (lambda (_%self155337%_ _%key155339%_ _%value155340%_)
        (let* ((_%self155343%_ _%self155337%_)
               (_%key155352%_ _%key155339%_)
               (_%value155360%_ _%value155340%_))
          (let ((_%h155369%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155343%_ '1 '#f '#f)))
                (_%l155371%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155343%_ '2 '#f '#f))))
            (let ((__tmp159382
                   (lambda ()
                     (let ((_%self145913155375%_ _%l155371%_))
                       (declare (not safe))
                       (let ((_%object155378155383%_
                              (##unchecked-structure-ref
                               _%self145913155375%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method155379155384%_
                              (##unchecked-structure-ref
                               _%self145913155375%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method155379155384%_ _%object155378155383%_)))))
                  (__tmp159381
                   (lambda ()
                     (let* ((_%self144721155387%_ _%h155369%_)
                            (_%key155390%_ _%key155352%_)
                            (_%value155393%_ _%value155360%_))
                       (declare (not safe))
                       (let ((_%object155396155401%_
                              (##unchecked-structure-ref
                               _%self144721155387%_
                               '1
                               '#f
                               'set!))
                             (_%method155397155402%_
                              (##unchecked-structure-ref
                               _%self144721155387%_
                               '8
                               '#f
                               'set!)))
                         (_%method155397155402%_
                          _%object155396155401%_
                          _%key155390%_
                          _%value155393%_)))))
                  (__tmp159380
                   (lambda ()
                     (let ((_%self146204155405%_ _%l155371%_))
                       (declare (not safe))
                       (let ((_%object155408155413%_
                              (##unchecked-structure-ref
                               _%self146204155405%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method155409155414%_
                              (##unchecked-structure-ref
                               _%self146204155405%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method155409155414%_ _%object155408155413%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp159382 __tmp159381 __tmp159380))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!146881%_
       '#f))
    (define _%locked-hash-table::HashTable::update!146883%_
      (lambda (_%self155123%_ _%key155125%_ _%update155126%_ _%default155127%_)
        (let* ((_%self155130%_ _%self155123%_)
               (_%key155139%_ _%key155125%_)
               (_%update155147%_ _%update155126%_)
               (_%default155155%_ _%default155127%_))
          (let ((_%h155164%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155130%_ '1 '#f '#f)))
                (_%l155166%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self155130%_ '2 '#f '#f))))
            (let ((__tmp159385
                   (lambda ()
                     (let ((_%self145913155170%_ _%l155166%_))
                       (declare (not safe))
                       (let ((_%object155173155178%_
                              (##unchecked-structure-ref
                               _%self145913155170%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method155174155179%_
                              (##unchecked-structure-ref
                               _%self145913155170%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method155174155179%_ _%object155173155178%_)))))
                  (__tmp159384
                   (lambda ()
                     (let* ((_%self145016155182%_ _%h155164%_)
                            (_%key155185%_ _%key155139%_)
                            (_%proc155188%_ _%update155147%_)
                            (_%default155191%_ _%default155155%_))
                       (declare (not safe))
                       (let ((_%object155194155199%_
                              (##unchecked-structure-ref
                               _%self145016155182%_
                               '1
                               '#f
                               'update!))
                             (_%method155195155200%_
                              (##unchecked-structure-ref
                               _%self145016155182%_
                               '9
                               '#f
                               'update!)))
                         (_%method155195155200%_
                          _%object155194155199%_
                          _%key155185%_
                          _%proc155188%_
                          _%default155191%_)))))
                  (__tmp159383
                   (lambda ()
                     (let ((_%self146204155203%_ _%l155166%_))
                       (declare (not safe))
                       (let ((_%object155206155211%_
                              (##unchecked-structure-ref
                               _%self146204155203%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method155207155212%_
                              (##unchecked-structure-ref
                               _%self146204155203%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method155207155212%_ _%object155206155211%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp159385 __tmp159384 __tmp159383))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!146883%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!146885%_
      (lambda (_%self154933%_ _%key154935%_)
        (let* ((_%self154938%_ _%self154933%_) (_%key154947%_ _%key154935%_))
          (let ((_%h154956%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154938%_ '1 '#f '#f)))
                (_%l154958%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154938%_ '2 '#f '#f))))
            (let ((__tmp159388
                   (lambda ()
                     (let ((_%self145913154962%_ _%l154958%_))
                       (declare (not safe))
                       (let ((_%object154965154970%_
                              (##unchecked-structure-ref
                               _%self145913154962%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method154966154971%_
                              (##unchecked-structure-ref
                               _%self145913154962%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method154966154971%_ _%object154965154970%_)))))
                  (__tmp159387
                   (lambda ()
                     (let* ((_%self143528154974%_ _%h154956%_)
                            (_%key154977%_ _%key154947%_))
                       (declare (not safe))
                       (let ((_%object154980154985%_
                              (##unchecked-structure-ref
                               _%self143528154974%_
                               '1
                               '#f
                               'delete!))
                             (_%method154981154986%_
                              (##unchecked-structure-ref
                               _%self143528154974%_
                               '4
                               '#f
                               'delete!)))
                         (_%method154981154986%_
                          _%object154980154985%_
                          _%key154977%_)))))
                  (__tmp159386
                   (lambda ()
                     (let ((_%self146204154989%_ _%l154958%_))
                       (declare (not safe))
                       (let ((_%object154992154997%_
                              (##unchecked-structure-ref
                               _%self146204154989%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method154993154998%_
                              (##unchecked-structure-ref
                               _%self146204154989%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method154993154998%_ _%object154992154997%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp159388 __tmp159387 __tmp159386))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!146885%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each146887%_
      (lambda (_%self154743%_ _%proc154745%_)
        (let* ((_%self154748%_ _%self154743%_) (_%proc154757%_ _%proc154745%_))
          (let ((_%h154766%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154748%_ '1 '#f '#f)))
                (_%l154768%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154748%_ '2 '#f '#f))))
            (let ((__tmp159391
                   (lambda ()
                     (let ((_%self145331154772%_ _%l154768%_))
                       (declare (not safe))
                       (let ((_%object154775154780%_
                              (##unchecked-structure-ref
                               _%self145331154772%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method154776154781%_
                              (##unchecked-structure-ref
                               _%self145331154772%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method154776154781%_ _%object154775154780%_)))))
                  (__tmp159390
                   (lambda ()
                     (let* ((_%self143821154784%_ _%h154766%_)
                            (_%proc154787%_ _%proc154757%_))
                       (declare (not safe))
                       (let ((_%object154790154795%_
                              (##unchecked-structure-ref
                               _%self143821154784%_
                               '1
                               '#f
                               'for-each))
                             (_%method154791154796%_
                              (##unchecked-structure-ref
                               _%self143821154784%_
                               '5
                               '#f
                               'for-each)))
                         (_%method154791154796%_
                          _%object154790154795%_
                          _%proc154787%_)))))
                  (__tmp159389
                   (lambda ()
                     (let ((_%self145622154799%_ _%l154768%_))
                       (declare (not safe))
                       (let ((_%object154802154807%_
                              (##unchecked-structure-ref
                               _%self145622154799%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method154803154808%_
                              (##unchecked-structure-ref
                               _%self145622154799%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method154803154808%_ _%object154802154807%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp159391 __tmp159390 __tmp159389))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each146887%_
       '#f))
    (define _%locked-hash-table::HashTable::length146889%_
      (lambda (_%self154558%_)
        (let ((_%self154562%_ _%self154558%_))
          (let ((_%h154572%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154562%_ '1 '#f '#f)))
                (_%l154574%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154562%_ '2 '#f '#f))))
            ((lambda (_%g154576154578%_)
               (let ((_%val154581%_ _%g154576154578%_))
                 (if (fixnum? _%val154581%_)
                     _%val154581%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val154581%_)
                       '#!void))))
             (let ((__tmp159394
                    (lambda ()
                      (let ((_%self145331154585%_ _%l154574%_))
                        (declare (not safe))
                        (let ((_%object154588154593%_
                               (##unchecked-structure-ref
                                _%self145331154585%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method154589154594%_
                               (##unchecked-structure-ref
                                _%self145331154585%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method154589154594%_ _%object154588154593%_)))))
                   (__tmp159393
                    (lambda ()
                      (let ((_%self144132154597%_ _%h154572%_))
                        (declare (not safe))
                        (let ((_%object154600154605%_
                               (##unchecked-structure-ref
                                _%self144132154597%_
                                '1
                                '#f
                                'length))
                              (_%method154601154606%_
                               (##unchecked-structure-ref
                                _%self144132154597%_
                                '6
                                '#f
                                'length)))
                          (_%method154601154606%_ _%object154600154605%_)))))
                   (__tmp159392
                    (lambda ()
                      (let ((_%self145622154609%_ _%l154574%_))
                        (declare (not safe))
                        (let ((_%object154612154617%_
                               (##unchecked-structure-ref
                                _%self145622154609%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method154613154618%_
                               (##unchecked-structure-ref
                                _%self145622154609%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method154613154618%_ _%object154612154617%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp159394 __tmp159393 __tmp159392)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length146889%_
       '#f))
    (define _%locked-hash-table::HashTable::copy146891%_
      (lambda (_%self154377%_)
        (let ((_%self154381%_ _%self154377%_))
          (let ((_%h154391%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154381%_ '1 '#f '#f)))
                (_%l154393%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154381%_ '2 '#f '#f))))
            (let ((_%$obj154432%_
                   (let ((__tmp159397
                          (lambda ()
                            (let ((_%self145331154397%_ _%l154393%_))
                              (declare (not safe))
                              (let ((_%object154400154405%_
                                     (##unchecked-structure-ref
                                      _%self145331154397%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method154401154406%_
                                     (##unchecked-structure-ref
                                      _%self145331154397%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method154401154406%_
                                 _%object154400154405%_)))))
                         (__tmp159396
                          (lambda ()
                            (let ((_%self143234154409%_ _%h154391%_))
                              (declare (not safe))
                              (let ((_%object154412154417%_
                                     (##unchecked-structure-ref
                                      _%self143234154409%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method154413154418%_
                                     (##unchecked-structure-ref
                                      _%self143234154409%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method154413154418%_
                                 _%object154412154417%_)))))
                         (__tmp159395
                          (lambda ()
                            (let ((_%self145622154421%_ _%l154393%_))
                              (declare (not safe))
                              (let ((_%object154424154429%_
                                     (##unchecked-structure-ref
                                      _%self145622154421%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method154425154430%_
                                     (##unchecked-structure-ref
                                      _%self145622154421%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method154425154430%_
                                 _%object154424154429%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp159397 __tmp159396 __tmp159395))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj154432%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj154432%_)))
                       '#t)
                  _%$obj154432%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj154432%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy146891%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!146893%_
      (lambda (_%self154199%_)
        (let ((_%self154203%_ _%self154199%_))
          (let ((_%h154213%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154203%_ '1 '#f '#f)))
                (_%l154215%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154203%_ '2 '#f '#f))))
            (let ((__tmp159400
                   (lambda ()
                     (let ((_%self145913154219%_ _%l154215%_))
                       (declare (not safe))
                       (let ((_%object154222154227%_
                              (##unchecked-structure-ref
                               _%self145913154219%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method154223154228%_
                              (##unchecked-structure-ref
                               _%self145913154219%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method154223154228%_ _%object154222154227%_)))))
                  (__tmp159399
                   (lambda ()
                     (let ((_%self142942154231%_ _%h154213%_))
                       (declare (not safe))
                       (let ((_%object154234154239%_
                              (##unchecked-structure-ref
                               _%self142942154231%_
                               '1
                               '#f
                               'clear!))
                             (_%method154235154240%_
                              (##unchecked-structure-ref
                               _%self142942154231%_
                               '2
                               '#f
                               'clear!)))
                         (_%method154235154240%_ _%object154234154239%_)))))
                  (__tmp159398
                   (lambda ()
                     (let ((_%self146204154243%_ _%l154215%_))
                       (declare (not safe))
                       (let ((_%object154246154251%_
                              (##unchecked-structure-ref
                               _%self146204154243%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method154247154252%_
                              (##unchecked-structure-ref
                               _%self146204154243%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method154247154252%_ _%object154246154251%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp159400 __tmp159399 __tmp159398))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!146893%_
       '#f))
    (let* ((_%klass154039%_ (macro-type-mutex))
           (_%id154042%_ 'Locker::read-lock!)
           (_%proc154045%_ mutex-lock!)
           (_%rebind?154048%_ '#f)
           (_%id154053%_ _%id154042%_)
           (_%proc154066%_ _%proc154045%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154039%_
       _%id154053%_
       _%proc154066%_
       _%rebind?154048%_))
    (let* ((_%klass154002%_ (macro-type-mutex))
           (_%id154005%_ 'Locker::read-unlock!)
           (_%proc154008%_ mutex-unlock!)
           (_%rebind?154011%_ '#f)
           (_%id154016%_ _%id154005%_)
           (_%proc154029%_ _%proc154008%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154002%_
       _%id154016%_
       _%proc154029%_
       _%rebind?154011%_))
    (let* ((_%klass153965%_ (macro-type-mutex))
           (_%id153968%_ 'Locker::write-lock!)
           (_%proc153971%_ mutex-lock!)
           (_%rebind?153974%_ '#f)
           (_%id153979%_ _%id153968%_)
           (_%proc153992%_ _%proc153971%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass153965%_
       _%id153979%_
       _%proc153992%_
       _%rebind?153974%_))
    (let* ((_%klass153928%_ (macro-type-mutex))
           (_%id153931%_ 'Locker::write-unlock!)
           (_%proc153934%_ mutex-unlock!)
           (_%rebind?153937%_ '#f)
           (_%id153942%_ _%id153931%_)
           (_%proc153955%_ _%proc153934%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass153928%_
       _%id153942%_
       _%proc153955%_
       _%rebind?153937%_))
    (define _%checked-hash-table::HashTable::ref147104%_
      (lambda (_%self153869%_ _%key153870%_ _%default153871%_)
        (let* ((_%self153874%_ _%self153869%_)
               (_%key153883%_ _%key153870%_)
               (_%default153891%_ _%default153871%_))
          (declare (not safe))
          (let ((_%h153902%_
                 (##unchecked-structure-ref _%self153874%_ '1 '#f '#f))
                (_%key?153904%_
                 (##unchecked-structure-ref _%self153874%_ '2 '#f '#f)))
            (if ((lambda (_%key?153907%_ _%key153908%_ _%default153909%_)
                   (_%key?153907%_ _%key153908%_))
                 _%key?153904%_
                 _%key153883%_
                 _%default153891%_)
                (let* ((_%self144426153911%_ _%h153902%_)
                       (_%key153914%_ _%key153883%_)
                       (_%default153917%_ _%default153891%_))
                  (declare (not safe))
                  (let ((_%object153920153925%_
                         (##unchecked-structure-ref
                          _%self144426153911%_
                          '1
                          '#f
                          'ref))
                        (_%method153921153926%_
                         (##unchecked-structure-ref
                          _%self144426153911%_
                          '7
                          '#f
                          'ref)))
                    (_%method153921153926%_
                     _%object153920153925%_
                     _%key153914%_
                     _%default153917%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key153883%_ (cons _%default153891%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref147104%_
       '#f))
    (define _%checked-hash-table::HashTable::set!147106%_
      (lambda (_%self153687%_ _%key153688%_ _%value153689%_)
        (let* ((_%self153692%_ _%self153687%_)
               (_%key153701%_ _%key153688%_)
               (_%value153709%_ _%value153689%_))
          (declare (not safe))
          (let ((_%h153720%_
                 (##unchecked-structure-ref _%self153692%_ '1 '#f '#f))
                (_%key?153722%_
                 (##unchecked-structure-ref _%self153692%_ '2 '#f '#f)))
            (if ((lambda (_%key?153725%_ _%key153726%_ _%value153727%_)
                   (_%key?153725%_ _%key153726%_))
                 _%key?153722%_
                 _%key153701%_
                 _%value153709%_)
                (let* ((_%self144721153729%_ _%h153720%_)
                       (_%key153732%_ _%key153701%_)
                       (_%value153735%_ _%value153709%_))
                  (declare (not safe))
                  (let ((_%object153738153743%_
                         (##unchecked-structure-ref
                          _%self144721153729%_
                          '1
                          '#f
                          'set!))
                        (_%method153739153744%_
                         (##unchecked-structure-ref
                          _%self144721153729%_
                          '8
                          '#f
                          'set!)))
                    (_%method153739153744%_
                     _%object153738153743%_
                     _%key153732%_
                     _%value153735%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key153701%_ (cons _%value153709%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!147106%_
       '#f))
    (define _%checked-hash-table::HashTable::update!147108%_
      (lambda (_%self153492%_ _%key153493%_ _%update153494%_ _%default153495%_)
        (let* ((_%self153498%_ _%self153492%_)
               (_%key153507%_ _%key153493%_)
               (_%update153515%_ _%update153494%_)
               (_%default153523%_ _%default153495%_))
          (declare (not safe))
          (let ((_%h153534%_
                 (##unchecked-structure-ref _%self153498%_ '1 '#f '#f))
                (_%key?153536%_
                 (##unchecked-structure-ref _%self153498%_ '2 '#f '#f)))
            (if ((lambda (_%key?153539%_
                          _%key153540%_
                          _%update153541%_
                          _%default153542%_)
                   (_%key?153539%_ _%key153540%_))
                 _%key?153536%_
                 _%key153507%_
                 _%update153515%_
                 _%default153523%_)
                (let* ((_%self145016153544%_ _%h153534%_)
                       (_%key153547%_ _%key153507%_)
                       (_%proc153550%_ _%update153515%_)
                       (_%default153553%_ _%default153523%_))
                  (declare (not safe))
                  (let ((_%object153556153561%_
                         (##unchecked-structure-ref
                          _%self145016153544%_
                          '1
                          '#f
                          'update!))
                        (_%method153557153562%_
                         (##unchecked-structure-ref
                          _%self145016153544%_
                          '9
                          '#f
                          'update!)))
                    (_%method153557153562%_
                     _%object153556153561%_
                     _%key153547%_
                     _%proc153550%_
                     _%default153553%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key153507%_
                         (cons _%update153515%_ (cons _%default153523%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!147108%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!147110%_
      (lambda (_%self153323%_ _%key153324%_)
        (let* ((_%self153327%_ _%self153323%_) (_%key153336%_ _%key153324%_))
          (declare (not safe))
          (let ((_%h153347%_
                 (##unchecked-structure-ref _%self153327%_ '1 '#f '#f))
                (_%key?153349%_
                 (##unchecked-structure-ref _%self153327%_ '2 '#f '#f)))
            (if ((lambda (_%key?153352%_ _%key153353%_)
                   (_%key?153352%_ _%key153353%_))
                 _%key?153349%_
                 _%key153336%_)
                (let* ((_%self143528153355%_ _%h153347%_)
                       (_%key153358%_ _%key153336%_))
                  (declare (not safe))
                  (let ((_%object153361153366%_
                         (##unchecked-structure-ref
                          _%self143528153355%_
                          '1
                          '#f
                          'delete!))
                        (_%method153362153367%_
                         (##unchecked-structure-ref
                          _%self143528153355%_
                          '4
                          '#f
                          'delete!)))
                    (_%method153362153367%_
                     _%object153361153366%_
                     _%key153358%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key153336%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!147110%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each147112%_
      (lambda (_%self153154%_ _%proc153155%_)
        (let* ((_%self153158%_ _%self153154%_) (_%proc153167%_ _%proc153155%_))
          (declare (not safe))
          (let ((_%h153178%_
                 (##unchecked-structure-ref _%self153158%_ '1 '#f '#f))
                (_%key?153180%_
                 (##unchecked-structure-ref _%self153158%_ '2 '#f '#f)))
            (if ((lambda (_%key?153183%_ _%proc153184%_) '#t)
                 _%key?153180%_
                 _%proc153167%_)
                (let* ((_%self143821153186%_ _%h153178%_)
                       (_%proc153189%_ _%proc153167%_))
                  (declare (not safe))
                  (let ((_%object153192153197%_
                         (##unchecked-structure-ref
                          _%self143821153186%_
                          '1
                          '#f
                          'for-each))
                        (_%method153193153198%_
                         (##unchecked-structure-ref
                          _%self143821153186%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153193153198%_
                     _%object153192153197%_
                     _%proc153189%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc153167%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each147112%_
       '#f))
    (define _%checked-hash-table::HashTable::length147114%_
      (lambda (_%self153000%_)
        (let ((_%self153003%_ _%self153000%_))
          (declare (not safe))
          (let ((_%h153015%_
                 (##unchecked-structure-ref _%self153003%_ '1 '#f '#f))
                (_%key?153017%_
                 (##unchecked-structure-ref _%self153003%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self144132153020%_ _%h153015%_))
                  (declare (not safe))
                  (let ((_%object153023153028%_
                         (##unchecked-structure-ref
                          _%self144132153020%_
                          '1
                          '#f
                          'length))
                        (_%method153024153029%_
                         (##unchecked-structure-ref
                          _%self144132153020%_
                          '6
                          '#f
                          'length)))
                    (_%method153024153029%_ _%object153023153028%_)))
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
       _%checked-hash-table::HashTable::length147114%_
       '#f))
    (define _%checked-hash-table::HashTable::copy147116%_
      (lambda (_%self152846%_)
        (let ((_%self152849%_ _%self152846%_))
          (declare (not safe))
          (let ((_%h152861%_
                 (##unchecked-structure-ref _%self152849%_ '1 '#f '#f))
                (_%key?152863%_
                 (##unchecked-structure-ref _%self152849%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self143234152866%_ _%h152861%_))
                  (declare (not safe))
                  (let ((_%object152869152874%_
                         (##unchecked-structure-ref
                          _%self143234152866%_
                          '1
                          '#f
                          'copy))
                        (_%method152870152875%_
                         (##unchecked-structure-ref
                          _%self143234152866%_
                          '3
                          '#f
                          'copy)))
                    (_%method152870152875%_ _%object152869152874%_)))
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
       _%checked-hash-table::HashTable::copy147116%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!147118%_
      (lambda (_%self152692%_)
        (let ((_%self152695%_ _%self152692%_))
          (declare (not safe))
          (let ((_%h152707%_
                 (##unchecked-structure-ref _%self152695%_ '1 '#f '#f))
                (_%key?152709%_
                 (##unchecked-structure-ref _%self152695%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self142942152712%_ _%h152707%_))
                  (declare (not safe))
                  (let ((_%object152715152720%_
                         (##unchecked-structure-ref
                          _%self142942152712%_
                          '1
                          '#f
                          'clear!))
                        (_%method152716152721%_
                         (##unchecked-structure-ref
                          _%self142942152712%_
                          '2
                          '#f
                          'clear!)))
                    (_%method152716152721%_ _%object152715152720%_)))
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
       _%checked-hash-table::HashTable::clear!147118%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table152562%_
               _%count152563%_
               _%free152564%_
               _%hash152565%_
               _%test152566%_
               _%seed152567%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table152562%_
           _%count152563%_
           _%free152564%_
           _%hash152565%_
           _%test152566%_
           _%seed152567%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords151972%_
               _%size-hint151962151973%_
               _%seed151963151974%_
               _%test151964151975%_
               _%hash151965151976%_
               _%lock151966151977%_
               _%check151967151978%_
               _%weak-keys151968151979%_
               _%weak-values151969151980%_)
        (let* ((_%size-hint151982%_
                (if (eq? _%size-hint151962151973%_ absent-value)
                    '#f
                    _%size-hint151962151973%_))
               (_%seed151984%_
                (if (eq? _%seed151963151974%_ absent-value)
                    '#f
                    _%seed151963151974%_))
               (_%test151986%_
                (if (eq? _%test151964151975%_ absent-value)
                    equal?
                    _%test151964151975%_))
               (_%hash151988%_
                (if (eq? _%hash151965151976%_ absent-value)
                    '#f
                    _%hash151965151976%_))
               (_%lock151990%_
                (if (eq? _%lock151966151977%_ absent-value)
                    '#f
                    _%lock151966151977%_))
               (_%check151992%_
                (if (eq? _%check151967151978%_ absent-value)
                    '#f
                    _%check151967151978%_))
               (_%weak-keys151994%_
                (if (eq? _%weak-keys151968151979%_ absent-value)
                    '#f
                    _%weak-keys151968151979%_))
               (_%weak-values151996%_
                (if (eq? _%weak-values151969151980%_ absent-value)
                    '#f
                    _%weak-values151969151980%_)))
          (letrec ((_%table-seed151999%_
                    (lambda ()
                      (if (fixnum? _%seed151984%_)
                          _%seed151984%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock152143%_
                    (lambda (_%ht152530%_)
                      (let ((_%ht152533%_ _%ht152530%_))
                        (if _%lock151990%_
                            (let ((_%$obj152545%_
                                   (let ((__tmp159401
                                          (let ((_%$obj152542%_
                                                 _%lock151990%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj152542%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj152542%_)))
                                                     '#t)
                                                _%$obj152542%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj152542%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht152533%_
                                      __tmp159401))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj152545%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj152545%_)))
                                       '#t)
                                  _%$obj152545%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj152545%_))))
                            _%ht152533%_))))
                   (_%wrap-lock152144%_
                    (lambda (_%ht152518%_)
                      (let ((_%ht152521%_ _%ht152518%_))
                        (_%__wrap-lock152143%_ _%ht152521%_))))
                   (_%__wrap-checked152266%_
                    (lambda (_%ht152502%_ _%implicit152503%_)
                      (let ((_%ht152506%_ _%ht152502%_))
                        (if _%check151992%_
                            (let ((_%$obj152515%_
                                   (let ((__tmp159402
                                          (if (procedure? _%check151992%_)
                                              _%check151992%_
                                              _%implicit152503%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht152506%_
                                      __tmp159402))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj152515%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj152515%_)))
                                       '#t)
                                  _%$obj152515%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj152515%_))))
                            _%ht152506%_))))
                   (_%wrap-checked152267%_
                    (lambda (_%ht152489%_ _%implicit152490%_)
                      (let ((_%ht152493%_ _%ht152489%_))
                        (_%__wrap-checked152266%_
                         _%ht152493%_
                         _%implicit152490%_))))
                   (_%make152268%_
                    (lambda (_%kons152437%_
                             _%key?152438%_
                             _%hash152439%_
                             _%test152440%_)
                      (let* ((_%size152443%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint151982%_)))
                             (_%table152445%_
                              (let ((__tmp159403 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size152443%_ __tmp159403)))
                             (_%ht152450%_
                              (let ((_%$obj152447%_
                                     (_%kons152437%_
                                      _%table152445%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size152443%_ '2))
                                      _%hash152439%_
                                      _%test152440%_
                                      (_%table-seed151999%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj152447%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj152447%_)))
                                         '#t)
                                    _%$obj152447%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj152447%_)))))
                             (_%ht152472%_
                              (let* ((_%ht152453%_ _%ht152450%_)
                                     (_%ht152457%_ _%ht152453%_))
                                (_%__wrap-lock152143%_ _%ht152457%_)))
                             (_%implicit152475%_ _%key?152438%_)
                             (_%ht152479%_ _%ht152472%_))
                        (_%__wrap-checked152266%_
                         _%ht152479%_
                         _%implicit152475%_))))
                   (_%make-gc-hash-table152269%_
                    (lambda ()
                      (let* ((_%ht152402%_
                              (let ((_%$obj152399%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint151982%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj152399%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj152399%_)))
                                         '#t)
                                    _%$obj152399%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj152399%_)))))
                             (_%ht152420%_
                              (let* ((_%ht152404%_ _%ht152402%_)
                                     (_%ht152408%_ _%ht152404%_))
                                (_%__wrap-lock152143%_ _%ht152408%_)))
                             (_%implicit152423%_ true)
                             (_%ht152427%_ _%ht152420%_))
                        (_%__wrap-checked152266%_
                         _%ht152427%_
                         _%implicit152423%_))))
                   (_%make-gambit-table152270%_
                    (lambda ()
                      (let* ((_%size152339%_
                              (let ((_%$e152336%_ _%size-hint151982%_))
                                (if _%$e152336%_
                                    _%$e152336%_
                                    (macro-absent-obj))))
                             (_%test152344%_
                              (let ((_%$e152341%_ _%test151986%_))
                                (if _%$e152341%_ _%$e152341%_ equal?)))
                             (_%hash152352%_
                              (let ((_%$e152346%_ _%hash151988%_))
                                (if _%$e152346%_
                                    _%$e152346%_
                                    (if (eq? _%test152344%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test152344%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht152357%_
                              (let ((_%$obj152354%_
                                     (make-table
                                      'size:
                                      _%size152339%_
                                      'test:
                                      _%test152344%_
                                      'hash:
                                      _%hash152352%_
                                      'weak-keys:
                                      _%weak-keys151994%_
                                      'weak-values:
                                      _%weak-values151996%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj152354%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj152354%_)))
                                         '#t)
                                    _%$obj152354%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj152354%_)))))
                             (_%ht152380%_
                              (let* ((_%ht152360%_ _%ht152357%_)
                                     (_%ht152364%_ _%ht152360%_))
                                (_%__wrap-lock152143%_ _%ht152364%_)))
                             (_%implicit152383%_ true)
                             (_%ht152387%_ _%ht152380%_))
                        (_%__wrap-checked152266%_
                         _%ht152387%_
                         _%implicit152383%_)))))
            (if (or _%weak-keys151994%_ _%weak-values151996%_)
                (_%make-gambit-table152270%_)
                (if (and (or (eq? _%test151986%_ eq?)
                             (eq? _%test151986%_ ##eq?))
                         (or (not _%hash151988%_)
                             (eq? _%hash151988%_ eq?-hash)
                             (eq? _%hash151988%_ eq-hash))
                         (not _%seed151984%_))
                    (_%make-gc-hash-table152269%_)
                    (if (and (or (eq? _%test151986%_ eq?)
                                 (eq? _%test151986%_ ##eq?))
                             (or (not _%hash151988%_)
                                 (eq? _%hash151988%_ eq?-hash)
                                 (eq? _%hash151988%_ eq-hash)))
                        (_%make152268%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test151986%_ eqv?)
                                     (eq? _%test151986%_ ##eqv?))
                                 (or (not _%hash151988%_)
                                     (eq? _%hash151988%_ eqv?-hash)
                                     (eq? _%hash151988%_ eqv-hash)))
                            (_%make152268%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test151986%_ eq?)
                                         (eq? _%test151986%_ ##eq?))
                                     (or (eq? _%hash151988%_ symbolic-hash)
                                         (eq? _%hash151988%_ ##symbol-hash)))
                                (_%make152268%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test151986%_ eq?)
                                             (eq? _%test151986%_ ##eq?))
                                         (eq? _%hash151988%_ immediate-hash))
                                    (_%make152268%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test151986%_ equal?)
                                                 (eq? _%test151986%_ ##equal?)
                                                 (eq? _%test151986%_ string=?)
                                                 (eq? _%test151986%_
                                                      ##string=?))
                                             (or (eq? _%hash151988%_
                                                      string-hash)
                                                 (eq? _%hash151988%_
                                                      ##string=?-hash)))
                                        (_%make152268%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test151986%_ equal?)
                                                 (not _%hash151988%_))
                                            (_%make152268%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test151986%_)
                                                (if (procedure? _%hash151988%_)
                                                    (_%make152268%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash151988%_
                                                     _%test151986%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash151988%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test151986%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords152552%_ . _%args152553%_)
        (apply make-hash-table__%
               _%@@keywords152552%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152552%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152552%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152552%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152552%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152552%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152552%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152552%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152552%_
                  'weak-values:
                  absent-value))
               _%args152553%_)))
    (define make-hash-table
      (lambda _%args151970152559%_
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
               _%args151970152559%_)))
    (define make-hash-table-eq
      (lambda _%args151959%_
        (apply make-hash-table 'test: eq? _%args151959%_)))
    (define make-hash-table-eqv
      (lambda _%args151957%_
        (apply make-hash-table 'test: eqv? _%args151957%_)))
    (define make-hash-table-symbolic
      (lambda _%args151955%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args151955%_)))
    (define make-hash-table-string
      (lambda _%args151953%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args151953%_)))
    (define make-hash-table-immediate
      (lambda _%args151951%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args151951%_)))
    (define list->hash-table
      (lambda (_%lst151948%_ . _%args151949%_)
        (list->hash-table!
         _%lst151948%_
         (apply make-hash-table
                'size:
                (length _%lst151948%_)
                _%args151949%_))))
    (define list->hash-table-eq
      (lambda (_%lst151945%_ . _%args151946%_)
        (list->hash-table!
         _%lst151945%_
         (apply make-hash-table-eq
                'size:
                (length _%lst151945%_)
                _%args151946%_))))
    (define list->hash-table-eqv
      (lambda (_%lst151942%_ . _%args151943%_)
        (list->hash-table!
         _%lst151942%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst151942%_)
                _%args151943%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst151939%_ . _%args151940%_)
        (list->hash-table!
         _%lst151939%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst151939%_)
                _%args151940%_))))
    (define list->hash-table-string
      (lambda (_%lst151936%_ . _%args151937%_)
        (list->hash-table!
         _%lst151936%_
         (apply make-hash-table-string
                'size:
                (length _%lst151936%_)
                _%args151937%_))))
    (define list->hash-table-immediate
      (lambda (_%lst151933%_ . _%args151934%_)
        (list->hash-table!
         _%lst151933%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst151933%_)
                _%args151934%_))))
    (define list->hash-table!
      (lambda (_%lst151884%_ _%h151885%_)
        (for-each
         (lambda (_%el151887%_)
           (let* ((_%el151888151895%_ _%el151887%_)
                  (_%E151890151898%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el151888151895%_
                              '([k . v])))
                     '#!void))
                  (_%K151891151921%_
                   (lambda (_%v151901%_ _%k151902%_)
                     (let* ((_%self144721151904%_ _%h151885%_)
                            (_%key151907%_ _%k151902%_)
                            (_%value151910%_ _%v151901%_))
                       (declare (not safe))
                       (let ((_%object151913151918%_
                              (##unchecked-structure-ref
                               _%self144721151904%_
                               '1
                               '#f
                               'set!))
                             (_%method151914151919%_
                              (##unchecked-structure-ref
                               _%self144721151904%_
                               '8
                               '#f
                               'set!)))
                         (_%method151914151919%_
                          _%object151913151918%_
                          _%key151907%_
                          _%value151910%_))))))
             (if (pair? _%el151888151895%_)
                 (let ((_%hd151892151924%_
                        (let ()
                          (declare (not safe))
                          (##car _%el151888151895%_)))
                       (_%tl151893151926%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el151888151895%_))))
                   (let* ((_%k151929%_ _%hd151892151924%_)
                          (_%v151931%_ _%tl151893151926%_))
                     (_%K151891151921%_ _%v151931%_ _%k151929%_)))
                 (_%E151890151898%_))))
         _%lst151884%_)
        _%h151885%_))
    (define plist->hash-table
      (lambda (_%lst151881%_ . _%args151882%_)
        (plist->hash-table!
         _%lst151881%_
         (apply make-hash-table
                'size:
                (length _%lst151881%_)
                _%args151882%_))))
    (define plist->hash-table-eq
      (lambda (_%lst151878%_ . _%args151879%_)
        (plist->hash-table!
         _%lst151878%_
         (apply make-hash-table-eq
                'size:
                (length _%lst151878%_)
                _%args151879%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst151875%_ . _%args151876%_)
        (plist->hash-table!
         _%lst151875%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst151875%_)
                _%args151876%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst151872%_ . _%args151873%_)
        (plist->hash-table!
         _%lst151872%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst151872%_)
                _%args151873%_))))
    (define plist->hash-table-string
      (lambda (_%lst151869%_ . _%args151870%_)
        (plist->hash-table!
         _%lst151869%_
         (apply make-hash-table-string
                'size:
                (length _%lst151869%_)
                _%args151870%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst151866%_ . _%args151867%_)
        (plist->hash-table!
         _%lst151866%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst151866%_)
                _%args151867%_))))
    (define plist->hash-table!
      (lambda (_%lst151789%_ _%h151790%_)
        (let _%loop151792%_ ((_%rest151794%_ _%lst151789%_))
          (let* ((_%rest151795151807%_ _%rest151794%_)
                 (_%else151798151815%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst151789%_)))))
            (let ((_%K151801151847%_
                   (lambda (_%rest151826%_ _%val151827%_ _%key151828%_)
                     (let* ((_%self144721151830%_ _%h151790%_)
                            (_%key151833%_ _%key151828%_)
                            (_%value151836%_ _%val151827%_))
                       (declare (not safe))
                       (let ((_%object151839151844%_
                              (##unchecked-structure-ref
                               _%self144721151830%_
                               '1
                               '#f
                               'set!))
                             (_%method151840151845%_
                              (##unchecked-structure-ref
                               _%self144721151830%_
                               '8
                               '#f
                               'set!)))
                         (_%method151840151845%_
                          _%object151839151844%_
                          _%key151833%_
                          _%value151836%_)))
                     (_%loop151792%_ _%rest151826%_)))
                  (_%K151800151820%_ (lambda () _%h151790%_)))
              (let ((_%try-match151797151823%_
                     (lambda ()
                       (if (null? _%rest151795151807%_)
                           (_%K151800151820%_)
                           (_%else151798151815%_)))))
                (if (pair? _%rest151795151807%_)
                    (let ((_%tl151803151852%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151795151807%_)))
                          (_%hd151802151850%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151795151807%_))))
                      (if (pair? _%tl151803151852%_)
                          (let ((_%tl151805151859%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl151803151852%_)))
                                (_%hd151804151857%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl151803151852%_))))
                            (let ((_%key151855%_ _%hd151802151850%_)
                                  (_%val151862%_ _%hd151804151857%_)
                                  (_%rest151864%_ _%tl151805151859%_))
                              (_%K151801151847%_
                               _%rest151864%_
                               _%val151862%_
                               _%key151855%_)))
                          (_%else151798151815%_)))
                    (_%try-match151797151823%_))))))))
    (define __hash-length
      (lambda (_%h151738%_)
        (let* ((_%h151741%_ _%h151738%_)
               (_%self144133151750%_ _%h151741%_)
               (_%self144133151757%_
                (let ((_%$obj151754%_ _%self144133151750%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151754%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151754%_)))
                           '#t)
                      _%$obj151754%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151754%_)))))
               (_%self144133151759%_ _%self144133151757%_))
          (if __DEBUG
              (let ((_%val151779%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object151771151776%_
                              (##unchecked-structure-ref
                               _%self144133151759%_
                               '1
                               '#f
                               'length))
                             (_%method151772151777%_
                              (##unchecked-structure-ref
                               _%self144133151759%_
                               '6
                               '#f
                               'length)))
                         (_%method151772151777%_ _%object151771151776%_)))))
                (if (fixnum? _%val151779%_)
                    _%val151779%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val151779%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object151781151786%_
                       (##unchecked-structure-ref
                        _%self144133151759%_
                        '1
                        '#f
                        'length))
                      (_%method151782151787%_
                       (##unchecked-structure-ref
                        _%self144133151759%_
                        '6
                        '#f
                        'length)))
                  (_%method151782151787%_ _%object151781151786%_)))))))
    (define hash-length
      (lambda (_%h147393%_)
        (let* ((_%h147399%_
                (let ((_%$obj147396%_ _%h147393%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147396%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147396%_)))
                           '#t)
                      _%$obj147396%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147396%_)))))
               (_%h147401%_ _%h147399%_))
          (__hash-length _%h147401%_))))
    (define __hash-ref__%
      (lambda (_%h151666%_ _%key151667%_ _%default151668%_)
        (let* ((_%h151671%_ _%h151666%_)
               (_%result151724%_
                (let* ((_%self144427151680%_ _%h151671%_)
                       (_%key151683%_ _%key151667%_)
                       (_%default151686%_ _%default151668%_)
                       (_%self144427151693%_
                        (let ((_%$obj151690%_ _%self144427151680%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj151690%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj151690%_)))
                                   '#t)
                              _%$obj151690%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj151690%_)))))
                       (_%self144427151695%_ _%self144427151693%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object151709151714%_
                               (##unchecked-structure-ref
                                _%self144427151695%_
                                '1
                                '#f
                                'ref))
                              (_%method151710151715%_
                               (##unchecked-structure-ref
                                _%self144427151695%_
                                '7
                                '#f
                                'ref)))
                          (_%method151710151715%_
                           _%object151709151714%_
                           _%key151683%_
                           _%default151686%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object151716151721%_
                               (##unchecked-structure-ref
                                _%self144427151695%_
                                '1
                                '#f
                                'ref))
                              (_%method151717151722%_
                               (##unchecked-structure-ref
                                _%self144427151695%_
                                '7
                                '#f
                                'ref)))
                          (_%method151717151722%_
                           _%object151716151721%_
                           _%key151683%_
                           _%default151686%_)))))))
          (if (eq? _%result151724%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h151671%_
               'key:
               _%key151667%_)
              _%result151724%_))))
    (define __hash-ref__0
      (lambda (_%h151729%_ _%key151730%_)
        (let ((_%default151732%_ absent-obj))
          (__hash-ref__% _%h151729%_ _%key151730%_ _%default151732%_))))
    (define __hash-ref
      (lambda _g159404_
        (let ((_g159405_ (let () (declare (not safe)) (##length _g159404_))))
          (cond ((let () (declare (not safe)) (##fx= _g159405_ 2))
                 (apply __hash-ref__0 _g159404_))
                ((let () (declare (not safe)) (##fx= _g159405_ 3))
                 (apply __hash-ref__% _g159404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g159404_))))))
    (define hash-ref__%
      (lambda (_%h147532%_ _%key147533%_ _%default147534%_)
        (let* ((_%h147540%_
                (let ((_%$obj147537%_ _%h147532%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147537%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147537%_)))
                           '#t)
                      _%$obj147537%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147537%_)))))
               (_%h147542%_ _%h147540%_))
          (__hash-ref__% _%h147542%_ _%key147533%_ _%default147534%_))))
    (define hash-ref__0
      (lambda (_%h147555%_ _%key147556%_)
        (let ((_%default147558%_ absent-obj))
          (hash-ref__% _%h147555%_ _%key147556%_ _%default147558%_))))
    (define hash-ref
      (lambda _g159406_
        (let ((_g159407_ (let () (declare (not safe)) (##length _g159406_))))
          (cond ((let () (declare (not safe)) (##fx= _g159407_ 2))
                 (apply hash-ref__0 _g159406_))
                ((let () (declare (not safe)) (##fx= _g159407_ 3))
                 (apply hash-ref__% _g159406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g159406_))))))
    (define __hash-get
      (lambda (_%h151608%_ _%key151609%_)
        (let* ((_%h151612%_ _%h151608%_)
               (_%self144427151621%_ _%h151612%_)
               (_%key151624%_ _%key151609%_)
               (_%default151627%_ '#f)
               (_%self144427151634%_
                (let ((_%$obj151631%_ _%self144427151621%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151631%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151631%_)))
                           '#t)
                      _%$obj151631%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151631%_)))))
               (_%self144427151636%_ _%self144427151634%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object151650151655%_
                       (##unchecked-structure-ref
                        _%self144427151636%_
                        '1
                        '#f
                        'ref))
                      (_%method151651151656%_
                       (##unchecked-structure-ref
                        _%self144427151636%_
                        '7
                        '#f
                        'ref)))
                  (_%method151651151656%_
                   _%object151650151655%_
                   _%key151624%_
                   _%default151627%_)))
              (let ()
                (declare (not safe))
                (let ((_%object151657151662%_
                       (##unchecked-structure-ref
                        _%self144427151636%_
                        '1
                        '#f
                        'ref))
                      (_%method151658151663%_
                       (##unchecked-structure-ref
                        _%self144427151636%_
                        '7
                        '#f
                        'ref)))
                  (_%method151658151663%_
                   _%object151657151662%_
                   _%key151624%_
                   _%default151627%_)))))))
    (define hash-get
      (lambda (_%h147684%_ _%key147685%_)
        (let* ((_%h147691%_
                (let ((_%$obj147688%_ _%h147684%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147688%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147688%_)))
                           '#t)
                      _%$obj147688%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147688%_)))))
               (_%h147693%_ _%h147691%_))
          (__hash-get _%h147693%_ _%key147685%_))))
    (define __hash-put!
      (lambda (_%h151550%_ _%key151551%_ _%value151552%_)
        (let* ((_%h151555%_ _%h151550%_)
               (_%self144722151564%_ _%h151555%_)
               (_%key151567%_ _%key151551%_)
               (_%value151570%_ _%value151552%_)
               (_%self144722151577%_
                (let ((_%$obj151574%_ _%self144722151564%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151574%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151574%_)))
                           '#t)
                      _%$obj151574%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151574%_)))))
               (_%self144722151579%_ _%self144722151577%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object151593151598%_
                       (##unchecked-structure-ref
                        _%self144722151579%_
                        '1
                        '#f
                        'set!))
                      (_%method151594151599%_
                       (##unchecked-structure-ref
                        _%self144722151579%_
                        '8
                        '#f
                        'set!)))
                  (_%method151594151599%_
                   _%object151593151598%_
                   _%key151567%_
                   _%value151570%_)))
              (let ()
                (declare (not safe))
                (let ((_%object151600151605%_
                       (##unchecked-structure-ref
                        _%self144722151579%_
                        '1
                        '#f
                        'set!))
                      (_%method151601151606%_
                       (##unchecked-structure-ref
                        _%self144722151579%_
                        '8
                        '#f
                        'set!)))
                  (_%method151601151606%_
                   _%object151600151605%_
                   _%key151567%_
                   _%value151570%_)))))))
    (define hash-put!
      (lambda (_%h147823%_ _%key147824%_ _%value147825%_)
        (let* ((_%h147831%_
                (let ((_%$obj147828%_ _%h147823%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147828%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147828%_)))
                           '#t)
                      _%$obj147828%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147828%_)))))
               (_%h147833%_ _%h147831%_))
          (__hash-put! _%h147833%_ _%key147824%_ _%value147825%_))))
    (define __hash-update!__%
      (lambda (_%h151463%_ _%key151464%_ _%update151465%_ _%default151466%_)
        (let* ((_%h151469%_ _%h151463%_)
               (_%self145017151478%_ _%h151469%_)
               (_%key151481%_ _%key151464%_)
               (_%proc151484%_ _%update151465%_)
               (_%default151487%_ _%default151466%_)
               (_%self145017151494%_
                (let ((_%$obj151491%_ _%self145017151478%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151491%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151491%_)))
                           '#t)
                      _%$obj151491%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151491%_)))))
               (_%self145017151496%_ _%self145017151494%_))
          (if (procedure? _%proc151484%_)
              (let ((_%proc151512%_ _%proc151484%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object151521151526%_
                             (##unchecked-structure-ref
                              _%self145017151496%_
                              '1
                              '#f
                              'update!))
                            (_%method151522151527%_
                             (##unchecked-structure-ref
                              _%self145017151496%_
                              '9
                              '#f
                              'update!)))
                        (_%method151522151527%_
                         _%object151521151526%_
                         _%key151481%_
                         _%proc151512%_
                         _%default151487%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object151528151533%_
                             (##unchecked-structure-ref
                              _%self145017151496%_
                              '1
                              '#f
                              'update!))
                            (_%method151529151534%_
                             (##unchecked-structure-ref
                              _%self145017151496%_
                              '9
                              '#f
                              'update!)))
                        (_%method151529151534%_
                         _%object151528151533%_
                         _%key151481%_
                         _%proc151512%_
                         _%default151487%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc151484%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h151539%_ _%key151540%_ _%update151541%_)
        (let ((_%default151543%_ '#!void))
          (__hash-update!__%
           _%h151539%_
           _%key151540%_
           _%update151541%_
           _%default151543%_))))
    (define __hash-update!
      (lambda _g159408_
        (let ((_g159409_ (let () (declare (not safe)) (##length _g159408_))))
          (cond ((let () (declare (not safe)) (##fx= _g159409_ 3))
                 (apply __hash-update!__0 _g159408_))
                ((let () (declare (not safe)) (##fx= _g159409_ 4))
                 (apply __hash-update!__% _g159408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g159408_))))))
    (define hash-update!__%
      (lambda (_%h147964%_ _%key147965%_ _%update147966%_ _%default147967%_)
        (let* ((_%h147973%_
                (let ((_%$obj147970%_ _%h147964%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147970%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147970%_)))
                           '#t)
                      _%$obj147970%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147970%_)))))
               (_%h147975%_ _%h147973%_))
          (__hash-update!__%
           _%h147975%_
           _%key147965%_
           _%update147966%_
           _%default147967%_))))
    (define hash-update!__0
      (lambda (_%h147988%_ _%key147989%_ _%update147990%_)
        (let ((_%default147992%_ '#!void))
          (hash-update!__%
           _%h147988%_
           _%key147989%_
           _%update147990%_
           _%default147992%_))))
    (define hash-update!
      (lambda _g159410_
        (let ((_g159411_ (let () (declare (not safe)) (##length _g159410_))))
          (cond ((let () (declare (not safe)) (##fx= _g159411_ 3))
                 (apply hash-update!__0 _g159410_))
                ((let () (declare (not safe)) (##fx= _g159411_ 4))
                 (apply hash-update!__% _g159410_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g159410_))))))
    (define __hash-remove!
      (lambda (_%h151409%_ _%key151410%_)
        (let* ((_%h151413%_ _%h151409%_)
               (_%self143529151422%_ _%h151413%_)
               (_%key151425%_ _%key151410%_)
               (_%self143529151432%_
                (let ((_%$obj151429%_ _%self143529151422%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151429%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151429%_)))
                           '#t)
                      _%$obj151429%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151429%_)))))
               (_%self143529151434%_ _%self143529151432%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object151447151452%_
                       (##unchecked-structure-ref
                        _%self143529151434%_
                        '1
                        '#f
                        'delete!))
                      (_%method151448151453%_
                       (##unchecked-structure-ref
                        _%self143529151434%_
                        '4
                        '#f
                        'delete!)))
                  (_%method151448151453%_
                   _%object151447151452%_
                   _%key151425%_)))
              (let ()
                (declare (not safe))
                (let ((_%object151454151459%_
                       (##unchecked-structure-ref
                        _%self143529151434%_
                        '1
                        '#f
                        'delete!))
                      (_%method151455151460%_
                       (##unchecked-structure-ref
                        _%self143529151434%_
                        '4
                        '#f
                        'delete!)))
                  (_%method151455151460%_
                   _%object151454151459%_
                   _%key151425%_)))))))
    (define hash-remove!
      (lambda (_%h148119%_ _%key148120%_)
        (let* ((_%h148126%_
                (let ((_%$obj148123%_ _%h148119%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148123%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148123%_)))
                           '#t)
                      _%$obj148123%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148123%_)))))
               (_%h148128%_ _%h148126%_))
          (__hash-remove! _%h148128%_ _%key148120%_))))
    (define __hash-key?
      (lambda (_%h151352%_ _%k151353%_)
        (let ((_%h151356%_ _%h151352%_))
          (not (eq? (let* ((_%self144427151365%_ _%h151356%_)
                           (_%key151368%_ _%k151353%_)
                           (_%default151371%_ absent-value)
                           (_%self144427151378%_
                            (let ((_%$obj151375%_ _%self144427151365%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj151375%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj151375%_)))
                                       '#t)
                                  _%$obj151375%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj151375%_)))))
                           (_%self144427151380%_ _%self144427151378%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object151394151399%_
                                   (##unchecked-structure-ref
                                    _%self144427151380%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method151395151400%_
                                   (##unchecked-structure-ref
                                    _%self144427151380%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method151395151400%_
                               _%object151394151399%_
                               _%key151368%_
                               _%default151371%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object151401151406%_
                                   (##unchecked-structure-ref
                                    _%self144427151380%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method151402151407%_
                                   (##unchecked-structure-ref
                                    _%self144427151380%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method151402151407%_
                               _%object151401151406%_
                               _%key151368%_
                               _%default151371%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h148258%_ _%k148259%_)
        (let* ((_%h148265%_
                (let ((_%$obj148262%_ _%h148258%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148262%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148262%_)))
                           '#t)
                      _%$obj148262%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148262%_)))))
               (_%h148267%_ _%h148265%_))
          (__hash-key? _%h148267%_ _%k148259%_))))
    (define __hash->list
      (lambda (_%h151284%_)
        (let* ((_%h151287%_ _%h151284%_) (_%lst151296%_ '()))
          (let* ((_%self143822151298%_ _%h151287%_)
                 (_%proc151304%_
                  (lambda (_%k151301%_ _%v151302%_)
                    (set! _%lst151296%_
                          (cons (cons _%k151301%_ _%v151302%_)
                                _%lst151296%_))))
                 (_%self143822151311%_
                  (let ((_%$obj151308%_ _%self143822151298%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj151308%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj151308%_)))
                             '#t)
                        _%$obj151308%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj151308%_)))))
                 (_%self143822151313%_ _%self143822151311%_)
                 (_%proc151328%_ _%proc151304%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object151337151342%_
                         (##unchecked-structure-ref
                          _%self143822151313%_
                          '1
                          '#f
                          'for-each))
                        (_%method151338151343%_
                         (##unchecked-structure-ref
                          _%self143822151313%_
                          '5
                          '#f
                          'for-each)))
                    (_%method151338151343%_
                     _%object151337151342%_
                     _%proc151328%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object151344151349%_
                         (##unchecked-structure-ref
                          _%self143822151313%_
                          '1
                          '#f
                          'for-each))
                        (_%method151345151350%_
                         (##unchecked-structure-ref
                          _%self143822151313%_
                          '5
                          '#f
                          'for-each)))
                    (_%method151345151350%_
                     _%object151344151349%_
                     _%proc151328%_)))))
          _%lst151296%_)))
    (define hash->list
      (lambda (_%h148397%_)
        (let* ((_%h148403%_
                (let ((_%$obj148400%_ _%h148397%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148400%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148400%_)))
                           '#t)
                      _%$obj148400%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148400%_)))))
               (_%h148405%_ _%h148403%_))
          (__hash->list _%h148405%_))))
    (define __hash->plist
      (lambda (_%h151216%_)
        (let* ((_%h151219%_ _%h151216%_) (_%lst151228%_ '()))
          (let* ((_%self143822151230%_ _%h151219%_)
                 (_%proc151236%_
                  (lambda (_%k151233%_ _%v151234%_)
                    (set! _%lst151228%_
                          (cons _%k151233%_
                                (cons _%v151234%_ _%lst151228%_)))))
                 (_%self143822151243%_
                  (let ((_%$obj151240%_ _%self143822151230%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj151240%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj151240%_)))
                             '#t)
                        _%$obj151240%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj151240%_)))))
                 (_%self143822151245%_ _%self143822151243%_)
                 (_%proc151260%_ _%proc151236%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object151269151274%_
                         (##unchecked-structure-ref
                          _%self143822151245%_
                          '1
                          '#f
                          'for-each))
                        (_%method151270151275%_
                         (##unchecked-structure-ref
                          _%self143822151245%_
                          '5
                          '#f
                          'for-each)))
                    (_%method151270151275%_
                     _%object151269151274%_
                     _%proc151260%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object151276151281%_
                         (##unchecked-structure-ref
                          _%self143822151245%_
                          '1
                          '#f
                          'for-each))
                        (_%method151277151282%_
                         (##unchecked-structure-ref
                          _%self143822151245%_
                          '5
                          '#f
                          'for-each)))
                    (_%method151277151282%_
                     _%object151276151281%_
                     _%proc151260%_)))))
          _%lst151228%_)))
    (define hash->plist
      (lambda (_%h148535%_)
        (let* ((_%h148541%_
                (let ((_%$obj148538%_ _%h148535%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148538%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148538%_)))
                           '#t)
                      _%$obj148538%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148538%_)))))
               (_%h148543%_ _%h148541%_))
          (__hash->plist _%h148543%_))))
    (define __hash-for-each
      (lambda (_%proc151145%_ _%h151146%_)
        (let* ((_%proc151149%_ _%proc151145%_)
               (_%h151157%_ _%h151146%_)
               (_%self143822151166%_ _%h151157%_)
               (_%proc151169%_ _%proc151149%_)
               (_%self143822151176%_
                (let ((_%$obj151173%_ _%self143822151166%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151173%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151173%_)))
                           '#t)
                      _%$obj151173%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151173%_)))))
               (_%self143822151178%_ _%self143822151176%_)
               (_%proc151192%_ _%proc151169%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object151201151206%_
                       (##unchecked-structure-ref
                        _%self143822151178%_
                        '1
                        '#f
                        'for-each))
                      (_%method151202151207%_
                       (##unchecked-structure-ref
                        _%self143822151178%_
                        '5
                        '#f
                        'for-each)))
                  (_%method151202151207%_
                   _%object151201151206%_
                   _%proc151192%_)))
              (let ()
                (declare (not safe))
                (let ((_%object151208151213%_
                       (##unchecked-structure-ref
                        _%self143822151178%_
                        '1
                        '#f
                        'for-each))
                      (_%method151209151214%_
                       (##unchecked-structure-ref
                        _%self143822151178%_
                        '5
                        '#f
                        'for-each)))
                  (_%method151209151214%_
                   _%object151208151213%_
                   _%proc151192%_)))))))
    (define hash-for-each
      (lambda (_%proc148673%_ _%h148674%_)
        (if (procedure? _%proc148673%_)
            (let* ((_%proc148678%_ _%proc148673%_)
                   (_%h148690%_
                    (let ((_%$obj148687%_ _%h148674%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj148687%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj148687%_)))
                               '#t)
                          _%$obj148687%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj148687%_)))))
                   (_%h148692%_ _%h148690%_))
              (__hash-for-each _%proc148678%_ _%h148692%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc148673%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc151068%_ _%h151069%_)
        (let* ((_%proc151072%_ _%proc151068%_)
               (_%h151080%_ _%h151069%_)
               (_%result151089%_ '()))
          (let* ((_%self143822151091%_ _%h151080%_)
                 (_%proc151097%_
                  (lambda (_%k151094%_ _%v151095%_)
                    (set! _%result151089%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc151072%_ _%k151094%_ _%v151095%_))
                                _%result151089%_))))
                 (_%self143822151104%_
                  (let ((_%$obj151101%_ _%self143822151091%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj151101%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj151101%_)))
                             '#t)
                        _%$obj151101%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj151101%_)))))
                 (_%self143822151106%_ _%self143822151104%_)
                 (_%proc151121%_ _%proc151097%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object151130151135%_
                         (##unchecked-structure-ref
                          _%self143822151106%_
                          '1
                          '#f
                          'for-each))
                        (_%method151131151136%_
                         (##unchecked-structure-ref
                          _%self143822151106%_
                          '5
                          '#f
                          'for-each)))
                    (_%method151131151136%_
                     _%object151130151135%_
                     _%proc151121%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object151137151142%_
                         (##unchecked-structure-ref
                          _%self143822151106%_
                          '1
                          '#f
                          'for-each))
                        (_%method151138151143%_
                         (##unchecked-structure-ref
                          _%self143822151106%_
                          '5
                          '#f
                          'for-each)))
                    (_%method151138151143%_
                     _%object151137151142%_
                     _%proc151121%_)))))
          _%result151089%_)))
    (define hash-map
      (lambda (_%proc148822%_ _%h148823%_)
        (if (procedure? _%proc148822%_)
            (let* ((_%proc148827%_ _%proc148822%_)
                   (_%h148839%_
                    (let ((_%$obj148836%_ _%h148823%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj148836%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj148836%_)))
                               '#t)
                          _%$obj148836%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj148836%_)))))
                   (_%h148841%_ _%h148839%_))
              (__hash-map _%proc148827%_ _%h148841%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc148822%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc150990%_ _%iv150991%_ _%h150992%_)
        (let* ((_%proc150995%_ _%proc150990%_)
               (_%h151003%_ _%h150992%_)
               (_%result151012%_ _%iv150991%_))
          (let* ((_%self143822151014%_ _%h151003%_)
                 (_%proc151020%_
                  (lambda (_%k151017%_ _%v151018%_)
                    (set! _%result151012%_
                          (let ()
                            (declare (not safe))
                            (_%proc150995%_
                             _%k151017%_
                             _%v151018%_
                             _%result151012%_)))))
                 (_%self143822151027%_
                  (let ((_%$obj151024%_ _%self143822151014%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj151024%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj151024%_)))
                             '#t)
                        _%$obj151024%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj151024%_)))))
                 (_%self143822151029%_ _%self143822151027%_)
                 (_%proc151044%_ _%proc151020%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object151053151058%_
                         (##unchecked-structure-ref
                          _%self143822151029%_
                          '1
                          '#f
                          'for-each))
                        (_%method151054151059%_
                         (##unchecked-structure-ref
                          _%self143822151029%_
                          '5
                          '#f
                          'for-each)))
                    (_%method151054151059%_
                     _%object151053151058%_
                     _%proc151044%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object151060151065%_
                         (##unchecked-structure-ref
                          _%self143822151029%_
                          '1
                          '#f
                          'for-each))
                        (_%method151061151066%_
                         (##unchecked-structure-ref
                          _%self143822151029%_
                          '5
                          '#f
                          'for-each)))
                    (_%method151061151066%_
                     _%object151060151065%_
                     _%proc151044%_)))))
          _%result151012%_)))
    (define hash-fold
      (lambda (_%proc148971%_ _%iv148972%_ _%h148973%_)
        (if (procedure? _%proc148971%_)
            (let* ((_%proc148977%_ _%proc148971%_)
                   (_%h148989%_
                    (let ((_%$obj148986%_ _%h148973%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj148986%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj148986%_)))
                               '#t)
                          _%$obj148986%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj148986%_)))))
                   (_%h148991%_ _%h148989%_))
              (__hash-fold _%proc148977%_ _%iv148972%_ _%h148991%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc148971%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc150897%_ _%h150898%_ _%default-value150899%_)
        (let* ((_%proc150902%_ _%proc150897%_)
               (_%h150910%_ _%h150898%_)
               (__tmp159412
                (lambda (_%return150919%_)
                  (let* ((_%self143822150921%_ _%h150910%_)
                         (_%proc150930%_
                          (lambda (_%k150924%_ _%v150925%_)
                            (let ((_%$e150927%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc150902%_
                                      _%k150924%_
                                      _%v150925%_))))
                              (if _%$e150927%_
                                  (_%return150919%_ _%$e150927%_)
                                  '#!void))))
                         (_%self143822150937%_
                          (let ((_%$obj150934%_ _%self143822150921%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj150934%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj150934%_)))
                                     '#t)
                                _%$obj150934%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj150934%_)))))
                         (_%self143822150939%_ _%self143822150937%_)
                         (_%proc150954%_ _%proc150930%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object150963150968%_
                                 (##unchecked-structure-ref
                                  _%self143822150939%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method150964150969%_
                                 (##unchecked-structure-ref
                                  _%self143822150939%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method150964150969%_
                             _%object150963150968%_
                             _%proc150954%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object150970150975%_
                                 (##unchecked-structure-ref
                                  _%self143822150939%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method150971150976%_
                                 (##unchecked-structure-ref
                                  _%self143822150939%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method150971150976%_
                             _%object150970150975%_
                             _%proc150954%_)))))
                  _%default-value150899%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp159412))))
    (define __hash-find__0
      (lambda (_%proc150981%_ _%h150982%_)
        (let ((_%default-value150984%_ '#f))
          (__hash-find__%
           _%proc150981%_
           _%h150982%_
           _%default-value150984%_))))
    (define __hash-find
      (lambda _g159413_
        (let ((_g159414_ (let () (declare (not safe)) (##length _g159413_))))
          (cond ((let () (declare (not safe)) (##fx= _g159414_ 2))
                 (apply __hash-find__0 _g159413_))
                ((let () (declare (not safe)) (##fx= _g159414_ 3))
                 (apply __hash-find__% _g159413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g159413_))))))
    (define hash-find__%
      (lambda (_%proc149122%_ _%h149123%_ _%default-value149124%_)
        (if (procedure? _%proc149122%_)
            (let* ((_%proc149128%_ _%proc149122%_)
                   (_%h149140%_
                    (let ((_%$obj149137%_ _%h149123%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj149137%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj149137%_)))
                               '#t)
                          _%$obj149137%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj149137%_)))))
                   (_%h149142%_ _%h149140%_))
              (__hash-find__%
               _%proc149128%_
               _%h149142%_
               _%default-value149124%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc149122%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc149155%_ _%h149156%_)
        (let ((_%default-value149158%_ '#f))
          (hash-find__% _%proc149155%_ _%h149156%_ _%default-value149158%_))))
    (define hash-find
      (lambda _g159415_
        (let ((_g159416_ (let () (declare (not safe)) (##length _g159415_))))
          (cond ((let () (declare (not safe)) (##fx= _g159416_ 2))
                 (apply hash-find__0 _g159415_))
                ((let () (declare (not safe)) (##fx= _g159416_ 3))
                 (apply hash-find__% _g159415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g159415_))))))
    (define __hash-keys
      (lambda (_%h150828%_)
        (let* ((_%h150831%_ _%h150828%_) (_%result150840%_ '()))
          (let* ((_%self143822150842%_ _%h150831%_)
                 (_%proc150848%_
                  (lambda (_%k150845%_ _%v150846%_)
                    (set! _%result150840%_
                          (cons _%k150845%_ _%result150840%_))))
                 (_%self143822150855%_
                  (let ((_%$obj150852%_ _%self143822150842%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj150852%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj150852%_)))
                             '#t)
                        _%$obj150852%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj150852%_)))))
                 (_%self143822150857%_ _%self143822150855%_)
                 (_%proc150872%_ _%proc150848%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object150881150886%_
                         (##unchecked-structure-ref
                          _%self143822150857%_
                          '1
                          '#f
                          'for-each))
                        (_%method150882150887%_
                         (##unchecked-structure-ref
                          _%self143822150857%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150882150887%_
                     _%object150881150886%_
                     _%proc150872%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object150888150893%_
                         (##unchecked-structure-ref
                          _%self143822150857%_
                          '1
                          '#f
                          'for-each))
                        (_%method150889150894%_
                         (##unchecked-structure-ref
                          _%self143822150857%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150889150894%_
                     _%object150888150893%_
                     _%proc150872%_)))))
          _%result150840%_)))
    (define hash-keys
      (lambda (_%h149284%_)
        (let* ((_%h149290%_
                (let ((_%$obj149287%_ _%h149284%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149287%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149287%_)))
                           '#t)
                      _%$obj149287%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149287%_)))))
               (_%h149292%_ _%h149290%_))
          (__hash-keys _%h149292%_))))
    (define __hash-values
      (lambda (_%h150760%_)
        (let* ((_%h150763%_ _%h150760%_) (_%result150772%_ '()))
          (let* ((_%self143822150774%_ _%h150763%_)
                 (_%proc150780%_
                  (lambda (_%k150777%_ _%v150778%_)
                    (set! _%result150772%_
                          (cons _%v150778%_ _%result150772%_))))
                 (_%self143822150787%_
                  (let ((_%$obj150784%_ _%self143822150774%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj150784%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj150784%_)))
                             '#t)
                        _%$obj150784%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj150784%_)))))
                 (_%self143822150789%_ _%self143822150787%_)
                 (_%proc150804%_ _%proc150780%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object150813150818%_
                         (##unchecked-structure-ref
                          _%self143822150789%_
                          '1
                          '#f
                          'for-each))
                        (_%method150814150819%_
                         (##unchecked-structure-ref
                          _%self143822150789%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150814150819%_
                     _%object150813150818%_
                     _%proc150804%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object150820150825%_
                         (##unchecked-structure-ref
                          _%self143822150789%_
                          '1
                          '#f
                          'for-each))
                        (_%method150821150826%_
                         (##unchecked-structure-ref
                          _%self143822150789%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150821150826%_
                     _%object150820150825%_
                     _%proc150804%_)))))
          _%result150772%_)))
    (define hash-values
      (lambda (_%h149422%_)
        (let* ((_%h149428%_
                (let ((_%$obj149425%_ _%h149422%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149425%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149425%_)))
                           '#t)
                      _%$obj149425%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149425%_)))))
               (_%h149430%_ _%h149428%_))
          (__hash-values _%h149430%_))))
    (define __hash-copy
      (lambda (_%h150709%_)
        (let* ((_%h150712%_ _%h150709%_)
               (_%self143235150721%_ _%h150712%_)
               (_%self143235150728%_
                (let ((_%$obj150725%_ _%self143235150721%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150725%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150725%_)))
                           '#t)
                      _%$obj150725%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150725%_)))))
               (_%self143235150730%_ _%self143235150728%_))
          (if __DEBUG
              (let ((_%$obj150750%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object150742150747%_
                              (##unchecked-structure-ref
                               _%self143235150730%_
                               '1
                               '#f
                               'copy))
                             (_%method150743150748%_
                              (##unchecked-structure-ref
                               _%self143235150730%_
                               '3
                               '#f
                               'copy)))
                         (_%method150743150748%_ _%object150742150747%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj150750%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj150750%_)))
                         '#t)
                    _%$obj150750%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj150750%_))))
              (let ()
                (declare (not safe))
                (let ((_%object150752150757%_
                       (##unchecked-structure-ref
                        _%self143235150730%_
                        '1
                        '#f
                        'copy))
                      (_%method150753150758%_
                       (##unchecked-structure-ref
                        _%self143235150730%_
                        '3
                        '#f
                        'copy)))
                  (_%method150753150758%_ _%object150752150757%_)))))))
    (define hash-copy
      (lambda (_%h149560%_)
        (let* ((_%h149566%_
                (let ((_%$obj149563%_ _%h149560%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149563%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149563%_)))
                           '#t)
                      _%$obj149563%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149563%_)))))
               (_%h149568%_ _%h149566%_))
          (__hash-copy _%h149568%_))))
    (define __hash-clear!
      (lambda (_%h150661%_)
        (let* ((_%h150664%_ _%h150661%_)
               (_%self142943150673%_ _%h150664%_)
               (_%self142943150680%_
                (let ((_%$obj150677%_ _%self142943150673%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150677%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150677%_)))
                           '#t)
                      _%$obj150677%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150677%_)))))
               (_%self142943150682%_ _%self142943150680%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150694150699%_
                       (##unchecked-structure-ref
                        _%self142943150682%_
                        '1
                        '#f
                        'clear!))
                      (_%method150695150700%_
                       (##unchecked-structure-ref
                        _%self142943150682%_
                        '2
                        '#f
                        'clear!)))
                  (_%method150695150700%_ _%object150694150699%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150701150706%_
                       (##unchecked-structure-ref
                        _%self142943150682%_
                        '1
                        '#f
                        'clear!))
                      (_%method150702150707%_
                       (##unchecked-structure-ref
                        _%self142943150682%_
                        '2
                        '#f
                        'clear!)))
                  (_%method150702150707%_ _%object150701150706%_)))))))
    (define hash-clear!
      (lambda (_%h149698%_)
        (let* ((_%h149704%_
                (let ((_%$obj149701%_ _%h149698%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149701%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149701%_)))
                           '#t)
                      _%$obj149701%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149701%_)))))
               (_%h149706%_ _%h149704%_))
          (__hash-clear! _%h149706%_))))
    (define __hash-merge
      (lambda (_%h150607%_ . _%rest150608%_)
        (let* ((_%h150611%_ _%h150607%_)
               (_%copy150659%_
                (let* ((_%self143235150620%_ _%h150611%_)
                       (_%self143235150627%_
                        (let ((_%$obj150624%_ _%self143235150620%_))
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
                       (_%self143235150629%_ _%self143235150627%_))
                  (if __DEBUG
                      (let ((_%$obj150649%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object150641150646%_
                                      (##unchecked-structure-ref
                                       _%self143235150629%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method150642150647%_
                                      (##unchecked-structure-ref
                                       _%self143235150629%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method150642150647%_
                                  _%object150641150646%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj150649%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj150649%_)))
                                 '#t)
                            _%$obj150649%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj150649%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object150651150656%_
                               (##unchecked-structure-ref
                                _%self143235150629%_
                                '1
                                '#f
                                'copy))
                              (_%method150652150657%_
                               (##unchecked-structure-ref
                                _%self143235150629%_
                                '3
                                '#f
                                'copy)))
                          (_%method150652150657%_ _%object150651150656%_)))))))
          (apply hash-merge! _%copy150659%_ _%rest150608%_)
          _%copy150659%_)))
    (define hash-merge
      (lambda (_%h149836%_ . _%rest149837%_)
        (let* ((_%h149843%_
                (let ((_%$obj149840%_ _%h149836%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149840%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149840%_)))
                           '#t)
                      _%$obj149840%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149840%_)))))
               (_%h149845%_ _%h149843%_))
          (declare (not safe))
          (##apply __hash-merge _%h149845%_ _%rest149837%_))))
    (define __hash-merge-right
      (lambda (_%h150553%_ . _%rest150554%_)
        (let* ((_%h150557%_ _%h150553%_)
               (_%copy150605%_
                (let* ((_%self143235150566%_ _%h150557%_)
                       (_%self143235150573%_
                        (let ((_%$obj150570%_ _%self143235150566%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj150570%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj150570%_)))
                                   '#t)
                              _%$obj150570%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj150570%_)))))
                       (_%self143235150575%_ _%self143235150573%_))
                  (if __DEBUG
                      (let ((_%$obj150595%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object150587150592%_
                                      (##unchecked-structure-ref
                                       _%self143235150575%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method150588150593%_
                                      (##unchecked-structure-ref
                                       _%self143235150575%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method150588150593%_
                                  _%object150587150592%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj150595%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj150595%_)))
                                 '#t)
                            _%$obj150595%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj150595%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object150597150602%_
                               (##unchecked-structure-ref
                                _%self143235150575%_
                                '1
                                '#f
                                'copy))
                              (_%method150598150603%_
                               (##unchecked-structure-ref
                                _%self143235150575%_
                                '3
                                '#f
                                'copy)))
                          (_%method150598150603%_ _%object150597150602%_)))))))
          (apply hash-merge-right! _%copy150605%_ _%rest150554%_)
          _%copy150605%_)))
    (define hash-merge-right
      (lambda (_%h149975%_ . _%rest149976%_)
        (let* ((_%h149982%_
                (let ((_%$obj149979%_ _%h149975%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149979%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149979%_)))
                           '#t)
                      _%$obj149979%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149979%_)))))
               (_%h149984%_ _%h149982%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h149984%_ _%rest149976%_))))
    (define __hash-merge!
      (lambda (_%h150401%_ . _%rest150402%_)
        (let ((_%h150405%_ _%h150401%_))
          (let ((__tmp159417
                 (lambda (_%hr150414%_)
                   (let* ((_%hr150420%_
                           (let ((_%$obj150417%_ _%hr150414%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj150417%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj150417%_)))
                                      '#t)
                                 _%$obj150417%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj150417%_)))))
                          (_%hr150422%_ _%hr150420%_)
                          (_%self143822150435%_ _%hr150422%_)
                          (_%proc150510%_
                           (lambda (_%k150438%_ _%v150439%_)
                             (if (let* ((_%h150441%_ _%h150405%_)
                                        (_%k150444%_ _%k150438%_)
                                        (_%h150451%_
                                         (let ((_%$obj150448%_ _%h150441%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj150448%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj150448%_)))
                                                    '#t)
                                               _%$obj150448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj150448%_)))))
                                        (_%h150453%_ _%h150451%_))
                                   (__hash-key? _%h150453%_ _%k150444%_))
                                 '#!void
                                 (let* ((_%self144722150469%_ _%h150405%_)
                                        (_%key150472%_ _%k150438%_)
                                        (_%value150475%_ _%v150439%_)
                                        (_%self144722150482%_
                                         (let ((_%$obj150479%_
                                                _%self144722150469%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj150479%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj150479%_)))
                                                    '#t)
                                               _%$obj150479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj150479%_)))))
                                        (_%self144722150484%_
                                         _%self144722150482%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object150495150500%_
                                                (##unchecked-structure-ref
                                                 _%self144722150484%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method150496150501%_
                                                (##unchecked-structure-ref
                                                 _%self144722150484%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method150496150501%_
                                            _%object150495150500%_
                                            _%key150472%_
                                            _%value150475%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object150502150507%_
                                                (##unchecked-structure-ref
                                                 _%self144722150484%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method150503150508%_
                                                (##unchecked-structure-ref
                                                 _%self144722150484%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method150503150508%_
                                            _%object150502150507%_
                                            _%key150472%_
                                            _%value150475%_))))))))
                          (_%self143822150517%_
                           (let ((_%$obj150514%_ _%self143822150435%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj150514%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj150514%_)))
                                      '#t)
                                 _%$obj150514%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj150514%_)))))
                          (_%self143822150519%_ _%self143822150517%_)
                          (_%proc150529%_ _%proc150510%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object150538150543%_
                                  (##unchecked-structure-ref
                                   _%self143822150519%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method150539150544%_
                                  (##unchecked-structure-ref
                                   _%self143822150519%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method150539150544%_
                              _%object150538150543%_
                              _%proc150529%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object150545150550%_
                                  (##unchecked-structure-ref
                                   _%self143822150519%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method150546150551%_
                                  (##unchecked-structure-ref
                                   _%self143822150519%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method150546150551%_
                              _%object150545150550%_
                              _%proc150529%_))))))))
            (declare (not safe))
            (##for-each __tmp159417 _%rest150402%_))
          _%h150405%_)))
    (define hash-merge!
      (lambda (_%h150114%_ . _%rest150115%_)
        (let* ((_%h150121%_
                (let ((_%$obj150118%_ _%h150114%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150118%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150118%_)))
                           '#t)
                      _%$obj150118%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150118%_)))))
               (_%h150123%_ _%h150121%_))
          (declare (not safe))
          (##apply __hash-merge! _%h150123%_ _%rest150115%_))))
    (define __hash-merge-right!
      (lambda (_%h150272%_ . _%rest150273%_)
        (let ((_%h150276%_ _%h150272%_))
          (let ((__tmp159418
                 (lambda (_%hr150285%_)
                   (let* ((_%hr150291%_
                           (let ((_%$obj150288%_ _%hr150285%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj150288%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj150288%_)))
                                      '#t)
                                 _%$obj150288%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj150288%_)))))
                          (_%hr150293%_ _%hr150291%_)
                          (_%self143822150306%_ _%hr150293%_)
                          (_%proc150358%_
                           (lambda (_%k150309%_ _%v150310%_)
                             (let* ((_%self144722150312%_ _%h150276%_)
                                    (_%key150315%_ _%k150309%_)
                                    (_%value150318%_ _%v150310%_)
                                    (_%self144722150325%_
                                     (let ((_%$obj150322%_
                                            _%self144722150312%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj150322%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj150322%_)))
                                                '#t)
                                           _%$obj150322%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj150322%_)))))
                                    (_%self144722150327%_
                                     _%self144722150325%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object150343150348%_
                                            (##unchecked-structure-ref
                                             _%self144722150327%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method150344150349%_
                                            (##unchecked-structure-ref
                                             _%self144722150327%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method150344150349%_
                                        _%object150343150348%_
                                        _%key150315%_
                                        _%value150318%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object150350150355%_
                                            (##unchecked-structure-ref
                                             _%self144722150327%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method150351150356%_
                                            (##unchecked-structure-ref
                                             _%self144722150327%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method150351150356%_
                                        _%object150350150355%_
                                        _%key150315%_
                                        _%value150318%_)))))))
                          (_%self143822150365%_
                           (let ((_%$obj150362%_ _%self143822150306%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj150362%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj150362%_)))
                                      '#t)
                                 _%$obj150362%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj150362%_)))))
                          (_%self143822150367%_ _%self143822150365%_)
                          (_%proc150377%_ _%proc150358%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object150386150391%_
                                  (##unchecked-structure-ref
                                   _%self143822150367%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method150387150392%_
                                  (##unchecked-structure-ref
                                   _%self143822150367%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method150387150392%_
                              _%object150386150391%_
                              _%proc150377%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object150393150398%_
                                  (##unchecked-structure-ref
                                   _%self143822150367%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method150394150399%_
                                  (##unchecked-structure-ref
                                   _%self143822150367%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method150394150399%_
                              _%object150393150398%_
                              _%proc150377%_))))))))
            (declare (not safe))
            (##for-each __tmp159418 _%rest150273%_))
          _%h150276%_)))
    (define hash-merge-right!
      (lambda (_%h150253%_ . _%rest150254%_)
        (let* ((_%h150260%_
                (let ((_%$obj150257%_ _%h150253%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150257%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150257%_)))
                           '#t)
                      _%$obj150257%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150257%_)))))
               (_%h150262%_ _%h150260%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h150262%_ _%rest150254%_))))))
