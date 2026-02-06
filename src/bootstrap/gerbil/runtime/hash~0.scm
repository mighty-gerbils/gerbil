(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1770342547)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp151881 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp151881
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args150623%_
        (apply make-instance UnboundKeyError::t _%$args150623%_)))
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
      (lambda (_%where150497%_ _%message150498%_ . _%irritants150499%_)
        (let ((__tmp151882
               (let ((__obj151873
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj151873
                    _%message150498%_
                    'where:
                    _%where150497%_
                    'irritants:
                    _%irritants150499%_))
                 __obj151873)))
          (declare (not safe))
          (raise __tmp151882))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp151883 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp151883
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj151875
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj151875
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj151875))
    (define make-HashTable
      (lambda (_%obj150495%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj150495%_))))
    (define try-HashTable
      (lambda (_%obj150493%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj150493%_))))
    (define HashTable?
      (lambda (_%obj150491%_)
        (let ((__tmp151884
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj150491%_ __tmp151884))))
    (define is-HashTable?
      (lambda (_%obj150488%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj150488%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self138013138257%_)
        (let ((_%self138013138259%_ _%self138013138257%_))
          (declare (not safe))
          (let ((_%object138266138271%_
                 (##unchecked-structure-ref
                  _%self138013138259%_
                  '1
                  '#f
                  'clear!))
                (_%method138267138272%_
                 (##unchecked-structure-ref
                  _%self138013138259%_
                  '2
                  '#f
                  'clear!)))
            (_%method138267138272%_ _%object138266138271%_)))))
    (define ::HashTable-clear!
      (lambda (_%self138014138274%_)
        (let* ((_%self138014138279%_
                (let ((_%$obj138276%_ _%self138014138274%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj138276%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj138276%_)))
                           '#t)
                      _%$obj138276%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj138276%_)))))
               (_%self138014138281%_ _%self138014138279%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object138289138294%_
                       (##unchecked-structure-ref
                        _%self138014138281%_
                        '1
                        '#f
                        'clear!))
                      (_%method138290138295%_
                       (##unchecked-structure-ref
                        _%self138014138281%_
                        '2
                        '#f
                        'clear!)))
                  (_%method138290138295%_ _%object138289138294%_)))
              (let ()
                (declare (not safe))
                (let ((_%object138296138301%_
                       (##unchecked-structure-ref
                        _%self138014138281%_
                        '1
                        '#f
                        'clear!))
                      (_%method138297138302%_
                       (##unchecked-structure-ref
                        _%self138014138281%_
                        '2
                        '#f
                        'clear!)))
                  (_%method138297138302%_ _%object138296138301%_)))))))
    (define __HashTable-copy
      (lambda (_%self138305138548%_)
        (let ((_%self138305138550%_ _%self138305138548%_))
          (declare (not safe))
          (let ((_%object138557138562%_
                 (##unchecked-structure-ref _%self138305138550%_ '1 '#f 'copy))
                (_%method138558138563%_
                 (##unchecked-structure-ref
                  _%self138305138550%_
                  '3
                  '#f
                  'copy)))
            (_%method138558138563%_ _%object138557138562%_)))))
    (define ::HashTable-copy
      (lambda (_%self138306138565%_)
        (let* ((_%self138306138570%_
                (let ((_%$obj138567%_ _%self138306138565%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj138567%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj138567%_)))
                           '#t)
                      _%$obj138567%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj138567%_)))))
               (_%self138306138572%_ _%self138306138570%_))
          (if __DEBUG
              (let ((_%$obj138588%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object138580138585%_
                              (##unchecked-structure-ref
                               _%self138306138572%_
                               '1
                               '#f
                               'copy))
                             (_%method138581138586%_
                              (##unchecked-structure-ref
                               _%self138306138572%_
                               '3
                               '#f
                               'copy)))
                         (_%method138581138586%_ _%object138580138585%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj138588%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj138588%_)))
                         '#t)
                    _%$obj138588%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj138588%_))))
              (let ()
                (declare (not safe))
                (let ((_%object138590138595%_
                       (##unchecked-structure-ref
                        _%self138306138572%_
                        '1
                        '#f
                        'copy))
                      (_%method138591138596%_
                       (##unchecked-structure-ref
                        _%self138306138572%_
                        '3
                        '#f
                        'copy)))
                  (_%method138591138596%_ _%object138590138595%_)))))))
    (define __HashTable-delete!
      (lambda (_%self138599138842%_ _%key138843%_)
        (let ((_%self138599138845%_ _%self138599138842%_))
          (declare (not safe))
          (let ((_%object138852138857%_
                 (##unchecked-structure-ref
                  _%self138599138845%_
                  '1
                  '#f
                  'delete!))
                (_%method138853138858%_
                 (##unchecked-structure-ref
                  _%self138599138845%_
                  '4
                  '#f
                  'delete!)))
            (_%method138853138858%_ _%object138852138857%_ _%key138843%_)))))
    (define ::HashTable-delete!
      (lambda (_%self138600138860%_ _%key138861%_)
        (let* ((_%self138600138866%_
                (let ((_%$obj138863%_ _%self138600138860%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj138863%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj138863%_)))
                           '#t)
                      _%$obj138863%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj138863%_)))))
               (_%self138600138868%_ _%self138600138866%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object138876138881%_
                       (##unchecked-structure-ref
                        _%self138600138868%_
                        '1
                        '#f
                        'delete!))
                      (_%method138877138882%_
                       (##unchecked-structure-ref
                        _%self138600138868%_
                        '4
                        '#f
                        'delete!)))
                  (_%method138877138882%_
                   _%object138876138881%_
                   _%key138861%_)))
              (let ()
                (declare (not safe))
                (let ((_%object138883138888%_
                       (##unchecked-structure-ref
                        _%self138600138868%_
                        '1
                        '#f
                        'delete!))
                      (_%method138884138889%_
                       (##unchecked-structure-ref
                        _%self138600138868%_
                        '4
                        '#f
                        'delete!)))
                  (_%method138884138889%_
                   _%object138883138888%_
                   _%key138861%_)))))))
    (define __HashTable-for-each
      (lambda (_%self138892139135%_ _%proc139136%_)
        (let* ((_%self138892139138%_ _%self138892139135%_)
               (_%proc139145%_ _%proc139136%_))
          (declare (not safe))
          (let ((_%object139153139158%_
                 (##unchecked-structure-ref
                  _%self138892139138%_
                  '1
                  '#f
                  'for-each))
                (_%method139154139159%_
                 (##unchecked-structure-ref
                  _%self138892139138%_
                  '5
                  '#f
                  'for-each)))
            (_%method139154139159%_ _%object139153139158%_ _%proc139145%_)))))
    (define ::HashTable-for-each
      (lambda (_%self138893139161%_ _%proc139162%_)
        (let* ((_%self138893139167%_
                (let ((_%$obj139164%_ _%self138893139161%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj139164%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj139164%_)))
                           '#t)
                      _%$obj139164%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj139164%_)))))
               (_%self138893139169%_ _%self138893139167%_))
          (if (procedure? _%proc139162%_)
              (let ((_%proc139178%_ _%proc139162%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object139187139192%_
                             (##unchecked-structure-ref
                              _%self138893139169%_
                              '1
                              '#f
                              'for-each))
                            (_%method139188139193%_
                             (##unchecked-structure-ref
                              _%self138893139169%_
                              '5
                              '#f
                              'for-each)))
                        (_%method139188139193%_
                         _%object139187139192%_
                         _%proc139178%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object139194139199%_
                             (##unchecked-structure-ref
                              _%self138893139169%_
                              '1
                              '#f
                              'for-each))
                            (_%method139195139200%_
                             (##unchecked-structure-ref
                              _%self138893139169%_
                              '5
                              '#f
                              'for-each)))
                        (_%method139195139200%_
                         _%object139194139199%_
                         _%proc139178%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc139162%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self139203139446%_)
        (let ((_%self139203139448%_ _%self139203139446%_))
          (declare (not safe))
          (let ((_%object139455139460%_
                 (##unchecked-structure-ref
                  _%self139203139448%_
                  '1
                  '#f
                  'length))
                (_%method139456139461%_
                 (##unchecked-structure-ref
                  _%self139203139448%_
                  '6
                  '#f
                  'length)))
            (_%method139456139461%_ _%object139455139460%_)))))
    (define ::HashTable-length
      (lambda (_%self139204139463%_)
        (let* ((_%self139204139468%_
                (let ((_%$obj139465%_ _%self139204139463%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj139465%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj139465%_)))
                           '#t)
                      _%$obj139465%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj139465%_)))))
               (_%self139204139470%_ _%self139204139468%_))
          (if __DEBUG
              (let ((_%val139486%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object139478139483%_
                              (##unchecked-structure-ref
                               _%self139204139470%_
                               '1
                               '#f
                               'length))
                             (_%method139479139484%_
                              (##unchecked-structure-ref
                               _%self139204139470%_
                               '6
                               '#f
                               'length)))
                         (_%method139479139484%_ _%object139478139483%_)))))
                (if (fixnum? _%val139486%_)
                    _%val139486%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val139486%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object139488139493%_
                       (##unchecked-structure-ref
                        _%self139204139470%_
                        '1
                        '#f
                        'length))
                      (_%method139489139494%_
                       (##unchecked-structure-ref
                        _%self139204139470%_
                        '6
                        '#f
                        'length)))
                  (_%method139489139494%_ _%object139488139493%_)))))))
    (define __HashTable-ref
      (lambda (_%self139497139740%_ _%key139741%_ _%default139742%_)
        (let ((_%self139497139744%_ _%self139497139740%_))
          (declare (not safe))
          (let ((_%object139751139756%_
                 (##unchecked-structure-ref _%self139497139744%_ '1 '#f 'ref))
                (_%method139752139757%_
                 (##unchecked-structure-ref _%self139497139744%_ '7 '#f 'ref)))
            (_%method139752139757%_
             _%object139751139756%_
             _%key139741%_
             _%default139742%_)))))
    (define ::HashTable-ref
      (lambda (_%self139498139759%_ _%key139760%_ _%default139761%_)
        (let* ((_%self139498139766%_
                (let ((_%$obj139763%_ _%self139498139759%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj139763%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj139763%_)))
                           '#t)
                      _%$obj139763%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj139763%_)))))
               (_%self139498139768%_ _%self139498139766%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object139776139781%_
                       (##unchecked-structure-ref
                        _%self139498139768%_
                        '1
                        '#f
                        'ref))
                      (_%method139777139782%_
                       (##unchecked-structure-ref
                        _%self139498139768%_
                        '7
                        '#f
                        'ref)))
                  (_%method139777139782%_
                   _%object139776139781%_
                   _%key139760%_
                   _%default139761%_)))
              (let ()
                (declare (not safe))
                (let ((_%object139783139788%_
                       (##unchecked-structure-ref
                        _%self139498139768%_
                        '1
                        '#f
                        'ref))
                      (_%method139784139789%_
                       (##unchecked-structure-ref
                        _%self139498139768%_
                        '7
                        '#f
                        'ref)))
                  (_%method139784139789%_
                   _%object139783139788%_
                   _%key139760%_
                   _%default139761%_)))))))
    (define __HashTable-set!
      (lambda (_%self139792140035%_ _%key140036%_ _%value140037%_)
        (let ((_%self139792140039%_ _%self139792140035%_))
          (declare (not safe))
          (let ((_%object140046140051%_
                 (##unchecked-structure-ref _%self139792140039%_ '1 '#f 'set!))
                (_%method140047140052%_
                 (##unchecked-structure-ref
                  _%self139792140039%_
                  '8
                  '#f
                  'set!)))
            (_%method140047140052%_
             _%object140046140051%_
             _%key140036%_
             _%value140037%_)))))
    (define ::HashTable-set!
      (lambda (_%self139793140054%_ _%key140055%_ _%value140056%_)
        (let* ((_%self139793140061%_
                (let ((_%$obj140058%_ _%self139793140054%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj140058%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj140058%_)))
                           '#t)
                      _%$obj140058%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj140058%_)))))
               (_%self139793140063%_ _%self139793140061%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object140071140076%_
                       (##unchecked-structure-ref
                        _%self139793140063%_
                        '1
                        '#f
                        'set!))
                      (_%method140072140077%_
                       (##unchecked-structure-ref
                        _%self139793140063%_
                        '8
                        '#f
                        'set!)))
                  (_%method140072140077%_
                   _%object140071140076%_
                   _%key140055%_
                   _%value140056%_)))
              (let ()
                (declare (not safe))
                (let ((_%object140078140083%_
                       (##unchecked-structure-ref
                        _%self139793140063%_
                        '1
                        '#f
                        'set!))
                      (_%method140079140084%_
                       (##unchecked-structure-ref
                        _%self139793140063%_
                        '8
                        '#f
                        'set!)))
                  (_%method140079140084%_
                   _%object140078140083%_
                   _%key140055%_
                   _%value140056%_)))))))
    (define __HashTable-update!
      (lambda (_%self140087140330%_
               _%key140331%_
               _%proc140332%_
               _%default140333%_)
        (let* ((_%self140087140335%_ _%self140087140330%_)
               (_%proc140342%_ _%proc140332%_))
          (declare (not safe))
          (let ((_%object140350140355%_
                 (##unchecked-structure-ref
                  _%self140087140335%_
                  '1
                  '#f
                  'update!))
                (_%method140351140356%_
                 (##unchecked-structure-ref
                  _%self140087140335%_
                  '9
                  '#f
                  'update!)))
            (_%method140351140356%_
             _%object140350140355%_
             _%key140331%_
             _%proc140342%_
             _%default140333%_)))))
    (define ::HashTable-update!
      (lambda (_%self140088140358%_
               _%key140359%_
               _%proc140360%_
               _%default140361%_)
        (let* ((_%self140088140366%_
                (let ((_%$obj140363%_ _%self140088140358%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj140363%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj140363%_)))
                           '#t)
                      _%$obj140363%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj140363%_)))))
               (_%self140088140368%_ _%self140088140366%_))
          (if (procedure? _%proc140360%_)
              (let ((_%proc140377%_ _%proc140360%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object140386140391%_
                             (##unchecked-structure-ref
                              _%self140088140368%_
                              '1
                              '#f
                              'update!))
                            (_%method140387140392%_
                             (##unchecked-structure-ref
                              _%self140088140368%_
                              '9
                              '#f
                              'update!)))
                        (_%method140387140392%_
                         _%object140386140391%_
                         _%key140359%_
                         _%proc140377%_
                         _%default140361%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object140393140398%_
                             (##unchecked-structure-ref
                              _%self140088140368%_
                              '1
                              '#f
                              'update!))
                            (_%method140394140399%_
                             (##unchecked-structure-ref
                              _%self140088140368%_
                              '9
                              '#f
                              'update!)))
                        (_%method140394140399%_
                         _%object140393140398%_
                         _%key140359%_
                         _%proc140377%_
                         _%default140361%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc140360%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp151885 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp151885
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj151877
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj151877
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj151877))
    (define make-Locker
      (lambda (_%obj150486%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj150486%_))))
    (define try-Locker
      (lambda (_%obj150484%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj150484%_))))
    (define Locker?
      (lambda (_%obj150482%_)
        (let ((__tmp151886
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj150482%_ __tmp151886))))
    (define is-Locker?
      (lambda (_%obj150479%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj150479%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self140402140645%_)
        (let ((_%self140402140647%_ _%self140402140645%_))
          (declare (not safe))
          (let ((_%object140654140659%_
                 (##unchecked-structure-ref
                  _%self140402140647%_
                  '1
                  '#f
                  'read-lock!))
                (_%method140655140660%_
                 (##unchecked-structure-ref
                  _%self140402140647%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method140655140660%_ _%object140654140659%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self140403140662%_)
        (let* ((_%self140403140667%_
                (let ((_%$obj140664%_ _%self140403140662%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj140664%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj140664%_)))
                           '#t)
                      _%$obj140664%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj140664%_)))))
               (_%self140403140669%_ _%self140403140667%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object140677140682%_
                       (##unchecked-structure-ref
                        _%self140403140669%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method140678140683%_
                       (##unchecked-structure-ref
                        _%self140403140669%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method140678140683%_ _%object140677140682%_)))
              (let ()
                (declare (not safe))
                (let ((_%object140684140689%_
                       (##unchecked-structure-ref
                        _%self140403140669%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method140685140690%_
                       (##unchecked-structure-ref
                        _%self140403140669%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method140685140690%_ _%object140684140689%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self140693140936%_)
        (let ((_%self140693140938%_ _%self140693140936%_))
          (declare (not safe))
          (let ((_%object140945140950%_
                 (##unchecked-structure-ref
                  _%self140693140938%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method140946140951%_
                 (##unchecked-structure-ref
                  _%self140693140938%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method140946140951%_ _%object140945140950%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self140694140953%_)
        (let* ((_%self140694140958%_
                (let ((_%$obj140955%_ _%self140694140953%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj140955%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj140955%_)))
                           '#t)
                      _%$obj140955%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj140955%_)))))
               (_%self140694140960%_ _%self140694140958%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object140968140973%_
                       (##unchecked-structure-ref
                        _%self140694140960%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method140969140974%_
                       (##unchecked-structure-ref
                        _%self140694140960%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method140969140974%_ _%object140968140973%_)))
              (let ()
                (declare (not safe))
                (let ((_%object140975140980%_
                       (##unchecked-structure-ref
                        _%self140694140960%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method140976140981%_
                       (##unchecked-structure-ref
                        _%self140694140960%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method140976140981%_ _%object140975140980%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self140984141227%_)
        (let ((_%self140984141229%_ _%self140984141227%_))
          (declare (not safe))
          (let ((_%object141236141241%_
                 (##unchecked-structure-ref
                  _%self140984141229%_
                  '1
                  '#f
                  'write-lock!))
                (_%method141237141242%_
                 (##unchecked-structure-ref
                  _%self140984141229%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method141237141242%_ _%object141236141241%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self140985141244%_)
        (let* ((_%self140985141249%_
                (let ((_%$obj141246%_ _%self140985141244%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj141246%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj141246%_)))
                           '#t)
                      _%$obj141246%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj141246%_)))))
               (_%self140985141251%_ _%self140985141249%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object141259141264%_
                       (##unchecked-structure-ref
                        _%self140985141251%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method141260141265%_
                       (##unchecked-structure-ref
                        _%self140985141251%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method141260141265%_ _%object141259141264%_)))
              (let ()
                (declare (not safe))
                (let ((_%object141266141271%_
                       (##unchecked-structure-ref
                        _%self140985141251%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method141267141272%_
                       (##unchecked-structure-ref
                        _%self140985141251%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method141267141272%_ _%object141266141271%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self141275141518%_)
        (let ((_%self141275141520%_ _%self141275141518%_))
          (declare (not safe))
          (let ((_%object141527141532%_
                 (##unchecked-structure-ref
                  _%self141275141520%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method141528141533%_
                 (##unchecked-structure-ref
                  _%self141275141520%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method141528141533%_ _%object141527141532%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self141276141535%_)
        (let* ((_%self141276141540%_
                (let ((_%$obj141537%_ _%self141276141535%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj141537%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj141537%_)))
                           '#t)
                      _%$obj141537%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj141537%_)))))
               (_%self141276141542%_ _%self141276141540%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object141550141555%_
                       (##unchecked-structure-ref
                        _%self141276141542%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method141551141556%_
                       (##unchecked-structure-ref
                        _%self141276141542%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method141551141556%_ _%object141550141555%_)))
              (let ()
                (declare (not safe))
                (let ((_%object141557141562%_
                       (##unchecked-structure-ref
                        _%self141276141542%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method141558141563%_
                       (##unchecked-structure-ref
                        _%self141276141542%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method141558141563%_ _%object141557141562%_)))))))
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
      (lambda (_%table150472%_
               _%key150473%_
               _%update150474%_
               _%default150475%_)
        (let ((_%result150477%_
               (table-ref _%table150472%_ _%key150473%_ _%default150475%_)))
          (table-set!
           _%table150472%_
           _%key150473%_
           (_%update150474%_ _%default150475%_)))))
    (define gambit-table-for-each
      (lambda (_%table150469%_ _%proc150470%_)
        (table-for-each _%proc150470%_ _%table150469%_)))
    (define gambit-table-clear!
      (lambda (_%table150467%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table150467%_ '0 '5 '#f '#f))))
    (let ((__tmp151887 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp151887 'HashTable::ref table-ref))
    (let ((__tmp151888 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp151888 'HashTable::set! table-set!))
    (let ((__tmp151889 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp151889 'HashTable::update! gambit-table-update!))
    (let ((__tmp151890 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp151890 'HashTable::delete! table-set!))
    (let ((__tmp151891 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp151891 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp151892 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp151892 'HashTable::length table-length))
    (let ((__tmp151893 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp151893 'HashTable::copy table-copy))
    (let ((__tmp151894 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp151894 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots150449%_ '(table count free hash test seed))
             (_%slot-vector150451%_ (list->vector (cons '#f _%slots150449%_)))
             (_%slot-table150458%_
              (let ((_%slot-table150453%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp151897
                       (lambda (_%slot150455%_ _%field150456%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table150453%_
                            _%slot150455%_
                            _%field150456%_))
                         (let ((__tmp151898
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot150455%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table150453%_
                            __tmp151898
                            _%field150456%_))))
                      (__tmp151895
                       (let ((__tmp151896
                              (let ()
                                (declare (not safe))
                                (##length _%slots150449%_))))
                         (declare (not safe))
                         (##iota __tmp151896 '1))))
                  (declare (not safe))
                  (##for-each __tmp151897 _%slots150449%_ __tmp151895))
                _%slot-table150453%_))
             (_%flags150460%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields150462%_ '#())
             (_%properties150464%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots150449%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp151899 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags150460%_
         __table::t
         _%fields150462%_
         __tmp151899
         _%slot-vector150451%_
         _%slot-table150458%_
         _%properties150464%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots150431%_ '(gcht immediate))
             (_%slot-vector150433%_ (list->vector (cons '#f _%slots150431%_)))
             (_%slot-table150440%_
              (let ((_%slot-table150435%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp151902
                       (lambda (_%slot150437%_ _%field150438%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table150435%_
                            _%slot150437%_
                            _%field150438%_))
                         (let ((__tmp151903
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot150437%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table150435%_
                            __tmp151903
                            _%field150438%_))))
                      (__tmp151900
                       (let ((__tmp151901
                              (let ()
                                (declare (not safe))
                                (##length _%slots150431%_))))
                         (declare (not safe))
                         (##iota __tmp151901 '1))))
                  (declare (not safe))
                  (##for-each __tmp151902 _%slots150431%_ __tmp151900))
                _%slot-table150435%_))
             (_%flags150442%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields150444%_ '#())
             (_%properties150446%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots150431%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp151904 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags150442%_
         __gc-table::t
         _%fields150444%_
         __tmp151904
         _%slot-vector150433%_
         _%slot-table150440%_
         _%properties150446%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp151906 (list))
            (__tmp151905
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp151906
         '(table lock)
         __tmp151905
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args150428%_
        (apply make-instance locked-hash-table::t _%$args150428%_)))
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
      (let ((__tmp151908 (list))
            (__tmp151907
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp151908
         '(table key-check)
         __tmp151907
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args150425%_
        (apply make-instance checked-hash-table::t _%$args150425%_)))
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
      (let ((__tmp151910 (list hash-table::t))
            (__tmp151909 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp151910
         '()
         __tmp151909
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args150422%_
        (apply make-instance eq-hash-table::t _%$args150422%_)))
    (define eqv-hash-table::t
      (let ((__tmp151912 (list hash-table::t))
            (__tmp151911 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp151912
         '()
         __tmp151911
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args150419%_
        (apply make-instance eqv-hash-table::t _%$args150419%_)))
    (define symbol-hash-table::t
      (let ((__tmp151914 (list hash-table::t))
            (__tmp151913 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp151914
         '()
         __tmp151913
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args150416%_
        (apply make-instance symbol-hash-table::t _%$args150416%_)))
    (define string-hash-table::t
      (let ((__tmp151916 (list hash-table::t))
            (__tmp151915 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp151916
         '()
         __tmp151915
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args150413%_
        (apply make-instance string-hash-table::t _%$args150413%_)))
    (define immediate-hash-table::t
      (let ((__tmp151918 (list hash-table::t))
            (__tmp151917 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp151918
         '()
         __tmp151917
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args150410%_
        (apply make-instance immediate-hash-table::t _%$args150410%_)))
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
    (define _%locked-hash-table::HashTable::ref141948%_
      (lambda (_%self150331%_ _%key150333%_ _%default150334%_)
        (let* ((_%self150337%_ _%self150331%_)
               (_%key150346%_ _%key150333%_)
               (_%default150354%_ _%default150334%_))
          (let ((_%h150363%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self150337%_ '1 '#f '#f)))
                (_%l150365%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self150337%_ '2 '#f '#f))))
            (let ((__tmp151921
                   (lambda ()
                     (let ((_%self140400150369%_ _%l150365%_))
                       (declare (not safe))
                       (let ((_%object150372150377%_
                              (##unchecked-structure-ref
                               _%self140400150369%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method150373150378%_
                              (##unchecked-structure-ref
                               _%self140400150369%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method150373150378%_ _%object150372150377%_)))))
                  (__tmp151920
                   (lambda ()
                     (let* ((_%self139495150381%_ _%h150363%_)
                            (_%key150384%_ _%key150346%_)
                            (_%default150387%_ _%default150354%_))
                       (declare (not safe))
                       (let ((_%object150390150395%_
                              (##unchecked-structure-ref
                               _%self139495150381%_
                               '1
                               '#f
                               'ref))
                             (_%method150391150396%_
                              (##unchecked-structure-ref
                               _%self139495150381%_
                               '7
                               '#f
                               'ref)))
                         (_%method150391150396%_
                          _%object150390150395%_
                          _%key150384%_
                          _%default150387%_)))))
                  (__tmp151919
                   (lambda ()
                     (let ((_%self140691150399%_ _%l150365%_))
                       (declare (not safe))
                       (let ((_%object150402150407%_
                              (##unchecked-structure-ref
                               _%self140691150399%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method150403150408%_
                              (##unchecked-structure-ref
                               _%self140691150399%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method150403150408%_ _%object150402150407%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp151921 __tmp151920 __tmp151919))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref141948%_
       '#f))
    (define _%locked-hash-table::HashTable::set!141950%_
      (lambda (_%self150129%_ _%key150131%_ _%value150132%_)
        (let* ((_%self150135%_ _%self150129%_)
               (_%key150144%_ _%key150131%_)
               (_%value150152%_ _%value150132%_))
          (let ((_%h150161%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self150135%_ '1 '#f '#f)))
                (_%l150163%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self150135%_ '2 '#f '#f))))
            (let ((__tmp151924
                   (lambda ()
                     (let ((_%self140982150167%_ _%l150163%_))
                       (declare (not safe))
                       (let ((_%object150170150175%_
                              (##unchecked-structure-ref
                               _%self140982150167%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method150171150176%_
                              (##unchecked-structure-ref
                               _%self140982150167%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method150171150176%_ _%object150170150175%_)))))
                  (__tmp151923
                   (lambda ()
                     (let* ((_%self139790150179%_ _%h150161%_)
                            (_%key150182%_ _%key150144%_)
                            (_%value150185%_ _%value150152%_))
                       (declare (not safe))
                       (let ((_%object150188150193%_
                              (##unchecked-structure-ref
                               _%self139790150179%_
                               '1
                               '#f
                               'set!))
                             (_%method150189150194%_
                              (##unchecked-structure-ref
                               _%self139790150179%_
                               '8
                               '#f
                               'set!)))
                         (_%method150189150194%_
                          _%object150188150193%_
                          _%key150182%_
                          _%value150185%_)))))
                  (__tmp151922
                   (lambda ()
                     (let ((_%self141273150197%_ _%l150163%_))
                       (declare (not safe))
                       (let ((_%object150200150205%_
                              (##unchecked-structure-ref
                               _%self141273150197%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method150201150206%_
                              (##unchecked-structure-ref
                               _%self141273150197%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method150201150206%_ _%object150200150205%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp151924 __tmp151923 __tmp151922))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!141950%_
       '#f))
    (define _%locked-hash-table::HashTable::update!141952%_
      (lambda (_%self149915%_ _%key149917%_ _%update149918%_ _%default149919%_)
        (let* ((_%self149922%_ _%self149915%_)
               (_%key149931%_ _%key149917%_)
               (_%update149939%_ _%update149918%_)
               (_%default149947%_ _%default149919%_))
          (let ((_%h149956%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self149922%_ '1 '#f '#f)))
                (_%l149958%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self149922%_ '2 '#f '#f))))
            (let ((__tmp151927
                   (lambda ()
                     (let ((_%self140982149962%_ _%l149958%_))
                       (declare (not safe))
                       (let ((_%object149965149970%_
                              (##unchecked-structure-ref
                               _%self140982149962%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method149966149971%_
                              (##unchecked-structure-ref
                               _%self140982149962%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method149966149971%_ _%object149965149970%_)))))
                  (__tmp151926
                   (lambda ()
                     (let* ((_%self140085149974%_ _%h149956%_)
                            (_%key149977%_ _%key149931%_)
                            (_%proc149980%_ _%update149939%_)
                            (_%default149983%_ _%default149947%_))
                       (declare (not safe))
                       (let ((_%object149986149991%_
                              (##unchecked-structure-ref
                               _%self140085149974%_
                               '1
                               '#f
                               'update!))
                             (_%method149987149992%_
                              (##unchecked-structure-ref
                               _%self140085149974%_
                               '9
                               '#f
                               'update!)))
                         (_%method149987149992%_
                          _%object149986149991%_
                          _%key149977%_
                          _%proc149980%_
                          _%default149983%_)))))
                  (__tmp151925
                   (lambda ()
                     (let ((_%self141273149995%_ _%l149958%_))
                       (declare (not safe))
                       (let ((_%object149998150003%_
                              (##unchecked-structure-ref
                               _%self141273149995%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method149999150004%_
                              (##unchecked-structure-ref
                               _%self141273149995%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method149999150004%_ _%object149998150003%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp151927 __tmp151926 __tmp151925))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!141952%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!141954%_
      (lambda (_%self149725%_ _%key149727%_)
        (let* ((_%self149730%_ _%self149725%_) (_%key149739%_ _%key149727%_))
          (let ((_%h149748%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self149730%_ '1 '#f '#f)))
                (_%l149750%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self149730%_ '2 '#f '#f))))
            (let ((__tmp151930
                   (lambda ()
                     (let ((_%self140982149754%_ _%l149750%_))
                       (declare (not safe))
                       (let ((_%object149757149762%_
                              (##unchecked-structure-ref
                               _%self140982149754%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method149758149763%_
                              (##unchecked-structure-ref
                               _%self140982149754%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method149758149763%_ _%object149757149762%_)))))
                  (__tmp151929
                   (lambda ()
                     (let* ((_%self138597149766%_ _%h149748%_)
                            (_%key149769%_ _%key149739%_))
                       (declare (not safe))
                       (let ((_%object149772149777%_
                              (##unchecked-structure-ref
                               _%self138597149766%_
                               '1
                               '#f
                               'delete!))
                             (_%method149773149778%_
                              (##unchecked-structure-ref
                               _%self138597149766%_
                               '4
                               '#f
                               'delete!)))
                         (_%method149773149778%_
                          _%object149772149777%_
                          _%key149769%_)))))
                  (__tmp151928
                   (lambda ()
                     (let ((_%self141273149781%_ _%l149750%_))
                       (declare (not safe))
                       (let ((_%object149784149789%_
                              (##unchecked-structure-ref
                               _%self141273149781%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method149785149790%_
                              (##unchecked-structure-ref
                               _%self141273149781%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method149785149790%_ _%object149784149789%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp151930 __tmp151929 __tmp151928))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!141954%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each141956%_
      (lambda (_%self149535%_ _%proc149537%_)
        (let* ((_%self149540%_ _%self149535%_) (_%proc149549%_ _%proc149537%_))
          (let ((_%h149558%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self149540%_ '1 '#f '#f)))
                (_%l149560%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self149540%_ '2 '#f '#f))))
            (let ((__tmp151933
                   (lambda ()
                     (let ((_%self140400149564%_ _%l149560%_))
                       (declare (not safe))
                       (let ((_%object149567149572%_
                              (##unchecked-structure-ref
                               _%self140400149564%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method149568149573%_
                              (##unchecked-structure-ref
                               _%self140400149564%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method149568149573%_ _%object149567149572%_)))))
                  (__tmp151932
                   (lambda ()
                     (let* ((_%self138890149576%_ _%h149558%_)
                            (_%proc149579%_ _%proc149549%_))
                       (declare (not safe))
                       (let ((_%object149582149587%_
                              (##unchecked-structure-ref
                               _%self138890149576%_
                               '1
                               '#f
                               'for-each))
                             (_%method149583149588%_
                              (##unchecked-structure-ref
                               _%self138890149576%_
                               '5
                               '#f
                               'for-each)))
                         (_%method149583149588%_
                          _%object149582149587%_
                          _%proc149579%_)))))
                  (__tmp151931
                   (lambda ()
                     (let ((_%self140691149591%_ _%l149560%_))
                       (declare (not safe))
                       (let ((_%object149594149599%_
                              (##unchecked-structure-ref
                               _%self140691149591%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method149595149600%_
                              (##unchecked-structure-ref
                               _%self140691149591%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method149595149600%_ _%object149594149599%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp151933 __tmp151932 __tmp151931))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each141956%_
       '#f))
    (define _%locked-hash-table::HashTable::length141958%_
      (lambda (_%self149350%_)
        (let ((_%self149354%_ _%self149350%_))
          (let ((_%h149364%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self149354%_ '1 '#f '#f)))
                (_%l149366%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self149354%_ '2 '#f '#f))))
            ((lambda (_%g149368149370%_)
               (let ((_%val149373%_ _%g149368149370%_))
                 (if (fixnum? _%val149373%_)
                     _%val149373%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val149373%_)
                       '#!void))))
             (let ((__tmp151936
                    (lambda ()
                      (let ((_%self140400149377%_ _%l149366%_))
                        (declare (not safe))
                        (let ((_%object149380149385%_
                               (##unchecked-structure-ref
                                _%self140400149377%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method149381149386%_
                               (##unchecked-structure-ref
                                _%self140400149377%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method149381149386%_ _%object149380149385%_)))))
                   (__tmp151935
                    (lambda ()
                      (let ((_%self139201149389%_ _%h149364%_))
                        (declare (not safe))
                        (let ((_%object149392149397%_
                               (##unchecked-structure-ref
                                _%self139201149389%_
                                '1
                                '#f
                                'length))
                              (_%method149393149398%_
                               (##unchecked-structure-ref
                                _%self139201149389%_
                                '6
                                '#f
                                'length)))
                          (_%method149393149398%_ _%object149392149397%_)))))
                   (__tmp151934
                    (lambda ()
                      (let ((_%self140691149401%_ _%l149366%_))
                        (declare (not safe))
                        (let ((_%object149404149409%_
                               (##unchecked-structure-ref
                                _%self140691149401%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method149405149410%_
                               (##unchecked-structure-ref
                                _%self140691149401%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method149405149410%_ _%object149404149409%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp151936 __tmp151935 __tmp151934)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length141958%_
       '#f))
    (define _%locked-hash-table::HashTable::copy141960%_
      (lambda (_%self149169%_)
        (let ((_%self149173%_ _%self149169%_))
          (let ((_%h149183%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self149173%_ '1 '#f '#f)))
                (_%l149185%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self149173%_ '2 '#f '#f))))
            (let ((_%$obj149224%_
                   (let ((__tmp151939
                          (lambda ()
                            (let ((_%self140400149189%_ _%l149185%_))
                              (declare (not safe))
                              (let ((_%object149192149197%_
                                     (##unchecked-structure-ref
                                      _%self140400149189%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method149193149198%_
                                     (##unchecked-structure-ref
                                      _%self140400149189%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method149193149198%_
                                 _%object149192149197%_)))))
                         (__tmp151938
                          (lambda ()
                            (let ((_%self138303149201%_ _%h149183%_))
                              (declare (not safe))
                              (let ((_%object149204149209%_
                                     (##unchecked-structure-ref
                                      _%self138303149201%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method149205149210%_
                                     (##unchecked-structure-ref
                                      _%self138303149201%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method149205149210%_
                                 _%object149204149209%_)))))
                         (__tmp151937
                          (lambda ()
                            (let ((_%self140691149213%_ _%l149185%_))
                              (declare (not safe))
                              (let ((_%object149216149221%_
                                     (##unchecked-structure-ref
                                      _%self140691149213%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method149217149222%_
                                     (##unchecked-structure-ref
                                      _%self140691149213%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method149217149222%_
                                 _%object149216149221%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp151939 __tmp151938 __tmp151937))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj149224%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj149224%_)))
                       '#t)
                  _%$obj149224%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj149224%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy141960%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!141962%_
      (lambda (_%self148991%_)
        (let ((_%self148995%_ _%self148991%_))
          (let ((_%h149005%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self148995%_ '1 '#f '#f)))
                (_%l149007%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self148995%_ '2 '#f '#f))))
            (let ((__tmp151942
                   (lambda ()
                     (let ((_%self140982149011%_ _%l149007%_))
                       (declare (not safe))
                       (let ((_%object149014149019%_
                              (##unchecked-structure-ref
                               _%self140982149011%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method149015149020%_
                              (##unchecked-structure-ref
                               _%self140982149011%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method149015149020%_ _%object149014149019%_)))))
                  (__tmp151941
                   (lambda ()
                     (let ((_%self138011149023%_ _%h149005%_))
                       (declare (not safe))
                       (let ((_%object149026149031%_
                              (##unchecked-structure-ref
                               _%self138011149023%_
                               '1
                               '#f
                               'clear!))
                             (_%method149027149032%_
                              (##unchecked-structure-ref
                               _%self138011149023%_
                               '2
                               '#f
                               'clear!)))
                         (_%method149027149032%_ _%object149026149031%_)))))
                  (__tmp151940
                   (lambda ()
                     (let ((_%self141273149035%_ _%l149007%_))
                       (declare (not safe))
                       (let ((_%object149038149043%_
                              (##unchecked-structure-ref
                               _%self141273149035%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method149039149044%_
                              (##unchecked-structure-ref
                               _%self141273149035%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method149039149044%_ _%object149038149043%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp151942 __tmp151941 __tmp151940))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!141962%_
       '#f))
    (let ((__tmp151943 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp151943 'Locker::read-lock! mutex-lock!))
    (let ((__tmp151944 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp151944 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp151945 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp151945 'Locker::write-lock! mutex-lock!))
    (let ((__tmp151946 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp151946 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref142173%_
      (lambda (_%self148809%_ _%key148810%_ _%default148811%_)
        (let* ((_%self148814%_ _%self148809%_)
               (_%key148823%_ _%key148810%_)
               (_%default148831%_ _%default148811%_))
          (declare (not safe))
          (let ((_%h148842%_
                 (##unchecked-structure-ref _%self148814%_ '1 '#f '#f))
                (_%key?148844%_
                 (##unchecked-structure-ref _%self148814%_ '2 '#f '#f)))
            (if ((lambda (_%key?148847%_ _%key148848%_ _%default148849%_)
                   (_%key?148847%_ _%key148848%_))
                 _%key?148844%_
                 _%key148823%_
                 _%default148831%_)
                (let* ((_%self139495148851%_ _%h148842%_)
                       (_%key148854%_ _%key148823%_)
                       (_%default148857%_ _%default148831%_))
                  (declare (not safe))
                  (let ((_%object148860148865%_
                         (##unchecked-structure-ref
                          _%self139495148851%_
                          '1
                          '#f
                          'ref))
                        (_%method148861148866%_
                         (##unchecked-structure-ref
                          _%self139495148851%_
                          '7
                          '#f
                          'ref)))
                    (_%method148861148866%_
                     _%object148860148865%_
                     _%key148854%_
                     _%default148857%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key148823%_ (cons _%default148831%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref142173%_
       '#f))
    (define _%checked-hash-table::HashTable::set!142175%_
      (lambda (_%self148627%_ _%key148628%_ _%value148629%_)
        (let* ((_%self148632%_ _%self148627%_)
               (_%key148641%_ _%key148628%_)
               (_%value148649%_ _%value148629%_))
          (declare (not safe))
          (let ((_%h148660%_
                 (##unchecked-structure-ref _%self148632%_ '1 '#f '#f))
                (_%key?148662%_
                 (##unchecked-structure-ref _%self148632%_ '2 '#f '#f)))
            (if ((lambda (_%key?148665%_ _%key148666%_ _%value148667%_)
                   (_%key?148665%_ _%key148666%_))
                 _%key?148662%_
                 _%key148641%_
                 _%value148649%_)
                (let* ((_%self139790148669%_ _%h148660%_)
                       (_%key148672%_ _%key148641%_)
                       (_%value148675%_ _%value148649%_))
                  (declare (not safe))
                  (let ((_%object148678148683%_
                         (##unchecked-structure-ref
                          _%self139790148669%_
                          '1
                          '#f
                          'set!))
                        (_%method148679148684%_
                         (##unchecked-structure-ref
                          _%self139790148669%_
                          '8
                          '#f
                          'set!)))
                    (_%method148679148684%_
                     _%object148678148683%_
                     _%key148672%_
                     _%value148675%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key148641%_ (cons _%value148649%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!142175%_
       '#f))
    (define _%checked-hash-table::HashTable::update!142177%_
      (lambda (_%self148432%_ _%key148433%_ _%update148434%_ _%default148435%_)
        (let* ((_%self148438%_ _%self148432%_)
               (_%key148447%_ _%key148433%_)
               (_%update148455%_ _%update148434%_)
               (_%default148463%_ _%default148435%_))
          (declare (not safe))
          (let ((_%h148474%_
                 (##unchecked-structure-ref _%self148438%_ '1 '#f '#f))
                (_%key?148476%_
                 (##unchecked-structure-ref _%self148438%_ '2 '#f '#f)))
            (if ((lambda (_%key?148479%_
                          _%key148480%_
                          _%update148481%_
                          _%default148482%_)
                   (_%key?148479%_ _%key148480%_))
                 _%key?148476%_
                 _%key148447%_
                 _%update148455%_
                 _%default148463%_)
                (let* ((_%self140085148484%_ _%h148474%_)
                       (_%key148487%_ _%key148447%_)
                       (_%proc148490%_ _%update148455%_)
                       (_%default148493%_ _%default148463%_))
                  (declare (not safe))
                  (let ((_%object148496148501%_
                         (##unchecked-structure-ref
                          _%self140085148484%_
                          '1
                          '#f
                          'update!))
                        (_%method148497148502%_
                         (##unchecked-structure-ref
                          _%self140085148484%_
                          '9
                          '#f
                          'update!)))
                    (_%method148497148502%_
                     _%object148496148501%_
                     _%key148487%_
                     _%proc148490%_
                     _%default148493%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key148447%_
                         (cons _%update148455%_ (cons _%default148463%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!142177%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!142179%_
      (lambda (_%self148263%_ _%key148264%_)
        (let* ((_%self148267%_ _%self148263%_) (_%key148276%_ _%key148264%_))
          (declare (not safe))
          (let ((_%h148287%_
                 (##unchecked-structure-ref _%self148267%_ '1 '#f '#f))
                (_%key?148289%_
                 (##unchecked-structure-ref _%self148267%_ '2 '#f '#f)))
            (if ((lambda (_%key?148292%_ _%key148293%_)
                   (_%key?148292%_ _%key148293%_))
                 _%key?148289%_
                 _%key148276%_)
                (let* ((_%self138597148295%_ _%h148287%_)
                       (_%key148298%_ _%key148276%_))
                  (declare (not safe))
                  (let ((_%object148301148306%_
                         (##unchecked-structure-ref
                          _%self138597148295%_
                          '1
                          '#f
                          'delete!))
                        (_%method148302148307%_
                         (##unchecked-structure-ref
                          _%self138597148295%_
                          '4
                          '#f
                          'delete!)))
                    (_%method148302148307%_
                     _%object148301148306%_
                     _%key148298%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key148276%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!142179%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each142181%_
      (lambda (_%self148094%_ _%proc148095%_)
        (let* ((_%self148098%_ _%self148094%_) (_%proc148107%_ _%proc148095%_))
          (declare (not safe))
          (let ((_%h148118%_
                 (##unchecked-structure-ref _%self148098%_ '1 '#f '#f))
                (_%key?148120%_
                 (##unchecked-structure-ref _%self148098%_ '2 '#f '#f)))
            (if ((lambda (_%key?148123%_ _%proc148124%_) '#t)
                 _%key?148120%_
                 _%proc148107%_)
                (let* ((_%self138890148126%_ _%h148118%_)
                       (_%proc148129%_ _%proc148107%_))
                  (declare (not safe))
                  (let ((_%object148132148137%_
                         (##unchecked-structure-ref
                          _%self138890148126%_
                          '1
                          '#f
                          'for-each))
                        (_%method148133148138%_
                         (##unchecked-structure-ref
                          _%self138890148126%_
                          '5
                          '#f
                          'for-each)))
                    (_%method148133148138%_
                     _%object148132148137%_
                     _%proc148129%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc148107%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each142181%_
       '#f))
    (define _%checked-hash-table::HashTable::length142183%_
      (lambda (_%self147940%_)
        (let ((_%self147943%_ _%self147940%_))
          (declare (not safe))
          (let ((_%h147955%_
                 (##unchecked-structure-ref _%self147943%_ '1 '#f '#f))
                (_%key?147957%_
                 (##unchecked-structure-ref _%self147943%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self139201147960%_ _%h147955%_))
                  (declare (not safe))
                  (let ((_%object147963147968%_
                         (##unchecked-structure-ref
                          _%self139201147960%_
                          '1
                          '#f
                          'length))
                        (_%method147964147969%_
                         (##unchecked-structure-ref
                          _%self139201147960%_
                          '6
                          '#f
                          'length)))
                    (_%method147964147969%_ _%object147963147968%_)))
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
       _%checked-hash-table::HashTable::length142183%_
       '#f))
    (define _%checked-hash-table::HashTable::copy142185%_
      (lambda (_%self147786%_)
        (let ((_%self147789%_ _%self147786%_))
          (declare (not safe))
          (let ((_%h147801%_
                 (##unchecked-structure-ref _%self147789%_ '1 '#f '#f))
                (_%key?147803%_
                 (##unchecked-structure-ref _%self147789%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self138303147806%_ _%h147801%_))
                  (declare (not safe))
                  (let ((_%object147809147814%_
                         (##unchecked-structure-ref
                          _%self138303147806%_
                          '1
                          '#f
                          'copy))
                        (_%method147810147815%_
                         (##unchecked-structure-ref
                          _%self138303147806%_
                          '3
                          '#f
                          'copy)))
                    (_%method147810147815%_ _%object147809147814%_)))
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
       _%checked-hash-table::HashTable::copy142185%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!142187%_
      (lambda (_%self147632%_)
        (let ((_%self147635%_ _%self147632%_))
          (declare (not safe))
          (let ((_%h147647%_
                 (##unchecked-structure-ref _%self147635%_ '1 '#f '#f))
                (_%key?147649%_
                 (##unchecked-structure-ref _%self147635%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self138011147652%_ _%h147647%_))
                  (declare (not safe))
                  (let ((_%object147655147660%_
                         (##unchecked-structure-ref
                          _%self138011147652%_
                          '1
                          '#f
                          'clear!))
                        (_%method147656147661%_
                         (##unchecked-structure-ref
                          _%self138011147652%_
                          '2
                          '#f
                          'clear!)))
                    (_%method147656147661%_ _%object147655147660%_)))
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
       _%checked-hash-table::HashTable::clear!142187%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table147502%_
               _%count147503%_
               _%free147504%_
               _%hash147505%_
               _%test147506%_
               _%seed147507%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table147502%_
           _%count147503%_
           _%free147504%_
           _%hash147505%_
           _%test147506%_
           _%seed147507%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords147018%_
               _%size-hint147008147019%_
               _%seed147009147020%_
               _%test147010147021%_
               _%hash147011147022%_
               _%lock147012147023%_
               _%check147013147024%_
               _%weak-keys147014147025%_
               _%weak-values147015147026%_)
        (let* ((_%size-hint147028%_
                (if (eq? _%size-hint147008147019%_ absent-value)
                    '#f
                    _%size-hint147008147019%_))
               (_%seed147030%_
                (if (eq? _%seed147009147020%_ absent-value)
                    '#f
                    _%seed147009147020%_))
               (_%test147032%_
                (if (eq? _%test147010147021%_ absent-value)
                    equal?
                    _%test147010147021%_))
               (_%hash147034%_
                (if (eq? _%hash147011147022%_ absent-value)
                    '#f
                    _%hash147011147022%_))
               (_%lock147036%_
                (if (eq? _%lock147012147023%_ absent-value)
                    '#f
                    _%lock147012147023%_))
               (_%check147038%_
                (if (eq? _%check147013147024%_ absent-value)
                    '#f
                    _%check147013147024%_))
               (_%weak-keys147040%_
                (if (eq? _%weak-keys147014147025%_ absent-value)
                    '#f
                    _%weak-keys147014147025%_))
               (_%weak-values147042%_
                (if (eq? _%weak-values147015147026%_ absent-value)
                    '#f
                    _%weak-values147015147026%_)))
          (letrec ((_%table-seed147045%_
                    (lambda ()
                      (if (fixnum? _%seed147030%_)
                          _%seed147030%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock147189%_
                    (lambda (_%ht147470%_)
                      (let ((_%ht147473%_ _%ht147470%_))
                        (if _%lock147036%_
                            (let ((_%$obj147485%_
                                   (let ((__tmp151947
                                          (let ((_%$obj147482%_
                                                 _%lock147036%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj147482%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj147482%_)))
                                                     '#t)
                                                _%$obj147482%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj147482%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht147473%_
                                      __tmp151947))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj147485%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj147485%_)))
                                       '#t)
                                  _%$obj147485%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj147485%_))))
                            _%ht147473%_))))
                   (_%wrap-lock147190%_
                    (lambda (_%ht147458%_)
                      (let ((_%ht147461%_ _%ht147458%_))
                        (_%__wrap-lock147189%_ _%ht147461%_))))
                   (_%__wrap-checked147312%_
                    (lambda (_%ht147442%_ _%implicit147443%_)
                      (let ((_%ht147446%_ _%ht147442%_))
                        (if _%check147038%_
                            (let ((_%$obj147455%_
                                   (let ((__tmp151948
                                          (if (procedure? _%check147038%_)
                                              _%check147038%_
                                              _%implicit147443%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht147446%_
                                      __tmp151948))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj147455%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj147455%_)))
                                       '#t)
                                  _%$obj147455%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj147455%_))))
                            _%ht147446%_))))
                   (_%wrap-checked147313%_
                    (lambda (_%ht147429%_ _%implicit147430%_)
                      (let ((_%ht147433%_ _%ht147429%_))
                        (_%__wrap-checked147312%_
                         _%ht147433%_
                         _%implicit147430%_))))
                   (_%make147314%_
                    (lambda (_%kons147413%_
                             _%key?147414%_
                             _%hash147415%_
                             _%test147416%_)
                      (let* ((_%size147419%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint147028%_)))
                             (_%table147421%_
                              (let ((__tmp151949 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size147419%_ __tmp151949)))
                             (_%ht147426%_
                              (let ((_%$obj147423%_
                                     (_%kons147413%_
                                      _%table147421%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size147419%_ '2))
                                      _%hash147415%_
                                      _%test147416%_
                                      (_%table-seed147045%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj147423%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj147423%_)))
                                         '#t)
                                    _%$obj147423%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj147423%_))))))
                        (_%__wrap-checked147312%_
                         (_%__wrap-lock147189%_ _%ht147426%_)
                         _%key?147414%_))))
                   (_%make-gc-hash-table147315%_
                    (lambda ()
                      (let ((_%ht147411%_
                             (let ((_%$obj147408%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint147028%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj147408%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj147408%_)))
                                        '#t)
                                   _%$obj147408%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj147408%_))))))
                        (_%__wrap-checked147312%_
                         (_%__wrap-lock147189%_ _%ht147411%_)
                         true))))
                   (_%make-gambit-table147316%_
                    (lambda ()
                      (let* ((_%size147385%_
                              (let ((_%$e147382%_ _%size-hint147028%_))
                                (if _%$e147382%_
                                    _%$e147382%_
                                    (macro-absent-obj))))
                             (_%test147390%_
                              (let ((_%$e147387%_ _%test147032%_))
                                (if _%$e147387%_ _%$e147387%_ equal?)))
                             (_%hash147398%_
                              (let ((_%$e147392%_ _%hash147034%_))
                                (if _%$e147392%_
                                    _%$e147392%_
                                    (if (eq? _%test147390%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test147390%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht147403%_
                              (let ((_%$obj147400%_
                                     (make-table
                                      'size:
                                      _%size147385%_
                                      'test:
                                      _%test147390%_
                                      'hash:
                                      _%hash147398%_
                                      'weak-keys:
                                      _%weak-keys147040%_
                                      'weak-values:
                                      _%weak-values147042%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj147400%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj147400%_)))
                                         '#t)
                                    _%$obj147400%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj147400%_))))))
                        (_%__wrap-checked147312%_
                         (_%__wrap-lock147189%_ _%ht147403%_)
                         true)))))
            (if (or _%weak-keys147040%_ _%weak-values147042%_)
                (_%make-gambit-table147316%_)
                (if (and (or (eq? _%test147032%_ eq?)
                             (eq? _%test147032%_ ##eq?))
                         (or (not _%hash147034%_)
                             (eq? _%hash147034%_ eq?-hash)
                             (eq? _%hash147034%_ eq-hash))
                         (not _%seed147030%_))
                    (_%make-gc-hash-table147315%_)
                    (if (and (or (eq? _%test147032%_ eq?)
                                 (eq? _%test147032%_ ##eq?))
                             (or (not _%hash147034%_)
                                 (eq? _%hash147034%_ eq?-hash)
                                 (eq? _%hash147034%_ eq-hash)))
                        (_%make147314%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test147032%_ eqv?)
                                     (eq? _%test147032%_ ##eqv?))
                                 (or (not _%hash147034%_)
                                     (eq? _%hash147034%_ eqv?-hash)
                                     (eq? _%hash147034%_ eqv-hash)))
                            (_%make147314%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test147032%_ eq?)
                                         (eq? _%test147032%_ ##eq?))
                                     (or (eq? _%hash147034%_ symbolic-hash)
                                         (eq? _%hash147034%_ ##symbol-hash)))
                                (_%make147314%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test147032%_ eq?)
                                             (eq? _%test147032%_ ##eq?))
                                         (eq? _%hash147034%_ immediate-hash))
                                    (_%make147314%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test147032%_ equal?)
                                                 (eq? _%test147032%_ ##equal?)
                                                 (eq? _%test147032%_ string=?)
                                                 (eq? _%test147032%_
                                                      ##string=?))
                                             (or (eq? _%hash147034%_
                                                      string-hash)
                                                 (eq? _%hash147034%_
                                                      ##string=?-hash)))
                                        (_%make147314%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test147032%_ equal?)
                                                 (not _%hash147034%_))
                                            (_%make147314%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test147032%_)
                                                (if (procedure? _%hash147034%_)
                                                    (_%make147314%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash147034%_
                                                     _%test147032%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash147034%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test147032%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords147492%_ . _%args147493%_)
        (apply make-hash-table__%
               _%@@keywords147492%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords147492%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords147492%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords147492%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords147492%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords147492%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147492%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147492%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147492%_
                  'weak-values:
                  absent-value))
               _%args147493%_)))
    (define make-hash-table
      (lambda _%args147016147499%_
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
               _%args147016147499%_)))
    (define make-hash-table-eq
      (lambda _%args147005%_
        (apply make-hash-table 'test: eq? _%args147005%_)))
    (define make-hash-table-eqv
      (lambda _%args147003%_
        (apply make-hash-table 'test: eqv? _%args147003%_)))
    (define make-hash-table-symbolic
      (lambda _%args147001%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args147001%_)))
    (define make-hash-table-string
      (lambda _%args146999%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args146999%_)))
    (define make-hash-table-immediate
      (lambda _%args146997%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args146997%_)))
    (define list->hash-table
      (lambda (_%lst146994%_ . _%args146995%_)
        (list->hash-table!
         _%lst146994%_
         (apply make-hash-table
                'size:
                (length _%lst146994%_)
                _%args146995%_))))
    (define list->hash-table-eq
      (lambda (_%lst146991%_ . _%args146992%_)
        (list->hash-table!
         _%lst146991%_
         (apply make-hash-table-eq
                'size:
                (length _%lst146991%_)
                _%args146992%_))))
    (define list->hash-table-eqv
      (lambda (_%lst146988%_ . _%args146989%_)
        (list->hash-table!
         _%lst146988%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst146988%_)
                _%args146989%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst146985%_ . _%args146986%_)
        (list->hash-table!
         _%lst146985%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst146985%_)
                _%args146986%_))))
    (define list->hash-table-string
      (lambda (_%lst146982%_ . _%args146983%_)
        (list->hash-table!
         _%lst146982%_
         (apply make-hash-table-string
                'size:
                (length _%lst146982%_)
                _%args146983%_))))
    (define list->hash-table-immediate
      (lambda (_%lst146979%_ . _%args146980%_)
        (list->hash-table!
         _%lst146979%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst146979%_)
                _%args146980%_))))
    (define list->hash-table!
      (lambda (_%lst146930%_ _%h146931%_)
        (for-each
         (lambda (_%el146933%_)
           (let* ((_%el146934146941%_ _%el146933%_)
                  (_%E146936146944%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el146934146941%_
                              '([k . v])))
                     '#!void))
                  (_%K146937146967%_
                   (lambda (_%v146947%_ _%k146948%_)
                     (let* ((_%self139790146950%_ _%h146931%_)
                            (_%key146953%_ _%k146948%_)
                            (_%value146956%_ _%v146947%_))
                       (declare (not safe))
                       (let ((_%object146959146964%_
                              (##unchecked-structure-ref
                               _%self139790146950%_
                               '1
                               '#f
                               'set!))
                             (_%method146960146965%_
                              (##unchecked-structure-ref
                               _%self139790146950%_
                               '8
                               '#f
                               'set!)))
                         (_%method146960146965%_
                          _%object146959146964%_
                          _%key146953%_
                          _%value146956%_))))))
             (if (pair? _%el146934146941%_)
                 (let ((_%hd146938146970%_
                        (let ()
                          (declare (not safe))
                          (##car _%el146934146941%_)))
                       (_%tl146939146972%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el146934146941%_))))
                   (let* ((_%k146975%_ _%hd146938146970%_)
                          (_%v146977%_ _%tl146939146972%_))
                     (_%K146937146967%_ _%v146977%_ _%k146975%_)))
                 (_%E146936146944%_))))
         _%lst146930%_)
        _%h146931%_))
    (define plist->hash-table
      (lambda (_%lst146927%_ . _%args146928%_)
        (plist->hash-table!
         _%lst146927%_
         (apply make-hash-table
                'size:
                (length _%lst146927%_)
                _%args146928%_))))
    (define plist->hash-table-eq
      (lambda (_%lst146924%_ . _%args146925%_)
        (plist->hash-table!
         _%lst146924%_
         (apply make-hash-table-eq
                'size:
                (length _%lst146924%_)
                _%args146925%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst146921%_ . _%args146922%_)
        (plist->hash-table!
         _%lst146921%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst146921%_)
                _%args146922%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst146918%_ . _%args146919%_)
        (plist->hash-table!
         _%lst146918%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst146918%_)
                _%args146919%_))))
    (define plist->hash-table-string
      (lambda (_%lst146915%_ . _%args146916%_)
        (plist->hash-table!
         _%lst146915%_
         (apply make-hash-table-string
                'size:
                (length _%lst146915%_)
                _%args146916%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst146912%_ . _%args146913%_)
        (plist->hash-table!
         _%lst146912%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst146912%_)
                _%args146913%_))))
    (define plist->hash-table!
      (lambda (_%lst146835%_ _%h146836%_)
        (let _%loop146838%_ ((_%rest146840%_ _%lst146835%_))
          (let* ((_%rest146841146853%_ _%rest146840%_)
                 (_%else146844146861%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst146835%_)))))
            (let ((_%K146847146893%_
                   (lambda (_%rest146872%_ _%val146873%_ _%key146874%_)
                     (let* ((_%self139790146876%_ _%h146836%_)
                            (_%key146879%_ _%key146874%_)
                            (_%value146882%_ _%val146873%_))
                       (declare (not safe))
                       (let ((_%object146885146890%_
                              (##unchecked-structure-ref
                               _%self139790146876%_
                               '1
                               '#f
                               'set!))
                             (_%method146886146891%_
                              (##unchecked-structure-ref
                               _%self139790146876%_
                               '8
                               '#f
                               'set!)))
                         (_%method146886146891%_
                          _%object146885146890%_
                          _%key146879%_
                          _%value146882%_)))
                     (_%loop146838%_ _%rest146872%_)))
                  (_%K146846146866%_ (lambda () _%h146836%_)))
              (let ((_%try-match146843146869%_
                     (lambda ()
                       (if (null? _%rest146841146853%_)
                           (_%K146846146866%_)
                           (_%else146844146861%_)))))
                (if (pair? _%rest146841146853%_)
                    (let ((_%tl146849146898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest146841146853%_)))
                          (_%hd146848146896%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest146841146853%_))))
                      (if (pair? _%tl146849146898%_)
                          (let ((_%tl146851146905%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl146849146898%_)))
                                (_%hd146850146903%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl146849146898%_))))
                            (let ((_%key146901%_ _%hd146848146896%_)
                                  (_%val146908%_ _%hd146850146903%_)
                                  (_%rest146910%_ _%tl146851146905%_))
                              (_%K146847146893%_
                               _%rest146910%_
                               _%val146908%_
                               _%key146901%_)))
                          (_%else146844146861%_)))
                    (_%try-match146843146869%_))))))))
    (define __hash-length
      (lambda (_%h146784%_)
        (let* ((_%h146787%_ _%h146784%_)
               (_%self139202146796%_ _%h146787%_)
               (_%self139202146803%_
                (let ((_%$obj146800%_ _%self139202146796%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146800%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146800%_)))
                           '#t)
                      _%$obj146800%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146800%_)))))
               (_%self139202146805%_ _%self139202146803%_))
          (if __DEBUG
              (let ((_%val146825%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object146817146822%_
                              (##unchecked-structure-ref
                               _%self139202146805%_
                               '1
                               '#f
                               'length))
                             (_%method146818146823%_
                              (##unchecked-structure-ref
                               _%self139202146805%_
                               '6
                               '#f
                               'length)))
                         (_%method146818146823%_ _%object146817146822%_)))))
                (if (fixnum? _%val146825%_)
                    _%val146825%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val146825%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object146827146832%_
                       (##unchecked-structure-ref
                        _%self139202146805%_
                        '1
                        '#f
                        'length))
                      (_%method146828146833%_
                       (##unchecked-structure-ref
                        _%self139202146805%_
                        '6
                        '#f
                        'length)))
                  (_%method146828146833%_ _%object146827146832%_)))))))
    (define hash-length
      (lambda (_%h142462%_)
        (let* ((_%h142468%_
                (let ((_%$obj142465%_ _%h142462%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142465%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142465%_)))
                           '#t)
                      _%$obj142465%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142465%_)))))
               (_%h142470%_ _%h142468%_))
          (__hash-length _%h142470%_))))
    (define __hash-ref__%
      (lambda (_%h146712%_ _%key146713%_ _%default146714%_)
        (let* ((_%h146717%_ _%h146712%_)
               (_%result146770%_
                (let* ((_%self139496146726%_ _%h146717%_)
                       (_%key146729%_ _%key146713%_)
                       (_%default146732%_ _%default146714%_)
                       (_%self139496146739%_
                        (let ((_%$obj146736%_ _%self139496146726%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj146736%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj146736%_)))
                                   '#t)
                              _%$obj146736%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj146736%_)))))
                       (_%self139496146741%_ _%self139496146739%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object146755146760%_
                               (##unchecked-structure-ref
                                _%self139496146741%_
                                '1
                                '#f
                                'ref))
                              (_%method146756146761%_
                               (##unchecked-structure-ref
                                _%self139496146741%_
                                '7
                                '#f
                                'ref)))
                          (_%method146756146761%_
                           _%object146755146760%_
                           _%key146729%_
                           _%default146732%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object146762146767%_
                               (##unchecked-structure-ref
                                _%self139496146741%_
                                '1
                                '#f
                                'ref))
                              (_%method146763146768%_
                               (##unchecked-structure-ref
                                _%self139496146741%_
                                '7
                                '#f
                                'ref)))
                          (_%method146763146768%_
                           _%object146762146767%_
                           _%key146729%_
                           _%default146732%_)))))))
          (if (eq? _%result146770%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h146717%_
               'key:
               _%key146713%_)
              _%result146770%_))))
    (define __hash-ref__0
      (lambda (_%h146775%_ _%key146776%_)
        (let ((_%default146778%_ (macro-absent-obj)))
          (__hash-ref__% _%h146775%_ _%key146776%_ _%default146778%_))))
    (define __hash-ref
      (lambda _g151950_
        (let ((_g151951_ (let () (declare (not safe)) (##length _g151950_))))
          (cond ((let () (declare (not safe)) (##fx= _g151951_ 2))
                 (apply __hash-ref__0 _g151950_))
                ((let () (declare (not safe)) (##fx= _g151951_ 3))
                 (apply __hash-ref__% _g151950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g151950_))))))
    (define hash-ref__%
      (lambda (_%h142601%_ _%key142602%_ _%default142603%_)
        (let* ((_%h142609%_
                (let ((_%$obj142606%_ _%h142601%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142606%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142606%_)))
                           '#t)
                      _%$obj142606%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142606%_)))))
               (_%h142611%_ _%h142609%_))
          (__hash-ref__% _%h142611%_ _%key142602%_ _%default142603%_))))
    (define hash-ref__0
      (lambda (_%h142624%_ _%key142625%_)
        (let ((_%default142627%_ (macro-absent-obj)))
          (hash-ref__% _%h142624%_ _%key142625%_ _%default142627%_))))
    (define hash-ref
      (lambda _g151952_
        (let ((_g151953_ (let () (declare (not safe)) (##length _g151952_))))
          (cond ((let () (declare (not safe)) (##fx= _g151953_ 2))
                 (apply hash-ref__0 _g151952_))
                ((let () (declare (not safe)) (##fx= _g151953_ 3))
                 (apply hash-ref__% _g151952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g151952_))))))
    (define __hash-get
      (lambda (_%h146654%_ _%key146655%_)
        (let* ((_%h146658%_ _%h146654%_)
               (_%self139496146667%_ _%h146658%_)
               (_%key146670%_ _%key146655%_)
               (_%default146673%_ '#f)
               (_%self139496146680%_
                (let ((_%$obj146677%_ _%self139496146667%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146677%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146677%_)))
                           '#t)
                      _%$obj146677%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146677%_)))))
               (_%self139496146682%_ _%self139496146680%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146696146701%_
                       (##unchecked-structure-ref
                        _%self139496146682%_
                        '1
                        '#f
                        'ref))
                      (_%method146697146702%_
                       (##unchecked-structure-ref
                        _%self139496146682%_
                        '7
                        '#f
                        'ref)))
                  (_%method146697146702%_
                   _%object146696146701%_
                   _%key146670%_
                   _%default146673%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146703146708%_
                       (##unchecked-structure-ref
                        _%self139496146682%_
                        '1
                        '#f
                        'ref))
                      (_%method146704146709%_
                       (##unchecked-structure-ref
                        _%self139496146682%_
                        '7
                        '#f
                        'ref)))
                  (_%method146704146709%_
                   _%object146703146708%_
                   _%key146670%_
                   _%default146673%_)))))))
    (define hash-get
      (lambda (_%h142753%_ _%key142754%_)
        (let* ((_%h142760%_
                (let ((_%$obj142757%_ _%h142753%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142757%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142757%_)))
                           '#t)
                      _%$obj142757%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142757%_)))))
               (_%h142762%_ _%h142760%_))
          (__hash-get _%h142762%_ _%key142754%_))))
    (define __hash-put!
      (lambda (_%h146596%_ _%key146597%_ _%value146598%_)
        (let* ((_%h146601%_ _%h146596%_)
               (_%self139791146610%_ _%h146601%_)
               (_%key146613%_ _%key146597%_)
               (_%value146616%_ _%value146598%_)
               (_%self139791146623%_
                (let ((_%$obj146620%_ _%self139791146610%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146620%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146620%_)))
                           '#t)
                      _%$obj146620%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146620%_)))))
               (_%self139791146625%_ _%self139791146623%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146639146644%_
                       (##unchecked-structure-ref
                        _%self139791146625%_
                        '1
                        '#f
                        'set!))
                      (_%method146640146645%_
                       (##unchecked-structure-ref
                        _%self139791146625%_
                        '8
                        '#f
                        'set!)))
                  (_%method146640146645%_
                   _%object146639146644%_
                   _%key146613%_
                   _%value146616%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146646146651%_
                       (##unchecked-structure-ref
                        _%self139791146625%_
                        '1
                        '#f
                        'set!))
                      (_%method146647146652%_
                       (##unchecked-structure-ref
                        _%self139791146625%_
                        '8
                        '#f
                        'set!)))
                  (_%method146647146652%_
                   _%object146646146651%_
                   _%key146613%_
                   _%value146616%_)))))))
    (define hash-put!
      (lambda (_%h142892%_ _%key142893%_ _%value142894%_)
        (let* ((_%h142900%_
                (let ((_%$obj142897%_ _%h142892%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142897%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142897%_)))
                           '#t)
                      _%$obj142897%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142897%_)))))
               (_%h142902%_ _%h142900%_))
          (__hash-put! _%h142902%_ _%key142893%_ _%value142894%_))))
    (define __hash-update!__%
      (lambda (_%h146509%_ _%key146510%_ _%update146511%_ _%default146512%_)
        (let* ((_%h146515%_ _%h146509%_)
               (_%self140086146524%_ _%h146515%_)
               (_%key146527%_ _%key146510%_)
               (_%proc146530%_ _%update146511%_)
               (_%default146533%_ _%default146512%_)
               (_%self140086146540%_
                (let ((_%$obj146537%_ _%self140086146524%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146537%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146537%_)))
                           '#t)
                      _%$obj146537%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146537%_)))))
               (_%self140086146542%_ _%self140086146540%_))
          (if (procedure? _%proc146530%_)
              (let ((_%proc146558%_ _%proc146530%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object146567146572%_
                             (##unchecked-structure-ref
                              _%self140086146542%_
                              '1
                              '#f
                              'update!))
                            (_%method146568146573%_
                             (##unchecked-structure-ref
                              _%self140086146542%_
                              '9
                              '#f
                              'update!)))
                        (_%method146568146573%_
                         _%object146567146572%_
                         _%key146527%_
                         _%proc146558%_
                         _%default146533%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object146574146579%_
                             (##unchecked-structure-ref
                              _%self140086146542%_
                              '1
                              '#f
                              'update!))
                            (_%method146575146580%_
                             (##unchecked-structure-ref
                              _%self140086146542%_
                              '9
                              '#f
                              'update!)))
                        (_%method146575146580%_
                         _%object146574146579%_
                         _%key146527%_
                         _%proc146558%_
                         _%default146533%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc146530%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h146585%_ _%key146586%_ _%update146587%_)
        (let ((_%default146589%_ '#!void))
          (__hash-update!__%
           _%h146585%_
           _%key146586%_
           _%update146587%_
           _%default146589%_))))
    (define __hash-update!
      (lambda _g151954_
        (let ((_g151955_ (let () (declare (not safe)) (##length _g151954_))))
          (cond ((let () (declare (not safe)) (##fx= _g151955_ 3))
                 (apply __hash-update!__0 _g151954_))
                ((let () (declare (not safe)) (##fx= _g151955_ 4))
                 (apply __hash-update!__% _g151954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g151954_))))))
    (define hash-update!__%
      (lambda (_%h143033%_ _%key143034%_ _%update143035%_ _%default143036%_)
        (let* ((_%h143042%_
                (let ((_%$obj143039%_ _%h143033%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143039%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143039%_)))
                           '#t)
                      _%$obj143039%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143039%_)))))
               (_%h143044%_ _%h143042%_))
          (__hash-update!__%
           _%h143044%_
           _%key143034%_
           _%update143035%_
           _%default143036%_))))
    (define hash-update!__0
      (lambda (_%h143057%_ _%key143058%_ _%update143059%_)
        (let ((_%default143061%_ '#!void))
          (hash-update!__%
           _%h143057%_
           _%key143058%_
           _%update143059%_
           _%default143061%_))))
    (define hash-update!
      (lambda _g151956_
        (let ((_g151957_ (let () (declare (not safe)) (##length _g151956_))))
          (cond ((let () (declare (not safe)) (##fx= _g151957_ 3))
                 (apply hash-update!__0 _g151956_))
                ((let () (declare (not safe)) (##fx= _g151957_ 4))
                 (apply hash-update!__% _g151956_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g151956_))))))
    (define __hash-remove!
      (lambda (_%h146455%_ _%key146456%_)
        (let* ((_%h146459%_ _%h146455%_)
               (_%self138598146468%_ _%h146459%_)
               (_%key146471%_ _%key146456%_)
               (_%self138598146478%_
                (let ((_%$obj146475%_ _%self138598146468%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146475%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146475%_)))
                           '#t)
                      _%$obj146475%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146475%_)))))
               (_%self138598146480%_ _%self138598146478%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146493146498%_
                       (##unchecked-structure-ref
                        _%self138598146480%_
                        '1
                        '#f
                        'delete!))
                      (_%method146494146499%_
                       (##unchecked-structure-ref
                        _%self138598146480%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146494146499%_
                   _%object146493146498%_
                   _%key146471%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146500146505%_
                       (##unchecked-structure-ref
                        _%self138598146480%_
                        '1
                        '#f
                        'delete!))
                      (_%method146501146506%_
                       (##unchecked-structure-ref
                        _%self138598146480%_
                        '4
                        '#f
                        'delete!)))
                  (_%method146501146506%_
                   _%object146500146505%_
                   _%key146471%_)))))))
    (define hash-remove!
      (lambda (_%h143188%_ _%key143189%_)
        (let* ((_%h143195%_
                (let ((_%$obj143192%_ _%h143188%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143192%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143192%_)))
                           '#t)
                      _%$obj143192%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143192%_)))))
               (_%h143197%_ _%h143195%_))
          (__hash-remove! _%h143197%_ _%key143189%_))))
    (define __hash-key?
      (lambda (_%h146398%_ _%k146399%_)
        (let ((_%h146402%_ _%h146398%_))
          (not (eq? (let* ((_%self139496146411%_ _%h146402%_)
                           (_%key146414%_ _%k146399%_)
                           (_%default146417%_ absent-value)
                           (_%self139496146424%_
                            (let ((_%$obj146421%_ _%self139496146411%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj146421%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj146421%_)))
                                       '#t)
                                  _%$obj146421%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj146421%_)))))
                           (_%self139496146426%_ _%self139496146424%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object146440146445%_
                                   (##unchecked-structure-ref
                                    _%self139496146426%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method146441146446%_
                                   (##unchecked-structure-ref
                                    _%self139496146426%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method146441146446%_
                               _%object146440146445%_
                               _%key146414%_
                               _%default146417%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object146447146452%_
                                   (##unchecked-structure-ref
                                    _%self139496146426%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method146448146453%_
                                   (##unchecked-structure-ref
                                    _%self139496146426%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method146448146453%_
                               _%object146447146452%_
                               _%key146414%_
                               _%default146417%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h143327%_ _%k143328%_)
        (let* ((_%h143334%_
                (let ((_%$obj143331%_ _%h143327%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143331%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143331%_)))
                           '#t)
                      _%$obj143331%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143331%_)))))
               (_%h143336%_ _%h143334%_))
          (__hash-key? _%h143336%_ _%k143328%_))))
    (define __hash->list
      (lambda (_%h146330%_)
        (let* ((_%h146333%_ _%h146330%_) (_%lst146342%_ '()))
          (let* ((_%self138891146344%_ _%h146333%_)
                 (_%proc146350%_
                  (lambda (_%k146347%_ _%v146348%_)
                    (set! _%lst146342%_
                          (cons (cons _%k146347%_ _%v146348%_)
                                _%lst146342%_))))
                 (_%self138891146357%_
                  (let ((_%$obj146354%_ _%self138891146344%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj146354%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj146354%_)))
                             '#t)
                        _%$obj146354%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj146354%_)))))
                 (_%self138891146359%_ _%self138891146357%_)
                 (_%proc146374%_ _%proc146350%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object146383146388%_
                         (##unchecked-structure-ref
                          _%self138891146359%_
                          '1
                          '#f
                          'for-each))
                        (_%method146384146389%_
                         (##unchecked-structure-ref
                          _%self138891146359%_
                          '5
                          '#f
                          'for-each)))
                    (_%method146384146389%_
                     _%object146383146388%_
                     _%proc146374%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object146390146395%_
                         (##unchecked-structure-ref
                          _%self138891146359%_
                          '1
                          '#f
                          'for-each))
                        (_%method146391146396%_
                         (##unchecked-structure-ref
                          _%self138891146359%_
                          '5
                          '#f
                          'for-each)))
                    (_%method146391146396%_
                     _%object146390146395%_
                     _%proc146374%_)))))
          _%lst146342%_)))
    (define hash->list
      (lambda (_%h143466%_)
        (let* ((_%h143472%_
                (let ((_%$obj143469%_ _%h143466%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143469%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143469%_)))
                           '#t)
                      _%$obj143469%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143469%_)))))
               (_%h143474%_ _%h143472%_))
          (__hash->list _%h143474%_))))
    (define __hash->plist
      (lambda (_%h146262%_)
        (let* ((_%h146265%_ _%h146262%_) (_%lst146274%_ '()))
          (let* ((_%self138891146276%_ _%h146265%_)
                 (_%proc146282%_
                  (lambda (_%k146279%_ _%v146280%_)
                    (set! _%lst146274%_
                          (cons _%k146279%_
                                (cons _%v146280%_ _%lst146274%_)))))
                 (_%self138891146289%_
                  (let ((_%$obj146286%_ _%self138891146276%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj146286%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj146286%_)))
                             '#t)
                        _%$obj146286%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj146286%_)))))
                 (_%self138891146291%_ _%self138891146289%_)
                 (_%proc146306%_ _%proc146282%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object146315146320%_
                         (##unchecked-structure-ref
                          _%self138891146291%_
                          '1
                          '#f
                          'for-each))
                        (_%method146316146321%_
                         (##unchecked-structure-ref
                          _%self138891146291%_
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
                          _%self138891146291%_
                          '1
                          '#f
                          'for-each))
                        (_%method146323146328%_
                         (##unchecked-structure-ref
                          _%self138891146291%_
                          '5
                          '#f
                          'for-each)))
                    (_%method146323146328%_
                     _%object146322146327%_
                     _%proc146306%_)))))
          _%lst146274%_)))
    (define hash->plist
      (lambda (_%h143604%_)
        (let* ((_%h143610%_
                (let ((_%$obj143607%_ _%h143604%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143607%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143607%_)))
                           '#t)
                      _%$obj143607%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143607%_)))))
               (_%h143612%_ _%h143610%_))
          (__hash->plist _%h143612%_))))
    (define __hash-for-each
      (lambda (_%proc146191%_ _%h146192%_)
        (let* ((_%proc146195%_ _%proc146191%_)
               (_%h146203%_ _%h146192%_)
               (_%self138891146212%_ _%h146203%_)
               (_%proc146215%_ _%proc146195%_)
               (_%self138891146222%_
                (let ((_%$obj146219%_ _%self138891146212%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146219%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146219%_)))
                           '#t)
                      _%$obj146219%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146219%_)))))
               (_%self138891146224%_ _%self138891146222%_)
               (_%proc146238%_ _%proc146215%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146247146252%_
                       (##unchecked-structure-ref
                        _%self138891146224%_
                        '1
                        '#f
                        'for-each))
                      (_%method146248146253%_
                       (##unchecked-structure-ref
                        _%self138891146224%_
                        '5
                        '#f
                        'for-each)))
                  (_%method146248146253%_
                   _%object146247146252%_
                   _%proc146238%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146254146259%_
                       (##unchecked-structure-ref
                        _%self138891146224%_
                        '1
                        '#f
                        'for-each))
                      (_%method146255146260%_
                       (##unchecked-structure-ref
                        _%self138891146224%_
                        '5
                        '#f
                        'for-each)))
                  (_%method146255146260%_
                   _%object146254146259%_
                   _%proc146238%_)))))))
    (define hash-for-each
      (lambda (_%proc143742%_ _%h143743%_)
        (if (procedure? _%proc143742%_)
            (let* ((_%proc143747%_ _%proc143742%_)
                   (_%h143759%_
                    (let ((_%$obj143756%_ _%h143743%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj143756%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj143756%_)))
                               '#t)
                          _%$obj143756%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj143756%_)))))
                   (_%h143761%_ _%h143759%_))
              (__hash-for-each _%proc143747%_ _%h143761%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc143742%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc146114%_ _%h146115%_)
        (let* ((_%proc146118%_ _%proc146114%_)
               (_%h146126%_ _%h146115%_)
               (_%result146135%_ '()))
          (let* ((_%self138891146137%_ _%h146126%_)
                 (_%proc146143%_
                  (lambda (_%k146140%_ _%v146141%_)
                    (set! _%result146135%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc146118%_ _%k146140%_ _%v146141%_))
                                _%result146135%_))))
                 (_%self138891146150%_
                  (let ((_%$obj146147%_ _%self138891146137%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj146147%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj146147%_)))
                             '#t)
                        _%$obj146147%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj146147%_)))))
                 (_%self138891146152%_ _%self138891146150%_)
                 (_%proc146167%_ _%proc146143%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object146176146181%_
                         (##unchecked-structure-ref
                          _%self138891146152%_
                          '1
                          '#f
                          'for-each))
                        (_%method146177146182%_
                         (##unchecked-structure-ref
                          _%self138891146152%_
                          '5
                          '#f
                          'for-each)))
                    (_%method146177146182%_
                     _%object146176146181%_
                     _%proc146167%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object146183146188%_
                         (##unchecked-structure-ref
                          _%self138891146152%_
                          '1
                          '#f
                          'for-each))
                        (_%method146184146189%_
                         (##unchecked-structure-ref
                          _%self138891146152%_
                          '5
                          '#f
                          'for-each)))
                    (_%method146184146189%_
                     _%object146183146188%_
                     _%proc146167%_)))))
          _%result146135%_)))
    (define hash-map
      (lambda (_%proc143891%_ _%h143892%_)
        (if (procedure? _%proc143891%_)
            (let* ((_%proc143896%_ _%proc143891%_)
                   (_%h143908%_
                    (let ((_%$obj143905%_ _%h143892%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj143905%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj143905%_)))
                               '#t)
                          _%$obj143905%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj143905%_)))))
                   (_%h143910%_ _%h143908%_))
              (__hash-map _%proc143896%_ _%h143910%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc143891%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc146036%_ _%iv146037%_ _%h146038%_)
        (let* ((_%proc146041%_ _%proc146036%_)
               (_%h146049%_ _%h146038%_)
               (_%result146058%_ _%iv146037%_))
          (let* ((_%self138891146060%_ _%h146049%_)
                 (_%proc146066%_
                  (lambda (_%k146063%_ _%v146064%_)
                    (set! _%result146058%_
                          (let ()
                            (declare (not safe))
                            (_%proc146041%_
                             _%k146063%_
                             _%v146064%_
                             _%result146058%_)))))
                 (_%self138891146073%_
                  (let ((_%$obj146070%_ _%self138891146060%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj146070%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj146070%_)))
                             '#t)
                        _%$obj146070%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj146070%_)))))
                 (_%self138891146075%_ _%self138891146073%_)
                 (_%proc146090%_ _%proc146066%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object146099146104%_
                         (##unchecked-structure-ref
                          _%self138891146075%_
                          '1
                          '#f
                          'for-each))
                        (_%method146100146105%_
                         (##unchecked-structure-ref
                          _%self138891146075%_
                          '5
                          '#f
                          'for-each)))
                    (_%method146100146105%_
                     _%object146099146104%_
                     _%proc146090%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object146106146111%_
                         (##unchecked-structure-ref
                          _%self138891146075%_
                          '1
                          '#f
                          'for-each))
                        (_%method146107146112%_
                         (##unchecked-structure-ref
                          _%self138891146075%_
                          '5
                          '#f
                          'for-each)))
                    (_%method146107146112%_
                     _%object146106146111%_
                     _%proc146090%_)))))
          _%result146058%_)))
    (define hash-fold
      (lambda (_%proc144040%_ _%iv144041%_ _%h144042%_)
        (if (procedure? _%proc144040%_)
            (let* ((_%proc144046%_ _%proc144040%_)
                   (_%h144058%_
                    (let ((_%$obj144055%_ _%h144042%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj144055%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj144055%_)))
                               '#t)
                          _%$obj144055%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj144055%_)))))
                   (_%h144060%_ _%h144058%_))
              (__hash-fold _%proc144046%_ _%iv144041%_ _%h144060%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc144040%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc145943%_ _%h145944%_ _%default-value145945%_)
        (let* ((_%proc145948%_ _%proc145943%_)
               (_%h145956%_ _%h145944%_)
               (__tmp151958
                (lambda (_%return145965%_)
                  (let* ((_%self138891145967%_ _%h145956%_)
                         (_%proc145976%_
                          (lambda (_%k145970%_ _%v145971%_)
                            (let ((_%$e145973%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc145948%_
                                      _%k145970%_
                                      _%v145971%_))))
                              (if _%$e145973%_
                                  (_%return145965%_ _%$e145973%_)
                                  '#!void))))
                         (_%self138891145983%_
                          (let ((_%$obj145980%_ _%self138891145967%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj145980%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj145980%_)))
                                     '#t)
                                _%$obj145980%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj145980%_)))))
                         (_%self138891145985%_ _%self138891145983%_)
                         (_%proc146000%_ _%proc145976%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object146009146014%_
                                 (##unchecked-structure-ref
                                  _%self138891145985%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method146010146015%_
                                 (##unchecked-structure-ref
                                  _%self138891145985%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method146010146015%_
                             _%object146009146014%_
                             _%proc146000%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object146016146021%_
                                 (##unchecked-structure-ref
                                  _%self138891145985%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method146017146022%_
                                 (##unchecked-structure-ref
                                  _%self138891145985%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method146017146022%_
                             _%object146016146021%_
                             _%proc146000%_)))))
                  _%default-value145945%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp151958))))
    (define __hash-find__0
      (lambda (_%proc146027%_ _%h146028%_)
        (let ((_%default-value146030%_ '#f))
          (__hash-find__%
           _%proc146027%_
           _%h146028%_
           _%default-value146030%_))))
    (define __hash-find
      (lambda _g151959_
        (let ((_g151960_ (let () (declare (not safe)) (##length _g151959_))))
          (cond ((let () (declare (not safe)) (##fx= _g151960_ 2))
                 (apply __hash-find__0 _g151959_))
                ((let () (declare (not safe)) (##fx= _g151960_ 3))
                 (apply __hash-find__% _g151959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g151959_))))))
    (define hash-find__%
      (lambda (_%proc144191%_ _%h144192%_ _%default-value144193%_)
        (if (procedure? _%proc144191%_)
            (let* ((_%proc144197%_ _%proc144191%_)
                   (_%h144209%_
                    (let ((_%$obj144206%_ _%h144192%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj144206%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj144206%_)))
                               '#t)
                          _%$obj144206%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj144206%_)))))
                   (_%h144211%_ _%h144209%_))
              (__hash-find__%
               _%proc144197%_
               _%h144211%_
               _%default-value144193%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc144191%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc144224%_ _%h144225%_)
        (let ((_%default-value144227%_ '#f))
          (hash-find__% _%proc144224%_ _%h144225%_ _%default-value144227%_))))
    (define hash-find
      (lambda _g151961_
        (let ((_g151962_ (let () (declare (not safe)) (##length _g151961_))))
          (cond ((let () (declare (not safe)) (##fx= _g151962_ 2))
                 (apply hash-find__0 _g151961_))
                ((let () (declare (not safe)) (##fx= _g151962_ 3))
                 (apply hash-find__% _g151961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g151961_))))))
    (define __hash-keys
      (lambda (_%h145874%_)
        (let* ((_%h145877%_ _%h145874%_) (_%result145886%_ '()))
          (let* ((_%self138891145888%_ _%h145877%_)
                 (_%proc145894%_
                  (lambda (_%k145891%_ _%v145892%_)
                    (set! _%result145886%_
                          (cons _%k145891%_ _%result145886%_))))
                 (_%self138891145901%_
                  (let ((_%$obj145898%_ _%self138891145888%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj145898%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj145898%_)))
                             '#t)
                        _%$obj145898%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj145898%_)))))
                 (_%self138891145903%_ _%self138891145901%_)
                 (_%proc145918%_ _%proc145894%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object145927145932%_
                         (##unchecked-structure-ref
                          _%self138891145903%_
                          '1
                          '#f
                          'for-each))
                        (_%method145928145933%_
                         (##unchecked-structure-ref
                          _%self138891145903%_
                          '5
                          '#f
                          'for-each)))
                    (_%method145928145933%_
                     _%object145927145932%_
                     _%proc145918%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object145934145939%_
                         (##unchecked-structure-ref
                          _%self138891145903%_
                          '1
                          '#f
                          'for-each))
                        (_%method145935145940%_
                         (##unchecked-structure-ref
                          _%self138891145903%_
                          '5
                          '#f
                          'for-each)))
                    (_%method145935145940%_
                     _%object145934145939%_
                     _%proc145918%_)))))
          _%result145886%_)))
    (define hash-keys
      (lambda (_%h144353%_)
        (let* ((_%h144359%_
                (let ((_%$obj144356%_ _%h144353%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144356%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144356%_)))
                           '#t)
                      _%$obj144356%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144356%_)))))
               (_%h144361%_ _%h144359%_))
          (__hash-keys _%h144361%_))))
    (define __hash-values
      (lambda (_%h145806%_)
        (let* ((_%h145809%_ _%h145806%_) (_%result145818%_ '()))
          (let* ((_%self138891145820%_ _%h145809%_)
                 (_%proc145826%_
                  (lambda (_%k145823%_ _%v145824%_)
                    (set! _%result145818%_
                          (cons _%v145824%_ _%result145818%_))))
                 (_%self138891145833%_
                  (let ((_%$obj145830%_ _%self138891145820%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj145830%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj145830%_)))
                             '#t)
                        _%$obj145830%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj145830%_)))))
                 (_%self138891145835%_ _%self138891145833%_)
                 (_%proc145850%_ _%proc145826%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object145859145864%_
                         (##unchecked-structure-ref
                          _%self138891145835%_
                          '1
                          '#f
                          'for-each))
                        (_%method145860145865%_
                         (##unchecked-structure-ref
                          _%self138891145835%_
                          '5
                          '#f
                          'for-each)))
                    (_%method145860145865%_
                     _%object145859145864%_
                     _%proc145850%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object145866145871%_
                         (##unchecked-structure-ref
                          _%self138891145835%_
                          '1
                          '#f
                          'for-each))
                        (_%method145867145872%_
                         (##unchecked-structure-ref
                          _%self138891145835%_
                          '5
                          '#f
                          'for-each)))
                    (_%method145867145872%_
                     _%object145866145871%_
                     _%proc145850%_)))))
          _%result145818%_)))
    (define hash-values
      (lambda (_%h144491%_)
        (let* ((_%h144497%_
                (let ((_%$obj144494%_ _%h144491%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144494%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144494%_)))
                           '#t)
                      _%$obj144494%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144494%_)))))
               (_%h144499%_ _%h144497%_))
          (__hash-values _%h144499%_))))
    (define __hash-copy
      (lambda (_%h145755%_)
        (let* ((_%h145758%_ _%h145755%_)
               (_%self138304145767%_ _%h145758%_)
               (_%self138304145774%_
                (let ((_%$obj145771%_ _%self138304145767%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145771%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145771%_)))
                           '#t)
                      _%$obj145771%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145771%_)))))
               (_%self138304145776%_ _%self138304145774%_))
          (if __DEBUG
              (let ((_%$obj145796%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object145788145793%_
                              (##unchecked-structure-ref
                               _%self138304145776%_
                               '1
                               '#f
                               'copy))
                             (_%method145789145794%_
                              (##unchecked-structure-ref
                               _%self138304145776%_
                               '3
                               '#f
                               'copy)))
                         (_%method145789145794%_ _%object145788145793%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj145796%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj145796%_)))
                         '#t)
                    _%$obj145796%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj145796%_))))
              (let ()
                (declare (not safe))
                (let ((_%object145798145803%_
                       (##unchecked-structure-ref
                        _%self138304145776%_
                        '1
                        '#f
                        'copy))
                      (_%method145799145804%_
                       (##unchecked-structure-ref
                        _%self138304145776%_
                        '3
                        '#f
                        'copy)))
                  (_%method145799145804%_ _%object145798145803%_)))))))
    (define hash-copy
      (lambda (_%h144629%_)
        (let* ((_%h144635%_
                (let ((_%$obj144632%_ _%h144629%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144632%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144632%_)))
                           '#t)
                      _%$obj144632%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144632%_)))))
               (_%h144637%_ _%h144635%_))
          (__hash-copy _%h144637%_))))
    (define __hash-clear!
      (lambda (_%h145707%_)
        (let* ((_%h145710%_ _%h145707%_)
               (_%self138012145719%_ _%h145710%_)
               (_%self138012145726%_
                (let ((_%$obj145723%_ _%self138012145719%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145723%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145723%_)))
                           '#t)
                      _%$obj145723%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145723%_)))))
               (_%self138012145728%_ _%self138012145726%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145740145745%_
                       (##unchecked-structure-ref
                        _%self138012145728%_
                        '1
                        '#f
                        'clear!))
                      (_%method145741145746%_
                       (##unchecked-structure-ref
                        _%self138012145728%_
                        '2
                        '#f
                        'clear!)))
                  (_%method145741145746%_ _%object145740145745%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145747145752%_
                       (##unchecked-structure-ref
                        _%self138012145728%_
                        '1
                        '#f
                        'clear!))
                      (_%method145748145753%_
                       (##unchecked-structure-ref
                        _%self138012145728%_
                        '2
                        '#f
                        'clear!)))
                  (_%method145748145753%_ _%object145747145752%_)))))))
    (define hash-clear!
      (lambda (_%h144767%_)
        (let* ((_%h144773%_
                (let ((_%$obj144770%_ _%h144767%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144770%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144770%_)))
                           '#t)
                      _%$obj144770%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144770%_)))))
               (_%h144775%_ _%h144773%_))
          (__hash-clear! _%h144775%_))))
    (define __hash-merge
      (lambda (_%h145653%_ . _%rest145654%_)
        (let* ((_%h145657%_ _%h145653%_)
               (_%copy145705%_
                (let* ((_%self138304145666%_ _%h145657%_)
                       (_%self138304145673%_
                        (let ((_%$obj145670%_ _%self138304145666%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj145670%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj145670%_)))
                                   '#t)
                              _%$obj145670%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj145670%_)))))
                       (_%self138304145675%_ _%self138304145673%_))
                  (if __DEBUG
                      (let ((_%$obj145695%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object145687145692%_
                                      (##unchecked-structure-ref
                                       _%self138304145675%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method145688145693%_
                                      (##unchecked-structure-ref
                                       _%self138304145675%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method145688145693%_
                                  _%object145687145692%_)))))
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
                              (cast HashTable::interface _%$obj145695%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object145697145702%_
                               (##unchecked-structure-ref
                                _%self138304145675%_
                                '1
                                '#f
                                'copy))
                              (_%method145698145703%_
                               (##unchecked-structure-ref
                                _%self138304145675%_
                                '3
                                '#f
                                'copy)))
                          (_%method145698145703%_ _%object145697145702%_)))))))
          (apply hash-merge! _%copy145705%_ _%rest145654%_)
          _%copy145705%_)))
    (define hash-merge
      (lambda (_%h144905%_ . _%rest144906%_)
        (let* ((_%h144912%_
                (let ((_%$obj144909%_ _%h144905%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144909%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144909%_)))
                           '#t)
                      _%$obj144909%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144909%_)))))
               (_%h144914%_ _%h144912%_))
          (declare (not safe))
          (##apply __hash-merge _%h144914%_ _%rest144906%_))))
    (define __hash-merge-right
      (lambda (_%h145599%_ . _%rest145600%_)
        (let* ((_%h145603%_ _%h145599%_)
               (_%copy145651%_
                (let* ((_%self138304145612%_ _%h145603%_)
                       (_%self138304145619%_
                        (let ((_%$obj145616%_ _%self138304145612%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj145616%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj145616%_)))
                                   '#t)
                              _%$obj145616%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj145616%_)))))
                       (_%self138304145621%_ _%self138304145619%_))
                  (if __DEBUG
                      (let ((_%$obj145641%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object145633145638%_
                                      (##unchecked-structure-ref
                                       _%self138304145621%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method145634145639%_
                                      (##unchecked-structure-ref
                                       _%self138304145621%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method145634145639%_
                                  _%object145633145638%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj145641%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj145641%_)))
                                 '#t)
                            _%$obj145641%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj145641%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object145643145648%_
                               (##unchecked-structure-ref
                                _%self138304145621%_
                                '1
                                '#f
                                'copy))
                              (_%method145644145649%_
                               (##unchecked-structure-ref
                                _%self138304145621%_
                                '3
                                '#f
                                'copy)))
                          (_%method145644145649%_ _%object145643145648%_)))))))
          (apply hash-merge-right! _%copy145651%_ _%rest145600%_)
          _%copy145651%_)))
    (define hash-merge-right
      (lambda (_%h145044%_ . _%rest145045%_)
        (let* ((_%h145051%_
                (let ((_%$obj145048%_ _%h145044%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145048%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145048%_)))
                           '#t)
                      _%$obj145048%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145048%_)))))
               (_%h145053%_ _%h145051%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h145053%_ _%rest145045%_))))
    (define __hash-merge!
      (lambda (_%h145470%_ . _%rest145471%_)
        (let ((_%h145474%_ _%h145470%_))
          (let ((__tmp151963
                 (lambda (_%hr145483%_)
                   (let* ((_%hr145489%_
                           (let ((_%$obj145486%_ _%hr145483%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj145486%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj145486%_)))
                                      '#t)
                                 _%$obj145486%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj145486%_)))))
                          (_%hr145491%_ _%hr145489%_)
                          (_%self138891145504%_ _%hr145491%_)
                          (_%proc145556%_
                           (lambda (_%k145507%_ _%v145508%_)
                             (if (__hash-key? _%h145474%_ _%k145507%_)
                                 '#!void
                                 (let* ((_%self139791145510%_ _%h145474%_)
                                        (_%key145513%_ _%k145507%_)
                                        (_%value145516%_ _%v145508%_)
                                        (_%self139791145523%_
                                         (let ((_%$obj145520%_
                                                _%self139791145510%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj145520%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj145520%_)))
                                                    '#t)
                                               _%$obj145520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj145520%_)))))
                                        (_%self139791145525%_
                                         _%self139791145523%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object145541145546%_
                                                (##unchecked-structure-ref
                                                 _%self139791145525%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method145542145547%_
                                                (##unchecked-structure-ref
                                                 _%self139791145525%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method145542145547%_
                                            _%object145541145546%_
                                            _%key145513%_
                                            _%value145516%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object145548145553%_
                                                (##unchecked-structure-ref
                                                 _%self139791145525%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method145549145554%_
                                                (##unchecked-structure-ref
                                                 _%self139791145525%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method145549145554%_
                                            _%object145548145553%_
                                            _%key145513%_
                                            _%value145516%_))))))))
                          (_%self138891145563%_
                           (let ((_%$obj145560%_ _%self138891145504%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj145560%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj145560%_)))
                                      '#t)
                                 _%$obj145560%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj145560%_)))))
                          (_%self138891145565%_ _%self138891145563%_)
                          (_%proc145575%_ _%proc145556%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object145584145589%_
                                  (##unchecked-structure-ref
                                   _%self138891145565%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method145585145590%_
                                  (##unchecked-structure-ref
                                   _%self138891145565%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method145585145590%_
                              _%object145584145589%_
                              _%proc145575%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object145591145596%_
                                  (##unchecked-structure-ref
                                   _%self138891145565%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method145592145597%_
                                  (##unchecked-structure-ref
                                   _%self138891145565%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method145592145597%_
                              _%object145591145596%_
                              _%proc145575%_))))))))
            (declare (not safe))
            (##for-each __tmp151963 _%rest145471%_))
          _%h145474%_)))
    (define hash-merge!
      (lambda (_%h145183%_ . _%rest145184%_)
        (let* ((_%h145190%_
                (let ((_%$obj145187%_ _%h145183%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145187%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145187%_)))
                           '#t)
                      _%$obj145187%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145187%_)))))
               (_%h145192%_ _%h145190%_))
          (declare (not safe))
          (##apply __hash-merge! _%h145192%_ _%rest145184%_))))
    (define __hash-merge-right!
      (lambda (_%h145341%_ . _%rest145342%_)
        (let ((_%h145345%_ _%h145341%_))
          (let ((__tmp151964
                 (lambda (_%hr145354%_)
                   (let* ((_%hr145360%_
                           (let ((_%$obj145357%_ _%hr145354%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj145357%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj145357%_)))
                                      '#t)
                                 _%$obj145357%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj145357%_)))))
                          (_%hr145362%_ _%hr145360%_)
                          (_%self138891145375%_ _%hr145362%_)
                          (_%proc145427%_
                           (lambda (_%k145378%_ _%v145379%_)
                             (let* ((_%self139791145381%_ _%h145345%_)
                                    (_%key145384%_ _%k145378%_)
                                    (_%value145387%_ _%v145379%_)
                                    (_%self139791145394%_
                                     (let ((_%$obj145391%_
                                            _%self139791145381%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj145391%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj145391%_)))
                                                '#t)
                                           _%$obj145391%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj145391%_)))))
                                    (_%self139791145396%_
                                     _%self139791145394%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object145412145417%_
                                            (##unchecked-structure-ref
                                             _%self139791145396%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method145413145418%_
                                            (##unchecked-structure-ref
                                             _%self139791145396%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method145413145418%_
                                        _%object145412145417%_
                                        _%key145384%_
                                        _%value145387%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object145419145424%_
                                            (##unchecked-structure-ref
                                             _%self139791145396%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method145420145425%_
                                            (##unchecked-structure-ref
                                             _%self139791145396%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method145420145425%_
                                        _%object145419145424%_
                                        _%key145384%_
                                        _%value145387%_)))))))
                          (_%self138891145434%_
                           (let ((_%$obj145431%_ _%self138891145375%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj145431%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj145431%_)))
                                      '#t)
                                 _%$obj145431%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj145431%_)))))
                          (_%self138891145436%_ _%self138891145434%_)
                          (_%proc145446%_ _%proc145427%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object145455145460%_
                                  (##unchecked-structure-ref
                                   _%self138891145436%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method145456145461%_
                                  (##unchecked-structure-ref
                                   _%self138891145436%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method145456145461%_
                              _%object145455145460%_
                              _%proc145446%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object145462145467%_
                                  (##unchecked-structure-ref
                                   _%self138891145436%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method145463145468%_
                                  (##unchecked-structure-ref
                                   _%self138891145436%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method145463145468%_
                              _%object145462145467%_
                              _%proc145446%_))))))))
            (declare (not safe))
            (##for-each __tmp151964 _%rest145342%_))
          _%h145345%_)))
    (define hash-merge-right!
      (lambda (_%h145322%_ . _%rest145323%_)
        (let* ((_%h145329%_
                (let ((_%$obj145326%_ _%h145322%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145326%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145326%_)))
                           '#t)
                      _%$obj145326%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145326%_)))))
               (_%h145331%_ _%h145329%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h145331%_ _%rest145323%_))))))
