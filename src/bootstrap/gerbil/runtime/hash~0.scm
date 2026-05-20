(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1779274769)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp162422 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp162422
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args161164%_
        (apply make-instance UnboundKeyError::t _%$args161164%_)))
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
      (lambda (_%where161038%_ _%message161039%_ . _%irritants161040%_)
        (let ((__tmp162423
               (let ((__obj162414
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj162414
                    _%message161039%_
                    'where:
                    _%where161038%_
                    'irritants:
                    _%irritants161040%_))
                 __obj162414)))
          (declare (not safe))
          (raise __tmp162423))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp162424 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp162424
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj162416
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj162416
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj162416))
    (define make-HashTable
      (lambda (_%obj161036%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj161036%_))))
    (define try-HashTable
      (lambda (_%obj161034%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj161034%_))))
    (define HashTable?
      (lambda (_%obj161032%_)
        (let ((__tmp162425
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj161032%_ __tmp162425))))
    (define is-HashTable?
      (lambda (_%obj161029%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj161029%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self146019146263%_)
        (let ((_%self146019146265%_ _%self146019146263%_))
          (declare (not safe))
          (let ((_%object146272146277%_
                 (##unchecked-structure-ref
                  _%self146019146265%_
                  '1
                  '#f
                  'clear!))
                (_%method146273146278%_
                 (##unchecked-structure-ref
                  _%self146019146265%_
                  '2
                  '#f
                  'clear!)))
            (_%method146273146278%_ _%object146272146277%_)))))
    (define ::HashTable-clear!
      (lambda (_%self146020146280%_)
        (let* ((_%self146020146285%_
                (let ((_%$obj146282%_ _%self146020146280%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146282%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146282%_)))
                           '#t)
                      _%$obj146282%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146282%_)))))
               (_%self146020146287%_ _%self146020146285%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146295146300%_
                       (##unchecked-structure-ref
                        _%self146020146287%_
                        '1
                        '#f
                        'clear!))
                      (_%method146296146301%_
                       (##unchecked-structure-ref
                        _%self146020146287%_
                        '2
                        '#f
                        'clear!)))
                  (_%method146296146301%_ _%object146295146300%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146302146307%_
                       (##unchecked-structure-ref
                        _%self146020146287%_
                        '1
                        '#f
                        'clear!))
                      (_%method146303146308%_
                       (##unchecked-structure-ref
                        _%self146020146287%_
                        '2
                        '#f
                        'clear!)))
                  (_%method146303146308%_ _%object146302146307%_)))))))
    (define __HashTable-copy
      (lambda (_%self146311146554%_)
        (let ((_%self146311146556%_ _%self146311146554%_))
          (declare (not safe))
          (let ((_%object146563146568%_
                 (##unchecked-structure-ref _%self146311146556%_ '1 '#f 'copy))
                (_%method146564146569%_
                 (##unchecked-structure-ref
                  _%self146311146556%_
                  '3
                  '#f
                  'copy)))
            (_%method146564146569%_ _%object146563146568%_)))))
    (define ::HashTable-copy
      (lambda (_%self146312146571%_)
        (let* ((_%self146312146576%_
                (let ((_%$obj146573%_ _%self146312146571%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146573%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146573%_)))
                           '#t)
                      _%$obj146573%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146573%_)))))
               (_%self146312146578%_ _%self146312146576%_))
          (if __DEBUG
              (let ((_%$obj146594%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object146586146591%_
                              (##unchecked-structure-ref
                               _%self146312146578%_
                               '1
                               '#f
                               'copy))
                             (_%method146587146592%_
                              (##unchecked-structure-ref
                               _%self146312146578%_
                               '3
                               '#f
                               'copy)))
                         (_%method146587146592%_ _%object146586146591%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj146594%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj146594%_)))
                         '#t)
                    _%$obj146594%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj146594%_))))
              (let ()
                (declare (not safe))
                (let ((_%object146596146601%_
                       (##unchecked-structure-ref
                        _%self146312146578%_
                        '1
                        '#f
                        'copy))
                      (_%method146597146602%_
                       (##unchecked-structure-ref
                        _%self146312146578%_
                        '3
                        '#f
                        'copy)))
                  (_%method146597146602%_ _%object146596146601%_)))))))
    (define __HashTable-delete!
      (lambda (_%self146605146848%_ _%key146849%_)
        (let ((_%self146605146851%_ _%self146605146848%_))
          (declare (not safe))
          (let ((_%object146858146863%_
                 (##unchecked-structure-ref
                  _%self146605146851%_
                  '1
                  '#f
                  'delete!))
                (_%method146859146864%_
                 (##unchecked-structure-ref
                  _%self146605146851%_
                  '4
                  '#f
                  'delete!)))
            (_%method146859146864%_ _%object146858146863%_ _%key146849%_)))))
    (define ::HashTable-delete!
      (lambda (_%self146606146866%_ _%key146867%_)
        (let* ((_%self146606146872%_
                (let ((_%$obj146869%_ _%self146606146866%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146869%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146869%_)))
                           '#t)
                      _%$obj146869%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146869%_)))))
               (_%self146606146874%_ _%self146606146872%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146882146887%_
                       (##unchecked-structure-ref
                        _%self146606146874%_
                        '1
                        '#f
                        'delete!))
                      (_%method146883146888%_
                       (##unchecked-structure-ref
                        _%self146606146874%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146883146888%_
                   _%object146882146887%_
                   _%key146867%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146889146894%_
                       (##unchecked-structure-ref
                        _%self146606146874%_
                        '1
                        '#f
                        'delete!))
                      (_%method146890146895%_
                       (##unchecked-structure-ref
                        _%self146606146874%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146890146895%_
                   _%object146889146894%_
                   _%key146867%_)))))))
    (define __HashTable-for-each
      (lambda (_%self146898147141%_ _%proc147142%_)
        (let* ((_%self146898147144%_ _%self146898147141%_)
               (_%proc147151%_ _%proc147142%_))
          (declare (not safe))
          (let ((_%object147159147164%_
                 (##unchecked-structure-ref
                  _%self146898147144%_
                  '1
                  '#f
                  'for-each))
                (_%method147160147165%_
                 (##unchecked-structure-ref
                  _%self146898147144%_
                  '5
                  '#f
                  'for-each)))
            (_%method147160147165%_ _%object147159147164%_ _%proc147151%_)))))
    (define ::HashTable-for-each
      (lambda (_%self146899147167%_ _%proc147168%_)
        (let* ((_%self146899147173%_
                (let ((_%$obj147170%_ _%self146899147167%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147170%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147170%_)))
                           '#t)
                      _%$obj147170%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147170%_)))))
               (_%self146899147175%_ _%self146899147173%_))
          (if (procedure? _%proc147168%_)
              (let ((_%proc147184%_ _%proc147168%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object147193147198%_
                             (##unchecked-structure-ref
                              _%self146899147175%_
                              '1
                              '#f
                              'for-each))
                            (_%method147194147199%_
                             (##unchecked-structure-ref
                              _%self146899147175%_
                              '5
                              '#f
                              'for-each)))
                        (_%method147194147199%_
                         _%object147193147198%_
                         _%proc147184%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object147200147205%_
                             (##unchecked-structure-ref
                              _%self146899147175%_
                              '1
                              '#f
                              'for-each))
                            (_%method147201147206%_
                             (##unchecked-structure-ref
                              _%self146899147175%_
                              '5
                              '#f
                              'for-each)))
                        (_%method147201147206%_
                         _%object147200147205%_
                         _%proc147184%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc147168%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self147209147452%_)
        (let ((_%self147209147454%_ _%self147209147452%_))
          (declare (not safe))
          (let ((_%object147461147466%_
                 (##unchecked-structure-ref
                  _%self147209147454%_
                  '1
                  '#f
                  'length))
                (_%method147462147467%_
                 (##unchecked-structure-ref
                  _%self147209147454%_
                  '6
                  '#f
                  'length)))
            (_%method147462147467%_ _%object147461147466%_)))))
    (define ::HashTable-length
      (lambda (_%self147210147469%_)
        (let* ((_%self147210147474%_
                (let ((_%$obj147471%_ _%self147210147469%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147471%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147471%_)))
                           '#t)
                      _%$obj147471%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147471%_)))))
               (_%self147210147476%_ _%self147210147474%_))
          (if __DEBUG
              (let ((_%val147492%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object147484147489%_
                              (##unchecked-structure-ref
                               _%self147210147476%_
                               '1
                               '#f
                               'length))
                             (_%method147485147490%_
                              (##unchecked-structure-ref
                               _%self147210147476%_
                               '6
                               '#f
                               'length)))
                         (_%method147485147490%_ _%object147484147489%_)))))
                (if (fixnum? _%val147492%_)
                    _%val147492%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val147492%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object147494147499%_
                       (##unchecked-structure-ref
                        _%self147210147476%_
                        '1
                        '#f
                        'length))
                      (_%method147495147500%_
                       (##unchecked-structure-ref
                        _%self147210147476%_
                        '6
                        '#f
                        'length)))
                  (_%method147495147500%_ _%object147494147499%_)))))))
    (define __HashTable-ref
      (lambda (_%self147503147746%_ _%key147747%_ _%default147748%_)
        (let ((_%self147503147750%_ _%self147503147746%_))
          (declare (not safe))
          (let ((_%object147757147762%_
                 (##unchecked-structure-ref _%self147503147750%_ '1 '#f 'ref))
                (_%method147758147763%_
                 (##unchecked-structure-ref _%self147503147750%_ '7 '#f 'ref)))
            (_%method147758147763%_
             _%object147757147762%_
             _%key147747%_
             _%default147748%_)))))
    (define ::HashTable-ref
      (lambda (_%self147504147765%_ _%key147766%_ _%default147767%_)
        (let* ((_%self147504147772%_
                (let ((_%$obj147769%_ _%self147504147765%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147769%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147769%_)))
                           '#t)
                      _%$obj147769%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147769%_)))))
               (_%self147504147774%_ _%self147504147772%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147782147787%_
                       (##unchecked-structure-ref
                        _%self147504147774%_
                        '1
                        '#f
                        'ref))
                      (_%method147783147788%_
                       (##unchecked-structure-ref
                        _%self147504147774%_
                        '7
                        '#f
                        'ref)))
                  (_%method147783147788%_
                   _%object147782147787%_
                   _%key147766%_
                   _%default147767%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147789147794%_
                       (##unchecked-structure-ref
                        _%self147504147774%_
                        '1
                        '#f
                        'ref))
                      (_%method147790147795%_
                       (##unchecked-structure-ref
                        _%self147504147774%_
                        '7
                        '#f
                        'ref)))
                  (_%method147790147795%_
                   _%object147789147794%_
                   _%key147766%_
                   _%default147767%_)))))))
    (define __HashTable-set!
      (lambda (_%self147798148041%_ _%key148042%_ _%value148043%_)
        (let ((_%self147798148045%_ _%self147798148041%_))
          (declare (not safe))
          (let ((_%object148052148057%_
                 (##unchecked-structure-ref _%self147798148045%_ '1 '#f 'set!))
                (_%method148053148058%_
                 (##unchecked-structure-ref
                  _%self147798148045%_
                  '8
                  '#f
                  'set!)))
            (_%method148053148058%_
             _%object148052148057%_
             _%key148042%_
             _%value148043%_)))))
    (define ::HashTable-set!
      (lambda (_%self147799148060%_ _%key148061%_ _%value148062%_)
        (let* ((_%self147799148067%_
                (let ((_%$obj148064%_ _%self147799148060%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148064%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148064%_)))
                           '#t)
                      _%$obj148064%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148064%_)))))
               (_%self147799148069%_ _%self147799148067%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148077148082%_
                       (##unchecked-structure-ref
                        _%self147799148069%_
                        '1
                        '#f
                        'set!))
                      (_%method148078148083%_
                       (##unchecked-structure-ref
                        _%self147799148069%_
                        '8
                        '#f
                        'set!)))
                  (_%method148078148083%_
                   _%object148077148082%_
                   _%key148061%_
                   _%value148062%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148084148089%_
                       (##unchecked-structure-ref
                        _%self147799148069%_
                        '1
                        '#f
                        'set!))
                      (_%method148085148090%_
                       (##unchecked-structure-ref
                        _%self147799148069%_
                        '8
                        '#f
                        'set!)))
                  (_%method148085148090%_
                   _%object148084148089%_
                   _%key148061%_
                   _%value148062%_)))))))
    (define __HashTable-update!
      (lambda (_%self148093148336%_
               _%key148337%_
               _%proc148338%_
               _%default148339%_)
        (let* ((_%self148093148341%_ _%self148093148336%_)
               (_%proc148348%_ _%proc148338%_))
          (declare (not safe))
          (let ((_%object148356148361%_
                 (##unchecked-structure-ref
                  _%self148093148341%_
                  '1
                  '#f
                  'update!))
                (_%method148357148362%_
                 (##unchecked-structure-ref
                  _%self148093148341%_
                  '9
                  '#f
                  'update!)))
            (_%method148357148362%_
             _%object148356148361%_
             _%key148337%_
             _%proc148348%_
             _%default148339%_)))))
    (define ::HashTable-update!
      (lambda (_%self148094148364%_
               _%key148365%_
               _%proc148366%_
               _%default148367%_)
        (let* ((_%self148094148372%_
                (let ((_%$obj148369%_ _%self148094148364%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148369%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148369%_)))
                           '#t)
                      _%$obj148369%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148369%_)))))
               (_%self148094148374%_ _%self148094148372%_))
          (if (procedure? _%proc148366%_)
              (let ((_%proc148383%_ _%proc148366%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object148392148397%_
                             (##unchecked-structure-ref
                              _%self148094148374%_
                              '1
                              '#f
                              'update!))
                            (_%method148393148398%_
                             (##unchecked-structure-ref
                              _%self148094148374%_
                              '9
                              '#f
                              'update!)))
                        (_%method148393148398%_
                         _%object148392148397%_
                         _%key148365%_
                         _%proc148383%_
                         _%default148367%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object148399148404%_
                             (##unchecked-structure-ref
                              _%self148094148374%_
                              '1
                              '#f
                              'update!))
                            (_%method148400148405%_
                             (##unchecked-structure-ref
                              _%self148094148374%_
                              '9
                              '#f
                              'update!)))
                        (_%method148400148405%_
                         _%object148399148404%_
                         _%key148365%_
                         _%proc148383%_
                         _%default148367%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc148366%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp162426 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp162426
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj162418
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj162418
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj162418))
    (define make-Locker
      (lambda (_%obj161027%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj161027%_))))
    (define try-Locker
      (lambda (_%obj161025%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj161025%_))))
    (define Locker?
      (lambda (_%obj161023%_)
        (let ((__tmp162427
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj161023%_ __tmp162427))))
    (define is-Locker?
      (lambda (_%obj161020%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj161020%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self148408148651%_)
        (let ((_%self148408148653%_ _%self148408148651%_))
          (declare (not safe))
          (let ((_%object148660148665%_
                 (##unchecked-structure-ref
                  _%self148408148653%_
                  '1
                  '#f
                  'read-lock!))
                (_%method148661148666%_
                 (##unchecked-structure-ref
                  _%self148408148653%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method148661148666%_ _%object148660148665%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self148409148668%_)
        (let* ((_%self148409148673%_
                (let ((_%$obj148670%_ _%self148409148668%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148670%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148670%_)))
                           '#t)
                      _%$obj148670%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148670%_)))))
               (_%self148409148675%_ _%self148409148673%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148683148688%_
                       (##unchecked-structure-ref
                        _%self148409148675%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method148684148689%_
                       (##unchecked-structure-ref
                        _%self148409148675%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method148684148689%_ _%object148683148688%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148690148695%_
                       (##unchecked-structure-ref
                        _%self148409148675%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method148691148696%_
                       (##unchecked-structure-ref
                        _%self148409148675%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method148691148696%_ _%object148690148695%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self148699148942%_)
        (let ((_%self148699148944%_ _%self148699148942%_))
          (declare (not safe))
          (let ((_%object148951148956%_
                 (##unchecked-structure-ref
                  _%self148699148944%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method148952148957%_
                 (##unchecked-structure-ref
                  _%self148699148944%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method148952148957%_ _%object148951148956%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self148700148959%_)
        (let* ((_%self148700148964%_
                (let ((_%$obj148961%_ _%self148700148959%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148961%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148961%_)))
                           '#t)
                      _%$obj148961%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148961%_)))))
               (_%self148700148966%_ _%self148700148964%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148974148979%_
                       (##unchecked-structure-ref
                        _%self148700148966%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148975148980%_
                       (##unchecked-structure-ref
                        _%self148700148966%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148975148980%_ _%object148974148979%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148981148986%_
                       (##unchecked-structure-ref
                        _%self148700148966%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148982148987%_
                       (##unchecked-structure-ref
                        _%self148700148966%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148982148987%_ _%object148981148986%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self148990149233%_)
        (let ((_%self148990149235%_ _%self148990149233%_))
          (declare (not safe))
          (let ((_%object149242149247%_
                 (##unchecked-structure-ref
                  _%self148990149235%_
                  '1
                  '#f
                  'write-lock!))
                (_%method149243149248%_
                 (##unchecked-structure-ref
                  _%self148990149235%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method149243149248%_ _%object149242149247%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self148991149250%_)
        (let* ((_%self148991149255%_
                (let ((_%$obj149252%_ _%self148991149250%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149252%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149252%_)))
                           '#t)
                      _%$obj149252%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj149252%_)))))
               (_%self148991149257%_ _%self148991149255%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object149265149270%_
                       (##unchecked-structure-ref
                        _%self148991149257%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method149266149271%_
                       (##unchecked-structure-ref
                        _%self148991149257%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method149266149271%_ _%object149265149270%_)))
              (let ()
                (declare (not safe))
                (let ((_%object149272149277%_
                       (##unchecked-structure-ref
                        _%self148991149257%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method149273149278%_
                       (##unchecked-structure-ref
                        _%self148991149257%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method149273149278%_ _%object149272149277%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self149281149524%_)
        (let ((_%self149281149526%_ _%self149281149524%_))
          (declare (not safe))
          (let ((_%object149533149538%_
                 (##unchecked-structure-ref
                  _%self149281149526%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method149534149539%_
                 (##unchecked-structure-ref
                  _%self149281149526%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method149534149539%_ _%object149533149538%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self149282149541%_)
        (let* ((_%self149282149546%_
                (let ((_%$obj149543%_ _%self149282149541%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149543%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149543%_)))
                           '#t)
                      _%$obj149543%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj149543%_)))))
               (_%self149282149548%_ _%self149282149546%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object149556149561%_
                       (##unchecked-structure-ref
                        _%self149282149548%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method149557149562%_
                       (##unchecked-structure-ref
                        _%self149282149548%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method149557149562%_ _%object149556149561%_)))
              (let ()
                (declare (not safe))
                (let ((_%object149563149568%_
                       (##unchecked-structure-ref
                        _%self149282149548%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method149564149569%_
                       (##unchecked-structure-ref
                        _%self149282149548%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method149564149569%_ _%object149563149568%_)))))))
    (let* ((_%klass160983%_ __table::t)
           (_%id160986%_ 'HashTable::ref)
           (_%proc160989%_ raw-table-ref)
           (_%rebind?160992%_ '#f)
           (_%id160997%_ _%id160986%_)
           (_%proc161010%_ _%proc160989%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160983%_
       _%id160997%_
       _%proc161010%_
       _%rebind?160992%_))
    (let* ((_%klass160946%_ __table::t)
           (_%id160949%_ 'HashTable::set!)
           (_%proc160952%_ raw-table-set!)
           (_%rebind?160955%_ '#f)
           (_%id160960%_ _%id160949%_)
           (_%proc160973%_ _%proc160952%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160946%_
       _%id160960%_
       _%proc160973%_
       _%rebind?160955%_))
    (let* ((_%klass160909%_ __table::t)
           (_%id160912%_ 'HashTable::update!)
           (_%proc160915%_ raw-table-update!)
           (_%rebind?160918%_ '#f)
           (_%id160923%_ _%id160912%_)
           (_%proc160936%_ _%proc160915%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160909%_
       _%id160923%_
       _%proc160936%_
       _%rebind?160918%_))
    (let* ((_%klass160872%_ __table::t)
           (_%id160875%_ 'HashTable::delete!)
           (_%proc160878%_ raw-table-delete!)
           (_%rebind?160881%_ '#f)
           (_%id160886%_ _%id160875%_)
           (_%proc160899%_ _%proc160878%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160872%_
       _%id160886%_
       _%proc160899%_
       _%rebind?160881%_))
    (let* ((_%klass160835%_ __table::t)
           (_%id160838%_ 'HashTable::for-each)
           (_%proc160841%_ raw-table-for-each)
           (_%rebind?160844%_ '#f)
           (_%id160849%_ _%id160838%_)
           (_%proc160862%_ _%proc160841%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160835%_
       _%id160849%_
       _%proc160862%_
       _%rebind?160844%_))
    (let* ((_%klass160798%_ __table::t)
           (_%id160801%_ 'HashTable::length)
           (_%proc160804%_ &raw-table-count)
           (_%rebind?160807%_ '#f)
           (_%id160812%_ _%id160801%_)
           (_%proc160825%_ _%proc160804%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160798%_
       _%id160812%_
       _%proc160825%_
       _%rebind?160807%_))
    (let* ((_%klass160761%_ __table::t)
           (_%id160764%_ 'HashTable::copy)
           (_%proc160767%_ raw-table-copy)
           (_%rebind?160770%_ '#f)
           (_%id160775%_ _%id160764%_)
           (_%proc160788%_ _%proc160767%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160761%_
       _%id160775%_
       _%proc160788%_
       _%rebind?160770%_))
    (let* ((_%klass160724%_ __table::t)
           (_%id160727%_ 'HashTable::clear!)
           (_%proc160730%_ raw-table-clear!)
           (_%rebind?160733%_ '#f)
           (_%id160738%_ _%id160727%_)
           (_%proc160751%_ _%proc160730%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160724%_
       _%id160738%_
       _%proc160751%_
       _%rebind?160733%_))
    (let* ((_%klass160687%_ __gc-table::t)
           (_%id160690%_ 'HashTable::ref)
           (_%proc160693%_ gc-table-ref)
           (_%rebind?160696%_ '#f)
           (_%id160701%_ _%id160690%_)
           (_%proc160714%_ _%proc160693%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160687%_
       _%id160701%_
       _%proc160714%_
       _%rebind?160696%_))
    (let* ((_%klass160650%_ __gc-table::t)
           (_%id160653%_ 'HashTable::set!)
           (_%proc160656%_ gc-table-set!)
           (_%rebind?160659%_ '#f)
           (_%id160664%_ _%id160653%_)
           (_%proc160677%_ _%proc160656%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160650%_
       _%id160664%_
       _%proc160677%_
       _%rebind?160659%_))
    (let* ((_%klass160613%_ __gc-table::t)
           (_%id160616%_ 'HashTable::update!)
           (_%proc160619%_ gc-table-update!)
           (_%rebind?160622%_ '#f)
           (_%id160627%_ _%id160616%_)
           (_%proc160640%_ _%proc160619%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160613%_
       _%id160627%_
       _%proc160640%_
       _%rebind?160622%_))
    (let* ((_%klass160576%_ __gc-table::t)
           (_%id160579%_ 'HashTable::delete!)
           (_%proc160582%_ gc-table-delete!)
           (_%rebind?160585%_ '#f)
           (_%id160590%_ _%id160579%_)
           (_%proc160603%_ _%proc160582%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160576%_
       _%id160590%_
       _%proc160603%_
       _%rebind?160585%_))
    (let* ((_%klass160539%_ __gc-table::t)
           (_%id160542%_ 'HashTable::for-each)
           (_%proc160545%_ gc-table-for-each)
           (_%rebind?160548%_ '#f)
           (_%id160553%_ _%id160542%_)
           (_%proc160566%_ _%proc160545%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160539%_
       _%id160553%_
       _%proc160566%_
       _%rebind?160548%_))
    (let* ((_%klass160502%_ __gc-table::t)
           (_%id160505%_ 'HashTable::length)
           (_%proc160508%_ gc-table-length)
           (_%rebind?160511%_ '#f)
           (_%id160516%_ _%id160505%_)
           (_%proc160529%_ _%proc160508%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160502%_
       _%id160516%_
       _%proc160529%_
       _%rebind?160511%_))
    (let* ((_%klass160465%_ __gc-table::t)
           (_%id160468%_ 'HashTable::copy)
           (_%proc160471%_ gc-table-copy)
           (_%rebind?160474%_ '#f)
           (_%id160479%_ _%id160468%_)
           (_%proc160492%_ _%proc160471%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160465%_
       _%id160479%_
       _%proc160492%_
       _%rebind?160474%_))
    (let* ((_%klass160428%_ __gc-table::t)
           (_%id160431%_ 'HashTable::clear!)
           (_%proc160434%_ gc-table-clear!)
           (_%rebind?160437%_ '#f)
           (_%id160442%_ _%id160431%_)
           (_%proc160455%_ _%proc160434%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160428%_
       _%id160442%_
       _%proc160455%_
       _%rebind?160437%_))
    (define gambit-table-update!
      (lambda (_%table160421%_
               _%key160422%_
               _%update160423%_
               _%default160424%_)
        (let ((_%result160426%_
               (table-ref _%table160421%_ _%key160422%_ _%default160424%_)))
          (table-set!
           _%table160421%_
           _%key160422%_
           (_%update160423%_ _%default160424%_)))))
    (define gambit-table-for-each
      (lambda (_%table160418%_ _%proc160419%_)
        (table-for-each _%proc160419%_ _%table160418%_)))
    (define gambit-table-clear!
      (lambda (_%table160416%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table160416%_ '0 '5 '#f '#f))))
    (let* ((_%klass160379%_ (macro-type-table))
           (_%id160382%_ 'HashTable::ref)
           (_%proc160385%_ table-ref)
           (_%rebind?160388%_ '#f)
           (_%id160393%_ _%id160382%_)
           (_%proc160406%_ _%proc160385%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160379%_
       _%id160393%_
       _%proc160406%_
       _%rebind?160388%_))
    (let* ((_%klass160342%_ (macro-type-table))
           (_%id160345%_ 'HashTable::set!)
           (_%proc160348%_ table-set!)
           (_%rebind?160351%_ '#f)
           (_%id160356%_ _%id160345%_)
           (_%proc160369%_ _%proc160348%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160342%_
       _%id160356%_
       _%proc160369%_
       _%rebind?160351%_))
    (let* ((_%klass160305%_ (macro-type-table))
           (_%id160308%_ 'HashTable::update!)
           (_%proc160311%_ gambit-table-update!)
           (_%rebind?160314%_ '#f)
           (_%id160319%_ _%id160308%_)
           (_%proc160332%_ _%proc160311%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160305%_
       _%id160319%_
       _%proc160332%_
       _%rebind?160314%_))
    (let* ((_%klass160268%_ (macro-type-table))
           (_%id160271%_ 'HashTable::delete!)
           (_%proc160274%_ table-set!)
           (_%rebind?160277%_ '#f)
           (_%id160282%_ _%id160271%_)
           (_%proc160295%_ _%proc160274%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160268%_
       _%id160282%_
       _%proc160295%_
       _%rebind?160277%_))
    (let* ((_%klass160231%_ (macro-type-table))
           (_%id160234%_ 'HashTable::for-each)
           (_%proc160237%_ gambit-table-for-each)
           (_%rebind?160240%_ '#f)
           (_%id160245%_ _%id160234%_)
           (_%proc160258%_ _%proc160237%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160231%_
       _%id160245%_
       _%proc160258%_
       _%rebind?160240%_))
    (let* ((_%klass160194%_ (macro-type-table))
           (_%id160197%_ 'HashTable::length)
           (_%proc160200%_ table-length)
           (_%rebind?160203%_ '#f)
           (_%id160208%_ _%id160197%_)
           (_%proc160221%_ _%proc160200%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160194%_
       _%id160208%_
       _%proc160221%_
       _%rebind?160203%_))
    (let* ((_%klass160157%_ (macro-type-table))
           (_%id160160%_ 'HashTable::copy)
           (_%proc160163%_ table-copy)
           (_%rebind?160166%_ '#f)
           (_%id160171%_ _%id160160%_)
           (_%proc160184%_ _%proc160163%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160157%_
       _%id160171%_
       _%proc160184%_
       _%rebind?160166%_))
    (let* ((_%klass160120%_ (macro-type-table))
           (_%id160123%_ 'HashTable::clear!)
           (_%proc160126%_ gambit-table-clear!)
           (_%rebind?160129%_ '#f)
           (_%id160134%_ _%id160123%_)
           (_%proc160147%_ _%proc160126%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160120%_
       _%id160134%_
       _%proc160147%_
       _%rebind?160129%_))
    (define hash-table::t
      (let* ((_%slots160083%_ '(table count free hash test seed))
             (_%slot-vector160085%_ (list->vector (cons '#f _%slots160083%_)))
             (_%slot-table160111%_
              (let ((_%slot-table160087%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp162430
                       (lambda (_%slot160089%_ _%field160090%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160087%_
                            _%slot160089%_
                            _%field160090%_))
                         (let ((__tmp162431
                                (let ((_%sym160092%_ _%slot160089%_))
                                  (if (symbol? _%sym160092%_)
                                      (let ((_%sym160097%_ _%sym160092%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym160097%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym160092%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160087%_
                            __tmp162431
                            _%field160090%_))))
                      (__tmp162428
                       (let ((__tmp162429
                              (let ()
                                (declare (not safe))
                                (##length _%slots160083%_))))
                         (declare (not safe))
                         (##iota __tmp162429 '1))))
                  (declare (not safe))
                  (##for-each __tmp162430 _%slots160083%_ __tmp162428))
                _%slot-table160087%_))
             (_%flags160113%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields160115%_ '#())
             (_%properties160117%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots160083%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp162432 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags160113%_
         __table::t
         _%fields160115%_
         __tmp162432
         _%slot-vector160085%_
         _%slot-table160111%_
         _%properties160117%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots160046%_ '(gcht immediate))
             (_%slot-vector160048%_ (list->vector (cons '#f _%slots160046%_)))
             (_%slot-table160074%_
              (let ((_%slot-table160050%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp162435
                       (lambda (_%slot160052%_ _%field160053%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160050%_
                            _%slot160052%_
                            _%field160053%_))
                         (let ((__tmp162436
                                (let ((_%sym160055%_ _%slot160052%_))
                                  (if (symbol? _%sym160055%_)
                                      (let ((_%sym160060%_ _%sym160055%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym160060%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym160055%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160050%_
                            __tmp162436
                            _%field160053%_))))
                      (__tmp162433
                       (let ((__tmp162434
                              (let ()
                                (declare (not safe))
                                (##length _%slots160046%_))))
                         (declare (not safe))
                         (##iota __tmp162434 '1))))
                  (declare (not safe))
                  (##for-each __tmp162435 _%slots160046%_ __tmp162433))
                _%slot-table160050%_))
             (_%flags160076%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields160078%_ '#())
             (_%properties160080%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots160046%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp162437 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags160076%_
         __gc-table::t
         _%fields160078%_
         __tmp162437
         _%slot-vector160048%_
         _%slot-table160074%_
         _%properties160080%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp162439 (list))
            (__tmp162438
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp162439
         '(table lock)
         __tmp162438
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args160043%_
        (apply make-instance locked-hash-table::t _%$args160043%_)))
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
      (let ((__tmp162441 (list))
            (__tmp162440
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp162441
         '(table key-check)
         __tmp162440
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args160040%_
        (apply make-instance checked-hash-table::t _%$args160040%_)))
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
      (let ((__tmp162443 (list hash-table::t))
            (__tmp162442 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t
         'eq-hash-table
         __tmp162443
         '()
         __tmp162442
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args160037%_
        (apply make-instance eq-hash-table::t _%$args160037%_)))
    (define eqv-hash-table::t
      (let ((__tmp162445 (list hash-table::t))
            (__tmp162444 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t
         'eqv-hash-table
         __tmp162445
         '()
         __tmp162444
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args160034%_
        (apply make-instance eqv-hash-table::t _%$args160034%_)))
    (define symbol-hash-table::t
      (let ((__tmp162447 (list hash-table::t))
            (__tmp162446 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t
         'symbol-hash-table
         __tmp162447
         '()
         __tmp162446
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args160031%_
        (apply make-instance symbol-hash-table::t _%$args160031%_)))
    (define string-hash-table::t
      (let ((__tmp162449 (list hash-table::t))
            (__tmp162448 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t
         'string-hash-table
         __tmp162449
         '()
         __tmp162448
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args160028%_
        (apply make-instance string-hash-table::t _%$args160028%_)))
    (define immediate-hash-table::t
      (let ((__tmp162451 (list hash-table::t))
            (__tmp162450 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t
         'immediate-hash-table
         __tmp162451
         '()
         __tmp162450
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args160025%_
        (apply make-instance immediate-hash-table::t _%$args160025%_)))
    (let* ((_%klass159988%_ hash-table::t)
           (_%id159991%_ 'HashTable::ref)
           (_%proc159994%_ raw-table-ref)
           (_%rebind?159997%_ '#f)
           (_%id160002%_ _%id159991%_)
           (_%proc160015%_ _%proc159994%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159988%_
       _%id160002%_
       _%proc160015%_
       _%rebind?159997%_))
    (let* ((_%klass159951%_ hash-table::t)
           (_%id159954%_ 'HashTable::set!)
           (_%proc159957%_ raw-table-set!)
           (_%rebind?159960%_ '#f)
           (_%id159965%_ _%id159954%_)
           (_%proc159978%_ _%proc159957%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159951%_
       _%id159965%_
       _%proc159978%_
       _%rebind?159960%_))
    (let* ((_%klass159914%_ hash-table::t)
           (_%id159917%_ 'HashTable::update!)
           (_%proc159920%_ raw-table-update!)
           (_%rebind?159923%_ '#f)
           (_%id159928%_ _%id159917%_)
           (_%proc159941%_ _%proc159920%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159914%_
       _%id159928%_
       _%proc159941%_
       _%rebind?159923%_))
    (let* ((_%klass159877%_ hash-table::t)
           (_%id159880%_ 'HashTable::delete!)
           (_%proc159883%_ raw-table-delete!)
           (_%rebind?159886%_ '#f)
           (_%id159891%_ _%id159880%_)
           (_%proc159904%_ _%proc159883%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159877%_
       _%id159891%_
       _%proc159904%_
       _%rebind?159886%_))
    (let* ((_%klass159840%_ hash-table::t)
           (_%id159843%_ 'HashTable::for-each)
           (_%proc159846%_ raw-table-for-each)
           (_%rebind?159849%_ '#f)
           (_%id159854%_ _%id159843%_)
           (_%proc159867%_ _%proc159846%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159840%_
       _%id159854%_
       _%proc159867%_
       _%rebind?159849%_))
    (let* ((_%klass159803%_ hash-table::t)
           (_%id159806%_ 'HashTable::length)
           (_%proc159809%_ &raw-table-count)
           (_%rebind?159812%_ '#f)
           (_%id159817%_ _%id159806%_)
           (_%proc159830%_ _%proc159809%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159803%_
       _%id159817%_
       _%proc159830%_
       _%rebind?159812%_))
    (let* ((_%klass159766%_ hash-table::t)
           (_%id159769%_ 'HashTable::copy)
           (_%proc159772%_ raw-table-copy)
           (_%rebind?159775%_ '#f)
           (_%id159780%_ _%id159769%_)
           (_%proc159793%_ _%proc159772%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159766%_
       _%id159780%_
       _%proc159793%_
       _%rebind?159775%_))
    (let* ((_%klass159729%_ hash-table::t)
           (_%id159732%_ 'HashTable::clear!)
           (_%proc159735%_ raw-table-clear!)
           (_%rebind?159738%_ '#f)
           (_%id159743%_ _%id159732%_)
           (_%proc159756%_ _%proc159735%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159729%_
       _%id159743%_
       _%proc159756%_
       _%rebind?159738%_))
    (let* ((_%klass159692%_ eq-hash-table::t)
           (_%id159695%_ 'HashTable::ref)
           (_%proc159698%_ eq-table-ref)
           (_%rebind?159701%_ '#f)
           (_%id159706%_ _%id159695%_)
           (_%proc159719%_ _%proc159698%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159692%_
       _%id159706%_
       _%proc159719%_
       _%rebind?159701%_))
    (let* ((_%klass159655%_ eq-hash-table::t)
           (_%id159658%_ 'HashTable::set!)
           (_%proc159661%_ eq-table-set!)
           (_%rebind?159664%_ '#f)
           (_%id159669%_ _%id159658%_)
           (_%proc159682%_ _%proc159661%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159655%_
       _%id159669%_
       _%proc159682%_
       _%rebind?159664%_))
    (let* ((_%klass159618%_ eq-hash-table::t)
           (_%id159621%_ 'HashTable::update!)
           (_%proc159624%_ eq-table-update!)
           (_%rebind?159627%_ '#f)
           (_%id159632%_ _%id159621%_)
           (_%proc159645%_ _%proc159624%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159618%_
       _%id159632%_
       _%proc159645%_
       _%rebind?159627%_))
    (let* ((_%klass159581%_ eq-hash-table::t)
           (_%id159584%_ 'HashTable::delete!)
           (_%proc159587%_ eq-table-delete!)
           (_%rebind?159590%_ '#f)
           (_%id159595%_ _%id159584%_)
           (_%proc159608%_ _%proc159587%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159581%_
       _%id159595%_
       _%proc159608%_
       _%rebind?159590%_))
    (let* ((_%klass159544%_ eqv-hash-table::t)
           (_%id159547%_ 'HashTable::ref)
           (_%proc159550%_ eqv-table-ref)
           (_%rebind?159553%_ '#f)
           (_%id159558%_ _%id159547%_)
           (_%proc159571%_ _%proc159550%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159544%_
       _%id159558%_
       _%proc159571%_
       _%rebind?159553%_))
    (let* ((_%klass159507%_ eqv-hash-table::t)
           (_%id159510%_ 'HashTable::set!)
           (_%proc159513%_ eqv-table-set!)
           (_%rebind?159516%_ '#f)
           (_%id159521%_ _%id159510%_)
           (_%proc159534%_ _%proc159513%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159507%_
       _%id159521%_
       _%proc159534%_
       _%rebind?159516%_))
    (let* ((_%klass159470%_ eqv-hash-table::t)
           (_%id159473%_ 'HashTable::update!)
           (_%proc159476%_ eqv-table-update!)
           (_%rebind?159479%_ '#f)
           (_%id159484%_ _%id159473%_)
           (_%proc159497%_ _%proc159476%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159470%_
       _%id159484%_
       _%proc159497%_
       _%rebind?159479%_))
    (let* ((_%klass159433%_ eqv-hash-table::t)
           (_%id159436%_ 'HashTable::delete!)
           (_%proc159439%_ eqv-table-delete!)
           (_%rebind?159442%_ '#f)
           (_%id159447%_ _%id159436%_)
           (_%proc159460%_ _%proc159439%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159433%_
       _%id159447%_
       _%proc159460%_
       _%rebind?159442%_))
    (let* ((_%klass159396%_ symbol-hash-table::t)
           (_%id159399%_ 'HashTable::ref)
           (_%proc159402%_ symbolic-table-ref)
           (_%rebind?159405%_ '#f)
           (_%id159410%_ _%id159399%_)
           (_%proc159423%_ _%proc159402%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159396%_
       _%id159410%_
       _%proc159423%_
       _%rebind?159405%_))
    (let* ((_%klass159359%_ symbol-hash-table::t)
           (_%id159362%_ 'HashTable::set!)
           (_%proc159365%_ symbolic-table-set!)
           (_%rebind?159368%_ '#f)
           (_%id159373%_ _%id159362%_)
           (_%proc159386%_ _%proc159365%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159359%_
       _%id159373%_
       _%proc159386%_
       _%rebind?159368%_))
    (let* ((_%klass159322%_ symbol-hash-table::t)
           (_%id159325%_ 'HashTable::update!)
           (_%proc159328%_ symbolic-table-update!)
           (_%rebind?159331%_ '#f)
           (_%id159336%_ _%id159325%_)
           (_%proc159349%_ _%proc159328%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159322%_
       _%id159336%_
       _%proc159349%_
       _%rebind?159331%_))
    (let* ((_%klass159285%_ symbol-hash-table::t)
           (_%id159288%_ 'HashTable::delete!)
           (_%proc159291%_ symbolic-table-delete!)
           (_%rebind?159294%_ '#f)
           (_%id159299%_ _%id159288%_)
           (_%proc159312%_ _%proc159291%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159285%_
       _%id159299%_
       _%proc159312%_
       _%rebind?159294%_))
    (let* ((_%klass159248%_ string-hash-table::t)
           (_%id159251%_ 'HashTable::ref)
           (_%proc159254%_ string-table-ref)
           (_%rebind?159257%_ '#f)
           (_%id159262%_ _%id159251%_)
           (_%proc159275%_ _%proc159254%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159248%_
       _%id159262%_
       _%proc159275%_
       _%rebind?159257%_))
    (let* ((_%klass159211%_ string-hash-table::t)
           (_%id159214%_ 'HashTable::set!)
           (_%proc159217%_ string-table-set!)
           (_%rebind?159220%_ '#f)
           (_%id159225%_ _%id159214%_)
           (_%proc159238%_ _%proc159217%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159211%_
       _%id159225%_
       _%proc159238%_
       _%rebind?159220%_))
    (let* ((_%klass159174%_ string-hash-table::t)
           (_%id159177%_ 'HashTable::update!)
           (_%proc159180%_ string-table-update!)
           (_%rebind?159183%_ '#f)
           (_%id159188%_ _%id159177%_)
           (_%proc159201%_ _%proc159180%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159174%_
       _%id159188%_
       _%proc159201%_
       _%rebind?159183%_))
    (let* ((_%klass159137%_ string-hash-table::t)
           (_%id159140%_ 'HashTable::delete!)
           (_%proc159143%_ string-table-delete!)
           (_%rebind?159146%_ '#f)
           (_%id159151%_ _%id159140%_)
           (_%proc159164%_ _%proc159143%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159137%_
       _%id159151%_
       _%proc159164%_
       _%rebind?159146%_))
    (let* ((_%klass159100%_ immediate-hash-table::t)
           (_%id159103%_ 'HashTable::ref)
           (_%proc159106%_ immediate-table-ref)
           (_%rebind?159109%_ '#f)
           (_%id159114%_ _%id159103%_)
           (_%proc159127%_ _%proc159106%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159100%_
       _%id159114%_
       _%proc159127%_
       _%rebind?159109%_))
    (let* ((_%klass159063%_ immediate-hash-table::t)
           (_%id159066%_ 'HashTable::set!)
           (_%proc159069%_ immediate-table-set!)
           (_%rebind?159072%_ '#f)
           (_%id159077%_ _%id159066%_)
           (_%proc159090%_ _%proc159069%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159063%_
       _%id159077%_
       _%proc159090%_
       _%rebind?159072%_))
    (let* ((_%klass159026%_ immediate-hash-table::t)
           (_%id159029%_ 'HashTable::update!)
           (_%proc159032%_ immediate-table-update!)
           (_%rebind?159035%_ '#f)
           (_%id159040%_ _%id159029%_)
           (_%proc159053%_ _%proc159032%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159026%_
       _%id159040%_
       _%proc159053%_
       _%rebind?159035%_))
    (let* ((_%klass158989%_ immediate-hash-table::t)
           (_%id158992%_ 'HashTable::delete!)
           (_%proc158995%_ immediate-table-delete!)
           (_%rebind?158998%_ '#f)
           (_%id159003%_ _%id158992%_)
           (_%proc159016%_ _%proc158995%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158989%_
       _%id159003%_
       _%proc159016%_
       _%rebind?158998%_))
    (let* ((_%klass158952%_ gc-hash-table::t)
           (_%id158955%_ 'HashTable::ref)
           (_%proc158958%_ gc-table-ref)
           (_%rebind?158961%_ '#f)
           (_%id158966%_ _%id158955%_)
           (_%proc158979%_ _%proc158958%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158952%_
       _%id158966%_
       _%proc158979%_
       _%rebind?158961%_))
    (let* ((_%klass158915%_ gc-hash-table::t)
           (_%id158918%_ 'HashTable::set!)
           (_%proc158921%_ gc-table-set!)
           (_%rebind?158924%_ '#f)
           (_%id158929%_ _%id158918%_)
           (_%proc158942%_ _%proc158921%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158915%_
       _%id158929%_
       _%proc158942%_
       _%rebind?158924%_))
    (let* ((_%klass158878%_ gc-hash-table::t)
           (_%id158881%_ 'HashTable::update!)
           (_%proc158884%_ gc-table-update!)
           (_%rebind?158887%_ '#f)
           (_%id158892%_ _%id158881%_)
           (_%proc158905%_ _%proc158884%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158878%_
       _%id158892%_
       _%proc158905%_
       _%rebind?158887%_))
    (let* ((_%klass158841%_ gc-hash-table::t)
           (_%id158844%_ 'HashTable::delete!)
           (_%proc158847%_ gc-table-delete!)
           (_%rebind?158850%_ '#f)
           (_%id158855%_ _%id158844%_)
           (_%proc158868%_ _%proc158847%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158841%_
       _%id158855%_
       _%proc158868%_
       _%rebind?158850%_))
    (let* ((_%klass158804%_ gc-hash-table::t)
           (_%id158807%_ 'HashTable::for-each)
           (_%proc158810%_ gc-table-for-each)
           (_%rebind?158813%_ '#f)
           (_%id158818%_ _%id158807%_)
           (_%proc158831%_ _%proc158810%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158804%_
       _%id158818%_
       _%proc158831%_
       _%rebind?158813%_))
    (let* ((_%klass158767%_ gc-hash-table::t)
           (_%id158770%_ 'HashTable::length)
           (_%proc158773%_ gc-table-length)
           (_%rebind?158776%_ '#f)
           (_%id158781%_ _%id158770%_)
           (_%proc158794%_ _%proc158773%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158767%_
       _%id158781%_
       _%proc158794%_
       _%rebind?158776%_))
    (let* ((_%klass158730%_ gc-hash-table::t)
           (_%id158733%_ 'HashTable::copy)
           (_%proc158736%_ gc-table-copy)
           (_%rebind?158739%_ '#f)
           (_%id158744%_ _%id158733%_)
           (_%proc158757%_ _%proc158736%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158730%_
       _%id158744%_
       _%proc158757%_
       _%rebind?158739%_))
    (let* ((_%klass158693%_ gc-hash-table::t)
           (_%id158696%_ 'HashTable::clear!)
           (_%proc158699%_ gc-table-clear!)
           (_%rebind?158702%_ '#f)
           (_%id158707%_ _%id158696%_)
           (_%proc158720%_ _%proc158699%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158693%_
       _%id158707%_
       _%proc158720%_
       _%rebind?158702%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref149954%_
      (lambda (_%self158614%_ _%key158616%_ _%default158617%_)
        (let* ((_%self158620%_ _%self158614%_)
               (_%key158629%_ _%key158616%_)
               (_%default158637%_ _%default158617%_))
          (let ((_%h158646%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158620%_ '1 '#f '#f)))
                (_%l158648%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158620%_ '2 '#f '#f))))
            (let ((__tmp162454
                   (lambda ()
                     (let ((_%self148406158652%_ _%l158648%_))
                       (declare (not safe))
                       (let ((_%object158655158660%_
                              (##unchecked-structure-ref
                               _%self148406158652%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method158656158661%_
                              (##unchecked-structure-ref
                               _%self148406158652%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method158656158661%_ _%object158655158660%_)))))
                  (__tmp162453
                   (lambda ()
                     (let* ((_%self147501158664%_ _%h158646%_)
                            (_%key158667%_ _%key158629%_)
                            (_%default158670%_ _%default158637%_))
                       (declare (not safe))
                       (let ((_%object158673158678%_
                              (##unchecked-structure-ref
                               _%self147501158664%_
                               '1
                               '#f
                               'ref))
                             (_%method158674158679%_
                              (##unchecked-structure-ref
                               _%self147501158664%_
                               '7
                               '#f
                               'ref)))
                         (_%method158674158679%_
                          _%object158673158678%_
                          _%key158667%_
                          _%default158670%_)))))
                  (__tmp162452
                   (lambda ()
                     (let ((_%self148697158682%_ _%l158648%_))
                       (declare (not safe))
                       (let ((_%object158685158690%_
                              (##unchecked-structure-ref
                               _%self148697158682%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method158686158691%_
                              (##unchecked-structure-ref
                               _%self148697158682%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method158686158691%_ _%object158685158690%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162454 __tmp162453 __tmp162452))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref149954%_
       '#f))
    (define _%locked-hash-table::HashTable::set!149956%_
      (lambda (_%self158412%_ _%key158414%_ _%value158415%_)
        (let* ((_%self158418%_ _%self158412%_)
               (_%key158427%_ _%key158414%_)
               (_%value158435%_ _%value158415%_))
          (let ((_%h158444%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158418%_ '1 '#f '#f)))
                (_%l158446%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158418%_ '2 '#f '#f))))
            (let ((__tmp162457
                   (lambda ()
                     (let ((_%self148988158450%_ _%l158446%_))
                       (declare (not safe))
                       (let ((_%object158453158458%_
                              (##unchecked-structure-ref
                               _%self148988158450%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158454158459%_
                              (##unchecked-structure-ref
                               _%self148988158450%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158454158459%_ _%object158453158458%_)))))
                  (__tmp162456
                   (lambda ()
                     (let* ((_%self147796158462%_ _%h158444%_)
                            (_%key158465%_ _%key158427%_)
                            (_%value158468%_ _%value158435%_))
                       (declare (not safe))
                       (let ((_%object158471158476%_
                              (##unchecked-structure-ref
                               _%self147796158462%_
                               '1
                               '#f
                               'set!))
                             (_%method158472158477%_
                              (##unchecked-structure-ref
                               _%self147796158462%_
                               '8
                               '#f
                               'set!)))
                         (_%method158472158477%_
                          _%object158471158476%_
                          _%key158465%_
                          _%value158468%_)))))
                  (__tmp162455
                   (lambda ()
                     (let ((_%self149279158480%_ _%l158446%_))
                       (declare (not safe))
                       (let ((_%object158483158488%_
                              (##unchecked-structure-ref
                               _%self149279158480%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158484158489%_
                              (##unchecked-structure-ref
                               _%self149279158480%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158484158489%_ _%object158483158488%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162457 __tmp162456 __tmp162455))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!149956%_
       '#f))
    (define _%locked-hash-table::HashTable::update!149958%_
      (lambda (_%self158198%_ _%key158200%_ _%update158201%_ _%default158202%_)
        (let* ((_%self158205%_ _%self158198%_)
               (_%key158214%_ _%key158200%_)
               (_%update158222%_ _%update158201%_)
               (_%default158230%_ _%default158202%_))
          (let ((_%h158239%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158205%_ '1 '#f '#f)))
                (_%l158241%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158205%_ '2 '#f '#f))))
            (let ((__tmp162460
                   (lambda ()
                     (let ((_%self148988158245%_ _%l158241%_))
                       (declare (not safe))
                       (let ((_%object158248158253%_
                              (##unchecked-structure-ref
                               _%self148988158245%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158249158254%_
                              (##unchecked-structure-ref
                               _%self148988158245%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158249158254%_ _%object158248158253%_)))))
                  (__tmp162459
                   (lambda ()
                     (let* ((_%self148091158257%_ _%h158239%_)
                            (_%key158260%_ _%key158214%_)
                            (_%proc158263%_ _%update158222%_)
                            (_%default158266%_ _%default158230%_))
                       (declare (not safe))
                       (let ((_%object158269158274%_
                              (##unchecked-structure-ref
                               _%self148091158257%_
                               '1
                               '#f
                               'update!))
                             (_%method158270158275%_
                              (##unchecked-structure-ref
                               _%self148091158257%_
                               '9
                               '#f
                               'update!)))
                         (_%method158270158275%_
                          _%object158269158274%_
                          _%key158260%_
                          _%proc158263%_
                          _%default158266%_)))))
                  (__tmp162458
                   (lambda ()
                     (let ((_%self149279158278%_ _%l158241%_))
                       (declare (not safe))
                       (let ((_%object158281158286%_
                              (##unchecked-structure-ref
                               _%self149279158278%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158282158287%_
                              (##unchecked-structure-ref
                               _%self149279158278%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158282158287%_ _%object158281158286%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162460 __tmp162459 __tmp162458))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!149958%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!149960%_
      (lambda (_%self158008%_ _%key158010%_)
        (let* ((_%self158013%_ _%self158008%_) (_%key158022%_ _%key158010%_))
          (let ((_%h158031%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158013%_ '1 '#f '#f)))
                (_%l158033%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158013%_ '2 '#f '#f))))
            (let ((__tmp162463
                   (lambda ()
                     (let ((_%self148988158037%_ _%l158033%_))
                       (declare (not safe))
                       (let ((_%object158040158045%_
                              (##unchecked-structure-ref
                               _%self148988158037%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158041158046%_
                              (##unchecked-structure-ref
                               _%self148988158037%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158041158046%_ _%object158040158045%_)))))
                  (__tmp162462
                   (lambda ()
                     (let* ((_%self146603158049%_ _%h158031%_)
                            (_%key158052%_ _%key158022%_))
                       (declare (not safe))
                       (let ((_%object158055158060%_
                              (##unchecked-structure-ref
                               _%self146603158049%_
                               '1
                               '#f
                               'delete!))
                             (_%method158056158061%_
                              (##unchecked-structure-ref
                               _%self146603158049%_
                               '4
                               '#f
                               'delete!)))
                         (_%method158056158061%_
                          _%object158055158060%_
                          _%key158052%_)))))
                  (__tmp162461
                   (lambda ()
                     (let ((_%self149279158064%_ _%l158033%_))
                       (declare (not safe))
                       (let ((_%object158067158072%_
                              (##unchecked-structure-ref
                               _%self149279158064%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158068158073%_
                              (##unchecked-structure-ref
                               _%self149279158064%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158068158073%_ _%object158067158072%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162463 __tmp162462 __tmp162461))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!149960%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each149962%_
      (lambda (_%self157818%_ _%proc157820%_)
        (let* ((_%self157823%_ _%self157818%_) (_%proc157832%_ _%proc157820%_))
          (let ((_%h157841%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157823%_ '1 '#f '#f)))
                (_%l157843%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157823%_ '2 '#f '#f))))
            (let ((__tmp162466
                   (lambda ()
                     (let ((_%self148406157847%_ _%l157843%_))
                       (declare (not safe))
                       (let ((_%object157850157855%_
                              (##unchecked-structure-ref
                               _%self148406157847%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method157851157856%_
                              (##unchecked-structure-ref
                               _%self148406157847%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method157851157856%_ _%object157850157855%_)))))
                  (__tmp162465
                   (lambda ()
                     (let* ((_%self146896157859%_ _%h157841%_)
                            (_%proc157862%_ _%proc157832%_))
                       (declare (not safe))
                       (let ((_%object157865157870%_
                              (##unchecked-structure-ref
                               _%self146896157859%_
                               '1
                               '#f
                               'for-each))
                             (_%method157866157871%_
                              (##unchecked-structure-ref
                               _%self146896157859%_
                               '5
                               '#f
                               'for-each)))
                         (_%method157866157871%_
                          _%object157865157870%_
                          _%proc157862%_)))))
                  (__tmp162464
                   (lambda ()
                     (let ((_%self148697157874%_ _%l157843%_))
                       (declare (not safe))
                       (let ((_%object157877157882%_
                              (##unchecked-structure-ref
                               _%self148697157874%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method157878157883%_
                              (##unchecked-structure-ref
                               _%self148697157874%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method157878157883%_ _%object157877157882%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162466 __tmp162465 __tmp162464))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each149962%_
       '#f))
    (define _%locked-hash-table::HashTable::length149964%_
      (lambda (_%self157633%_)
        (let ((_%self157637%_ _%self157633%_))
          (let ((_%h157647%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157637%_ '1 '#f '#f)))
                (_%l157649%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157637%_ '2 '#f '#f))))
            ((lambda (_%g157651157653%_)
               (let ((_%val157656%_ _%g157651157653%_))
                 (if (fixnum? _%val157656%_)
                     _%val157656%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val157656%_)
                       '#!void))))
             (let ((__tmp162469
                    (lambda ()
                      (let ((_%self148406157660%_ _%l157649%_))
                        (declare (not safe))
                        (let ((_%object157663157668%_
                               (##unchecked-structure-ref
                                _%self148406157660%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method157664157669%_
                               (##unchecked-structure-ref
                                _%self148406157660%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method157664157669%_ _%object157663157668%_)))))
                   (__tmp162468
                    (lambda ()
                      (let ((_%self147207157672%_ _%h157647%_))
                        (declare (not safe))
                        (let ((_%object157675157680%_
                               (##unchecked-structure-ref
                                _%self147207157672%_
                                '1
                                '#f
                                'length))
                              (_%method157676157681%_
                               (##unchecked-structure-ref
                                _%self147207157672%_
                                '6
                                '#f
                                'length)))
                          (_%method157676157681%_ _%object157675157680%_)))))
                   (__tmp162467
                    (lambda ()
                      (let ((_%self148697157684%_ _%l157649%_))
                        (declare (not safe))
                        (let ((_%object157687157692%_
                               (##unchecked-structure-ref
                                _%self148697157684%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method157688157693%_
                               (##unchecked-structure-ref
                                _%self148697157684%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method157688157693%_ _%object157687157692%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp162469 __tmp162468 __tmp162467)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length149964%_
       '#f))
    (define _%locked-hash-table::HashTable::copy149966%_
      (lambda (_%self157452%_)
        (let ((_%self157456%_ _%self157452%_))
          (let ((_%h157466%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157456%_ '1 '#f '#f)))
                (_%l157468%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157456%_ '2 '#f '#f))))
            (let ((_%$obj157507%_
                   (let ((__tmp162472
                          (lambda ()
                            (let ((_%self148406157472%_ _%l157468%_))
                              (declare (not safe))
                              (let ((_%object157475157480%_
                                     (##unchecked-structure-ref
                                      _%self148406157472%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method157476157481%_
                                     (##unchecked-structure-ref
                                      _%self148406157472%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method157476157481%_
                                 _%object157475157480%_)))))
                         (__tmp162471
                          (lambda ()
                            (let ((_%self146309157484%_ _%h157466%_))
                              (declare (not safe))
                              (let ((_%object157487157492%_
                                     (##unchecked-structure-ref
                                      _%self146309157484%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method157488157493%_
                                     (##unchecked-structure-ref
                                      _%self146309157484%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method157488157493%_
                                 _%object157487157492%_)))))
                         (__tmp162470
                          (lambda ()
                            (let ((_%self148697157496%_ _%l157468%_))
                              (declare (not safe))
                              (let ((_%object157499157504%_
                                     (##unchecked-structure-ref
                                      _%self148697157496%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method157500157505%_
                                     (##unchecked-structure-ref
                                      _%self148697157496%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method157500157505%_
                                 _%object157499157504%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp162472 __tmp162471 __tmp162470))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj157507%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj157507%_)))
                       '#t)
                  _%$obj157507%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj157507%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy149966%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!149968%_
      (lambda (_%self157274%_)
        (let ((_%self157278%_ _%self157274%_))
          (let ((_%h157288%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157278%_ '1 '#f '#f)))
                (_%l157290%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157278%_ '2 '#f '#f))))
            (let ((__tmp162475
                   (lambda ()
                     (let ((_%self148988157294%_ _%l157290%_))
                       (declare (not safe))
                       (let ((_%object157297157302%_
                              (##unchecked-structure-ref
                               _%self148988157294%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157298157303%_
                              (##unchecked-structure-ref
                               _%self148988157294%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157298157303%_ _%object157297157302%_)))))
                  (__tmp162474
                   (lambda ()
                     (let ((_%self146017157306%_ _%h157288%_))
                       (declare (not safe))
                       (let ((_%object157309157314%_
                              (##unchecked-structure-ref
                               _%self146017157306%_
                               '1
                               '#f
                               'clear!))
                             (_%method157310157315%_
                              (##unchecked-structure-ref
                               _%self146017157306%_
                               '2
                               '#f
                               'clear!)))
                         (_%method157310157315%_ _%object157309157314%_)))))
                  (__tmp162473
                   (lambda ()
                     (let ((_%self149279157318%_ _%l157290%_))
                       (declare (not safe))
                       (let ((_%object157321157326%_
                              (##unchecked-structure-ref
                               _%self149279157318%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157322157327%_
                              (##unchecked-structure-ref
                               _%self149279157318%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157322157327%_ _%object157321157326%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162475 __tmp162474 __tmp162473))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!149968%_
       '#f))
    (let* ((_%klass157114%_ (macro-type-mutex))
           (_%id157117%_ 'Locker::read-lock!)
           (_%proc157120%_ mutex-lock!)
           (_%rebind?157123%_ '#f)
           (_%id157128%_ _%id157117%_)
           (_%proc157141%_ _%proc157120%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157114%_
       _%id157128%_
       _%proc157141%_
       _%rebind?157123%_))
    (let* ((_%klass157077%_ (macro-type-mutex))
           (_%id157080%_ 'Locker::read-unlock!)
           (_%proc157083%_ mutex-unlock!)
           (_%rebind?157086%_ '#f)
           (_%id157091%_ _%id157080%_)
           (_%proc157104%_ _%proc157083%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157077%_
       _%id157091%_
       _%proc157104%_
       _%rebind?157086%_))
    (let* ((_%klass157040%_ (macro-type-mutex))
           (_%id157043%_ 'Locker::write-lock!)
           (_%proc157046%_ mutex-lock!)
           (_%rebind?157049%_ '#f)
           (_%id157054%_ _%id157043%_)
           (_%proc157067%_ _%proc157046%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157040%_
       _%id157054%_
       _%proc157067%_
       _%rebind?157049%_))
    (let* ((_%klass157003%_ (macro-type-mutex))
           (_%id157006%_ 'Locker::write-unlock!)
           (_%proc157009%_ mutex-unlock!)
           (_%rebind?157012%_ '#f)
           (_%id157017%_ _%id157006%_)
           (_%proc157030%_ _%proc157009%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157003%_
       _%id157017%_
       _%proc157030%_
       _%rebind?157012%_))
    (define _%checked-hash-table::HashTable::ref150179%_
      (lambda (_%self156944%_ _%key156945%_ _%default156946%_)
        (let* ((_%self156949%_ _%self156944%_)
               (_%key156958%_ _%key156945%_)
               (_%default156966%_ _%default156946%_))
          (declare (not safe))
          (let ((_%h156977%_
                 (##unchecked-structure-ref _%self156949%_ '1 '#f '#f))
                (_%key?156979%_
                 (##unchecked-structure-ref _%self156949%_ '2 '#f '#f)))
            (if ((lambda (_%key?156982%_ _%key156983%_ _%default156984%_)
                   (_%key?156982%_ _%key156983%_))
                 _%key?156979%_
                 _%key156958%_
                 _%default156966%_)
                (let* ((_%self147501156986%_ _%h156977%_)
                       (_%key156989%_ _%key156958%_)
                       (_%default156992%_ _%default156966%_))
                  (declare (not safe))
                  (let ((_%object156995157000%_
                         (##unchecked-structure-ref
                          _%self147501156986%_
                          '1
                          '#f
                          'ref))
                        (_%method156996157001%_
                         (##unchecked-structure-ref
                          _%self147501156986%_
                          '7
                          '#f
                          'ref)))
                    (_%method156996157001%_
                     _%object156995157000%_
                     _%key156989%_
                     _%default156992%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key156958%_ (cons _%default156966%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref150179%_
       '#f))
    (define _%checked-hash-table::HashTable::set!150181%_
      (lambda (_%self156762%_ _%key156763%_ _%value156764%_)
        (let* ((_%self156767%_ _%self156762%_)
               (_%key156776%_ _%key156763%_)
               (_%value156784%_ _%value156764%_))
          (declare (not safe))
          (let ((_%h156795%_
                 (##unchecked-structure-ref _%self156767%_ '1 '#f '#f))
                (_%key?156797%_
                 (##unchecked-structure-ref _%self156767%_ '2 '#f '#f)))
            (if ((lambda (_%key?156800%_ _%key156801%_ _%value156802%_)
                   (_%key?156800%_ _%key156801%_))
                 _%key?156797%_
                 _%key156776%_
                 _%value156784%_)
                (let* ((_%self147796156804%_ _%h156795%_)
                       (_%key156807%_ _%key156776%_)
                       (_%value156810%_ _%value156784%_))
                  (declare (not safe))
                  (let ((_%object156813156818%_
                         (##unchecked-structure-ref
                          _%self147796156804%_
                          '1
                          '#f
                          'set!))
                        (_%method156814156819%_
                         (##unchecked-structure-ref
                          _%self147796156804%_
                          '8
                          '#f
                          'set!)))
                    (_%method156814156819%_
                     _%object156813156818%_
                     _%key156807%_
                     _%value156810%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key156776%_ (cons _%value156784%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!150181%_
       '#f))
    (define _%checked-hash-table::HashTable::update!150183%_
      (lambda (_%self156567%_ _%key156568%_ _%update156569%_ _%default156570%_)
        (let* ((_%self156573%_ _%self156567%_)
               (_%key156582%_ _%key156568%_)
               (_%update156590%_ _%update156569%_)
               (_%default156598%_ _%default156570%_))
          (declare (not safe))
          (let ((_%h156609%_
                 (##unchecked-structure-ref _%self156573%_ '1 '#f '#f))
                (_%key?156611%_
                 (##unchecked-structure-ref _%self156573%_ '2 '#f '#f)))
            (if ((lambda (_%key?156614%_
                          _%key156615%_
                          _%update156616%_
                          _%default156617%_)
                   (_%key?156614%_ _%key156615%_))
                 _%key?156611%_
                 _%key156582%_
                 _%update156590%_
                 _%default156598%_)
                (let* ((_%self148091156619%_ _%h156609%_)
                       (_%key156622%_ _%key156582%_)
                       (_%proc156625%_ _%update156590%_)
                       (_%default156628%_ _%default156598%_))
                  (declare (not safe))
                  (let ((_%object156631156636%_
                         (##unchecked-structure-ref
                          _%self148091156619%_
                          '1
                          '#f
                          'update!))
                        (_%method156632156637%_
                         (##unchecked-structure-ref
                          _%self148091156619%_
                          '9
                          '#f
                          'update!)))
                    (_%method156632156637%_
                     _%object156631156636%_
                     _%key156622%_
                     _%proc156625%_
                     _%default156628%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key156582%_
                         (cons _%update156590%_ (cons _%default156598%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!150183%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!150185%_
      (lambda (_%self156398%_ _%key156399%_)
        (let* ((_%self156402%_ _%self156398%_) (_%key156411%_ _%key156399%_))
          (declare (not safe))
          (let ((_%h156422%_
                 (##unchecked-structure-ref _%self156402%_ '1 '#f '#f))
                (_%key?156424%_
                 (##unchecked-structure-ref _%self156402%_ '2 '#f '#f)))
            (if ((lambda (_%key?156427%_ _%key156428%_)
                   (_%key?156427%_ _%key156428%_))
                 _%key?156424%_
                 _%key156411%_)
                (let* ((_%self146603156430%_ _%h156422%_)
                       (_%key156433%_ _%key156411%_))
                  (declare (not safe))
                  (let ((_%object156436156441%_
                         (##unchecked-structure-ref
                          _%self146603156430%_
                          '1
                          '#f
                          'delete!))
                        (_%method156437156442%_
                         (##unchecked-structure-ref
                          _%self146603156430%_
                          '4
                          '#f
                          'delete!)))
                    (_%method156437156442%_
                     _%object156436156441%_
                     _%key156433%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key156411%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!150185%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each150187%_
      (lambda (_%self156229%_ _%proc156230%_)
        (let* ((_%self156233%_ _%self156229%_) (_%proc156242%_ _%proc156230%_))
          (declare (not safe))
          (let ((_%h156253%_
                 (##unchecked-structure-ref _%self156233%_ '1 '#f '#f))
                (_%key?156255%_
                 (##unchecked-structure-ref _%self156233%_ '2 '#f '#f)))
            (if ((lambda (_%key?156258%_ _%proc156259%_) '#t)
                 _%key?156255%_
                 _%proc156242%_)
                (let* ((_%self146896156261%_ _%h156253%_)
                       (_%proc156264%_ _%proc156242%_))
                  (declare (not safe))
                  (let ((_%object156267156272%_
                         (##unchecked-structure-ref
                          _%self146896156261%_
                          '1
                          '#f
                          'for-each))
                        (_%method156268156273%_
                         (##unchecked-structure-ref
                          _%self146896156261%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156268156273%_
                     _%object156267156272%_
                     _%proc156264%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc156242%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each150187%_
       '#f))
    (define _%checked-hash-table::HashTable::length150189%_
      (lambda (_%self156075%_)
        (let ((_%self156078%_ _%self156075%_))
          (declare (not safe))
          (let ((_%h156090%_
                 (##unchecked-structure-ref _%self156078%_ '1 '#f '#f))
                (_%key?156092%_
                 (##unchecked-structure-ref _%self156078%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self147207156095%_ _%h156090%_))
                  (declare (not safe))
                  (let ((_%object156098156103%_
                         (##unchecked-structure-ref
                          _%self147207156095%_
                          '1
                          '#f
                          'length))
                        (_%method156099156104%_
                         (##unchecked-structure-ref
                          _%self147207156095%_
                          '6
                          '#f
                          'length)))
                    (_%method156099156104%_ _%object156098156103%_)))
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
       _%checked-hash-table::HashTable::length150189%_
       '#f))
    (define _%checked-hash-table::HashTable::copy150191%_
      (lambda (_%self155921%_)
        (let ((_%self155924%_ _%self155921%_))
          (declare (not safe))
          (let ((_%h155936%_
                 (##unchecked-structure-ref _%self155924%_ '1 '#f '#f))
                (_%key?155938%_
                 (##unchecked-structure-ref _%self155924%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146309155941%_ _%h155936%_))
                  (declare (not safe))
                  (let ((_%object155944155949%_
                         (##unchecked-structure-ref
                          _%self146309155941%_
                          '1
                          '#f
                          'copy))
                        (_%method155945155950%_
                         (##unchecked-structure-ref
                          _%self146309155941%_
                          '3
                          '#f
                          'copy)))
                    (_%method155945155950%_ _%object155944155949%_)))
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
       _%checked-hash-table::HashTable::copy150191%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!150193%_
      (lambda (_%self155767%_)
        (let ((_%self155770%_ _%self155767%_))
          (declare (not safe))
          (let ((_%h155782%_
                 (##unchecked-structure-ref _%self155770%_ '1 '#f '#f))
                (_%key?155784%_
                 (##unchecked-structure-ref _%self155770%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146017155787%_ _%h155782%_))
                  (declare (not safe))
                  (let ((_%object155790155795%_
                         (##unchecked-structure-ref
                          _%self146017155787%_
                          '1
                          '#f
                          'clear!))
                        (_%method155791155796%_
                         (##unchecked-structure-ref
                          _%self146017155787%_
                          '2
                          '#f
                          'clear!)))
                    (_%method155791155796%_ _%object155790155795%_)))
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
       _%checked-hash-table::HashTable::clear!150193%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table155637%_
               _%count155638%_
               _%free155639%_
               _%hash155640%_
               _%test155641%_
               _%seed155642%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table155637%_
           _%count155638%_
           _%free155639%_
           _%hash155640%_
           _%test155641%_
           _%seed155642%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords155047%_
               _%size-hint155037155048%_
               _%seed155038155049%_
               _%test155039155050%_
               _%hash155040155051%_
               _%lock155041155052%_
               _%check155042155053%_
               _%weak-keys155043155054%_
               _%weak-values155044155055%_)
        (let* ((_%size-hint155057%_
                (if (eq? _%size-hint155037155048%_ absent-value)
                    '#f
                    _%size-hint155037155048%_))
               (_%seed155059%_
                (if (eq? _%seed155038155049%_ absent-value)
                    '#f
                    _%seed155038155049%_))
               (_%test155061%_
                (if (eq? _%test155039155050%_ absent-value)
                    equal?
                    _%test155039155050%_))
               (_%hash155063%_
                (if (eq? _%hash155040155051%_ absent-value)
                    '#f
                    _%hash155040155051%_))
               (_%lock155065%_
                (if (eq? _%lock155041155052%_ absent-value)
                    '#f
                    _%lock155041155052%_))
               (_%check155067%_
                (if (eq? _%check155042155053%_ absent-value)
                    '#f
                    _%check155042155053%_))
               (_%weak-keys155069%_
                (if (eq? _%weak-keys155043155054%_ absent-value)
                    '#f
                    _%weak-keys155043155054%_))
               (_%weak-values155071%_
                (if (eq? _%weak-values155044155055%_ absent-value)
                    '#f
                    _%weak-values155044155055%_)))
          (letrec ((_%table-seed155074%_
                    (lambda ()
                      (if (fixnum? _%seed155059%_)
                          _%seed155059%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock155218%_
                    (lambda (_%ht155605%_)
                      (let ((_%ht155608%_ _%ht155605%_))
                        (if _%lock155065%_
                            (let ((_%$obj155620%_
                                   (let ((__tmp162476
                                          (let ((_%$obj155617%_
                                                 _%lock155065%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj155617%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj155617%_)))
                                                     '#t)
                                                _%$obj155617%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj155617%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht155608%_
                                      __tmp162476))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj155620%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj155620%_)))
                                       '#t)
                                  _%$obj155620%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj155620%_))))
                            _%ht155608%_))))
                   (_%wrap-lock155219%_
                    (lambda (_%ht155593%_)
                      (let ((_%ht155596%_ _%ht155593%_))
                        (_%__wrap-lock155218%_ _%ht155596%_))))
                   (_%__wrap-checked155341%_
                    (lambda (_%ht155577%_ _%implicit155578%_)
                      (let ((_%ht155581%_ _%ht155577%_))
                        (if _%check155067%_
                            (let ((_%$obj155590%_
                                   (let ((__tmp162477
                                          (if (procedure? _%check155067%_)
                                              _%check155067%_
                                              _%implicit155578%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht155581%_
                                      __tmp162477))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj155590%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj155590%_)))
                                       '#t)
                                  _%$obj155590%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj155590%_))))
                            _%ht155581%_))))
                   (_%wrap-checked155342%_
                    (lambda (_%ht155564%_ _%implicit155565%_)
                      (let ((_%ht155568%_ _%ht155564%_))
                        (_%__wrap-checked155341%_
                         _%ht155568%_
                         _%implicit155565%_))))
                   (_%make155343%_
                    (lambda (_%kons155512%_
                             _%key?155513%_
                             _%hash155514%_
                             _%test155515%_)
                      (let* ((_%size155518%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint155057%_)))
                             (_%table155520%_
                              (let ((__tmp162478 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size155518%_ __tmp162478)))
                             (_%ht155525%_
                              (let ((_%$obj155522%_
                                     (_%kons155512%_
                                      _%table155520%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size155518%_ '2))
                                      _%hash155514%_
                                      _%test155515%_
                                      (_%table-seed155074%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155522%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155522%_)))
                                         '#t)
                                    _%$obj155522%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155522%_)))))
                             (_%ht155547%_
                              (let* ((_%ht155528%_ _%ht155525%_)
                                     (_%ht155532%_ _%ht155528%_))
                                (_%__wrap-lock155218%_ _%ht155532%_)))
                             (_%implicit155550%_ _%key?155513%_)
                             (_%ht155554%_ _%ht155547%_))
                        (_%__wrap-checked155341%_
                         _%ht155554%_
                         _%implicit155550%_))))
                   (_%make-gc-hash-table155344%_
                    (lambda ()
                      (let* ((_%ht155477%_
                              (let ((_%$obj155474%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint155057%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155474%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155474%_)))
                                         '#t)
                                    _%$obj155474%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155474%_)))))
                             (_%ht155495%_
                              (let* ((_%ht155479%_ _%ht155477%_)
                                     (_%ht155483%_ _%ht155479%_))
                                (_%__wrap-lock155218%_ _%ht155483%_)))
                             (_%implicit155498%_ true)
                             (_%ht155502%_ _%ht155495%_))
                        (_%__wrap-checked155341%_
                         _%ht155502%_
                         _%implicit155498%_))))
                   (_%make-gambit-table155345%_
                    (lambda ()
                      (let* ((_%size155414%_
                              (let ((_%$e155411%_ _%size-hint155057%_))
                                (if _%$e155411%_
                                    _%$e155411%_
                                    (macro-absent-obj))))
                             (_%test155419%_
                              (let ((_%$e155416%_ _%test155061%_))
                                (if _%$e155416%_ _%$e155416%_ equal?)))
                             (_%hash155427%_
                              (let ((_%$e155421%_ _%hash155063%_))
                                (if _%$e155421%_
                                    _%$e155421%_
                                    (if (eq? _%test155419%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test155419%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht155432%_
                              (let ((_%$obj155429%_
                                     (make-table
                                      'size:
                                      _%size155414%_
                                      'test:
                                      _%test155419%_
                                      'hash:
                                      _%hash155427%_
                                      'weak-keys:
                                      _%weak-keys155069%_
                                      'weak-values:
                                      _%weak-values155071%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155429%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155429%_)))
                                         '#t)
                                    _%$obj155429%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155429%_)))))
                             (_%ht155455%_
                              (let* ((_%ht155435%_ _%ht155432%_)
                                     (_%ht155439%_ _%ht155435%_))
                                (_%__wrap-lock155218%_ _%ht155439%_)))
                             (_%implicit155458%_ true)
                             (_%ht155462%_ _%ht155455%_))
                        (_%__wrap-checked155341%_
                         _%ht155462%_
                         _%implicit155458%_)))))
            (if (or _%weak-keys155069%_ _%weak-values155071%_)
                (_%make-gambit-table155345%_)
                (if (and (or (eq? _%test155061%_ eq?)
                             (eq? _%test155061%_ ##eq?))
                         (or (not _%hash155063%_)
                             (eq? _%hash155063%_ eq?-hash)
                             (eq? _%hash155063%_ eq-hash))
                         (not _%seed155059%_))
                    (_%make-gc-hash-table155344%_)
                    (if (and (or (eq? _%test155061%_ eq?)
                                 (eq? _%test155061%_ ##eq?))
                             (or (not _%hash155063%_)
                                 (eq? _%hash155063%_ eq?-hash)
                                 (eq? _%hash155063%_ eq-hash)))
                        (_%make155343%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test155061%_ eqv?)
                                     (eq? _%test155061%_ ##eqv?))
                                 (or (not _%hash155063%_)
                                     (eq? _%hash155063%_ eqv?-hash)
                                     (eq? _%hash155063%_ eqv-hash)))
                            (_%make155343%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test155061%_ eq?)
                                         (eq? _%test155061%_ ##eq?))
                                     (or (eq? _%hash155063%_ symbolic-hash)
                                         (eq? _%hash155063%_ ##symbol-hash)))
                                (_%make155343%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test155061%_ eq?)
                                             (eq? _%test155061%_ ##eq?))
                                         (eq? _%hash155063%_ immediate-hash))
                                    (_%make155343%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test155061%_ equal?)
                                                 (eq? _%test155061%_ ##equal?)
                                                 (eq? _%test155061%_ string=?)
                                                 (eq? _%test155061%_
                                                      ##string=?))
                                             (or (eq? _%hash155063%_
                                                      string-hash)
                                                 (eq? _%hash155063%_
                                                      ##string=?-hash)))
                                        (_%make155343%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test155061%_ equal?)
                                                 (not _%hash155063%_))
                                            (_%make155343%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test155061%_)
                                                (if (procedure? _%hash155063%_)
                                                    (_%make155343%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash155063%_
                                                     _%test155061%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash155063%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test155061%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords155627%_ . _%args155628%_)
        (apply make-hash-table__%
               _%@@keywords155627%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155627%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155627%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155627%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155627%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155627%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155627%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155627%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155627%_
                  'weak-values:
                  absent-value))
               _%args155628%_)))
    (define make-hash-table
      (lambda _%args155045155634%_
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
               _%args155045155634%_)))
    (define make-hash-table-eq
      (lambda _%args155034%_
        (apply make-hash-table 'test: eq? _%args155034%_)))
    (define make-hash-table-eqv
      (lambda _%args155032%_
        (apply make-hash-table 'test: eqv? _%args155032%_)))
    (define make-hash-table-symbolic
      (lambda _%args155030%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args155030%_)))
    (define make-hash-table-string
      (lambda _%args155028%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args155028%_)))
    (define make-hash-table-immediate
      (lambda _%args155026%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args155026%_)))
    (define list->hash-table
      (lambda (_%lst155023%_ . _%args155024%_)
        (list->hash-table!
         _%lst155023%_
         (apply make-hash-table
                'size:
                (length _%lst155023%_)
                _%args155024%_))))
    (define list->hash-table-eq
      (lambda (_%lst155020%_ . _%args155021%_)
        (list->hash-table!
         _%lst155020%_
         (apply make-hash-table-eq
                'size:
                (length _%lst155020%_)
                _%args155021%_))))
    (define list->hash-table-eqv
      (lambda (_%lst155017%_ . _%args155018%_)
        (list->hash-table!
         _%lst155017%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst155017%_)
                _%args155018%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst155014%_ . _%args155015%_)
        (list->hash-table!
         _%lst155014%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst155014%_)
                _%args155015%_))))
    (define list->hash-table-string
      (lambda (_%lst155011%_ . _%args155012%_)
        (list->hash-table!
         _%lst155011%_
         (apply make-hash-table-string
                'size:
                (length _%lst155011%_)
                _%args155012%_))))
    (define list->hash-table-immediate
      (lambda (_%lst155008%_ . _%args155009%_)
        (list->hash-table!
         _%lst155008%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst155008%_)
                _%args155009%_))))
    (define list->hash-table!
      (lambda (_%lst154959%_ _%h154960%_)
        (for-each
         (lambda (_%el154962%_)
           (let* ((_%el154963154970%_ _%el154962%_)
                  (_%E154965154973%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el154963154970%_
                              '([k . v])))
                     '#!void))
                  (_%K154966154996%_
                   (lambda (_%v154976%_ _%k154977%_)
                     (let* ((_%self147796154979%_ _%h154960%_)
                            (_%key154982%_ _%k154977%_)
                            (_%value154985%_ _%v154976%_))
                       (declare (not safe))
                       (let ((_%object154988154993%_
                              (##unchecked-structure-ref
                               _%self147796154979%_
                               '1
                               '#f
                               'set!))
                             (_%method154989154994%_
                              (##unchecked-structure-ref
                               _%self147796154979%_
                               '8
                               '#f
                               'set!)))
                         (_%method154989154994%_
                          _%object154988154993%_
                          _%key154982%_
                          _%value154985%_))))))
             (if (pair? _%el154963154970%_)
                 (let ((_%hd154967154999%_
                        (let ()
                          (declare (not safe))
                          (##car _%el154963154970%_)))
                       (_%tl154968155001%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el154963154970%_))))
                   (let* ((_%k155004%_ _%hd154967154999%_)
                          (_%v155006%_ _%tl154968155001%_))
                     (_%K154966154996%_ _%v155006%_ _%k155004%_)))
                 (_%E154965154973%_))))
         _%lst154959%_)
        _%h154960%_))
    (define plist->hash-table
      (lambda (_%lst154956%_ . _%args154957%_)
        (plist->hash-table!
         _%lst154956%_
         (apply make-hash-table
                'size:
                (length _%lst154956%_)
                _%args154957%_))))
    (define plist->hash-table-eq
      (lambda (_%lst154953%_ . _%args154954%_)
        (plist->hash-table!
         _%lst154953%_
         (apply make-hash-table-eq
                'size:
                (length _%lst154953%_)
                _%args154954%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst154950%_ . _%args154951%_)
        (plist->hash-table!
         _%lst154950%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst154950%_)
                _%args154951%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst154947%_ . _%args154948%_)
        (plist->hash-table!
         _%lst154947%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst154947%_)
                _%args154948%_))))
    (define plist->hash-table-string
      (lambda (_%lst154944%_ . _%args154945%_)
        (plist->hash-table!
         _%lst154944%_
         (apply make-hash-table-string
                'size:
                (length _%lst154944%_)
                _%args154945%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst154941%_ . _%args154942%_)
        (plist->hash-table!
         _%lst154941%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst154941%_)
                _%args154942%_))))
    (define plist->hash-table!
      (lambda (_%lst154864%_ _%h154865%_)
        (let _%loop154867%_ ((_%rest154869%_ _%lst154864%_))
          (let* ((_%rest154870154882%_ _%rest154869%_)
                 (_%else154873154890%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst154864%_)))))
            (let ((_%K154876154922%_
                   (lambda (_%rest154901%_ _%val154902%_ _%key154903%_)
                     (let* ((_%self147796154905%_ _%h154865%_)
                            (_%key154908%_ _%key154903%_)
                            (_%value154911%_ _%val154902%_))
                       (declare (not safe))
                       (let ((_%object154914154919%_
                              (##unchecked-structure-ref
                               _%self147796154905%_
                               '1
                               '#f
                               'set!))
                             (_%method154915154920%_
                              (##unchecked-structure-ref
                               _%self147796154905%_
                               '8
                               '#f
                               'set!)))
                         (_%method154915154920%_
                          _%object154914154919%_
                          _%key154908%_
                          _%value154911%_)))
                     (_%loop154867%_ _%rest154901%_)))
                  (_%K154875154895%_ (lambda () _%h154865%_)))
              (let ((_%try-match154872154898%_
                     (lambda ()
                       (if (null? _%rest154870154882%_)
                           (_%K154875154895%_)
                           (_%else154873154890%_)))))
                (if (pair? _%rest154870154882%_)
                    (let ((_%tl154878154927%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest154870154882%_)))
                          (_%hd154877154925%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest154870154882%_))))
                      (if (pair? _%tl154878154927%_)
                          (let ((_%tl154880154934%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl154878154927%_)))
                                (_%hd154879154932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl154878154927%_))))
                            (let ((_%key154930%_ _%hd154877154925%_)
                                  (_%val154937%_ _%hd154879154932%_)
                                  (_%rest154939%_ _%tl154880154934%_))
                              (_%K154876154922%_
                               _%rest154939%_
                               _%val154937%_
                               _%key154930%_)))
                          (_%else154873154890%_)))
                    (_%try-match154872154898%_))))))))
    (define __hash-length
      (lambda (_%h154813%_)
        (let* ((_%h154816%_ _%h154813%_)
               (_%self147208154825%_ _%h154816%_)
               (_%self147208154832%_
                (let ((_%$obj154829%_ _%self147208154825%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154829%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154829%_)))
                           '#t)
                      _%$obj154829%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154829%_)))))
               (_%self147208154834%_ _%self147208154832%_))
          (if __DEBUG
              (let ((_%val154854%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object154846154851%_
                              (##unchecked-structure-ref
                               _%self147208154834%_
                               '1
                               '#f
                               'length))
                             (_%method154847154852%_
                              (##unchecked-structure-ref
                               _%self147208154834%_
                               '6
                               '#f
                               'length)))
                         (_%method154847154852%_ _%object154846154851%_)))))
                (if (fixnum? _%val154854%_)
                    _%val154854%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val154854%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object154856154861%_
                       (##unchecked-structure-ref
                        _%self147208154834%_
                        '1
                        '#f
                        'length))
                      (_%method154857154862%_
                       (##unchecked-structure-ref
                        _%self147208154834%_
                        '6
                        '#f
                        'length)))
                  (_%method154857154862%_ _%object154856154861%_)))))))
    (define hash-length
      (lambda (_%h150468%_)
        (let* ((_%h150474%_
                (let ((_%$obj150471%_ _%h150468%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150471%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150471%_)))
                           '#t)
                      _%$obj150471%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150471%_)))))
               (_%h150476%_ _%h150474%_))
          (__hash-length _%h150476%_))))
    (define __hash-ref__%
      (lambda (_%h154741%_ _%key154742%_ _%default154743%_)
        (let* ((_%h154746%_ _%h154741%_)
               (_%result154799%_
                (let* ((_%self147502154755%_ _%h154746%_)
                       (_%key154758%_ _%key154742%_)
                       (_%default154761%_ _%default154743%_)
                       (_%self147502154768%_
                        (let ((_%$obj154765%_ _%self147502154755%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj154765%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj154765%_)))
                                   '#t)
                              _%$obj154765%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj154765%_)))))
                       (_%self147502154770%_ _%self147502154768%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object154784154789%_
                               (##unchecked-structure-ref
                                _%self147502154770%_
                                '1
                                '#f
                                'ref))
                              (_%method154785154790%_
                               (##unchecked-structure-ref
                                _%self147502154770%_
                                '7
                                '#f
                                'ref)))
                          (_%method154785154790%_
                           _%object154784154789%_
                           _%key154758%_
                           _%default154761%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object154791154796%_
                               (##unchecked-structure-ref
                                _%self147502154770%_
                                '1
                                '#f
                                'ref))
                              (_%method154792154797%_
                               (##unchecked-structure-ref
                                _%self147502154770%_
                                '7
                                '#f
                                'ref)))
                          (_%method154792154797%_
                           _%object154791154796%_
                           _%key154758%_
                           _%default154761%_)))))))
          (if (eq? _%result154799%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h154746%_
               'key:
               _%key154742%_)
              _%result154799%_))))
    (define __hash-ref__0
      (lambda (_%h154804%_ _%key154805%_)
        (let ((_%default154807%_ absent-obj))
          (__hash-ref__% _%h154804%_ _%key154805%_ _%default154807%_))))
    (define __hash-ref
      (lambda _g162479_
        (let ((_g162480_ (let () (declare (not safe)) (##length _g162479_))))
          (cond ((let () (declare (not safe)) (##fx= _g162480_ 2))
                 (apply __hash-ref__0 _g162479_))
                ((let () (declare (not safe)) (##fx= _g162480_ 3))
                 (apply __hash-ref__% _g162479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g162479_))))))
    (define hash-ref__%
      (lambda (_%h150607%_ _%key150608%_ _%default150609%_)
        (let* ((_%h150615%_
                (let ((_%$obj150612%_ _%h150607%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150612%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150612%_)))
                           '#t)
                      _%$obj150612%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150612%_)))))
               (_%h150617%_ _%h150615%_))
          (__hash-ref__% _%h150617%_ _%key150608%_ _%default150609%_))))
    (define hash-ref__0
      (lambda (_%h150630%_ _%key150631%_)
        (let ((_%default150633%_ absent-obj))
          (hash-ref__% _%h150630%_ _%key150631%_ _%default150633%_))))
    (define hash-ref
      (lambda _g162481_
        (let ((_g162482_ (let () (declare (not safe)) (##length _g162481_))))
          (cond ((let () (declare (not safe)) (##fx= _g162482_ 2))
                 (apply hash-ref__0 _g162481_))
                ((let () (declare (not safe)) (##fx= _g162482_ 3))
                 (apply hash-ref__% _g162481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g162481_))))))
    (define __hash-get
      (lambda (_%h154683%_ _%key154684%_)
        (let* ((_%h154687%_ _%h154683%_)
               (_%self147502154696%_ _%h154687%_)
               (_%key154699%_ _%key154684%_)
               (_%default154702%_ '#f)
               (_%self147502154709%_
                (let ((_%$obj154706%_ _%self147502154696%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154706%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154706%_)))
                           '#t)
                      _%$obj154706%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154706%_)))))
               (_%self147502154711%_ _%self147502154709%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154725154730%_
                       (##unchecked-structure-ref
                        _%self147502154711%_
                        '1
                        '#f
                        'ref))
                      (_%method154726154731%_
                       (##unchecked-structure-ref
                        _%self147502154711%_
                        '7
                        '#f
                        'ref)))
                  (_%method154726154731%_
                   _%object154725154730%_
                   _%key154699%_
                   _%default154702%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154732154737%_
                       (##unchecked-structure-ref
                        _%self147502154711%_
                        '1
                        '#f
                        'ref))
                      (_%method154733154738%_
                       (##unchecked-structure-ref
                        _%self147502154711%_
                        '7
                        '#f
                        'ref)))
                  (_%method154733154738%_
                   _%object154732154737%_
                   _%key154699%_
                   _%default154702%_)))))))
    (define hash-get
      (lambda (_%h150759%_ _%key150760%_)
        (let* ((_%h150766%_
                (let ((_%$obj150763%_ _%h150759%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150763%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150763%_)))
                           '#t)
                      _%$obj150763%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150763%_)))))
               (_%h150768%_ _%h150766%_))
          (__hash-get _%h150768%_ _%key150760%_))))
    (define __hash-put!
      (lambda (_%h154625%_ _%key154626%_ _%value154627%_)
        (let* ((_%h154630%_ _%h154625%_)
               (_%self147797154639%_ _%h154630%_)
               (_%key154642%_ _%key154626%_)
               (_%value154645%_ _%value154627%_)
               (_%self147797154652%_
                (let ((_%$obj154649%_ _%self147797154639%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154649%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154649%_)))
                           '#t)
                      _%$obj154649%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154649%_)))))
               (_%self147797154654%_ _%self147797154652%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154668154673%_
                       (##unchecked-structure-ref
                        _%self147797154654%_
                        '1
                        '#f
                        'set!))
                      (_%method154669154674%_
                       (##unchecked-structure-ref
                        _%self147797154654%_
                        '8
                        '#f
                        'set!)))
                  (_%method154669154674%_
                   _%object154668154673%_
                   _%key154642%_
                   _%value154645%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154675154680%_
                       (##unchecked-structure-ref
                        _%self147797154654%_
                        '1
                        '#f
                        'set!))
                      (_%method154676154681%_
                       (##unchecked-structure-ref
                        _%self147797154654%_
                        '8
                        '#f
                        'set!)))
                  (_%method154676154681%_
                   _%object154675154680%_
                   _%key154642%_
                   _%value154645%_)))))))
    (define hash-put!
      (lambda (_%h150898%_ _%key150899%_ _%value150900%_)
        (let* ((_%h150906%_
                (let ((_%$obj150903%_ _%h150898%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150903%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150903%_)))
                           '#t)
                      _%$obj150903%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150903%_)))))
               (_%h150908%_ _%h150906%_))
          (__hash-put! _%h150908%_ _%key150899%_ _%value150900%_))))
    (define __hash-update!__%
      (lambda (_%h154538%_ _%key154539%_ _%update154540%_ _%default154541%_)
        (let* ((_%h154544%_ _%h154538%_)
               (_%self148092154553%_ _%h154544%_)
               (_%key154556%_ _%key154539%_)
               (_%proc154559%_ _%update154540%_)
               (_%default154562%_ _%default154541%_)
               (_%self148092154569%_
                (let ((_%$obj154566%_ _%self148092154553%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154566%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154566%_)))
                           '#t)
                      _%$obj154566%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154566%_)))))
               (_%self148092154571%_ _%self148092154569%_))
          (if (procedure? _%proc154559%_)
              (let ((_%proc154587%_ _%proc154559%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object154596154601%_
                             (##unchecked-structure-ref
                              _%self148092154571%_
                              '1
                              '#f
                              'update!))
                            (_%method154597154602%_
                             (##unchecked-structure-ref
                              _%self148092154571%_
                              '9
                              '#f
                              'update!)))
                        (_%method154597154602%_
                         _%object154596154601%_
                         _%key154556%_
                         _%proc154587%_
                         _%default154562%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object154603154608%_
                             (##unchecked-structure-ref
                              _%self148092154571%_
                              '1
                              '#f
                              'update!))
                            (_%method154604154609%_
                             (##unchecked-structure-ref
                              _%self148092154571%_
                              '9
                              '#f
                              'update!)))
                        (_%method154604154609%_
                         _%object154603154608%_
                         _%key154556%_
                         _%proc154587%_
                         _%default154562%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc154559%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h154614%_ _%key154615%_ _%update154616%_)
        (let ((_%default154618%_ '#!void))
          (__hash-update!__%
           _%h154614%_
           _%key154615%_
           _%update154616%_
           _%default154618%_))))
    (define __hash-update!
      (lambda _g162483_
        (let ((_g162484_ (let () (declare (not safe)) (##length _g162483_))))
          (cond ((let () (declare (not safe)) (##fx= _g162484_ 3))
                 (apply __hash-update!__0 _g162483_))
                ((let () (declare (not safe)) (##fx= _g162484_ 4))
                 (apply __hash-update!__% _g162483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g162483_))))))
    (define hash-update!__%
      (lambda (_%h151039%_ _%key151040%_ _%update151041%_ _%default151042%_)
        (let* ((_%h151048%_
                (let ((_%$obj151045%_ _%h151039%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151045%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151045%_)))
                           '#t)
                      _%$obj151045%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151045%_)))))
               (_%h151050%_ _%h151048%_))
          (__hash-update!__%
           _%h151050%_
           _%key151040%_
           _%update151041%_
           _%default151042%_))))
    (define hash-update!__0
      (lambda (_%h151063%_ _%key151064%_ _%update151065%_)
        (let ((_%default151067%_ '#!void))
          (hash-update!__%
           _%h151063%_
           _%key151064%_
           _%update151065%_
           _%default151067%_))))
    (define hash-update!
      (lambda _g162485_
        (let ((_g162486_ (let () (declare (not safe)) (##length _g162485_))))
          (cond ((let () (declare (not safe)) (##fx= _g162486_ 3))
                 (apply hash-update!__0 _g162485_))
                ((let () (declare (not safe)) (##fx= _g162486_ 4))
                 (apply hash-update!__% _g162485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g162485_))))))
    (define __hash-remove!
      (lambda (_%h154484%_ _%key154485%_)
        (let* ((_%h154488%_ _%h154484%_)
               (_%self146604154497%_ _%h154488%_)
               (_%key154500%_ _%key154485%_)
               (_%self146604154507%_
                (let ((_%$obj154504%_ _%self146604154497%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154504%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154504%_)))
                           '#t)
                      _%$obj154504%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154504%_)))))
               (_%self146604154509%_ _%self146604154507%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154522154527%_
                       (##unchecked-structure-ref
                        _%self146604154509%_
                        '1
                        '#f
                        'delete!))
                      (_%method154523154528%_
                       (##unchecked-structure-ref
                        _%self146604154509%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154523154528%_
                   _%object154522154527%_
                   _%key154500%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154529154534%_
                       (##unchecked-structure-ref
                        _%self146604154509%_
                        '1
                        '#f
                        'delete!))
                      (_%method154530154535%_
                       (##unchecked-structure-ref
                        _%self146604154509%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154530154535%_
                   _%object154529154534%_
                   _%key154500%_)))))))
    (define hash-remove!
      (lambda (_%h151194%_ _%key151195%_)
        (let* ((_%h151201%_
                (let ((_%$obj151198%_ _%h151194%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151198%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151198%_)))
                           '#t)
                      _%$obj151198%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151198%_)))))
               (_%h151203%_ _%h151201%_))
          (__hash-remove! _%h151203%_ _%key151195%_))))
    (define __hash-key?
      (lambda (_%h154427%_ _%k154428%_)
        (let ((_%h154431%_ _%h154427%_))
          (not (eq? (let* ((_%self147502154440%_ _%h154431%_)
                           (_%key154443%_ _%k154428%_)
                           (_%default154446%_ absent-value)
                           (_%self147502154453%_
                            (let ((_%$obj154450%_ _%self147502154440%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154450%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154450%_)))
                                       '#t)
                                  _%$obj154450%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154450%_)))))
                           (_%self147502154455%_ _%self147502154453%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object154469154474%_
                                   (##unchecked-structure-ref
                                    _%self147502154455%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154470154475%_
                                   (##unchecked-structure-ref
                                    _%self147502154455%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154470154475%_
                               _%object154469154474%_
                               _%key154443%_
                               _%default154446%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object154476154481%_
                                   (##unchecked-structure-ref
                                    _%self147502154455%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154477154482%_
                                   (##unchecked-structure-ref
                                    _%self147502154455%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154477154482%_
                               _%object154476154481%_
                               _%key154443%_
                               _%default154446%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h151333%_ _%k151334%_)
        (let* ((_%h151340%_
                (let ((_%$obj151337%_ _%h151333%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151337%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151337%_)))
                           '#t)
                      _%$obj151337%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151337%_)))))
               (_%h151342%_ _%h151340%_))
          (__hash-key? _%h151342%_ _%k151334%_))))
    (define __hash->list
      (lambda (_%h154359%_)
        (let* ((_%h154362%_ _%h154359%_) (_%lst154371%_ '()))
          (let* ((_%self146897154373%_ _%h154362%_)
                 (_%proc154379%_
                  (lambda (_%k154376%_ _%v154377%_)
                    (set! _%lst154371%_
                          (cons (cons _%k154376%_ _%v154377%_)
                                _%lst154371%_))))
                 (_%self146897154386%_
                  (let ((_%$obj154383%_ _%self146897154373%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154383%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154383%_)))
                             '#t)
                        _%$obj154383%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154383%_)))))
                 (_%self146897154388%_ _%self146897154386%_)
                 (_%proc154403%_ _%proc154379%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154412154417%_
                         (##unchecked-structure-ref
                          _%self146897154388%_
                          '1
                          '#f
                          'for-each))
                        (_%method154413154418%_
                         (##unchecked-structure-ref
                          _%self146897154388%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154413154418%_
                     _%object154412154417%_
                     _%proc154403%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154419154424%_
                         (##unchecked-structure-ref
                          _%self146897154388%_
                          '1
                          '#f
                          'for-each))
                        (_%method154420154425%_
                         (##unchecked-structure-ref
                          _%self146897154388%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154420154425%_
                     _%object154419154424%_
                     _%proc154403%_)))))
          _%lst154371%_)))
    (define hash->list
      (lambda (_%h151472%_)
        (let* ((_%h151478%_
                (let ((_%$obj151475%_ _%h151472%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151475%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151475%_)))
                           '#t)
                      _%$obj151475%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151475%_)))))
               (_%h151480%_ _%h151478%_))
          (__hash->list _%h151480%_))))
    (define __hash->plist
      (lambda (_%h154291%_)
        (let* ((_%h154294%_ _%h154291%_) (_%lst154303%_ '()))
          (let* ((_%self146897154305%_ _%h154294%_)
                 (_%proc154311%_
                  (lambda (_%k154308%_ _%v154309%_)
                    (set! _%lst154303%_
                          (cons _%k154308%_
                                (cons _%v154309%_ _%lst154303%_)))))
                 (_%self146897154318%_
                  (let ((_%$obj154315%_ _%self146897154305%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154315%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154315%_)))
                             '#t)
                        _%$obj154315%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154315%_)))))
                 (_%self146897154320%_ _%self146897154318%_)
                 (_%proc154335%_ _%proc154311%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154344154349%_
                         (##unchecked-structure-ref
                          _%self146897154320%_
                          '1
                          '#f
                          'for-each))
                        (_%method154345154350%_
                         (##unchecked-structure-ref
                          _%self146897154320%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154345154350%_
                     _%object154344154349%_
                     _%proc154335%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154351154356%_
                         (##unchecked-structure-ref
                          _%self146897154320%_
                          '1
                          '#f
                          'for-each))
                        (_%method154352154357%_
                         (##unchecked-structure-ref
                          _%self146897154320%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154352154357%_
                     _%object154351154356%_
                     _%proc154335%_)))))
          _%lst154303%_)))
    (define hash->plist
      (lambda (_%h151610%_)
        (let* ((_%h151616%_
                (let ((_%$obj151613%_ _%h151610%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151613%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151613%_)))
                           '#t)
                      _%$obj151613%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151613%_)))))
               (_%h151618%_ _%h151616%_))
          (__hash->plist _%h151618%_))))
    (define __hash-for-each
      (lambda (_%proc154220%_ _%h154221%_)
        (let* ((_%proc154224%_ _%proc154220%_)
               (_%h154232%_ _%h154221%_)
               (_%self146897154241%_ _%h154232%_)
               (_%proc154244%_ _%proc154224%_)
               (_%self146897154251%_
                (let ((_%$obj154248%_ _%self146897154241%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154248%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154248%_)))
                           '#t)
                      _%$obj154248%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154248%_)))))
               (_%self146897154253%_ _%self146897154251%_)
               (_%proc154267%_ _%proc154244%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154276154281%_
                       (##unchecked-structure-ref
                        _%self146897154253%_
                        '1
                        '#f
                        'for-each))
                      (_%method154277154282%_
                       (##unchecked-structure-ref
                        _%self146897154253%_
                        '5
                        '#f
                        'for-each)))
                  (_%method154277154282%_
                   _%object154276154281%_
                   _%proc154267%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154283154288%_
                       (##unchecked-structure-ref
                        _%self146897154253%_
                        '1
                        '#f
                        'for-each))
                      (_%method154284154289%_
                       (##unchecked-structure-ref
                        _%self146897154253%_
                        '5
                        '#f
                        'for-each)))
                  (_%method154284154289%_
                   _%object154283154288%_
                   _%proc154267%_)))))))
    (define hash-for-each
      (lambda (_%proc151748%_ _%h151749%_)
        (if (procedure? _%proc151748%_)
            (let* ((_%proc151753%_ _%proc151748%_)
                   (_%h151765%_
                    (let ((_%$obj151762%_ _%h151749%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151762%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151762%_)))
                               '#t)
                          _%$obj151762%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151762%_)))))
                   (_%h151767%_ _%h151765%_))
              (__hash-for-each _%proc151753%_ _%h151767%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc151748%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc154143%_ _%h154144%_)
        (let* ((_%proc154147%_ _%proc154143%_)
               (_%h154155%_ _%h154144%_)
               (_%result154164%_ '()))
          (let* ((_%self146897154166%_ _%h154155%_)
                 (_%proc154172%_
                  (lambda (_%k154169%_ _%v154170%_)
                    (set! _%result154164%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc154147%_ _%k154169%_ _%v154170%_))
                                _%result154164%_))))
                 (_%self146897154179%_
                  (let ((_%$obj154176%_ _%self146897154166%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154176%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154176%_)))
                             '#t)
                        _%$obj154176%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154176%_)))))
                 (_%self146897154181%_ _%self146897154179%_)
                 (_%proc154196%_ _%proc154172%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154205154210%_
                         (##unchecked-structure-ref
                          _%self146897154181%_
                          '1
                          '#f
                          'for-each))
                        (_%method154206154211%_
                         (##unchecked-structure-ref
                          _%self146897154181%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154206154211%_
                     _%object154205154210%_
                     _%proc154196%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154212154217%_
                         (##unchecked-structure-ref
                          _%self146897154181%_
                          '1
                          '#f
                          'for-each))
                        (_%method154213154218%_
                         (##unchecked-structure-ref
                          _%self146897154181%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154213154218%_
                     _%object154212154217%_
                     _%proc154196%_)))))
          _%result154164%_)))
    (define hash-map
      (lambda (_%proc151897%_ _%h151898%_)
        (if (procedure? _%proc151897%_)
            (let* ((_%proc151902%_ _%proc151897%_)
                   (_%h151914%_
                    (let ((_%$obj151911%_ _%h151898%_))
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
                   (_%h151916%_ _%h151914%_))
              (__hash-map _%proc151902%_ _%h151916%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc151897%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc154065%_ _%iv154066%_ _%h154067%_)
        (let* ((_%proc154070%_ _%proc154065%_)
               (_%h154078%_ _%h154067%_)
               (_%result154087%_ _%iv154066%_))
          (let* ((_%self146897154089%_ _%h154078%_)
                 (_%proc154095%_
                  (lambda (_%k154092%_ _%v154093%_)
                    (set! _%result154087%_
                          (let ()
                            (declare (not safe))
                            (_%proc154070%_
                             _%k154092%_
                             _%v154093%_
                             _%result154087%_)))))
                 (_%self146897154102%_
                  (let ((_%$obj154099%_ _%self146897154089%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154099%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154099%_)))
                             '#t)
                        _%$obj154099%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154099%_)))))
                 (_%self146897154104%_ _%self146897154102%_)
                 (_%proc154119%_ _%proc154095%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154128154133%_
                         (##unchecked-structure-ref
                          _%self146897154104%_
                          '1
                          '#f
                          'for-each))
                        (_%method154129154134%_
                         (##unchecked-structure-ref
                          _%self146897154104%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154129154134%_
                     _%object154128154133%_
                     _%proc154119%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154135154140%_
                         (##unchecked-structure-ref
                          _%self146897154104%_
                          '1
                          '#f
                          'for-each))
                        (_%method154136154141%_
                         (##unchecked-structure-ref
                          _%self146897154104%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154136154141%_
                     _%object154135154140%_
                     _%proc154119%_)))))
          _%result154087%_)))
    (define hash-fold
      (lambda (_%proc152046%_ _%iv152047%_ _%h152048%_)
        (if (procedure? _%proc152046%_)
            (let* ((_%proc152052%_ _%proc152046%_)
                   (_%h152064%_
                    (let ((_%$obj152061%_ _%h152048%_))
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
                            (cast HashTable::interface _%$obj152061%_)))))
                   (_%h152066%_ _%h152064%_))
              (__hash-fold _%proc152052%_ _%iv152047%_ _%h152066%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc152046%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc153972%_ _%h153973%_ _%default-value153974%_)
        (let* ((_%proc153977%_ _%proc153972%_)
               (_%h153985%_ _%h153973%_)
               (__tmp162487
                (lambda (_%return153994%_)
                  (let* ((_%self146897153996%_ _%h153985%_)
                         (_%proc154005%_
                          (lambda (_%k153999%_ _%v154000%_)
                            (let ((_%$e154002%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc153977%_
                                      _%k153999%_
                                      _%v154000%_))))
                              (if _%$e154002%_
                                  (_%return153994%_ _%$e154002%_)
                                  '#!void))))
                         (_%self146897154012%_
                          (let ((_%$obj154009%_ _%self146897153996%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj154009%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj154009%_)))
                                     '#t)
                                _%$obj154009%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj154009%_)))))
                         (_%self146897154014%_ _%self146897154012%_)
                         (_%proc154029%_ _%proc154005%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object154038154043%_
                                 (##unchecked-structure-ref
                                  _%self146897154014%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method154039154044%_
                                 (##unchecked-structure-ref
                                  _%self146897154014%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method154039154044%_
                             _%object154038154043%_
                             _%proc154029%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object154045154050%_
                                 (##unchecked-structure-ref
                                  _%self146897154014%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method154046154051%_
                                 (##unchecked-structure-ref
                                  _%self146897154014%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method154046154051%_
                             _%object154045154050%_
                             _%proc154029%_)))))
                  _%default-value153974%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp162487))))
    (define __hash-find__0
      (lambda (_%proc154056%_ _%h154057%_)
        (let ((_%default-value154059%_ '#f))
          (__hash-find__%
           _%proc154056%_
           _%h154057%_
           _%default-value154059%_))))
    (define __hash-find
      (lambda _g162488_
        (let ((_g162489_ (let () (declare (not safe)) (##length _g162488_))))
          (cond ((let () (declare (not safe)) (##fx= _g162489_ 2))
                 (apply __hash-find__0 _g162488_))
                ((let () (declare (not safe)) (##fx= _g162489_ 3))
                 (apply __hash-find__% _g162488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g162488_))))))
    (define hash-find__%
      (lambda (_%proc152197%_ _%h152198%_ _%default-value152199%_)
        (if (procedure? _%proc152197%_)
            (let* ((_%proc152203%_ _%proc152197%_)
                   (_%h152215%_
                    (let ((_%$obj152212%_ _%h152198%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj152212%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj152212%_)))
                               '#t)
                          _%$obj152212%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj152212%_)))))
                   (_%h152217%_ _%h152215%_))
              (__hash-find__%
               _%proc152203%_
               _%h152217%_
               _%default-value152199%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc152197%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc152230%_ _%h152231%_)
        (let ((_%default-value152233%_ '#f))
          (hash-find__% _%proc152230%_ _%h152231%_ _%default-value152233%_))))
    (define hash-find
      (lambda _g162490_
        (let ((_g162491_ (let () (declare (not safe)) (##length _g162490_))))
          (cond ((let () (declare (not safe)) (##fx= _g162491_ 2))
                 (apply hash-find__0 _g162490_))
                ((let () (declare (not safe)) (##fx= _g162491_ 3))
                 (apply hash-find__% _g162490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g162490_))))))
    (define __hash-keys
      (lambda (_%h153903%_)
        (let* ((_%h153906%_ _%h153903%_) (_%result153915%_ '()))
          (let* ((_%self146897153917%_ _%h153906%_)
                 (_%proc153923%_
                  (lambda (_%k153920%_ _%v153921%_)
                    (set! _%result153915%_
                          (cons _%k153920%_ _%result153915%_))))
                 (_%self146897153930%_
                  (let ((_%$obj153927%_ _%self146897153917%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153927%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153927%_)))
                             '#t)
                        _%$obj153927%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153927%_)))))
                 (_%self146897153932%_ _%self146897153930%_)
                 (_%proc153947%_ _%proc153923%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153956153961%_
                         (##unchecked-structure-ref
                          _%self146897153932%_
                          '1
                          '#f
                          'for-each))
                        (_%method153957153962%_
                         (##unchecked-structure-ref
                          _%self146897153932%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153957153962%_
                     _%object153956153961%_
                     _%proc153947%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153963153968%_
                         (##unchecked-structure-ref
                          _%self146897153932%_
                          '1
                          '#f
                          'for-each))
                        (_%method153964153969%_
                         (##unchecked-structure-ref
                          _%self146897153932%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153964153969%_
                     _%object153963153968%_
                     _%proc153947%_)))))
          _%result153915%_)))
    (define hash-keys
      (lambda (_%h152359%_)
        (let* ((_%h152365%_
                (let ((_%$obj152362%_ _%h152359%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152362%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152362%_)))
                           '#t)
                      _%$obj152362%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152362%_)))))
               (_%h152367%_ _%h152365%_))
          (__hash-keys _%h152367%_))))
    (define __hash-values
      (lambda (_%h153835%_)
        (let* ((_%h153838%_ _%h153835%_) (_%result153847%_ '()))
          (let* ((_%self146897153849%_ _%h153838%_)
                 (_%proc153855%_
                  (lambda (_%k153852%_ _%v153853%_)
                    (set! _%result153847%_
                          (cons _%v153853%_ _%result153847%_))))
                 (_%self146897153862%_
                  (let ((_%$obj153859%_ _%self146897153849%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153859%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153859%_)))
                             '#t)
                        _%$obj153859%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153859%_)))))
                 (_%self146897153864%_ _%self146897153862%_)
                 (_%proc153879%_ _%proc153855%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153888153893%_
                         (##unchecked-structure-ref
                          _%self146897153864%_
                          '1
                          '#f
                          'for-each))
                        (_%method153889153894%_
                         (##unchecked-structure-ref
                          _%self146897153864%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153889153894%_
                     _%object153888153893%_
                     _%proc153879%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153895153900%_
                         (##unchecked-structure-ref
                          _%self146897153864%_
                          '1
                          '#f
                          'for-each))
                        (_%method153896153901%_
                         (##unchecked-structure-ref
                          _%self146897153864%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153896153901%_
                     _%object153895153900%_
                     _%proc153879%_)))))
          _%result153847%_)))
    (define hash-values
      (lambda (_%h152497%_)
        (let* ((_%h152503%_
                (let ((_%$obj152500%_ _%h152497%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152500%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152500%_)))
                           '#t)
                      _%$obj152500%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152500%_)))))
               (_%h152505%_ _%h152503%_))
          (__hash-values _%h152505%_))))
    (define __hash-copy
      (lambda (_%h153784%_)
        (let* ((_%h153787%_ _%h153784%_)
               (_%self146310153796%_ _%h153787%_)
               (_%self146310153803%_
                (let ((_%$obj153800%_ _%self146310153796%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153800%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153800%_)))
                           '#t)
                      _%$obj153800%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153800%_)))))
               (_%self146310153805%_ _%self146310153803%_))
          (if __DEBUG
              (let ((_%$obj153825%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object153817153822%_
                              (##unchecked-structure-ref
                               _%self146310153805%_
                               '1
                               '#f
                               'copy))
                             (_%method153818153823%_
                              (##unchecked-structure-ref
                               _%self146310153805%_
                               '3
                               '#f
                               'copy)))
                         (_%method153818153823%_ _%object153817153822%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj153825%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj153825%_)))
                         '#t)
                    _%$obj153825%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj153825%_))))
              (let ()
                (declare (not safe))
                (let ((_%object153827153832%_
                       (##unchecked-structure-ref
                        _%self146310153805%_
                        '1
                        '#f
                        'copy))
                      (_%method153828153833%_
                       (##unchecked-structure-ref
                        _%self146310153805%_
                        '3
                        '#f
                        'copy)))
                  (_%method153828153833%_ _%object153827153832%_)))))))
    (define hash-copy
      (lambda (_%h152635%_)
        (let* ((_%h152641%_
                (let ((_%$obj152638%_ _%h152635%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152638%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152638%_)))
                           '#t)
                      _%$obj152638%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152638%_)))))
               (_%h152643%_ _%h152641%_))
          (__hash-copy _%h152643%_))))
    (define __hash-clear!
      (lambda (_%h153736%_)
        (let* ((_%h153739%_ _%h153736%_)
               (_%self146018153748%_ _%h153739%_)
               (_%self146018153755%_
                (let ((_%$obj153752%_ _%self146018153748%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153752%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153752%_)))
                           '#t)
                      _%$obj153752%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153752%_)))))
               (_%self146018153757%_ _%self146018153755%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153769153774%_
                       (##unchecked-structure-ref
                        _%self146018153757%_
                        '1
                        '#f
                        'clear!))
                      (_%method153770153775%_
                       (##unchecked-structure-ref
                        _%self146018153757%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153770153775%_ _%object153769153774%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153776153781%_
                       (##unchecked-structure-ref
                        _%self146018153757%_
                        '1
                        '#f
                        'clear!))
                      (_%method153777153782%_
                       (##unchecked-structure-ref
                        _%self146018153757%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153777153782%_ _%object153776153781%_)))))))
    (define hash-clear!
      (lambda (_%h152773%_)
        (let* ((_%h152779%_
                (let ((_%$obj152776%_ _%h152773%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152776%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152776%_)))
                           '#t)
                      _%$obj152776%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152776%_)))))
               (_%h152781%_ _%h152779%_))
          (__hash-clear! _%h152781%_))))
    (define __hash-merge
      (lambda (_%h153682%_ . _%rest153683%_)
        (let* ((_%h153686%_ _%h153682%_)
               (_%copy153734%_
                (let* ((_%self146310153695%_ _%h153686%_)
                       (_%self146310153702%_
                        (let ((_%$obj153699%_ _%self146310153695%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153699%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153699%_)))
                                   '#t)
                              _%$obj153699%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153699%_)))))
                       (_%self146310153704%_ _%self146310153702%_))
                  (if __DEBUG
                      (let ((_%$obj153724%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object153716153721%_
                                      (##unchecked-structure-ref
                                       _%self146310153704%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method153717153722%_
                                      (##unchecked-structure-ref
                                       _%self146310153704%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method153717153722%_
                                  _%object153716153721%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj153724%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj153724%_)))
                                 '#t)
                            _%$obj153724%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj153724%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153726153731%_
                               (##unchecked-structure-ref
                                _%self146310153704%_
                                '1
                                '#f
                                'copy))
                              (_%method153727153732%_
                               (##unchecked-structure-ref
                                _%self146310153704%_
                                '3
                                '#f
                                'copy)))
                          (_%method153727153732%_ _%object153726153731%_)))))))
          (apply hash-merge! _%copy153734%_ _%rest153683%_)
          _%copy153734%_)))
    (define hash-merge
      (lambda (_%h152911%_ . _%rest152912%_)
        (let* ((_%h152918%_
                (let ((_%$obj152915%_ _%h152911%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152915%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152915%_)))
                           '#t)
                      _%$obj152915%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152915%_)))))
               (_%h152920%_ _%h152918%_))
          (declare (not safe))
          (##apply __hash-merge _%h152920%_ _%rest152912%_))))
    (define __hash-merge-right
      (lambda (_%h153628%_ . _%rest153629%_)
        (let* ((_%h153632%_ _%h153628%_)
               (_%copy153680%_
                (let* ((_%self146310153641%_ _%h153632%_)
                       (_%self146310153648%_
                        (let ((_%$obj153645%_ _%self146310153641%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153645%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153645%_)))
                                   '#t)
                              _%$obj153645%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153645%_)))))
                       (_%self146310153650%_ _%self146310153648%_))
                  (if __DEBUG
                      (let ((_%$obj153670%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object153662153667%_
                                      (##unchecked-structure-ref
                                       _%self146310153650%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method153663153668%_
                                      (##unchecked-structure-ref
                                       _%self146310153650%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method153663153668%_
                                  _%object153662153667%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj153670%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj153670%_)))
                                 '#t)
                            _%$obj153670%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj153670%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153672153677%_
                               (##unchecked-structure-ref
                                _%self146310153650%_
                                '1
                                '#f
                                'copy))
                              (_%method153673153678%_
                               (##unchecked-structure-ref
                                _%self146310153650%_
                                '3
                                '#f
                                'copy)))
                          (_%method153673153678%_ _%object153672153677%_)))))))
          (apply hash-merge-right! _%copy153680%_ _%rest153629%_)
          _%copy153680%_)))
    (define hash-merge-right
      (lambda (_%h153050%_ . _%rest153051%_)
        (let* ((_%h153057%_
                (let ((_%$obj153054%_ _%h153050%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153054%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153054%_)))
                           '#t)
                      _%$obj153054%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153054%_)))))
               (_%h153059%_ _%h153057%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h153059%_ _%rest153051%_))))
    (define __hash-merge!
      (lambda (_%h153476%_ . _%rest153477%_)
        (let ((_%h153480%_ _%h153476%_))
          (let ((__tmp162492
                 (lambda (_%hr153489%_)
                   (let* ((_%hr153495%_
                           (let ((_%$obj153492%_ _%hr153489%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153492%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153492%_)))
                                      '#t)
                                 _%$obj153492%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153492%_)))))
                          (_%hr153497%_ _%hr153495%_)
                          (_%self146897153510%_ _%hr153497%_)
                          (_%proc153585%_
                           (lambda (_%k153513%_ _%v153514%_)
                             (if (let* ((_%h153516%_ _%h153480%_)
                                        (_%k153519%_ _%k153513%_)
                                        (_%h153526%_
                                         (let ((_%$obj153523%_ _%h153516%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj153523%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj153523%_)))
                                                    '#t)
                                               _%$obj153523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj153523%_)))))
                                        (_%h153528%_ _%h153526%_))
                                   (__hash-key? _%h153528%_ _%k153519%_))
                                 '#!void
                                 (let* ((_%self147797153544%_ _%h153480%_)
                                        (_%key153547%_ _%k153513%_)
                                        (_%value153550%_ _%v153514%_)
                                        (_%self147797153557%_
                                         (let ((_%$obj153554%_
                                                _%self147797153544%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj153554%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj153554%_)))
                                                    '#t)
                                               _%$obj153554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj153554%_)))))
                                        (_%self147797153559%_
                                         _%self147797153557%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object153570153575%_
                                                (##unchecked-structure-ref
                                                 _%self147797153559%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method153571153576%_
                                                (##unchecked-structure-ref
                                                 _%self147797153559%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method153571153576%_
                                            _%object153570153575%_
                                            _%key153547%_
                                            _%value153550%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object153577153582%_
                                                (##unchecked-structure-ref
                                                 _%self147797153559%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method153578153583%_
                                                (##unchecked-structure-ref
                                                 _%self147797153559%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method153578153583%_
                                            _%object153577153582%_
                                            _%key153547%_
                                            _%value153550%_))))))))
                          (_%self146897153592%_
                           (let ((_%$obj153589%_ _%self146897153510%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153589%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153589%_)))
                                      '#t)
                                 _%$obj153589%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153589%_)))))
                          (_%self146897153594%_ _%self146897153592%_)
                          (_%proc153604%_ _%proc153585%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object153613153618%_
                                  (##unchecked-structure-ref
                                   _%self146897153594%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153614153619%_
                                  (##unchecked-structure-ref
                                   _%self146897153594%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153614153619%_
                              _%object153613153618%_
                              _%proc153604%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object153620153625%_
                                  (##unchecked-structure-ref
                                   _%self146897153594%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153621153626%_
                                  (##unchecked-structure-ref
                                   _%self146897153594%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153621153626%_
                              _%object153620153625%_
                              _%proc153604%_))))))))
            (declare (not safe))
            (##for-each __tmp162492 _%rest153477%_))
          _%h153480%_)))
    (define hash-merge!
      (lambda (_%h153189%_ . _%rest153190%_)
        (let* ((_%h153196%_
                (let ((_%$obj153193%_ _%h153189%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153193%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153193%_)))
                           '#t)
                      _%$obj153193%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153193%_)))))
               (_%h153198%_ _%h153196%_))
          (declare (not safe))
          (##apply __hash-merge! _%h153198%_ _%rest153190%_))))
    (define __hash-merge-right!
      (lambda (_%h153347%_ . _%rest153348%_)
        (let ((_%h153351%_ _%h153347%_))
          (let ((__tmp162493
                 (lambda (_%hr153360%_)
                   (let* ((_%hr153366%_
                           (let ((_%$obj153363%_ _%hr153360%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153363%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153363%_)))
                                      '#t)
                                 _%$obj153363%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153363%_)))))
                          (_%hr153368%_ _%hr153366%_)
                          (_%self146897153381%_ _%hr153368%_)
                          (_%proc153433%_
                           (lambda (_%k153384%_ _%v153385%_)
                             (let* ((_%self147797153387%_ _%h153351%_)
                                    (_%key153390%_ _%k153384%_)
                                    (_%value153393%_ _%v153385%_)
                                    (_%self147797153400%_
                                     (let ((_%$obj153397%_
                                            _%self147797153387%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj153397%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj153397%_)))
                                                '#t)
                                           _%$obj153397%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj153397%_)))))
                                    (_%self147797153402%_
                                     _%self147797153400%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153418153423%_
                                            (##unchecked-structure-ref
                                             _%self147797153402%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153419153424%_
                                            (##unchecked-structure-ref
                                             _%self147797153402%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153419153424%_
                                        _%object153418153423%_
                                        _%key153390%_
                                        _%value153393%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153425153430%_
                                            (##unchecked-structure-ref
                                             _%self147797153402%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153426153431%_
                                            (##unchecked-structure-ref
                                             _%self147797153402%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153426153431%_
                                        _%object153425153430%_
                                        _%key153390%_
                                        _%value153393%_)))))))
                          (_%self146897153440%_
                           (let ((_%$obj153437%_ _%self146897153381%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153437%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153437%_)))
                                      '#t)
                                 _%$obj153437%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153437%_)))))
                          (_%self146897153442%_ _%self146897153440%_)
                          (_%proc153452%_ _%proc153433%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object153461153466%_
                                  (##unchecked-structure-ref
                                   _%self146897153442%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153462153467%_
                                  (##unchecked-structure-ref
                                   _%self146897153442%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153462153467%_
                              _%object153461153466%_
                              _%proc153452%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object153468153473%_
                                  (##unchecked-structure-ref
                                   _%self146897153442%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153469153474%_
                                  (##unchecked-structure-ref
                                   _%self146897153442%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153469153474%_
                              _%object153468153473%_
                              _%proc153452%_))))))))
            (declare (not safe))
            (##for-each __tmp162493 _%rest153348%_))
          _%h153351%_)))
    (define hash-merge-right!
      (lambda (_%h153328%_ . _%rest153329%_)
        (let* ((_%h153335%_
                (let ((_%$obj153332%_ _%h153328%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153332%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153332%_)))
                           '#t)
                      _%$obj153332%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153332%_)))))
               (_%h153337%_ _%h153335%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h153337%_ _%rest153329%_))))))
