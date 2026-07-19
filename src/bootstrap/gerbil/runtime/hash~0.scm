(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1784279014)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp170006 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp170006
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args168670%_
        (apply make-instance UnboundKeyError::t _%$args168670%_)))
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
      (lambda (_%where168544%_ _%message168545%_ . _%irritants168546%_)
        (let ((__tmp170007
               (let ((__obj169998
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj169998
                    _%message168545%_
                    'where:
                    _%where168544%_
                    'irritants:
                    _%irritants168546%_))
                 __obj169998)))
          (declare (not safe))
          (raise __tmp170007))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp170008 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'HashTable::t
         'HashTable
         __tmp170008
         '(clear! copy delete! for-each length new ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj170000
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170000
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
        __obj170000))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj168542%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj168542%_))))
    (define try-HashTable
      (lambda (_%obj168540%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj168540%_))))
    (define HashTable?
      (lambda (_%obj168538%_)
        (let ((__tmp170009
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj168538%_ __tmp170009))))
    (define is-HashTable?
      (lambda (_%obj168535%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj168535%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self152388168518%_)
        (let ((_%self152388168520%_ _%self152388168518%_))
          (declare (not safe))
          (let ((_%object168527168532%_
                 (##unchecked-structure-ref
                  _%self152388168520%_
                  '1
                  '#f
                  'clear!))
                (_%method168528168533%_
                 (##unchecked-structure-ref
                  _%self152388168520%_
                  '2
                  '#f
                  'clear!)))
            (_%method168528168533%_ _%object168527168532%_)))))
    (define ::HashTable-clear!
      (lambda (_%self152389168488%_)
        (let* ((_%self152389168493%_
                (let ((_%$obj168490%_ _%self152389168488%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168490%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168490%_)))
                           '#t)
                      _%$obj168490%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168490%_)))))
               (_%self152389168495%_ _%self152389168493%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168503168508%_
                       (##unchecked-structure-ref
                        _%self152389168495%_
                        '1
                        '#f
                        'clear!))
                      (_%method168504168509%_
                       (##unchecked-structure-ref
                        _%self152389168495%_
                        '2
                        '#f
                        'clear!)))
                  (_%method168504168509%_ _%object168503168508%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168510168515%_
                       (##unchecked-structure-ref
                        _%self152389168495%_
                        '1
                        '#f
                        'clear!))
                      (_%method168511168516%_
                       (##unchecked-structure-ref
                        _%self152389168495%_
                        '2
                        '#f
                        'clear!)))
                  (_%method168511168516%_ _%object168510168515%_)))))))
    (define __HashTable-copy
      (lambda (_%self152633168471%_)
        (let ((_%self152633168473%_ _%self152633168471%_))
          (declare (not safe))
          (let ((_%object168480168485%_
                 (##unchecked-structure-ref _%self152633168473%_ '1 '#f 'copy))
                (_%method168481168486%_
                 (##unchecked-structure-ref
                  _%self152633168473%_
                  '3
                  '#f
                  'copy)))
            (_%method168481168486%_ _%object168480168485%_)))))
    (define ::HashTable-copy
      (lambda (_%self152634168438%_)
        (let* ((_%self152634168443%_
                (let ((_%$obj168440%_ _%self152634168438%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168440%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168440%_)))
                           '#t)
                      _%$obj168440%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168440%_)))))
               (_%self152634168445%_ _%self152634168443%_))
          (if __DEBUG
              (let ((_%$obj168461%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object168453168458%_
                              (##unchecked-structure-ref
                               _%self152634168445%_
                               '1
                               '#f
                               'copy))
                             (_%method168454168459%_
                              (##unchecked-structure-ref
                               _%self152634168445%_
                               '3
                               '#f
                               'copy)))
                         (_%method168454168459%_ _%object168453168458%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj168461%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj168461%_)))
                         '#t)
                    _%$obj168461%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj168461%_))))
              (let ()
                (declare (not safe))
                (let ((_%object168463168468%_
                       (##unchecked-structure-ref
                        _%self152634168445%_
                        '1
                        '#f
                        'copy))
                      (_%method168464168469%_
                       (##unchecked-structure-ref
                        _%self152634168445%_
                        '3
                        '#f
                        'copy)))
                  (_%method168464168469%_ _%object168463168468%_)))))))
    (define __HashTable-delete!
      (lambda (_%self152877168420%_ _%key168421%_)
        (let ((_%self152877168423%_ _%self152877168420%_))
          (declare (not safe))
          (let ((_%object168430168435%_
                 (##unchecked-structure-ref
                  _%self152877168423%_
                  '1
                  '#f
                  'delete!))
                (_%method168431168436%_
                 (##unchecked-structure-ref
                  _%self152877168423%_
                  '4
                  '#f
                  'delete!)))
            (_%method168431168436%_ _%object168430168435%_ _%key168421%_)))))
    (define ::HashTable-delete!
      (lambda (_%self152878168389%_ _%key168390%_)
        (let* ((_%self152878168395%_
                (let ((_%$obj168392%_ _%self152878168389%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168392%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168392%_)))
                           '#t)
                      _%$obj168392%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168392%_)))))
               (_%self152878168397%_ _%self152878168395%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168405168410%_
                       (##unchecked-structure-ref
                        _%self152878168397%_
                        '1
                        '#f
                        'delete!))
                      (_%method168406168411%_
                       (##unchecked-structure-ref
                        _%self152878168397%_
                        '4
                        '#f
                        'delete!)))
                  (_%method168406168411%_
                   _%object168405168410%_
                   _%key168390%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168412168417%_
                       (##unchecked-structure-ref
                        _%self152878168397%_
                        '1
                        '#f
                        'delete!))
                      (_%method168413168418%_
                       (##unchecked-structure-ref
                        _%self152878168397%_
                        '4
                        '#f
                        'delete!)))
                  (_%method168413168418%_
                   _%object168412168417%_
                   _%key168390%_)))))))
    (define __HashTable-for-each
      (lambda (_%self153121168363%_ _%proc168364%_)
        (let* ((_%self153121168366%_ _%self153121168363%_)
               (_%proc168373%_ _%proc168364%_))
          (declare (not safe))
          (let ((_%object168381168386%_
                 (##unchecked-structure-ref
                  _%self153121168366%_
                  '1
                  '#f
                  'for-each))
                (_%method168382168387%_
                 (##unchecked-structure-ref
                  _%self153121168366%_
                  '5
                  '#f
                  'for-each)))
            (_%method168382168387%_ _%object168381168386%_ _%proc168373%_)))))
    (define ::HashTable-for-each
      (lambda (_%self153122168322%_ _%proc168323%_)
        (let* ((_%self153122168328%_
                (let ((_%$obj168325%_ _%self153122168322%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168325%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168325%_)))
                           '#t)
                      _%$obj168325%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168325%_)))))
               (_%self153122168330%_ _%self153122168328%_))
          (if (procedure? _%proc168323%_)
              (let ((_%proc168339%_ _%proc168323%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object168348168353%_
                             (##unchecked-structure-ref
                              _%self153122168330%_
                              '1
                              '#f
                              'for-each))
                            (_%method168349168354%_
                             (##unchecked-structure-ref
                              _%self153122168330%_
                              '5
                              '#f
                              'for-each)))
                        (_%method168349168354%_
                         _%object168348168353%_
                         _%proc168339%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168355168360%_
                             (##unchecked-structure-ref
                              _%self153122168330%_
                              '1
                              '#f
                              'for-each))
                            (_%method168356168361%_
                             (##unchecked-structure-ref
                              _%self153122168330%_
                              '5
                              '#f
                              'for-each)))
                        (_%method168356168361%_
                         _%object168355168360%_
                         _%proc168339%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc168323%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self153365168305%_)
        (let ((_%self153365168307%_ _%self153365168305%_))
          (declare (not safe))
          (let ((_%object168314168319%_
                 (##unchecked-structure-ref
                  _%self153365168307%_
                  '1
                  '#f
                  'length))
                (_%method168315168320%_
                 (##unchecked-structure-ref
                  _%self153365168307%_
                  '6
                  '#f
                  'length)))
            (_%method168315168320%_ _%object168314168319%_)))))
    (define ::HashTable-length
      (lambda (_%self153366168272%_)
        (let* ((_%self153366168277%_
                (let ((_%$obj168274%_ _%self153366168272%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168274%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168274%_)))
                           '#t)
                      _%$obj168274%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168274%_)))))
               (_%self153366168279%_ _%self153366168277%_))
          (if __DEBUG
              (let ((_%val168295%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object168287168292%_
                              (##unchecked-structure-ref
                               _%self153366168279%_
                               '1
                               '#f
                               'length))
                             (_%method168288168293%_
                              (##unchecked-structure-ref
                               _%self153366168279%_
                               '6
                               '#f
                               'length)))
                         (_%method168288168293%_ _%object168287168292%_)))))
                (if (fixnum? _%val168295%_)
                    _%val168295%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val168295%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object168297168302%_
                       (##unchecked-structure-ref
                        _%self153366168279%_
                        '1
                        '#f
                        'length))
                      (_%method168298168303%_
                       (##unchecked-structure-ref
                        _%self153366168279%_
                        '6
                        '#f
                        'length)))
                  (_%method168298168303%_ _%object168297168302%_)))))))
    (define __HashTable-new__%
      (lambda (_%self153609168236%_ _%size-hint168237%_)
        (let* ((_%self153609168239%_ _%self153609168236%_)
               (_%size-hint168246%_ _%size-hint168237%_))
          (declare (not safe))
          (let ((_%object168254168259%_
                 (##unchecked-structure-ref _%self153609168239%_ '1 '#f 'new))
                (_%method168255168260%_
                 (##unchecked-structure-ref _%self153609168239%_ '7 '#f 'new)))
            (_%method168255168260%_
             _%object168254168259%_
             _%size-hint168246%_)))))
    (define __HashTable-new__0
      (lambda (_%self153609168265%_)
        (let ((_%size-hint168267%_ '#f))
          (__HashTable-new__% _%self153609168265%_ _%size-hint168267%_))))
    (define __HashTable-new
      (lambda _g170010_
        (let ((_g170011_ (let () (declare (not safe)) (##length _g170010_))))
          (cond ((let () (declare (not safe)) (##fx= _g170011_ 1))
                 (apply __HashTable-new__0 _g170010_))
                ((let () (declare (not safe)) (##fx= _g170011_ 2))
                 (apply __HashTable-new__% _g170010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __HashTable-new
                  _g170010_))))))
    (define ::HashTable-new__%
      (lambda (_%self153610168175%_ _%size-hint168176%_)
        (let* ((_%self153610168181%_
                (let ((_%$obj168178%_ _%self153610168175%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168178%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168178%_)))
                           '#t)
                      _%$obj168178%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168178%_)))))
               (_%self153610168183%_ _%self153610168181%_))
          (if (or (not _%size-hint168176%_) (fixnum? _%size-hint168176%_))
              (let ((_%size-hint168198%_ _%size-hint168176%_))
                (if __DEBUG
                    (let ((_%$obj168215%_
                           (let ()
                             (declare (not safe))
                             (let ((_%object168207168212%_
                                    (##unchecked-structure-ref
                                     _%self153610168183%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method168208168213%_
                                    (##unchecked-structure-ref
                                     _%self153610168183%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method168208168213%_
                                _%object168207168212%_
                                _%size-hint168198%_)))))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj168215%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj168215%_)))
                               '#t)
                          _%$obj168215%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj168215%_))))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168217168222%_
                             (##unchecked-structure-ref
                              _%self153610168183%_
                              '1
                              '#f
                              'new))
                            (_%method168218168223%_
                             (##unchecked-structure-ref
                              _%self153610168183%_
                              '7
                              '#f
                              'new)))
                        (_%method168218168223%_
                         _%object168217168222%_
                         _%size-hint168198%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@32.9-32.18"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint168176%_)
                '#!void)))))
    (define ::HashTable-new__0
      (lambda (_%self153610168228%_)
        (let ((_%size-hint168230%_ '#f))
          (::HashTable-new__% _%self153610168228%_ _%size-hint168230%_))))
    (define ::HashTable-new
      (lambda _g170012_
        (let ((_g170013_ (let () (declare (not safe)) (##length _g170012_))))
          (cond ((let () (declare (not safe)) (##fx= _g170013_ 1))
                 (apply ::HashTable-new__0 _g170012_))
                ((let () (declare (not safe)) (##fx= _g170013_ 2))
                 (apply ::HashTable-new__% _g170012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ::HashTable-new
                  _g170012_))))))
    (define __HashTable-ref
      (lambda (_%self153853168155%_ _%key168156%_ _%default168157%_)
        (let ((_%self153853168159%_ _%self153853168155%_))
          (declare (not safe))
          (let ((_%object168166168171%_
                 (##unchecked-structure-ref _%self153853168159%_ '1 '#f 'ref))
                (_%method168167168172%_
                 (##unchecked-structure-ref _%self153853168159%_ '8 '#f 'ref)))
            (_%method168167168172%_
             _%object168166168171%_
             _%key168156%_
             _%default168157%_)))))
    (define ::HashTable-ref
      (lambda (_%self153854168123%_ _%key168124%_ _%default168125%_)
        (let* ((_%self153854168130%_
                (let ((_%$obj168127%_ _%self153854168123%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168127%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168127%_)))
                           '#t)
                      _%$obj168127%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168127%_)))))
               (_%self153854168132%_ _%self153854168130%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168140168145%_
                       (##unchecked-structure-ref
                        _%self153854168132%_
                        '1
                        '#f
                        'ref))
                      (_%method168141168146%_
                       (##unchecked-structure-ref
                        _%self153854168132%_
                        '8
                        '#f
                        'ref)))
                  (_%method168141168146%_
                   _%object168140168145%_
                   _%key168124%_
                   _%default168125%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168147168152%_
                       (##unchecked-structure-ref
                        _%self153854168132%_
                        '1
                        '#f
                        'ref))
                      (_%method168148168153%_
                       (##unchecked-structure-ref
                        _%self153854168132%_
                        '8
                        '#f
                        'ref)))
                  (_%method168148168153%_
                   _%object168147168152%_
                   _%key168124%_
                   _%default168125%_)))))))
    (define __HashTable-set!
      (lambda (_%self154097168104%_ _%key168105%_ _%value168106%_)
        (let ((_%self154097168108%_ _%self154097168104%_))
          (declare (not safe))
          (let ((_%object168115168120%_
                 (##unchecked-structure-ref _%self154097168108%_ '1 '#f 'set!))
                (_%method168116168121%_
                 (##unchecked-structure-ref
                  _%self154097168108%_
                  '9
                  '#f
                  'set!)))
            (_%method168116168121%_
             _%object168115168120%_
             _%key168105%_
             _%value168106%_)))))
    (define ::HashTable-set!
      (lambda (_%self154098168072%_ _%key168073%_ _%value168074%_)
        (let* ((_%self154098168079%_
                (let ((_%$obj168076%_ _%self154098168072%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168076%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168076%_)))
                           '#t)
                      _%$obj168076%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168076%_)))))
               (_%self154098168081%_ _%self154098168079%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168089168094%_
                       (##unchecked-structure-ref
                        _%self154098168081%_
                        '1
                        '#f
                        'set!))
                      (_%method168090168095%_
                       (##unchecked-structure-ref
                        _%self154098168081%_
                        '9
                        '#f
                        'set!)))
                  (_%method168090168095%_
                   _%object168089168094%_
                   _%key168073%_
                   _%value168074%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168096168101%_
                       (##unchecked-structure-ref
                        _%self154098168081%_
                        '1
                        '#f
                        'set!))
                      (_%method168097168102%_
                       (##unchecked-structure-ref
                        _%self154098168081%_
                        '9
                        '#f
                        'set!)))
                  (_%method168097168102%_
                   _%object168096168101%_
                   _%key168073%_
                   _%value168074%_)))))))
    (define __HashTable-update!
      (lambda (_%self154341168044%_
               _%key168045%_
               _%proc168046%_
               _%default168047%_)
        (let* ((_%self154341168049%_ _%self154341168044%_)
               (_%proc168056%_ _%proc168046%_))
          (declare (not safe))
          (let ((_%object168064168069%_
                 (##unchecked-structure-ref
                  _%self154341168049%_
                  '1
                  '#f
                  'update!))
                (_%method168065168070%_
                 (##unchecked-structure-ref
                  _%self154341168049%_
                  '10
                  '#f
                  'update!)))
            (_%method168065168070%_
             _%object168064168069%_
             _%key168045%_
             _%proc168056%_
             _%default168047%_)))))
    (define ::HashTable-update!
      (lambda (_%self154342168001%_
               _%key168002%_
               _%proc168003%_
               _%default168004%_)
        (let* ((_%self154342168009%_
                (let ((_%$obj168006%_ _%self154342168001%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168006%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168006%_)))
                           '#t)
                      _%$obj168006%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168006%_)))))
               (_%self154342168011%_ _%self154342168009%_))
          (if (procedure? _%proc168003%_)
              (let ((_%proc168020%_ _%proc168003%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object168029168034%_
                             (##unchecked-structure-ref
                              _%self154342168011%_
                              '1
                              '#f
                              'update!))
                            (_%method168030168035%_
                             (##unchecked-structure-ref
                              _%self154342168011%_
                              '10
                              '#f
                              'update!)))
                        (_%method168030168035%_
                         _%object168029168034%_
                         _%key168002%_
                         _%proc168020%_
                         _%default168004%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168036168041%_
                             (##unchecked-structure-ref
                              _%self154342168011%_
                              '1
                              '#f
                              'update!))
                            (_%method168037168042%_
                             (##unchecked-structure-ref
                              _%self154342168011%_
                              '10
                              '#f
                              'update!)))
                        (_%method168037168042%_
                         _%object168036168041%_
                         _%key168002%_
                         _%proc168020%_
                         _%default168004%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc168003%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp170014 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'Locker::t
         'Locker
         __tmp170014
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj170002
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170002
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj170002))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj167999%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj167999%_))))
    (define try-Locker
      (lambda (_%obj167997%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj167997%_))))
    (define Locker?
      (lambda (_%obj167995%_)
        (let ((__tmp170015
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj167995%_ __tmp170015))))
    (define is-Locker?
      (lambda (_%obj167992%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj167992%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self154585167975%_)
        (let ((_%self154585167977%_ _%self154585167975%_))
          (declare (not safe))
          (let ((_%object167984167989%_
                 (##unchecked-structure-ref
                  _%self154585167977%_
                  '1
                  '#f
                  'read-lock!))
                (_%method167985167990%_
                 (##unchecked-structure-ref
                  _%self154585167977%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method167985167990%_ _%object167984167989%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self154586167945%_)
        (let* ((_%self154586167950%_
                (let ((_%$obj167947%_ _%self154586167945%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj167947%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj167947%_)))
                           '#t)
                      _%$obj167947%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj167947%_)))))
               (_%self154586167952%_ _%self154586167950%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object167960167965%_
                       (##unchecked-structure-ref
                        _%self154586167952%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method167961167966%_
                       (##unchecked-structure-ref
                        _%self154586167952%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method167961167966%_ _%object167960167965%_)))
              (let ()
                (declare (not safe))
                (let ((_%object167967167972%_
                       (##unchecked-structure-ref
                        _%self154586167952%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method167968167973%_
                       (##unchecked-structure-ref
                        _%self154586167952%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method167968167973%_ _%object167967167972%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self154829167928%_)
        (let ((_%self154829167930%_ _%self154829167928%_))
          (declare (not safe))
          (let ((_%object167937167942%_
                 (##unchecked-structure-ref
                  _%self154829167930%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method167938167943%_
                 (##unchecked-structure-ref
                  _%self154829167930%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method167938167943%_ _%object167937167942%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self154830167898%_)
        (let* ((_%self154830167903%_
                (let ((_%$obj167900%_ _%self154830167898%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj167900%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj167900%_)))
                           '#t)
                      _%$obj167900%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj167900%_)))))
               (_%self154830167905%_ _%self154830167903%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object167913167918%_
                       (##unchecked-structure-ref
                        _%self154830167905%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method167914167919%_
                       (##unchecked-structure-ref
                        _%self154830167905%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method167914167919%_ _%object167913167918%_)))
              (let ()
                (declare (not safe))
                (let ((_%object167920167925%_
                       (##unchecked-structure-ref
                        _%self154830167905%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method167921167926%_
                       (##unchecked-structure-ref
                        _%self154830167905%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method167921167926%_ _%object167920167925%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self155073167881%_)
        (let ((_%self155073167883%_ _%self155073167881%_))
          (declare (not safe))
          (let ((_%object167890167895%_
                 (##unchecked-structure-ref
                  _%self155073167883%_
                  '1
                  '#f
                  'write-lock!))
                (_%method167891167896%_
                 (##unchecked-structure-ref
                  _%self155073167883%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method167891167896%_ _%object167890167895%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self155074167851%_)
        (let* ((_%self155074167856%_
                (let ((_%$obj167853%_ _%self155074167851%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj167853%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj167853%_)))
                           '#t)
                      _%$obj167853%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj167853%_)))))
               (_%self155074167858%_ _%self155074167856%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object167866167871%_
                       (##unchecked-structure-ref
                        _%self155074167858%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method167867167872%_
                       (##unchecked-structure-ref
                        _%self155074167858%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method167867167872%_ _%object167866167871%_)))
              (let ()
                (declare (not safe))
                (let ((_%object167873167878%_
                       (##unchecked-structure-ref
                        _%self155074167858%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method167874167879%_
                       (##unchecked-structure-ref
                        _%self155074167858%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method167874167879%_ _%object167873167878%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self155317167834%_)
        (let ((_%self155317167836%_ _%self155317167834%_))
          (declare (not safe))
          (let ((_%object167843167848%_
                 (##unchecked-structure-ref
                  _%self155317167836%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method167844167849%_
                 (##unchecked-structure-ref
                  _%self155317167836%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method167844167849%_ _%object167843167848%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self155318167804%_)
        (let* ((_%self155318167809%_
                (let ((_%$obj167806%_ _%self155318167804%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj167806%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj167806%_)))
                           '#t)
                      _%$obj167806%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj167806%_)))))
               (_%self155318167811%_ _%self155318167809%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object167819167824%_
                       (##unchecked-structure-ref
                        _%self155318167811%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method167820167825%_
                       (##unchecked-structure-ref
                        _%self155318167811%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method167820167825%_ _%object167819167824%_)))
              (let ()
                (declare (not safe))
                (let ((_%object167826167831%_
                       (##unchecked-structure-ref
                        _%self155318167811%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method167827167832%_
                       (##unchecked-structure-ref
                        _%self155318167811%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method167827167832%_ _%object167826167831%_)))))))
    (let* ((_%klass167767%_ __table::t)
           (_%id167770%_ 'HashTable::ref)
           (_%proc167773%_ raw-table-ref)
           (_%rebind?167776%_ '#f)
           (_%id167781%_ _%id167770%_)
           (_%proc167794%_ _%proc167773%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167767%_
       _%id167781%_
       _%proc167794%_
       _%rebind?167776%_))
    (let* ((_%klass167730%_ __table::t)
           (_%id167733%_ 'HashTable::set!)
           (_%proc167736%_ raw-table-set!)
           (_%rebind?167739%_ '#f)
           (_%id167744%_ _%id167733%_)
           (_%proc167757%_ _%proc167736%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167730%_
       _%id167744%_
       _%proc167757%_
       _%rebind?167739%_))
    (let* ((_%klass167693%_ __table::t)
           (_%id167696%_ 'HashTable::update!)
           (_%proc167699%_ raw-table-update!)
           (_%rebind?167702%_ '#f)
           (_%id167707%_ _%id167696%_)
           (_%proc167720%_ _%proc167699%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167693%_
       _%id167707%_
       _%proc167720%_
       _%rebind?167702%_))
    (let* ((_%klass167656%_ __table::t)
           (_%id167659%_ 'HashTable::delete!)
           (_%proc167662%_ raw-table-delete!)
           (_%rebind?167665%_ '#f)
           (_%id167670%_ _%id167659%_)
           (_%proc167683%_ _%proc167662%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167656%_
       _%id167670%_
       _%proc167683%_
       _%rebind?167665%_))
    (let* ((_%klass167619%_ __table::t)
           (_%id167622%_ 'HashTable::for-each)
           (_%proc167625%_ raw-table-for-each)
           (_%rebind?167628%_ '#f)
           (_%id167633%_ _%id167622%_)
           (_%proc167646%_ _%proc167625%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167619%_
       _%id167633%_
       _%proc167646%_
       _%rebind?167628%_))
    (let* ((_%klass167582%_ __table::t)
           (_%id167585%_ 'HashTable::length)
           (_%proc167588%_ &raw-table-count)
           (_%rebind?167591%_ '#f)
           (_%id167596%_ _%id167585%_)
           (_%proc167609%_ _%proc167588%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167582%_
       _%id167596%_
       _%proc167609%_
       _%rebind?167591%_))
    (let* ((_%klass167545%_ __table::t)
           (_%id167548%_ 'HashTable::copy)
           (_%proc167551%_ raw-table-copy)
           (_%rebind?167554%_ '#f)
           (_%id167559%_ _%id167548%_)
           (_%proc167572%_ _%proc167551%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167545%_
       _%id167559%_
       _%proc167572%_
       _%rebind?167554%_))
    (let* ((_%klass167508%_ __table::t)
           (_%id167511%_ 'HashTable::new)
           (_%proc167514%_ raw-table-new)
           (_%rebind?167517%_ '#f)
           (_%id167522%_ _%id167511%_)
           (_%proc167535%_ _%proc167514%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167508%_
       _%id167522%_
       _%proc167535%_
       _%rebind?167517%_))
    (let* ((_%klass167471%_ __table::t)
           (_%id167474%_ 'HashTable::clear!)
           (_%proc167477%_ raw-table-clear!)
           (_%rebind?167480%_ '#f)
           (_%id167485%_ _%id167474%_)
           (_%proc167498%_ _%proc167477%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167471%_
       _%id167485%_
       _%proc167498%_
       _%rebind?167480%_))
    (let* ((_%klass167434%_ __gc-table::t)
           (_%id167437%_ 'HashTable::ref)
           (_%proc167440%_ gc-table-ref)
           (_%rebind?167443%_ '#f)
           (_%id167448%_ _%id167437%_)
           (_%proc167461%_ _%proc167440%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167434%_
       _%id167448%_
       _%proc167461%_
       _%rebind?167443%_))
    (let* ((_%klass167397%_ __gc-table::t)
           (_%id167400%_ 'HashTable::set!)
           (_%proc167403%_ gc-table-set!)
           (_%rebind?167406%_ '#f)
           (_%id167411%_ _%id167400%_)
           (_%proc167424%_ _%proc167403%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167397%_
       _%id167411%_
       _%proc167424%_
       _%rebind?167406%_))
    (let* ((_%klass167360%_ __gc-table::t)
           (_%id167363%_ 'HashTable::update!)
           (_%proc167366%_ gc-table-update!)
           (_%rebind?167369%_ '#f)
           (_%id167374%_ _%id167363%_)
           (_%proc167387%_ _%proc167366%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167360%_
       _%id167374%_
       _%proc167387%_
       _%rebind?167369%_))
    (let* ((_%klass167323%_ __gc-table::t)
           (_%id167326%_ 'HashTable::delete!)
           (_%proc167329%_ gc-table-delete!)
           (_%rebind?167332%_ '#f)
           (_%id167337%_ _%id167326%_)
           (_%proc167350%_ _%proc167329%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167323%_
       _%id167337%_
       _%proc167350%_
       _%rebind?167332%_))
    (let* ((_%klass167286%_ __gc-table::t)
           (_%id167289%_ 'HashTable::for-each)
           (_%proc167292%_ gc-table-for-each)
           (_%rebind?167295%_ '#f)
           (_%id167300%_ _%id167289%_)
           (_%proc167313%_ _%proc167292%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167286%_
       _%id167300%_
       _%proc167313%_
       _%rebind?167295%_))
    (let* ((_%klass167249%_ __gc-table::t)
           (_%id167252%_ 'HashTable::length)
           (_%proc167255%_ gc-table-length)
           (_%rebind?167258%_ '#f)
           (_%id167263%_ _%id167252%_)
           (_%proc167276%_ _%proc167255%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167249%_
       _%id167263%_
       _%proc167276%_
       _%rebind?167258%_))
    (let* ((_%klass167212%_ __gc-table::t)
           (_%id167215%_ 'HashTable::copy)
           (_%proc167218%_ gc-table-copy)
           (_%rebind?167221%_ '#f)
           (_%id167226%_ _%id167215%_)
           (_%proc167239%_ _%proc167218%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167212%_
       _%id167226%_
       _%proc167239%_
       _%rebind?167221%_))
    (let* ((_%klass167175%_ __gc-table::t)
           (_%id167178%_ 'HashTable::new)
           (_%proc167181%_ gc-table-new)
           (_%rebind?167184%_ '#f)
           (_%id167189%_ _%id167178%_)
           (_%proc167202%_ _%proc167181%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167175%_
       _%id167189%_
       _%proc167202%_
       _%rebind?167184%_))
    (let* ((_%klass167138%_ __gc-table::t)
           (_%id167141%_ 'HashTable::clear!)
           (_%proc167144%_ gc-table-clear!)
           (_%rebind?167147%_ '#f)
           (_%id167152%_ _%id167141%_)
           (_%proc167165%_ _%proc167144%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167138%_
       _%id167152%_
       _%proc167165%_
       _%rebind?167147%_))
    (define gambit-table-update!
      (lambda (_%table167131%_
               _%key167132%_
               _%update167133%_
               _%default167134%_)
        (let ((_%result167136%_
               (table-ref _%table167131%_ _%key167132%_ _%default167134%_)))
          (table-set!
           _%table167131%_
           _%key167132%_
           (_%update167133%_ _%result167136%_)))))
    (define gambit-table-for-each
      (lambda (_%table167128%_ _%proc167129%_)
        (table-for-each _%proc167129%_ _%table167128%_)))
    (define gambit-table-clear!
      (lambda (_%table167126%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table167126%_ '0 '5 '#f '#f))))
    (let* ((_%klass167089%_ (macro-type-table))
           (_%id167092%_ 'HashTable::ref)
           (_%proc167095%_ table-ref)
           (_%rebind?167098%_ '#f)
           (_%id167103%_ _%id167092%_)
           (_%proc167116%_ _%proc167095%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167089%_
       _%id167103%_
       _%proc167116%_
       _%rebind?167098%_))
    (let* ((_%klass167052%_ (macro-type-table))
           (_%id167055%_ 'HashTable::set!)
           (_%proc167058%_ table-set!)
           (_%rebind?167061%_ '#f)
           (_%id167066%_ _%id167055%_)
           (_%proc167079%_ _%proc167058%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167052%_
       _%id167066%_
       _%proc167079%_
       _%rebind?167061%_))
    (let* ((_%klass167015%_ (macro-type-table))
           (_%id167018%_ 'HashTable::update!)
           (_%proc167021%_ gambit-table-update!)
           (_%rebind?167024%_ '#f)
           (_%id167029%_ _%id167018%_)
           (_%proc167042%_ _%proc167021%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167015%_
       _%id167029%_
       _%proc167042%_
       _%rebind?167024%_))
    (let* ((_%klass166978%_ (macro-type-table))
           (_%id166981%_ 'HashTable::delete!)
           (_%proc166984%_ table-set!)
           (_%rebind?166987%_ '#f)
           (_%id166992%_ _%id166981%_)
           (_%proc167005%_ _%proc166984%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166978%_
       _%id166992%_
       _%proc167005%_
       _%rebind?166987%_))
    (let* ((_%klass166941%_ (macro-type-table))
           (_%id166944%_ 'HashTable::for-each)
           (_%proc166947%_ gambit-table-for-each)
           (_%rebind?166950%_ '#f)
           (_%id166955%_ _%id166944%_)
           (_%proc166968%_ _%proc166947%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166941%_
       _%id166955%_
       _%proc166968%_
       _%rebind?166950%_))
    (let* ((_%klass166904%_ (macro-type-table))
           (_%id166907%_ 'HashTable::length)
           (_%proc166910%_ table-length)
           (_%rebind?166913%_ '#f)
           (_%id166918%_ _%id166907%_)
           (_%proc166931%_ _%proc166910%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166904%_
       _%id166918%_
       _%proc166931%_
       _%rebind?166913%_))
    (let* ((_%klass166867%_ (macro-type-table))
           (_%id166870%_ 'HashTable::copy)
           (_%proc166873%_ table-copy)
           (_%rebind?166876%_ '#f)
           (_%id166881%_ _%id166870%_)
           (_%proc166894%_ _%proc166873%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166867%_
       _%id166881%_
       _%proc166894%_
       _%rebind?166876%_))
    (let* ((_%klass166830%_ (macro-type-table))
           (_%id166833%_ 'HashTable::new)
           (_%proc166836%_ table-new)
           (_%rebind?166839%_ '#f)
           (_%id166844%_ _%id166833%_)
           (_%proc166857%_ _%proc166836%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166830%_
       _%id166844%_
       _%proc166857%_
       _%rebind?166839%_))
    (let* ((_%klass166793%_ (macro-type-table))
           (_%id166796%_ 'HashTable::clear!)
           (_%proc166799%_ gambit-table-clear!)
           (_%rebind?166802%_ '#f)
           (_%id166807%_ _%id166796%_)
           (_%proc166820%_ _%proc166799%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166793%_
       _%id166807%_
       _%proc166820%_
       _%rebind?166802%_))
    (define hash-table::t
      (let* ((_%slots166756%_ '(table count free hash test seed lock))
             (_%slot-vector166758%_ (list->vector (cons '#f _%slots166756%_)))
             (_%slot-table166784%_
              (let ((_%slot-table166760%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170018
                       (lambda (_%slot166762%_ _%field166763%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166760%_
                            _%slot166762%_
                            _%field166763%_))
                         (let ((__tmp170019
                                (let ((_%sym166765%_ _%slot166762%_))
                                  (if (symbol? _%sym166765%_)
                                      (let ((_%sym166770%_ _%sym166765%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym166770%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym166765%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166760%_
                            __tmp170019
                            _%field166763%_))))
                      (__tmp170016
                       (let ((__tmp170017
                              (let ()
                                (declare (not safe))
                                (##length _%slots166756%_))))
                         (declare (not safe))
                         (##iota __tmp170017 '1))))
                  (declare (not safe))
                  (##for-each __tmp170018 _%slots166756%_ __tmp170016))
                _%slot-table166760%_))
             (_%flags166786%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields166788%_ '#())
             (_%properties166790%_
              (cons (cons 'direct-slots: _%slots166756%_) '((struct: . #t))))
             (__tmp170020 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags166786%_
         __table::t
         _%fields166788%_
         __tmp170020
         _%slot-vector166758%_
         _%slot-table166784%_
         _%properties166790%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots166719%_ '(gcht immediate))
             (_%slot-vector166721%_ (list->vector (cons '#f _%slots166719%_)))
             (_%slot-table166747%_
              (let ((_%slot-table166723%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170023
                       (lambda (_%slot166725%_ _%field166726%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166723%_
                            _%slot166725%_
                            _%field166726%_))
                         (let ((__tmp170024
                                (let ((_%sym166728%_ _%slot166725%_))
                                  (if (symbol? _%sym166728%_)
                                      (let ((_%sym166733%_ _%sym166728%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym166733%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym166728%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166723%_
                            __tmp170024
                            _%field166726%_))))
                      (__tmp170021
                       (let ((__tmp170022
                              (let ()
                                (declare (not safe))
                                (##length _%slots166719%_))))
                         (declare (not safe))
                         (##iota __tmp170022 '1))))
                  (declare (not safe))
                  (##for-each __tmp170023 _%slots166719%_ __tmp170021))
                _%slot-table166723%_))
             (_%flags166749%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields166751%_ '#())
             (_%properties166753%_
              (cons (cons 'direct-slots: _%slots166719%_) '((struct: . #t))))
             (__tmp170025 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags166749%_
         __gc-table::t
         _%fields166751%_
         __tmp170025
         _%slot-vector166721%_
         _%slot-table166747%_
         _%properties166753%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp170027 (list))
            (__tmp170026
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp170027
         '(table lock)
         __tmp170026
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args166716%_
        (apply make-instance locked-hash-table::t _%$args166716%_)))
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
      (let ((__tmp170029 (list))
            (__tmp170028
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp170029
         '(table key-check)
         __tmp170028
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args166713%_
        (apply make-instance checked-hash-table::t _%$args166713%_)))
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
      (let ((__tmp170031 (list hash-table::t))
            (__tmp170030 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp170031
         '()
         __tmp170030
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args166710%_
        (apply make-instance eq-hash-table::t _%$args166710%_)))
    (define eqv-hash-table::t
      (let ((__tmp170033 (list hash-table::t))
            (__tmp170032 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp170033
         '()
         __tmp170032
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args166707%_
        (apply make-instance eqv-hash-table::t _%$args166707%_)))
    (define symbol-hash-table::t
      (let ((__tmp170035 (list hash-table::t))
            (__tmp170034 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp170035
         '()
         __tmp170034
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args166704%_
        (apply make-instance symbol-hash-table::t _%$args166704%_)))
    (define string-hash-table::t
      (let ((__tmp170037 (list hash-table::t))
            (__tmp170036 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp170037
         '()
         __tmp170036
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args166701%_
        (apply make-instance string-hash-table::t _%$args166701%_)))
    (define immediate-hash-table::t
      (let ((__tmp170039 (list hash-table::t))
            (__tmp170038 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp170039
         '()
         __tmp170038
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args166698%_
        (apply make-instance immediate-hash-table::t _%$args166698%_)))
    (let* ((_%klass166661%_ hash-table::t)
           (_%id166664%_ 'HashTable::ref)
           (_%proc166667%_ raw-table-ref)
           (_%rebind?166670%_ '#f)
           (_%id166675%_ _%id166664%_)
           (_%proc166688%_ _%proc166667%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166661%_
       _%id166675%_
       _%proc166688%_
       _%rebind?166670%_))
    (let* ((_%klass166624%_ hash-table::t)
           (_%id166627%_ 'HashTable::set!)
           (_%proc166630%_ raw-table-set!)
           (_%rebind?166633%_ '#f)
           (_%id166638%_ _%id166627%_)
           (_%proc166651%_ _%proc166630%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166624%_
       _%id166638%_
       _%proc166651%_
       _%rebind?166633%_))
    (let* ((_%klass166587%_ hash-table::t)
           (_%id166590%_ 'HashTable::update!)
           (_%proc166593%_ raw-table-update!)
           (_%rebind?166596%_ '#f)
           (_%id166601%_ _%id166590%_)
           (_%proc166614%_ _%proc166593%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166587%_
       _%id166601%_
       _%proc166614%_
       _%rebind?166596%_))
    (let* ((_%klass166550%_ hash-table::t)
           (_%id166553%_ 'HashTable::delete!)
           (_%proc166556%_ raw-table-delete!)
           (_%rebind?166559%_ '#f)
           (_%id166564%_ _%id166553%_)
           (_%proc166577%_ _%proc166556%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166550%_
       _%id166564%_
       _%proc166577%_
       _%rebind?166559%_))
    (let* ((_%klass166513%_ hash-table::t)
           (_%id166516%_ 'HashTable::for-each)
           (_%proc166519%_ raw-table-for-each)
           (_%rebind?166522%_ '#f)
           (_%id166527%_ _%id166516%_)
           (_%proc166540%_ _%proc166519%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166513%_
       _%id166527%_
       _%proc166540%_
       _%rebind?166522%_))
    (let* ((_%klass166476%_ hash-table::t)
           (_%id166479%_ 'HashTable::length)
           (_%proc166482%_ &raw-table-count)
           (_%rebind?166485%_ '#f)
           (_%id166490%_ _%id166479%_)
           (_%proc166503%_ _%proc166482%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166476%_
       _%id166490%_
       _%proc166503%_
       _%rebind?166485%_))
    (let* ((_%klass166439%_ hash-table::t)
           (_%id166442%_ 'HashTable::copy)
           (_%proc166445%_ raw-table-copy)
           (_%rebind?166448%_ '#f)
           (_%id166453%_ _%id166442%_)
           (_%proc166466%_ _%proc166445%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166439%_
       _%id166453%_
       _%proc166466%_
       _%rebind?166448%_))
    (let* ((_%klass166402%_ hash-table::t)
           (_%id166405%_ 'HashTable::new)
           (_%proc166408%_ raw-table-new)
           (_%rebind?166411%_ '#f)
           (_%id166416%_ _%id166405%_)
           (_%proc166429%_ _%proc166408%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166402%_
       _%id166416%_
       _%proc166429%_
       _%rebind?166411%_))
    (let* ((_%klass166365%_ hash-table::t)
           (_%id166368%_ 'HashTable::clear!)
           (_%proc166371%_ raw-table-clear!)
           (_%rebind?166374%_ '#f)
           (_%id166379%_ _%id166368%_)
           (_%proc166392%_ _%proc166371%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166365%_
       _%id166379%_
       _%proc166392%_
       _%rebind?166374%_))
    (let* ((_%klass166328%_ eq-hash-table::t)
           (_%id166331%_ 'HashTable::ref)
           (_%proc166334%_ eq-table-ref)
           (_%rebind?166337%_ '#f)
           (_%id166342%_ _%id166331%_)
           (_%proc166355%_ _%proc166334%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166328%_
       _%id166342%_
       _%proc166355%_
       _%rebind?166337%_))
    (let* ((_%klass166291%_ eq-hash-table::t)
           (_%id166294%_ 'HashTable::set!)
           (_%proc166297%_ eq-table-set!)
           (_%rebind?166300%_ '#f)
           (_%id166305%_ _%id166294%_)
           (_%proc166318%_ _%proc166297%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166291%_
       _%id166305%_
       _%proc166318%_
       _%rebind?166300%_))
    (let* ((_%klass166254%_ eq-hash-table::t)
           (_%id166257%_ 'HashTable::update!)
           (_%proc166260%_ eq-table-update!)
           (_%rebind?166263%_ '#f)
           (_%id166268%_ _%id166257%_)
           (_%proc166281%_ _%proc166260%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166254%_
       _%id166268%_
       _%proc166281%_
       _%rebind?166263%_))
    (let* ((_%klass166217%_ eq-hash-table::t)
           (_%id166220%_ 'HashTable::delete!)
           (_%proc166223%_ eq-table-delete!)
           (_%rebind?166226%_ '#f)
           (_%id166231%_ _%id166220%_)
           (_%proc166244%_ _%proc166223%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166217%_
       _%id166231%_
       _%proc166244%_
       _%rebind?166226%_))
    (let* ((_%klass166180%_ eqv-hash-table::t)
           (_%id166183%_ 'HashTable::ref)
           (_%proc166186%_ eqv-table-ref)
           (_%rebind?166189%_ '#f)
           (_%id166194%_ _%id166183%_)
           (_%proc166207%_ _%proc166186%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166180%_
       _%id166194%_
       _%proc166207%_
       _%rebind?166189%_))
    (let* ((_%klass166143%_ eqv-hash-table::t)
           (_%id166146%_ 'HashTable::set!)
           (_%proc166149%_ eqv-table-set!)
           (_%rebind?166152%_ '#f)
           (_%id166157%_ _%id166146%_)
           (_%proc166170%_ _%proc166149%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166143%_
       _%id166157%_
       _%proc166170%_
       _%rebind?166152%_))
    (let* ((_%klass166106%_ eqv-hash-table::t)
           (_%id166109%_ 'HashTable::update!)
           (_%proc166112%_ eqv-table-update!)
           (_%rebind?166115%_ '#f)
           (_%id166120%_ _%id166109%_)
           (_%proc166133%_ _%proc166112%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166106%_
       _%id166120%_
       _%proc166133%_
       _%rebind?166115%_))
    (let* ((_%klass166069%_ eqv-hash-table::t)
           (_%id166072%_ 'HashTable::delete!)
           (_%proc166075%_ eqv-table-delete!)
           (_%rebind?166078%_ '#f)
           (_%id166083%_ _%id166072%_)
           (_%proc166096%_ _%proc166075%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166069%_
       _%id166083%_
       _%proc166096%_
       _%rebind?166078%_))
    (let* ((_%klass166032%_ symbol-hash-table::t)
           (_%id166035%_ 'HashTable::ref)
           (_%proc166038%_ symbolic-table-ref)
           (_%rebind?166041%_ '#f)
           (_%id166046%_ _%id166035%_)
           (_%proc166059%_ _%proc166038%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166032%_
       _%id166046%_
       _%proc166059%_
       _%rebind?166041%_))
    (let* ((_%klass165995%_ symbol-hash-table::t)
           (_%id165998%_ 'HashTable::set!)
           (_%proc166001%_ symbolic-table-set!)
           (_%rebind?166004%_ '#f)
           (_%id166009%_ _%id165998%_)
           (_%proc166022%_ _%proc166001%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165995%_
       _%id166009%_
       _%proc166022%_
       _%rebind?166004%_))
    (let* ((_%klass165958%_ symbol-hash-table::t)
           (_%id165961%_ 'HashTable::update!)
           (_%proc165964%_ symbolic-table-update!)
           (_%rebind?165967%_ '#f)
           (_%id165972%_ _%id165961%_)
           (_%proc165985%_ _%proc165964%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165958%_
       _%id165972%_
       _%proc165985%_
       _%rebind?165967%_))
    (let* ((_%klass165921%_ symbol-hash-table::t)
           (_%id165924%_ 'HashTable::delete!)
           (_%proc165927%_ symbolic-table-delete!)
           (_%rebind?165930%_ '#f)
           (_%id165935%_ _%id165924%_)
           (_%proc165948%_ _%proc165927%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165921%_
       _%id165935%_
       _%proc165948%_
       _%rebind?165930%_))
    (let* ((_%klass165884%_ string-hash-table::t)
           (_%id165887%_ 'HashTable::ref)
           (_%proc165890%_ string-table-ref)
           (_%rebind?165893%_ '#f)
           (_%id165898%_ _%id165887%_)
           (_%proc165911%_ _%proc165890%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165884%_
       _%id165898%_
       _%proc165911%_
       _%rebind?165893%_))
    (let* ((_%klass165847%_ string-hash-table::t)
           (_%id165850%_ 'HashTable::set!)
           (_%proc165853%_ string-table-set!)
           (_%rebind?165856%_ '#f)
           (_%id165861%_ _%id165850%_)
           (_%proc165874%_ _%proc165853%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165847%_
       _%id165861%_
       _%proc165874%_
       _%rebind?165856%_))
    (let* ((_%klass165810%_ string-hash-table::t)
           (_%id165813%_ 'HashTable::update!)
           (_%proc165816%_ string-table-update!)
           (_%rebind?165819%_ '#f)
           (_%id165824%_ _%id165813%_)
           (_%proc165837%_ _%proc165816%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165810%_
       _%id165824%_
       _%proc165837%_
       _%rebind?165819%_))
    (let* ((_%klass165773%_ string-hash-table::t)
           (_%id165776%_ 'HashTable::delete!)
           (_%proc165779%_ string-table-delete!)
           (_%rebind?165782%_ '#f)
           (_%id165787%_ _%id165776%_)
           (_%proc165800%_ _%proc165779%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165773%_
       _%id165787%_
       _%proc165800%_
       _%rebind?165782%_))
    (let* ((_%klass165736%_ immediate-hash-table::t)
           (_%id165739%_ 'HashTable::ref)
           (_%proc165742%_ immediate-table-ref)
           (_%rebind?165745%_ '#f)
           (_%id165750%_ _%id165739%_)
           (_%proc165763%_ _%proc165742%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165736%_
       _%id165750%_
       _%proc165763%_
       _%rebind?165745%_))
    (let* ((_%klass165699%_ immediate-hash-table::t)
           (_%id165702%_ 'HashTable::set!)
           (_%proc165705%_ immediate-table-set!)
           (_%rebind?165708%_ '#f)
           (_%id165713%_ _%id165702%_)
           (_%proc165726%_ _%proc165705%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165699%_
       _%id165713%_
       _%proc165726%_
       _%rebind?165708%_))
    (let* ((_%klass165662%_ immediate-hash-table::t)
           (_%id165665%_ 'HashTable::update!)
           (_%proc165668%_ immediate-table-update!)
           (_%rebind?165671%_ '#f)
           (_%id165676%_ _%id165665%_)
           (_%proc165689%_ _%proc165668%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165662%_
       _%id165676%_
       _%proc165689%_
       _%rebind?165671%_))
    (let* ((_%klass165625%_ immediate-hash-table::t)
           (_%id165628%_ 'HashTable::delete!)
           (_%proc165631%_ immediate-table-delete!)
           (_%rebind?165634%_ '#f)
           (_%id165639%_ _%id165628%_)
           (_%proc165652%_ _%proc165631%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165625%_
       _%id165639%_
       _%proc165652%_
       _%rebind?165634%_))
    (let* ((_%klass165588%_ gc-hash-table::t)
           (_%id165591%_ 'HashTable::ref)
           (_%proc165594%_ gc-table-ref)
           (_%rebind?165597%_ '#f)
           (_%id165602%_ _%id165591%_)
           (_%proc165615%_ _%proc165594%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165588%_
       _%id165602%_
       _%proc165615%_
       _%rebind?165597%_))
    (let* ((_%klass165551%_ gc-hash-table::t)
           (_%id165554%_ 'HashTable::set!)
           (_%proc165557%_ gc-table-set!)
           (_%rebind?165560%_ '#f)
           (_%id165565%_ _%id165554%_)
           (_%proc165578%_ _%proc165557%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165551%_
       _%id165565%_
       _%proc165578%_
       _%rebind?165560%_))
    (let* ((_%klass165514%_ gc-hash-table::t)
           (_%id165517%_ 'HashTable::update!)
           (_%proc165520%_ gc-table-update!)
           (_%rebind?165523%_ '#f)
           (_%id165528%_ _%id165517%_)
           (_%proc165541%_ _%proc165520%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165514%_
       _%id165528%_
       _%proc165541%_
       _%rebind?165523%_))
    (let* ((_%klass165477%_ gc-hash-table::t)
           (_%id165480%_ 'HashTable::delete!)
           (_%proc165483%_ gc-table-delete!)
           (_%rebind?165486%_ '#f)
           (_%id165491%_ _%id165480%_)
           (_%proc165504%_ _%proc165483%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165477%_
       _%id165491%_
       _%proc165504%_
       _%rebind?165486%_))
    (let* ((_%klass165440%_ gc-hash-table::t)
           (_%id165443%_ 'HashTable::for-each)
           (_%proc165446%_ gc-table-for-each)
           (_%rebind?165449%_ '#f)
           (_%id165454%_ _%id165443%_)
           (_%proc165467%_ _%proc165446%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165440%_
       _%id165454%_
       _%proc165467%_
       _%rebind?165449%_))
    (let* ((_%klass165403%_ gc-hash-table::t)
           (_%id165406%_ 'HashTable::length)
           (_%proc165409%_ gc-table-length)
           (_%rebind?165412%_ '#f)
           (_%id165417%_ _%id165406%_)
           (_%proc165430%_ _%proc165409%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165403%_
       _%id165417%_
       _%proc165430%_
       _%rebind?165412%_))
    (let* ((_%klass165366%_ gc-hash-table::t)
           (_%id165369%_ 'HashTable::copy)
           (_%proc165372%_ gc-table-copy)
           (_%rebind?165375%_ '#f)
           (_%id165380%_ _%id165369%_)
           (_%proc165393%_ _%proc165372%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165366%_
       _%id165380%_
       _%proc165393%_
       _%rebind?165375%_))
    (let* ((_%klass165329%_ gc-hash-table::t)
           (_%id165332%_ 'HashTable::new)
           (_%proc165335%_ gc-table-new)
           (_%rebind?165338%_ '#f)
           (_%id165343%_ _%id165332%_)
           (_%proc165356%_ _%proc165335%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165329%_
       _%id165343%_
       _%proc165356%_
       _%rebind?165338%_))
    (let* ((_%klass165292%_ gc-hash-table::t)
           (_%id165295%_ 'HashTable::clear!)
           (_%proc165298%_ gc-table-clear!)
           (_%rebind?165301%_ '#f)
           (_%id165306%_ _%id165295%_)
           (_%proc165319%_ _%proc165298%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165292%_
       _%id165306%_
       _%proc165319%_
       _%rebind?165301%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref155943%_
      (lambda (_%self165213%_ _%key165215%_ _%default165216%_)
        (let* ((_%self165219%_ _%self165213%_)
               (_%key165228%_ _%key165215%_)
               (_%default165236%_ _%default165216%_))
          (let ((_%h165245%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165219%_ '1 '#f '#f)))
                (_%l165247%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165219%_ '2 '#f '#f))))
            (let ((__tmp170042
                   (lambda ()
                     (let ((_%self154583165251%_ _%l165247%_))
                       (declare (not safe))
                       (let ((_%object165254165259%_
                              (##unchecked-structure-ref
                               _%self154583165251%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method165255165260%_
                              (##unchecked-structure-ref
                               _%self154583165251%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method165255165260%_ _%object165254165259%_)))))
                  (__tmp170041
                   (lambda ()
                     (let* ((_%self153851165263%_ _%h165245%_)
                            (_%key165266%_ _%key165228%_)
                            (_%default165269%_ _%default165236%_))
                       (declare (not safe))
                       (let ((_%object165272165277%_
                              (##unchecked-structure-ref
                               _%self153851165263%_
                               '1
                               '#f
                               'ref))
                             (_%method165273165278%_
                              (##unchecked-structure-ref
                               _%self153851165263%_
                               '8
                               '#f
                               'ref)))
                         (_%method165273165278%_
                          _%object165272165277%_
                          _%key165266%_
                          _%default165269%_)))))
                  (__tmp170040
                   (lambda ()
                     (let ((_%self154827165281%_ _%l165247%_))
                       (declare (not safe))
                       (let ((_%object165284165289%_
                              (##unchecked-structure-ref
                               _%self154827165281%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method165285165290%_
                              (##unchecked-structure-ref
                               _%self154827165281%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method165285165290%_ _%object165284165289%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170042 __tmp170041 __tmp170040))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref155943%_
       '#f))
    (define _%locked-hash-table::HashTable::set!155945%_
      (lambda (_%self165011%_ _%key165013%_ _%value165014%_)
        (let* ((_%self165017%_ _%self165011%_)
               (_%key165026%_ _%key165013%_)
               (_%value165034%_ _%value165014%_))
          (let ((_%h165043%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165017%_ '1 '#f '#f)))
                (_%l165045%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165017%_ '2 '#f '#f))))
            (let ((__tmp170045
                   (lambda ()
                     (let ((_%self155071165049%_ _%l165045%_))
                       (declare (not safe))
                       (let ((_%object165052165057%_
                              (##unchecked-structure-ref
                               _%self155071165049%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method165053165058%_
                              (##unchecked-structure-ref
                               _%self155071165049%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method165053165058%_ _%object165052165057%_)))))
                  (__tmp170044
                   (lambda ()
                     (let* ((_%self154095165061%_ _%h165043%_)
                            (_%key165064%_ _%key165026%_)
                            (_%value165067%_ _%value165034%_))
                       (declare (not safe))
                       (let ((_%object165070165075%_
                              (##unchecked-structure-ref
                               _%self154095165061%_
                               '1
                               '#f
                               'set!))
                             (_%method165071165076%_
                              (##unchecked-structure-ref
                               _%self154095165061%_
                               '9
                               '#f
                               'set!)))
                         (_%method165071165076%_
                          _%object165070165075%_
                          _%key165064%_
                          _%value165067%_)))))
                  (__tmp170043
                   (lambda ()
                     (let ((_%self155315165079%_ _%l165045%_))
                       (declare (not safe))
                       (let ((_%object165082165087%_
                              (##unchecked-structure-ref
                               _%self155315165079%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method165083165088%_
                              (##unchecked-structure-ref
                               _%self155315165079%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method165083165088%_ _%object165082165087%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170045 __tmp170044 __tmp170043))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!155945%_
       '#f))
    (define _%locked-hash-table::HashTable::update!155947%_
      (lambda (_%self164797%_ _%key164799%_ _%update164800%_ _%default164801%_)
        (let* ((_%self164804%_ _%self164797%_)
               (_%key164813%_ _%key164799%_)
               (_%update164821%_ _%update164800%_)
               (_%default164829%_ _%default164801%_))
          (let ((_%h164838%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164804%_ '1 '#f '#f)))
                (_%l164840%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164804%_ '2 '#f '#f))))
            (let ((__tmp170048
                   (lambda ()
                     (let ((_%self155071164844%_ _%l164840%_))
                       (declare (not safe))
                       (let ((_%object164847164852%_
                              (##unchecked-structure-ref
                               _%self155071164844%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method164848164853%_
                              (##unchecked-structure-ref
                               _%self155071164844%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method164848164853%_ _%object164847164852%_)))))
                  (__tmp170047
                   (lambda ()
                     (let* ((_%self154339164856%_ _%h164838%_)
                            (_%key164859%_ _%key164813%_)
                            (_%proc164862%_ _%update164821%_)
                            (_%default164865%_ _%default164829%_))
                       (declare (not safe))
                       (let ((_%object164868164873%_
                              (##unchecked-structure-ref
                               _%self154339164856%_
                               '1
                               '#f
                               'update!))
                             (_%method164869164874%_
                              (##unchecked-structure-ref
                               _%self154339164856%_
                               '10
                               '#f
                               'update!)))
                         (_%method164869164874%_
                          _%object164868164873%_
                          _%key164859%_
                          _%proc164862%_
                          _%default164865%_)))))
                  (__tmp170046
                   (lambda ()
                     (let ((_%self155315164877%_ _%l164840%_))
                       (declare (not safe))
                       (let ((_%object164880164885%_
                              (##unchecked-structure-ref
                               _%self155315164877%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method164881164886%_
                              (##unchecked-structure-ref
                               _%self155315164877%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method164881164886%_ _%object164880164885%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170048 __tmp170047 __tmp170046))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!155947%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!155949%_
      (lambda (_%self164607%_ _%key164609%_)
        (let* ((_%self164612%_ _%self164607%_) (_%key164621%_ _%key164609%_))
          (let ((_%h164630%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164612%_ '1 '#f '#f)))
                (_%l164632%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164612%_ '2 '#f '#f))))
            (let ((__tmp170051
                   (lambda ()
                     (let ((_%self155071164636%_ _%l164632%_))
                       (declare (not safe))
                       (let ((_%object164639164644%_
                              (##unchecked-structure-ref
                               _%self155071164636%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method164640164645%_
                              (##unchecked-structure-ref
                               _%self155071164636%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method164640164645%_ _%object164639164644%_)))))
                  (__tmp170050
                   (lambda ()
                     (let* ((_%self152875164648%_ _%h164630%_)
                            (_%key164651%_ _%key164621%_))
                       (declare (not safe))
                       (let ((_%object164654164659%_
                              (##unchecked-structure-ref
                               _%self152875164648%_
                               '1
                               '#f
                               'delete!))
                             (_%method164655164660%_
                              (##unchecked-structure-ref
                               _%self152875164648%_
                               '4
                               '#f
                               'delete!)))
                         (_%method164655164660%_
                          _%object164654164659%_
                          _%key164651%_)))))
                  (__tmp170049
                   (lambda ()
                     (let ((_%self155315164663%_ _%l164632%_))
                       (declare (not safe))
                       (let ((_%object164666164671%_
                              (##unchecked-structure-ref
                               _%self155315164663%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method164667164672%_
                              (##unchecked-structure-ref
                               _%self155315164663%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method164667164672%_ _%object164666164671%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170051 __tmp170050 __tmp170049))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!155949%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each155951%_
      (lambda (_%self164417%_ _%proc164419%_)
        (let* ((_%self164422%_ _%self164417%_) (_%proc164431%_ _%proc164419%_))
          (let ((_%h164440%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164422%_ '1 '#f '#f)))
                (_%l164442%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164422%_ '2 '#f '#f))))
            (let ((__tmp170054
                   (lambda ()
                     (let ((_%self154583164446%_ _%l164442%_))
                       (declare (not safe))
                       (let ((_%object164449164454%_
                              (##unchecked-structure-ref
                               _%self154583164446%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method164450164455%_
                              (##unchecked-structure-ref
                               _%self154583164446%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method164450164455%_ _%object164449164454%_)))))
                  (__tmp170053
                   (lambda ()
                     (let* ((_%self153119164458%_ _%h164440%_)
                            (_%proc164461%_ _%proc164431%_))
                       (declare (not safe))
                       (let ((_%object164464164469%_
                              (##unchecked-structure-ref
                               _%self153119164458%_
                               '1
                               '#f
                               'for-each))
                             (_%method164465164470%_
                              (##unchecked-structure-ref
                               _%self153119164458%_
                               '5
                               '#f
                               'for-each)))
                         (_%method164465164470%_
                          _%object164464164469%_
                          _%proc164461%_)))))
                  (__tmp170052
                   (lambda ()
                     (let ((_%self154827164473%_ _%l164442%_))
                       (declare (not safe))
                       (let ((_%object164476164481%_
                              (##unchecked-structure-ref
                               _%self154827164473%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method164477164482%_
                              (##unchecked-structure-ref
                               _%self154827164473%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method164477164482%_ _%object164476164481%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170054 __tmp170053 __tmp170052))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each155951%_
       '#f))
    (define _%locked-hash-table::HashTable::length155953%_
      (lambda (_%self164232%_)
        (let ((_%self164236%_ _%self164232%_))
          (let ((_%h164246%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164236%_ '1 '#f '#f)))
                (_%l164248%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164236%_ '2 '#f '#f))))
            (let* ((_%$%g164250164252%_
                    (let ((__tmp170057
                           (lambda ()
                             (let ((_%self154583164259%_ _%l164248%_))
                               (declare (not safe))
                               (let ((_%object164262164267%_
                                      (##unchecked-structure-ref
                                       _%self154583164259%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method164263164268%_
                                      (##unchecked-structure-ref
                                       _%self154583164259%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method164263164268%_
                                  _%object164262164267%_)))))
                          (__tmp170056
                           (lambda ()
                             (let ((_%self153363164271%_ _%h164246%_))
                               (declare (not safe))
                               (let ((_%object164274164279%_
                                      (##unchecked-structure-ref
                                       _%self153363164271%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method164275164280%_
                                      (##unchecked-structure-ref
                                       _%self153363164271%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method164275164280%_
                                  _%object164274164279%_)))))
                          (__tmp170055
                           (lambda ()
                             (let ((_%self154827164283%_ _%l164248%_))
                               (declare (not safe))
                               (let ((_%object164286164291%_
                                      (##unchecked-structure-ref
                                       _%self154827164283%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method164287164292%_
                                      (##unchecked-structure-ref
                                       _%self154827164283%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method164287164292%_
                                  _%object164286164291%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp170057 __tmp170056 __tmp170055)))
                   (_%val164255%_ _%$%g164250164252%_))
              (if (fixnum? _%val164255%_)
                  _%val164255%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val164255%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length155953%_
       '#f))
    (define _%locked-hash-table::HashTable::copy155955%_
      (lambda (_%self164051%_)
        (let ((_%self164055%_ _%self164051%_))
          (let ((_%h164065%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164055%_ '1 '#f '#f)))
                (_%l164067%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164055%_ '2 '#f '#f))))
            (let ((_%$obj164106%_
                   (let ((__tmp170060
                          (lambda ()
                            (let ((_%self154583164071%_ _%l164067%_))
                              (declare (not safe))
                              (let ((_%object164074164079%_
                                     (##unchecked-structure-ref
                                      _%self154583164071%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method164075164080%_
                                     (##unchecked-structure-ref
                                      _%self154583164071%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method164075164080%_
                                 _%object164074164079%_)))))
                         (__tmp170059
                          (lambda ()
                            (let ((_%self152631164083%_ _%h164065%_))
                              (declare (not safe))
                              (let ((_%object164086164091%_
                                     (##unchecked-structure-ref
                                      _%self152631164083%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method164087164092%_
                                     (##unchecked-structure-ref
                                      _%self152631164083%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method164087164092%_
                                 _%object164086164091%_)))))
                         (__tmp170058
                          (lambda ()
                            (let ((_%self154827164095%_ _%l164067%_))
                              (declare (not safe))
                              (let ((_%object164098164103%_
                                     (##unchecked-structure-ref
                                      _%self154827164095%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method164099164104%_
                                     (##unchecked-structure-ref
                                      _%self154827164095%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method164099164104%_
                                 _%object164098164103%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp170060 __tmp170059 __tmp170058))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj164106%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj164106%_)))
                       '#t)
                  _%$obj164106%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj164106%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy155955%_
       '#f))
    (define _%locked-hash-table::HashTable::new155957%_
      (lambda (_%self163850%_ _%size-hint163852%_)
        (let ((_%self163855%_ _%self163850%_))
          (if (or (not _%size-hint163852%_) (fixnum? _%size-hint163852%_))
              (let ((_%size-hint163871%_ _%size-hint163852%_))
                (let ((_%h163881%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self163855%_
                          '1
                          '#f
                          '#f)))
                      (_%l163883%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self163855%_
                          '2
                          '#f
                          '#f))))
                  (let ((_%$obj163925%_
                         (let ((__tmp170063
                                (lambda ()
                                  (let ((_%self154583163887%_ _%l163883%_))
                                    (declare (not safe))
                                    (let ((_%object163890163895%_
                                           (##unchecked-structure-ref
                                            _%self154583163887%_
                                            '1
                                            '#f
                                            'read-lock!))
                                          (_%method163891163896%_
                                           (##unchecked-structure-ref
                                            _%self154583163887%_
                                            '2
                                            '#f
                                            'read-lock!)))
                                      (_%method163891163896%_
                                       _%object163890163895%_)))))
                               (__tmp170062
                                (lambda ()
                                  (let* ((_%self153607163899%_ _%h163881%_)
                                         (_%size-hint163902%_
                                          _%size-hint163871%_))
                                    (declare (not safe))
                                    (let ((_%object163905163910%_
                                           (##unchecked-structure-ref
                                            _%self153607163899%_
                                            '1
                                            '#f
                                            'new))
                                          (_%method163906163911%_
                                           (##unchecked-structure-ref
                                            _%self153607163899%_
                                            '7
                                            '#f
                                            'new)))
                                      (_%method163906163911%_
                                       _%object163905163910%_
                                       _%size-hint163902%_)))))
                               (__tmp170061
                                (lambda ()
                                  (let ((_%self154827163914%_ _%l163883%_))
                                    (declare (not safe))
                                    (let ((_%object163917163922%_
                                           (##unchecked-structure-ref
                                            _%self154827163914%_
                                            '1
                                            '#f
                                            'read-unlock!))
                                          (_%method163918163923%_
                                           (##unchecked-structure-ref
                                            _%self154827163914%_
                                            '3
                                            '#f
                                            'read-unlock!)))
                                      (_%method163918163923%_
                                       _%object163917163922%_))))))
                           (declare (not safe))
                           (##dynamic-wind
                            __tmp170063
                            __tmp170062
                            __tmp170061))))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj163925%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj163925%_)))
                             '#t)
                        _%$obj163925%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj163925%_))))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@309.29-309.38"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint163852%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::new
       _%locked-hash-table::HashTable::new155957%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!155959%_
      (lambda (_%self163672%_)
        (let ((_%self163676%_ _%self163672%_))
          (let ((_%h163686%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self163676%_ '1 '#f '#f)))
                (_%l163688%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self163676%_ '2 '#f '#f))))
            (let ((__tmp170066
                   (lambda ()
                     (let ((_%self155071163692%_ _%l163688%_))
                       (declare (not safe))
                       (let ((_%object163695163700%_
                              (##unchecked-structure-ref
                               _%self155071163692%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method163696163701%_
                              (##unchecked-structure-ref
                               _%self155071163692%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method163696163701%_ _%object163695163700%_)))))
                  (__tmp170065
                   (lambda ()
                     (let ((_%self152386163704%_ _%h163686%_))
                       (declare (not safe))
                       (let ((_%object163707163712%_
                              (##unchecked-structure-ref
                               _%self152386163704%_
                               '1
                               '#f
                               'clear!))
                             (_%method163708163713%_
                              (##unchecked-structure-ref
                               _%self152386163704%_
                               '2
                               '#f
                               'clear!)))
                         (_%method163708163713%_ _%object163707163712%_)))))
                  (__tmp170064
                   (lambda ()
                     (let ((_%self155315163716%_ _%l163688%_))
                       (declare (not safe))
                       (let ((_%object163719163724%_
                              (##unchecked-structure-ref
                               _%self155315163716%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method163720163725%_
                              (##unchecked-structure-ref
                               _%self155315163716%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method163720163725%_ _%object163719163724%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170066 __tmp170065 __tmp170064))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!155959%_
       '#f))
    (let* ((_%klass163512%_ (macro-type-mutex))
           (_%id163515%_ 'Locker::read-lock!)
           (_%proc163518%_ mutex-lock!)
           (_%rebind?163521%_ '#f)
           (_%id163526%_ _%id163515%_)
           (_%proc163539%_ _%proc163518%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163512%_
       _%id163526%_
       _%proc163539%_
       _%rebind?163521%_))
    (let* ((_%klass163475%_ (macro-type-mutex))
           (_%id163478%_ 'Locker::read-unlock!)
           (_%proc163481%_ mutex-unlock!)
           (_%rebind?163484%_ '#f)
           (_%id163489%_ _%id163478%_)
           (_%proc163502%_ _%proc163481%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163475%_
       _%id163489%_
       _%proc163502%_
       _%rebind?163484%_))
    (let* ((_%klass163438%_ (macro-type-mutex))
           (_%id163441%_ 'Locker::write-lock!)
           (_%proc163444%_ mutex-lock!)
           (_%rebind?163447%_ '#f)
           (_%id163452%_ _%id163441%_)
           (_%proc163465%_ _%proc163444%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163438%_
       _%id163452%_
       _%proc163465%_
       _%rebind?163447%_))
    (let* ((_%klass163401%_ (macro-type-mutex))
           (_%id163404%_ 'Locker::write-unlock!)
           (_%proc163407%_ mutex-unlock!)
           (_%rebind?163410%_ '#f)
           (_%id163415%_ _%id163404%_)
           (_%proc163428%_ _%proc163407%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163401%_
       _%id163415%_
       _%proc163428%_
       _%rebind?163410%_))
    (define _%checked-hash-table::HashTable::ref156170%_
      (lambda (_%self163342%_ _%key163343%_ _%default163344%_)
        (let* ((_%self163347%_ _%self163342%_)
               (_%key163356%_ _%key163343%_)
               (_%default163364%_ _%default163344%_))
          (declare (not safe))
          (let ((_%h163375%_
                 (##unchecked-structure-ref _%self163347%_ '1 '#f '#f))
                (_%key?163377%_
                 (##unchecked-structure-ref _%self163347%_ '2 '#f '#f)))
            (if (_%key?163377%_ _%key163356%_)
                (let* ((_%self153851163384%_ _%h163375%_)
                       (_%key163387%_ _%key163356%_)
                       (_%default163390%_ _%default163364%_))
                  (declare (not safe))
                  (let ((_%object163393163398%_
                         (##unchecked-structure-ref
                          _%self153851163384%_
                          '1
                          '#f
                          'ref))
                        (_%method163394163399%_
                         (##unchecked-structure-ref
                          _%self153851163384%_
                          '8
                          '#f
                          'ref)))
                    (_%method163394163399%_
                     _%object163393163398%_
                     _%key163387%_
                     _%default163390%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key163356%_ (cons _%default163364%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref156170%_
       '#f))
    (define _%checked-hash-table::HashTable::set!156172%_
      (lambda (_%self163160%_ _%key163161%_ _%value163162%_)
        (let* ((_%self163165%_ _%self163160%_)
               (_%key163174%_ _%key163161%_)
               (_%value163182%_ _%value163162%_))
          (declare (not safe))
          (let ((_%h163193%_
                 (##unchecked-structure-ref _%self163165%_ '1 '#f '#f))
                (_%key?163195%_
                 (##unchecked-structure-ref _%self163165%_ '2 '#f '#f)))
            (if (_%key?163195%_ _%key163174%_)
                (let* ((_%self154095163202%_ _%h163193%_)
                       (_%key163205%_ _%key163174%_)
                       (_%value163208%_ _%value163182%_))
                  (declare (not safe))
                  (let ((_%object163211163216%_
                         (##unchecked-structure-ref
                          _%self154095163202%_
                          '1
                          '#f
                          'set!))
                        (_%method163212163217%_
                         (##unchecked-structure-ref
                          _%self154095163202%_
                          '9
                          '#f
                          'set!)))
                    (_%method163212163217%_
                     _%object163211163216%_
                     _%key163205%_
                     _%value163208%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key163174%_ (cons _%value163182%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!156172%_
       '#f))
    (define _%checked-hash-table::HashTable::update!156174%_
      (lambda (_%self162965%_ _%key162966%_ _%update162967%_ _%default162968%_)
        (let* ((_%self162971%_ _%self162965%_)
               (_%key162980%_ _%key162966%_)
               (_%update162988%_ _%update162967%_)
               (_%default162996%_ _%default162968%_))
          (declare (not safe))
          (let ((_%h163007%_
                 (##unchecked-structure-ref _%self162971%_ '1 '#f '#f))
                (_%key?163009%_
                 (##unchecked-structure-ref _%self162971%_ '2 '#f '#f)))
            (if (_%key?163009%_ _%key162980%_)
                (let* ((_%self154339163017%_ _%h163007%_)
                       (_%key163020%_ _%key162980%_)
                       (_%proc163023%_ _%update162988%_)
                       (_%default163026%_ _%default162996%_))
                  (declare (not safe))
                  (let ((_%object163029163034%_
                         (##unchecked-structure-ref
                          _%self154339163017%_
                          '1
                          '#f
                          'update!))
                        (_%method163030163035%_
                         (##unchecked-structure-ref
                          _%self154339163017%_
                          '10
                          '#f
                          'update!)))
                    (_%method163030163035%_
                     _%object163029163034%_
                     _%key163020%_
                     _%proc163023%_
                     _%default163026%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key162980%_
                         (cons _%update162988%_ (cons _%default162996%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!156174%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!156176%_
      (lambda (_%self162796%_ _%key162797%_)
        (let* ((_%self162800%_ _%self162796%_) (_%key162809%_ _%key162797%_))
          (declare (not safe))
          (let ((_%h162820%_
                 (##unchecked-structure-ref _%self162800%_ '1 '#f '#f))
                (_%key?162822%_
                 (##unchecked-structure-ref _%self162800%_ '2 '#f '#f)))
            (if (_%key?162822%_ _%key162809%_)
                (let* ((_%self152875162828%_ _%h162820%_)
                       (_%key162831%_ _%key162809%_))
                  (declare (not safe))
                  (let ((_%object162834162839%_
                         (##unchecked-structure-ref
                          _%self152875162828%_
                          '1
                          '#f
                          'delete!))
                        (_%method162835162840%_
                         (##unchecked-structure-ref
                          _%self152875162828%_
                          '4
                          '#f
                          'delete!)))
                    (_%method162835162840%_
                     _%object162834162839%_
                     _%key162831%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key162809%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!156176%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each156178%_
      (lambda (_%self162627%_ _%proc162628%_)
        (let* ((_%self162631%_ _%self162627%_) (_%proc162640%_ _%proc162628%_))
          (declare (not safe))
          (let ((_%h162651%_
                 (##unchecked-structure-ref _%self162631%_ '1 '#f '#f))
                (_%key?162653%_
                 (##unchecked-structure-ref _%self162631%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self153119162659%_ _%h162651%_)
                       (_%proc162662%_ _%proc162640%_))
                  (declare (not safe))
                  (let ((_%object162665162670%_
                         (##unchecked-structure-ref
                          _%self153119162659%_
                          '1
                          '#f
                          'for-each))
                        (_%method162666162671%_
                         (##unchecked-structure-ref
                          _%self153119162659%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162666162671%_
                     _%object162665162670%_
                     _%proc162662%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc162640%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each156178%_
       '#f))
    (define _%checked-hash-table::HashTable::length156180%_
      (lambda (_%self162473%_)
        (let ((_%self162476%_ _%self162473%_))
          (declare (not safe))
          (let ((_%h162488%_
                 (##unchecked-structure-ref _%self162476%_ '1 '#f '#f))
                (_%key?162490%_
                 (##unchecked-structure-ref _%self162476%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self153363162493%_ _%h162488%_))
                  (declare (not safe))
                  (let ((_%object162496162501%_
                         (##unchecked-structure-ref
                          _%self153363162493%_
                          '1
                          '#f
                          'length))
                        (_%method162497162502%_
                         (##unchecked-structure-ref
                          _%self153363162493%_
                          '6
                          '#f
                          'length)))
                    (_%method162497162502%_ _%object162496162501%_)))
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
       _%checked-hash-table::HashTable::length156180%_
       '#f))
    (define _%checked-hash-table::HashTable::copy156182%_
      (lambda (_%self162319%_)
        (let ((_%self162322%_ _%self162319%_))
          (declare (not safe))
          (let ((_%h162334%_
                 (##unchecked-structure-ref _%self162322%_ '1 '#f '#f))
                (_%key?162336%_
                 (##unchecked-structure-ref _%self162322%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self152631162339%_ _%h162334%_))
                  (declare (not safe))
                  (let ((_%object162342162347%_
                         (##unchecked-structure-ref
                          _%self152631162339%_
                          '1
                          '#f
                          'copy))
                        (_%method162343162348%_
                         (##unchecked-structure-ref
                          _%self152631162339%_
                          '3
                          '#f
                          'copy)))
                    (_%method162343162348%_ _%object162342162347%_)))
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
       _%checked-hash-table::HashTable::copy156182%_
       '#f))
    (define _%checked-hash-table::HashTable::new156184%_
      (lambda (_%self162145%_ _%size-hint162146%_)
        (let ((_%self162149%_ _%self162145%_))
          (if (or (not _%size-hint162146%_) (fixnum? _%size-hint162146%_))
              (let ((_%size-hint162165%_ _%size-hint162146%_))
                (declare (not safe))
                (let ((_%h162177%_
                       (##unchecked-structure-ref _%self162149%_ '1 '#f '#f))
                      (_%key?162179%_
                       (##unchecked-structure-ref _%self162149%_ '2 '#f '#f)))
                  (if '#!void
                      (let* ((_%self153607162182%_ _%h162177%_)
                             (_%size-hint162185%_ _%size-hint162165%_))
                        (declare (not safe))
                        (let ((_%object162188162193%_
                               (##unchecked-structure-ref
                                _%self153607162182%_
                                '1
                                '#f
                                'new))
                              (_%method162189162194%_
                               (##unchecked-structure-ref
                                _%self153607162182%_
                                '7
                                '#f
                                'new)))
                          (_%method162189162194%_
                           _%object162188162193%_
                           _%size-hint162185%_)))
                      (begin
                        (raise-contract-violation-error
                         '"invalid key"
                         'context:
                         '&HashTable-new
                         'value:
                         (cons _%size-hint162165%_ '()))
                        '#!void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@368.35-368.44"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint162146%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::new
       _%checked-hash-table::HashTable::new156184%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!156186%_
      (lambda (_%self161991%_)
        (let ((_%self161994%_ _%self161991%_))
          (declare (not safe))
          (let ((_%h162006%_
                 (##unchecked-structure-ref _%self161994%_ '1 '#f '#f))
                (_%key?162008%_
                 (##unchecked-structure-ref _%self161994%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self152386162011%_ _%h162006%_))
                  (declare (not safe))
                  (let ((_%object162014162019%_
                         (##unchecked-structure-ref
                          _%self152386162011%_
                          '1
                          '#f
                          'clear!))
                        (_%method162015162020%_
                         (##unchecked-structure-ref
                          _%self152386162011%_
                          '2
                          '#f
                          'clear!)))
                    (_%method162015162020%_ _%object162014162019%_)))
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
       _%checked-hash-table::HashTable::clear!156186%_
       '#f))
    (define make-generic-hash-table__%
      (lambda (_%table161840%_
               _%count161841%_
               _%free161842%_
               _%hash161843%_
               _%test161844%_
               _%seed161845%_
               _%lock161846%_)
        (let ((__tmp170067
               (let () (declare (not safe)) (ensure-lock _%lock161846%_))))
          (declare (not safe))
          (##structure
           hash-table::t
           _%table161840%_
           _%count161841%_
           _%free161842%_
           _%hash161843%_
           _%test161844%_
           _%seed161845%_
           __tmp170067))))
    (define make-generic-hash-table__0
      (lambda (_%table161851%_
               _%count161852%_
               _%free161853%_
               _%hash161854%_
               _%test161855%_
               _%seed161856%_)
        (let ((_%lock161858%_ '#f))
          (make-generic-hash-table__%
           _%table161851%_
           _%count161852%_
           _%free161853%_
           _%hash161854%_
           _%test161855%_
           _%seed161856%_
           _%lock161858%_))))
    (define make-generic-hash-table
      (lambda _g170068_
        (let ((_g170069_ (let () (declare (not safe)) (##length _g170068_))))
          (cond ((let () (declare (not safe)) (##fx= _g170069_ 6))
                 (apply make-generic-hash-table__0 _g170068_))
                ((let () (declare (not safe)) (##fx= _g170069_ 7))
                 (apply make-generic-hash-table__% _g170068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-generic-hash-table
                  _g170068_))))))
    (define make-hash-table__%
      (lambda (_%@@keywords161249%_
               _%$%size-hint161239161250%_
               _%$%seed161240161251%_
               _%$%test161241161252%_
               _%$%hash161242161253%_
               _%$%lock161243161254%_
               _%$%check161244161255%_
               _%$%weak-keys161245161256%_
               _%$%weak-values161246161257%_)
        (let* ((_%size-hint161259%_
                (if (eq? _%$%size-hint161239161250%_ absent-value)
                    '#f
                    _%$%size-hint161239161250%_))
               (_%seed161261%_
                (if (eq? _%$%seed161240161251%_ absent-value)
                    '#f
                    _%$%seed161240161251%_))
               (_%test161263%_
                (if (eq? _%$%test161241161252%_ absent-value)
                    equal?
                    _%$%test161241161252%_))
               (_%hash161265%_
                (if (eq? _%$%hash161242161253%_ absent-value)
                    '#f
                    _%$%hash161242161253%_))
               (_%lock161267%_
                (if (eq? _%$%lock161243161254%_ absent-value)
                    '#f
                    _%$%lock161243161254%_))
               (_%check161269%_
                (if (eq? _%$%check161244161255%_ absent-value)
                    '#f
                    _%$%check161244161255%_))
               (_%weak-keys161271%_
                (if (eq? _%$%weak-keys161245161256%_ absent-value)
                    '#f
                    _%$%weak-keys161245161256%_))
               (_%weak-values161273%_
                (if (eq? _%$%weak-values161246161257%_ absent-value)
                    '#f
                    _%$%weak-values161246161257%_)))
          (letrec ((_%table-seed161276%_
                    (lambda ()
                      (if (fixnum? _%seed161261%_)
                          _%seed161261%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock161420%_
                    (lambda (_%ht161807%_)
                      (let ((_%ht161810%_ _%ht161807%_))
                        (if _%lock161267%_
                            (let ((_%$obj161822%_
                                   (let ((__tmp170070
                                          (let ((_%$obj161819%_
                                                 _%lock161267%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj161819%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj161819%_)))
                                                     '#t)
                                                _%$obj161819%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj161819%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht161810%_
                                      __tmp170070))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj161822%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj161822%_)))
                                       '#t)
                                  _%$obj161822%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj161822%_))))
                            _%ht161810%_))))
                   (_%wrap-lock161421%_
                    (lambda (_%ht161795%_)
                      (let ((_%ht161798%_ _%ht161795%_))
                        (_%__wrap-lock161420%_ _%ht161798%_))))
                   (_%__wrap-checked161543%_
                    (lambda (_%ht161779%_ _%implicit161780%_)
                      (let ((_%ht161783%_ _%ht161779%_))
                        (if _%check161269%_
                            (let ((_%$obj161792%_
                                   (let ((__tmp170071
                                          (if (procedure? _%check161269%_)
                                              _%check161269%_
                                              _%implicit161780%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht161783%_
                                      __tmp170071))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj161792%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj161792%_)))
                                       '#t)
                                  _%$obj161792%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj161792%_))))
                            _%ht161783%_))))
                   (_%wrap-checked161544%_
                    (lambda (_%ht161766%_ _%implicit161767%_)
                      (let ((_%ht161770%_ _%ht161766%_))
                        (_%__wrap-checked161543%_
                         _%ht161770%_
                         _%implicit161767%_))))
                   (_%make161545%_
                    (lambda (_%kons161714%_
                             _%key?161715%_
                             _%hash161716%_
                             _%test161717%_)
                      (let* ((_%size161720%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint161259%_)))
                             (_%table161722%_
                              (let ((__tmp170072 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size161720%_ __tmp170072)))
                             (_%ht161727%_
                              (let ((_%$obj161724%_
                                     (_%kons161714%_
                                      _%table161722%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size161720%_ '2))
                                      _%hash161716%_
                                      _%test161717%_
                                      (_%table-seed161276%_)
                                      '#f)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj161724%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj161724%_)))
                                         '#t)
                                    _%$obj161724%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj161724%_)))))
                             (_%ht161749%_
                              (let* ((_%ht161730%_ _%ht161727%_)
                                     (_%ht161734%_ _%ht161730%_))
                                (_%__wrap-lock161420%_ _%ht161734%_)))
                             (_%implicit161752%_ _%key?161715%_)
                             (_%ht161756%_ _%ht161749%_))
                        (_%__wrap-checked161543%_
                         _%ht161756%_
                         _%implicit161752%_))))
                   (_%make-gc-hash-table161546%_
                    (lambda ()
                      (let* ((_%ht161679%_
                              (let ((_%$obj161676%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint161259%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj161676%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj161676%_)))
                                         '#t)
                                    _%$obj161676%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj161676%_)))))
                             (_%ht161697%_
                              (let* ((_%ht161681%_ _%ht161679%_)
                                     (_%ht161685%_ _%ht161681%_))
                                (_%__wrap-lock161420%_ _%ht161685%_)))
                             (_%implicit161700%_ true)
                             (_%ht161704%_ _%ht161697%_))
                        (_%__wrap-checked161543%_
                         _%ht161704%_
                         _%implicit161700%_))))
                   (_%make-gambit-table161547%_
                    (lambda ()
                      (let* ((_%size161616%_
                              (let ((_%$e161613%_ _%size-hint161259%_))
                                (if _%$e161613%_
                                    _%$e161613%_
                                    (macro-absent-obj))))
                             (_%test161621%_
                              (let ((_%$e161618%_ _%test161263%_))
                                (if _%$e161618%_ _%$e161618%_ equal?)))
                             (_%hash161629%_
                              (let ((_%$e161623%_ _%hash161265%_))
                                (if _%$e161623%_
                                    _%$e161623%_
                                    (if (eq? _%test161621%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test161621%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht161634%_
                              (let ((_%$obj161631%_
                                     (make-table
                                      'size:
                                      _%size161616%_
                                      'test:
                                      _%test161621%_
                                      'hash:
                                      _%hash161629%_
                                      'weak-keys:
                                      _%weak-keys161271%_
                                      'weak-values:
                                      _%weak-values161273%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj161631%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj161631%_)))
                                         '#t)
                                    _%$obj161631%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj161631%_)))))
                             (_%ht161657%_
                              (let* ((_%ht161637%_ _%ht161634%_)
                                     (_%ht161641%_ _%ht161637%_))
                                (_%__wrap-lock161420%_ _%ht161641%_)))
                             (_%implicit161660%_ true)
                             (_%ht161664%_ _%ht161657%_))
                        (_%__wrap-checked161543%_
                         _%ht161664%_
                         _%implicit161660%_)))))
            (if (or _%weak-keys161271%_ _%weak-values161273%_)
                (_%make-gambit-table161547%_)
                (if (and (or (eq? _%test161263%_ eq?)
                             (eq? _%test161263%_ ##eq?))
                         (or (not _%hash161265%_)
                             (eq? _%hash161265%_ eq?-hash)
                             (eq? _%hash161265%_ eq-hash))
                         (not _%seed161261%_))
                    (_%make-gc-hash-table161546%_)
                    (if (and (or (eq? _%test161263%_ eq?)
                                 (eq? _%test161263%_ ##eq?))
                             (or (not _%hash161265%_)
                                 (eq? _%hash161265%_ eq?-hash)
                                 (eq? _%hash161265%_ eq-hash)))
                        (_%make161545%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test161263%_ eqv?)
                                     (eq? _%test161263%_ ##eqv?))
                                 (or (not _%hash161265%_)
                                     (eq? _%hash161265%_ eqv?-hash)
                                     (eq? _%hash161265%_ eqv-hash)))
                            (_%make161545%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test161263%_ eq?)
                                         (eq? _%test161263%_ ##eq?))
                                     (or (eq? _%hash161265%_ symbolic-hash)
                                         (eq? _%hash161265%_ ##symbol-hash)))
                                (_%make161545%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test161263%_ eq?)
                                             (eq? _%test161263%_ ##eq?))
                                         (eq? _%hash161265%_ immediate-hash))
                                    (_%make161545%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test161263%_ equal?)
                                                 (eq? _%test161263%_ ##equal?)
                                                 (eq? _%test161263%_ string=?)
                                                 (eq? _%test161263%_
                                                      ##string=?))
                                             (or (eq? _%hash161265%_
                                                      string-hash)
                                                 (eq? _%hash161265%_
                                                      ##string=?-hash)))
                                        (_%make161545%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test161263%_ equal?)
                                                 (not _%hash161265%_))
                                            (_%make161545%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test161263%_)
                                                (if (procedure? _%hash161265%_)
                                                    (_%make161545%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash161265%_
                                                     _%test161263%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash161265%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test161263%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords161829%_ . _%args161830%_)
        (apply make-hash-table__%
               _%@@keywords161829%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161829%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161829%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161829%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161829%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161829%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161829%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161829%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161829%_
                  'weak-values:
                  absent-value))
               _%args161830%_)))
    (define make-hash-table
      (lambda _%$%args161247161836%_
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
               _%$%args161247161836%_)))
    (define make-hash-table-eq
      (lambda _%args161236%_
        (apply make-hash-table 'test: eq? _%args161236%_)))
    (define make-hash-table-eqv
      (lambda _%args161234%_
        (apply make-hash-table 'test: eqv? _%args161234%_)))
    (define make-hash-table-symbolic
      (lambda _%args161232%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args161232%_)))
    (define make-hash-table-string
      (lambda _%args161230%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args161230%_)))
    (define make-hash-table-immediate
      (lambda _%args161228%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args161228%_)))
    (define list->hash-table
      (lambda (_%lst161225%_ . _%args161226%_)
        (list->hash-table!
         _%lst161225%_
         (apply make-hash-table
                'size:
                (length _%lst161225%_)
                _%args161226%_))))
    (define list->hash-table-eq
      (lambda (_%lst161222%_ . _%args161223%_)
        (list->hash-table!
         _%lst161222%_
         (apply make-hash-table-eq
                'size:
                (length _%lst161222%_)
                _%args161223%_))))
    (define list->hash-table-eqv
      (lambda (_%lst161219%_ . _%args161220%_)
        (list->hash-table!
         _%lst161219%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst161219%_)
                _%args161220%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst161216%_ . _%args161217%_)
        (list->hash-table!
         _%lst161216%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst161216%_)
                _%args161217%_))))
    (define list->hash-table-string
      (lambda (_%lst161213%_ . _%args161214%_)
        (list->hash-table!
         _%lst161213%_
         (apply make-hash-table-string
                'size:
                (length _%lst161213%_)
                _%args161214%_))))
    (define list->hash-table-immediate
      (lambda (_%lst161210%_ . _%args161211%_)
        (list->hash-table!
         _%lst161210%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst161210%_)
                _%args161211%_))))
    (define list->hash-table!
      (lambda (_%lst161161%_ _%h161162%_)
        (for-each
         (lambda (_%el161164%_)
           (let* ((_%$%el161165161172%_ _%el161164%_)
                  (_%$%E161167161175%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%$%el161165161172%_
                              '([k . v])))
                     '#!void))
                  (_%$%K161168161198%_
                   (lambda (_%v161178%_ _%k161179%_)
                     (let* ((_%self154095161181%_ _%h161162%_)
                            (_%key161184%_ _%k161179%_)
                            (_%value161187%_ _%v161178%_))
                       (declare (not safe))
                       (let ((_%object161190161195%_
                              (##unchecked-structure-ref
                               _%self154095161181%_
                               '1
                               '#f
                               'set!))
                             (_%method161191161196%_
                              (##unchecked-structure-ref
                               _%self154095161181%_
                               '9
                               '#f
                               'set!)))
                         (_%method161191161196%_
                          _%object161190161195%_
                          _%key161184%_
                          _%value161187%_))))))
             (if (pair? _%$%el161165161172%_)
                 (let ((_%$%hd161169161201%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el161165161172%_)))
                       (_%$%tl161170161203%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el161165161172%_))))
                   (let* ((_%k161206%_ _%$%hd161169161201%_)
                          (_%v161208%_ _%$%tl161170161203%_))
                     (_%$%K161168161198%_ _%v161208%_ _%k161206%_)))
                 (_%$%E161167161175%_))))
         _%lst161161%_)
        _%h161162%_))
    (define plist->hash-table
      (lambda (_%lst161158%_ . _%args161159%_)
        (plist->hash-table!
         _%lst161158%_
         (apply make-hash-table
                'size:
                (length _%lst161158%_)
                _%args161159%_))))
    (define plist->hash-table-eq
      (lambda (_%lst161155%_ . _%args161156%_)
        (plist->hash-table!
         _%lst161155%_
         (apply make-hash-table-eq
                'size:
                (length _%lst161155%_)
                _%args161156%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst161152%_ . _%args161153%_)
        (plist->hash-table!
         _%lst161152%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst161152%_)
                _%args161153%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst161149%_ . _%args161150%_)
        (plist->hash-table!
         _%lst161149%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst161149%_)
                _%args161150%_))))
    (define plist->hash-table-string
      (lambda (_%lst161146%_ . _%args161147%_)
        (plist->hash-table!
         _%lst161146%_
         (apply make-hash-table-string
                'size:
                (length _%lst161146%_)
                _%args161147%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst161143%_ . _%args161144%_)
        (plist->hash-table!
         _%lst161143%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst161143%_)
                _%args161144%_))))
    (define plist->hash-table!
      (lambda (_%lst161066%_ _%h161067%_)
        (let _%loop161069%_ ((_%rest161071%_ _%lst161066%_))
          (let* ((_%$%rest161072161084%_ _%rest161071%_)
                 (_%$%else161075161092%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst161066%_)))))
            (let ((_%$%K161078161124%_
                   (lambda (_%rest161103%_ _%val161104%_ _%key161105%_)
                     (let* ((_%self154095161107%_ _%h161067%_)
                            (_%key161110%_ _%key161105%_)
                            (_%value161113%_ _%val161104%_))
                       (declare (not safe))
                       (let ((_%object161116161121%_
                              (##unchecked-structure-ref
                               _%self154095161107%_
                               '1
                               '#f
                               'set!))
                             (_%method161117161122%_
                              (##unchecked-structure-ref
                               _%self154095161107%_
                               '9
                               '#f
                               'set!)))
                         (_%method161117161122%_
                          _%object161116161121%_
                          _%key161110%_
                          _%value161113%_)))
                     (_%loop161069%_ _%rest161103%_)))
                  (_%$%K161077161097%_ (lambda () _%h161067%_)))
              (let ((_%$%try-match161074161100%_
                     (lambda ()
                       (if (null? _%$%rest161072161084%_)
                           (_%$%K161077161097%_)
                           (_%$%else161075161092%_)))))
                (if (pair? _%$%rest161072161084%_)
                    (let ((_%$%tl161080161129%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest161072161084%_)))
                          (_%$%hd161079161127%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest161072161084%_))))
                      (if (pair? _%$%tl161080161129%_)
                          (let ((_%$%tl161082161136%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl161080161129%_)))
                                (_%$%hd161081161134%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl161080161129%_))))
                            (let ((_%key161132%_ _%$%hd161079161127%_)
                                  (_%val161139%_ _%$%hd161081161134%_)
                                  (_%rest161141%_ _%$%tl161082161136%_))
                              (_%$%K161078161124%_
                               _%rest161141%_
                               _%val161139%_
                               _%key161132%_)))
                          (_%$%else161075161092%_)))
                    (_%$%try-match161074161100%_))))))))
    (define __hash-length
      (lambda (_%h161015%_)
        (let* ((_%h161018%_ _%h161015%_)
               (_%self153364161027%_ _%h161018%_)
               (_%self153364161034%_
                (let ((_%$obj161031%_ _%self153364161027%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161031%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161031%_)))
                           '#t)
                      _%$obj161031%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161031%_)))))
               (_%self153364161036%_ _%self153364161034%_))
          (if __DEBUG
              (let ((_%val161056%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object161048161053%_
                              (##unchecked-structure-ref
                               _%self153364161036%_
                               '1
                               '#f
                               'length))
                             (_%method161049161054%_
                              (##unchecked-structure-ref
                               _%self153364161036%_
                               '6
                               '#f
                               'length)))
                         (_%method161049161054%_ _%object161048161053%_)))))
                (if (fixnum? _%val161056%_)
                    _%val161056%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val161056%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object161058161063%_
                       (##unchecked-structure-ref
                        _%self153364161036%_
                        '1
                        '#f
                        'length))
                      (_%method161059161064%_
                       (##unchecked-structure-ref
                        _%self153364161036%_
                        '6
                        '#f
                        'length)))
                  (_%method161059161064%_ _%object161058161063%_)))))))
    (define hash-length
      (lambda (_%h160997%_)
        (let* ((_%h161003%_
                (let ((_%$obj161000%_ _%h160997%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161000%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161000%_)))
                           '#t)
                      _%$obj161000%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161000%_)))))
               (_%h161005%_ _%h161003%_))
          (__hash-length _%h161005%_))))
    (define __hash-ref__%
      (lambda (_%h160925%_ _%key160926%_ _%default160927%_)
        (let* ((_%h160930%_ _%h160925%_)
               (_%result160983%_
                (let* ((_%self153852160939%_ _%h160930%_)
                       (_%key160942%_ _%key160926%_)
                       (_%default160945%_ _%default160927%_)
                       (_%self153852160952%_
                        (let ((_%$obj160949%_ _%self153852160939%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj160949%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj160949%_)))
                                   '#t)
                              _%$obj160949%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj160949%_)))))
                       (_%self153852160954%_ _%self153852160952%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object160968160973%_
                               (##unchecked-structure-ref
                                _%self153852160954%_
                                '1
                                '#f
                                'ref))
                              (_%method160969160974%_
                               (##unchecked-structure-ref
                                _%self153852160954%_
                                '8
                                '#f
                                'ref)))
                          (_%method160969160974%_
                           _%object160968160973%_
                           _%key160942%_
                           _%default160945%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object160975160980%_
                               (##unchecked-structure-ref
                                _%self153852160954%_
                                '1
                                '#f
                                'ref))
                              (_%method160976160981%_
                               (##unchecked-structure-ref
                                _%self153852160954%_
                                '8
                                '#f
                                'ref)))
                          (_%method160976160981%_
                           _%object160975160980%_
                           _%key160942%_
                           _%default160945%_)))))))
          (if (eq? _%result160983%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h160930%_
               'key:
               _%key160926%_)
              _%result160983%_))))
    (define __hash-ref__0
      (lambda (_%h160988%_ _%key160989%_)
        (let ((_%default160991%_ absent-obj))
          (__hash-ref__% _%h160988%_ _%key160989%_ _%default160991%_))))
    (define __hash-ref
      (lambda _g170073_
        (let ((_g170074_ (let () (declare (not safe)) (##length _g170073_))))
          (cond ((let () (declare (not safe)) (##fx= _g170074_ 2))
                 (apply __hash-ref__0 _g170073_))
                ((let () (declare (not safe)) (##fx= _g170074_ 3))
                 (apply __hash-ref__% _g170073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g170073_))))))
    (define hash-ref__%
      (lambda (_%h160892%_ _%key160893%_ _%default160894%_)
        (let* ((_%h160900%_
                (let ((_%$obj160897%_ _%h160892%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160897%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160897%_)))
                           '#t)
                      _%$obj160897%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160897%_)))))
               (_%h160902%_ _%h160900%_))
          (__hash-ref__% _%h160902%_ _%key160893%_ _%default160894%_))))
    (define hash-ref__0
      (lambda (_%h160915%_ _%key160916%_)
        (let ((_%default160918%_ absent-obj))
          (hash-ref__% _%h160915%_ _%key160916%_ _%default160918%_))))
    (define hash-ref
      (lambda _g170075_
        (let ((_g170076_ (let () (declare (not safe)) (##length _g170075_))))
          (cond ((let () (declare (not safe)) (##fx= _g170076_ 2))
                 (apply hash-ref__0 _g170075_))
                ((let () (declare (not safe)) (##fx= _g170076_ 3))
                 (apply hash-ref__% _g170075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g170075_))))))
    (define __hash-get
      (lambda (_%h160834%_ _%key160835%_)
        (let* ((_%h160838%_ _%h160834%_)
               (_%self153852160847%_ _%h160838%_)
               (_%key160850%_ _%key160835%_)
               (_%default160853%_ '#f)
               (_%self153852160860%_
                (let ((_%$obj160857%_ _%self153852160847%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160857%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160857%_)))
                           '#t)
                      _%$obj160857%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160857%_)))))
               (_%self153852160862%_ _%self153852160860%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160876160881%_
                       (##unchecked-structure-ref
                        _%self153852160862%_
                        '1
                        '#f
                        'ref))
                      (_%method160877160882%_
                       (##unchecked-structure-ref
                        _%self153852160862%_
                        '8
                        '#f
                        'ref)))
                  (_%method160877160882%_
                   _%object160876160881%_
                   _%key160850%_
                   _%default160853%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160883160888%_
                       (##unchecked-structure-ref
                        _%self153852160862%_
                        '1
                        '#f
                        'ref))
                      (_%method160884160889%_
                       (##unchecked-structure-ref
                        _%self153852160862%_
                        '8
                        '#f
                        'ref)))
                  (_%method160884160889%_
                   _%object160883160888%_
                   _%key160850%_
                   _%default160853%_)))))))
    (define hash-get
      (lambda (_%h160815%_ _%key160816%_)
        (let* ((_%h160822%_
                (let ((_%$obj160819%_ _%h160815%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160819%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160819%_)))
                           '#t)
                      _%$obj160819%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160819%_)))))
               (_%h160824%_ _%h160822%_))
          (__hash-get _%h160824%_ _%key160816%_))))
    (define __hash-put!
      (lambda (_%h160757%_ _%key160758%_ _%value160759%_)
        (let* ((_%h160762%_ _%h160757%_)
               (_%self154096160771%_ _%h160762%_)
               (_%key160774%_ _%key160758%_)
               (_%value160777%_ _%value160759%_)
               (_%self154096160784%_
                (let ((_%$obj160781%_ _%self154096160771%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160781%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160781%_)))
                           '#t)
                      _%$obj160781%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160781%_)))))
               (_%self154096160786%_ _%self154096160784%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160800160805%_
                       (##unchecked-structure-ref
                        _%self154096160786%_
                        '1
                        '#f
                        'set!))
                      (_%method160801160806%_
                       (##unchecked-structure-ref
                        _%self154096160786%_
                        '9
                        '#f
                        'set!)))
                  (_%method160801160806%_
                   _%object160800160805%_
                   _%key160774%_
                   _%value160777%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160807160812%_
                       (##unchecked-structure-ref
                        _%self154096160786%_
                        '1
                        '#f
                        'set!))
                      (_%method160808160813%_
                       (##unchecked-structure-ref
                        _%self154096160786%_
                        '9
                        '#f
                        'set!)))
                  (_%method160808160813%_
                   _%object160807160812%_
                   _%key160774%_
                   _%value160777%_)))))))
    (define hash-put!
      (lambda (_%h160737%_ _%key160738%_ _%value160739%_)
        (let* ((_%h160745%_
                (let ((_%$obj160742%_ _%h160737%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160742%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160742%_)))
                           '#t)
                      _%$obj160742%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160742%_)))))
               (_%h160747%_ _%h160745%_))
          (__hash-put! _%h160747%_ _%key160738%_ _%value160739%_))))
    (define __hash-update!__%
      (lambda (_%h160650%_ _%key160651%_ _%update160652%_ _%default160653%_)
        (let* ((_%h160656%_ _%h160650%_)
               (_%self154340160665%_ _%h160656%_)
               (_%key160668%_ _%key160651%_)
               (_%proc160671%_ _%update160652%_)
               (_%default160674%_ _%default160653%_)
               (_%self154340160681%_
                (let ((_%$obj160678%_ _%self154340160665%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160678%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160678%_)))
                           '#t)
                      _%$obj160678%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160678%_)))))
               (_%self154340160683%_ _%self154340160681%_))
          (if (procedure? _%proc160671%_)
              (let ((_%proc160699%_ _%proc160671%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object160708160713%_
                             (##unchecked-structure-ref
                              _%self154340160683%_
                              '1
                              '#f
                              'update!))
                            (_%method160709160714%_
                             (##unchecked-structure-ref
                              _%self154340160683%_
                              '10
                              '#f
                              'update!)))
                        (_%method160709160714%_
                         _%object160708160713%_
                         _%key160668%_
                         _%proc160699%_
                         _%default160674%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object160715160720%_
                             (##unchecked-structure-ref
                              _%self154340160683%_
                              '1
                              '#f
                              'update!))
                            (_%method160716160721%_
                             (##unchecked-structure-ref
                              _%self154340160683%_
                              '10
                              '#f
                              'update!)))
                        (_%method160716160721%_
                         _%object160715160720%_
                         _%key160668%_
                         _%proc160699%_
                         _%default160674%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc160671%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h160726%_ _%key160727%_ _%update160728%_)
        (let ((_%default160730%_ '#!void))
          (__hash-update!__%
           _%h160726%_
           _%key160727%_
           _%update160728%_
           _%default160730%_))))
    (define __hash-update!
      (lambda _g170077_
        (let ((_g170078_ (let () (declare (not safe)) (##length _g170077_))))
          (cond ((let () (declare (not safe)) (##fx= _g170078_ 3))
                 (apply __hash-update!__0 _g170077_))
                ((let () (declare (not safe)) (##fx= _g170078_ 4))
                 (apply __hash-update!__% _g170077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g170077_))))))
    (define hash-update!__%
      (lambda (_%h160614%_ _%key160615%_ _%update160616%_ _%default160617%_)
        (let* ((_%h160623%_
                (let ((_%$obj160620%_ _%h160614%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160620%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160620%_)))
                           '#t)
                      _%$obj160620%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160620%_)))))
               (_%h160625%_ _%h160623%_))
          (__hash-update!__%
           _%h160625%_
           _%key160615%_
           _%update160616%_
           _%default160617%_))))
    (define hash-update!__0
      (lambda (_%h160638%_ _%key160639%_ _%update160640%_)
        (let ((_%default160642%_ '#!void))
          (hash-update!__%
           _%h160638%_
           _%key160639%_
           _%update160640%_
           _%default160642%_))))
    (define hash-update!
      (lambda _g170079_
        (let ((_g170080_ (let () (declare (not safe)) (##length _g170079_))))
          (cond ((let () (declare (not safe)) (##fx= _g170080_ 3))
                 (apply hash-update!__0 _g170079_))
                ((let () (declare (not safe)) (##fx= _g170080_ 4))
                 (apply hash-update!__% _g170079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g170079_))))))
    (define __hash-remove!
      (lambda (_%h160560%_ _%key160561%_)
        (let* ((_%h160564%_ _%h160560%_)
               (_%self152876160573%_ _%h160564%_)
               (_%key160576%_ _%key160561%_)
               (_%self152876160583%_
                (let ((_%$obj160580%_ _%self152876160573%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160580%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160580%_)))
                           '#t)
                      _%$obj160580%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160580%_)))))
               (_%self152876160585%_ _%self152876160583%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160598160603%_
                       (##unchecked-structure-ref
                        _%self152876160585%_
                        '1
                        '#f
                        'delete!))
                      (_%method160599160604%_
                       (##unchecked-structure-ref
                        _%self152876160585%_
                        '4
                        '#f
                        'delete!)))
                  (_%method160599160604%_
                   _%object160598160603%_
                   _%key160576%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160605160610%_
                       (##unchecked-structure-ref
                        _%self152876160585%_
                        '1
                        '#f
                        'delete!))
                      (_%method160606160611%_
                       (##unchecked-structure-ref
                        _%self152876160585%_
                        '4
                        '#f
                        'delete!)))
                  (_%method160606160611%_
                   _%object160605160610%_
                   _%key160576%_)))))))
    (define hash-remove!
      (lambda (_%h160541%_ _%key160542%_)
        (let* ((_%h160548%_
                (let ((_%$obj160545%_ _%h160541%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160545%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160545%_)))
                           '#t)
                      _%$obj160545%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160545%_)))))
               (_%h160550%_ _%h160548%_))
          (__hash-remove! _%h160550%_ _%key160542%_))))
    (define __hash-key?
      (lambda (_%h160484%_ _%k160485%_)
        (let ((_%h160488%_ _%h160484%_))
          (not (eq? (let* ((_%self153852160497%_ _%h160488%_)
                           (_%key160500%_ _%k160485%_)
                           (_%default160503%_ absent-value)
                           (_%self153852160510%_
                            (let ((_%$obj160507%_ _%self153852160497%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj160507%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj160507%_)))
                                       '#t)
                                  _%$obj160507%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj160507%_)))))
                           (_%self153852160512%_ _%self153852160510%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object160526160531%_
                                   (##unchecked-structure-ref
                                    _%self153852160512%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method160527160532%_
                                   (##unchecked-structure-ref
                                    _%self153852160512%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method160527160532%_
                               _%object160526160531%_
                               _%key160500%_
                               _%default160503%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object160533160538%_
                                   (##unchecked-structure-ref
                                    _%self153852160512%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method160534160539%_
                                   (##unchecked-structure-ref
                                    _%self153852160512%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method160534160539%_
                               _%object160533160538%_
                               _%key160500%_
                               _%default160503%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h160465%_ _%k160466%_)
        (let* ((_%h160472%_
                (let ((_%$obj160469%_ _%h160465%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160469%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160469%_)))
                           '#t)
                      _%$obj160469%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160469%_)))))
               (_%h160474%_ _%h160472%_))
          (__hash-key? _%h160474%_ _%k160466%_))))
    (define __hash->list
      (lambda (_%h160397%_)
        (let* ((_%h160400%_ _%h160397%_) (_%lst160409%_ '()))
          (let* ((_%self153120160411%_ _%h160400%_)
                 (_%proc160417%_
                  (lambda (_%k160414%_ _%v160415%_)
                    (set! _%lst160409%_
                          (cons (cons _%k160414%_ _%v160415%_)
                                _%lst160409%_))))
                 (_%self153120160424%_
                  (let ((_%$obj160421%_ _%self153120160411%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj160421%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj160421%_)))
                             '#t)
                        _%$obj160421%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj160421%_)))))
                 (_%self153120160426%_ _%self153120160424%_)
                 (_%proc160441%_ _%proc160417%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160450160455%_
                         (##unchecked-structure-ref
                          _%self153120160426%_
                          '1
                          '#f
                          'for-each))
                        (_%method160451160456%_
                         (##unchecked-structure-ref
                          _%self153120160426%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160451160456%_
                     _%object160450160455%_
                     _%proc160441%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160457160462%_
                         (##unchecked-structure-ref
                          _%self153120160426%_
                          '1
                          '#f
                          'for-each))
                        (_%method160458160463%_
                         (##unchecked-structure-ref
                          _%self153120160426%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160458160463%_
                     _%object160457160462%_
                     _%proc160441%_)))))
          _%lst160409%_)))
    (define hash->list
      (lambda (_%h160379%_)
        (let* ((_%h160385%_
                (let ((_%$obj160382%_ _%h160379%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160382%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160382%_)))
                           '#t)
                      _%$obj160382%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160382%_)))))
               (_%h160387%_ _%h160385%_))
          (__hash->list _%h160387%_))))
    (define __hash->plist
      (lambda (_%h160311%_)
        (let* ((_%h160314%_ _%h160311%_) (_%lst160323%_ '()))
          (let* ((_%self153120160325%_ _%h160314%_)
                 (_%proc160331%_
                  (lambda (_%k160328%_ _%v160329%_)
                    (set! _%lst160323%_
                          (cons _%k160328%_
                                (cons _%v160329%_ _%lst160323%_)))))
                 (_%self153120160338%_
                  (let ((_%$obj160335%_ _%self153120160325%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj160335%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj160335%_)))
                             '#t)
                        _%$obj160335%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj160335%_)))))
                 (_%self153120160340%_ _%self153120160338%_)
                 (_%proc160355%_ _%proc160331%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160364160369%_
                         (##unchecked-structure-ref
                          _%self153120160340%_
                          '1
                          '#f
                          'for-each))
                        (_%method160365160370%_
                         (##unchecked-structure-ref
                          _%self153120160340%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160365160370%_
                     _%object160364160369%_
                     _%proc160355%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160371160376%_
                         (##unchecked-structure-ref
                          _%self153120160340%_
                          '1
                          '#f
                          'for-each))
                        (_%method160372160377%_
                         (##unchecked-structure-ref
                          _%self153120160340%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160372160377%_
                     _%object160371160376%_
                     _%proc160355%_)))))
          _%lst160323%_)))
    (define hash->plist
      (lambda (_%h160293%_)
        (let* ((_%h160299%_
                (let ((_%$obj160296%_ _%h160293%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160296%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160296%_)))
                           '#t)
                      _%$obj160296%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160296%_)))))
               (_%h160301%_ _%h160299%_))
          (__hash->plist _%h160301%_))))
    (define __hash-for-each
      (lambda (_%proc160222%_ _%h160223%_)
        (let* ((_%proc160226%_ _%proc160222%_)
               (_%h160234%_ _%h160223%_)
               (_%self153120160243%_ _%h160234%_)
               (_%proc160246%_ _%proc160226%_)
               (_%self153120160253%_
                (let ((_%$obj160250%_ _%self153120160243%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160250%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160250%_)))
                           '#t)
                      _%$obj160250%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160250%_)))))
               (_%self153120160255%_ _%self153120160253%_)
               (_%proc160269%_ _%proc160246%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160278160283%_
                       (##unchecked-structure-ref
                        _%self153120160255%_
                        '1
                        '#f
                        'for-each))
                      (_%method160279160284%_
                       (##unchecked-structure-ref
                        _%self153120160255%_
                        '5
                        '#f
                        'for-each)))
                  (_%method160279160284%_
                   _%object160278160283%_
                   _%proc160269%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160285160290%_
                       (##unchecked-structure-ref
                        _%self153120160255%_
                        '1
                        '#f
                        'for-each))
                      (_%method160286160291%_
                       (##unchecked-structure-ref
                        _%self153120160255%_
                        '5
                        '#f
                        'for-each)))
                  (_%method160286160291%_
                   _%object160285160290%_
                   _%proc160269%_)))))))
    (define hash-for-each
      (lambda (_%proc160193%_ _%h160194%_)
        (if (procedure? _%proc160193%_)
            (let* ((_%proc160198%_ _%proc160193%_)
                   (_%h160210%_
                    (let ((_%$obj160207%_ _%h160194%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj160207%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj160207%_)))
                               '#t)
                          _%$obj160207%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj160207%_)))))
                   (_%h160212%_ _%h160210%_))
              (__hash-for-each _%proc160198%_ _%h160212%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@594.22-594.26"
               'contract:
               'procedure?
               'value:
               _%proc160193%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc160116%_ _%h160117%_)
        (let* ((_%proc160120%_ _%proc160116%_)
               (_%h160128%_ _%h160117%_)
               (_%result160137%_ '()))
          (let* ((_%self153120160139%_ _%h160128%_)
                 (_%proc160145%_
                  (lambda (_%k160142%_ _%v160143%_)
                    (set! _%result160137%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc160120%_ _%k160142%_ _%v160143%_))
                                _%result160137%_))))
                 (_%self153120160152%_
                  (let ((_%$obj160149%_ _%self153120160139%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj160149%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj160149%_)))
                             '#t)
                        _%$obj160149%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj160149%_)))))
                 (_%self153120160154%_ _%self153120160152%_)
                 (_%proc160169%_ _%proc160145%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160178160183%_
                         (##unchecked-structure-ref
                          _%self153120160154%_
                          '1
                          '#f
                          'for-each))
                        (_%method160179160184%_
                         (##unchecked-structure-ref
                          _%self153120160154%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160179160184%_
                     _%object160178160183%_
                     _%proc160169%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160185160190%_
                         (##unchecked-structure-ref
                          _%self153120160154%_
                          '1
                          '#f
                          'for-each))
                        (_%method160186160191%_
                         (##unchecked-structure-ref
                          _%self153120160154%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160186160191%_
                     _%object160185160190%_
                     _%proc160169%_)))))
          _%result160137%_)))
    (define hash-map
      (lambda (_%proc160087%_ _%h160088%_)
        (if (procedure? _%proc160087%_)
            (let* ((_%proc160092%_ _%proc160087%_)
                   (_%h160104%_
                    (let ((_%$obj160101%_ _%h160088%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj160101%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj160101%_)))
                               '#t)
                          _%$obj160101%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj160101%_)))))
                   (_%h160106%_ _%h160104%_))
              (__hash-map _%proc160092%_ _%h160106%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@597.17-597.21"
               'contract:
               'procedure?
               'value:
               _%proc160087%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc160009%_ _%iv160010%_ _%h160011%_)
        (let* ((_%proc160014%_ _%proc160009%_)
               (_%h160022%_ _%h160011%_)
               (_%result160031%_ _%iv160010%_))
          (let* ((_%self153120160033%_ _%h160022%_)
                 (_%proc160039%_
                  (lambda (_%k160036%_ _%v160037%_)
                    (set! _%result160031%_
                          (let ()
                            (declare (not safe))
                            (_%proc160014%_
                             _%k160036%_
                             _%v160037%_
                             _%result160031%_)))))
                 (_%self153120160046%_
                  (let ((_%$obj160043%_ _%self153120160033%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj160043%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj160043%_)))
                             '#t)
                        _%$obj160043%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj160043%_)))))
                 (_%self153120160048%_ _%self153120160046%_)
                 (_%proc160063%_ _%proc160039%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160072160077%_
                         (##unchecked-structure-ref
                          _%self153120160048%_
                          '1
                          '#f
                          'for-each))
                        (_%method160073160078%_
                         (##unchecked-structure-ref
                          _%self153120160048%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160073160078%_
                     _%object160072160077%_
                     _%proc160063%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160079160084%_
                         (##unchecked-structure-ref
                          _%self153120160048%_
                          '1
                          '#f
                          'for-each))
                        (_%method160080160085%_
                         (##unchecked-structure-ref
                          _%self153120160048%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160080160085%_
                     _%object160079160084%_
                     _%proc160063%_)))))
          _%result160031%_)))
    (define hash-fold
      (lambda (_%proc159979%_ _%iv159980%_ _%h159981%_)
        (if (procedure? _%proc159979%_)
            (let* ((_%proc159985%_ _%proc159979%_)
                   (_%h159997%_
                    (let ((_%$obj159994%_ _%h159981%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj159994%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj159994%_)))
                               '#t)
                          _%$obj159994%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj159994%_)))))
                   (_%h159999%_ _%h159997%_))
              (__hash-fold _%proc159985%_ _%iv159980%_ _%h159999%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc159979%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc159886%_ _%h159887%_ _%default-value159888%_)
        (let* ((_%proc159891%_ _%proc159886%_)
               (_%h159899%_ _%h159887%_)
               (__tmp170081
                (lambda (_%return159908%_)
                  (let* ((_%self153120159910%_ _%h159899%_)
                         (_%proc159919%_
                          (lambda (_%k159913%_ _%v159914%_)
                            (let ((_%$e159916%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc159891%_
                                      _%k159913%_
                                      _%v159914%_))))
                              (if _%$e159916%_
                                  (_%return159908%_ _%$e159916%_)
                                  '#!void))))
                         (_%self153120159926%_
                          (let ((_%$obj159923%_ _%self153120159910%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj159923%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj159923%_)))
                                     '#t)
                                _%$obj159923%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj159923%_)))))
                         (_%self153120159928%_ _%self153120159926%_)
                         (_%proc159943%_ _%proc159919%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object159952159957%_
                                 (##unchecked-structure-ref
                                  _%self153120159928%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method159953159958%_
                                 (##unchecked-structure-ref
                                  _%self153120159928%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method159953159958%_
                             _%object159952159957%_
                             _%proc159943%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object159959159964%_
                                 (##unchecked-structure-ref
                                  _%self153120159928%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method159960159965%_
                                 (##unchecked-structure-ref
                                  _%self153120159928%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method159960159965%_
                             _%object159959159964%_
                             _%proc159943%_)))))
                  _%default-value159888%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp170081))))
    (define __hash-find__0
      (lambda (_%proc159970%_ _%h159971%_)
        (let ((_%default-value159973%_ '#f))
          (__hash-find__%
           _%proc159970%_
           _%h159971%_
           _%default-value159973%_))))
    (define __hash-find
      (lambda _g170082_
        (let ((_g170083_ (let () (declare (not safe)) (##length _g170082_))))
          (cond ((let () (declare (not safe)) (##fx= _g170083_ 2))
                 (apply __hash-find__0 _g170082_))
                ((let () (declare (not safe)) (##fx= _g170083_ 3))
                 (apply __hash-find__% _g170082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g170082_))))))
    (define hash-find__%
      (lambda (_%proc159843%_ _%h159844%_ _%default-value159845%_)
        (if (procedure? _%proc159843%_)
            (let* ((_%proc159849%_ _%proc159843%_)
                   (_%h159861%_
                    (let ((_%$obj159858%_ _%h159844%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj159858%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj159858%_)))
                               '#t)
                          _%$obj159858%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj159858%_)))))
                   (_%h159863%_ _%h159861%_))
              (__hash-find__%
               _%proc159849%_
               _%h159863%_
               _%default-value159845%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@608.18-608.22"
               'contract:
               'procedure?
               'value:
               _%proc159843%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc159876%_ _%h159877%_)
        (let ((_%default-value159879%_ '#f))
          (hash-find__% _%proc159876%_ _%h159877%_ _%default-value159879%_))))
    (define hash-find
      (lambda _g170084_
        (let ((_g170085_ (let () (declare (not safe)) (##length _g170084_))))
          (cond ((let () (declare (not safe)) (##fx= _g170085_ 2))
                 (apply hash-find__0 _g170084_))
                ((let () (declare (not safe)) (##fx= _g170085_ 3))
                 (apply hash-find__% _g170084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g170084_))))))
    (define __hash-keys
      (lambda (_%h159774%_)
        (let* ((_%h159777%_ _%h159774%_) (_%result159786%_ '()))
          (let* ((_%self153120159788%_ _%h159777%_)
                 (_%proc159794%_
                  (lambda (_%k159791%_ _%v159792%_)
                    (set! _%result159786%_
                          (cons _%k159791%_ _%result159786%_))))
                 (_%self153120159801%_
                  (let ((_%$obj159798%_ _%self153120159788%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj159798%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj159798%_)))
                             '#t)
                        _%$obj159798%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj159798%_)))))
                 (_%self153120159803%_ _%self153120159801%_)
                 (_%proc159818%_ _%proc159794%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object159827159832%_
                         (##unchecked-structure-ref
                          _%self153120159803%_
                          '1
                          '#f
                          'for-each))
                        (_%method159828159833%_
                         (##unchecked-structure-ref
                          _%self153120159803%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159828159833%_
                     _%object159827159832%_
                     _%proc159818%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object159834159839%_
                         (##unchecked-structure-ref
                          _%self153120159803%_
                          '1
                          '#f
                          'for-each))
                        (_%method159835159840%_
                         (##unchecked-structure-ref
                          _%self153120159803%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159835159840%_
                     _%object159834159839%_
                     _%proc159818%_)))))
          _%result159786%_)))
    (define hash-keys
      (lambda (_%h159756%_)
        (let* ((_%h159762%_
                (let ((_%$obj159759%_ _%h159756%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159759%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159759%_)))
                           '#t)
                      _%$obj159759%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159759%_)))))
               (_%h159764%_ _%h159762%_))
          (__hash-keys _%h159764%_))))
    (define __hash-values
      (lambda (_%h159688%_)
        (let* ((_%h159691%_ _%h159688%_) (_%result159700%_ '()))
          (let* ((_%self153120159702%_ _%h159691%_)
                 (_%proc159708%_
                  (lambda (_%k159705%_ _%v159706%_)
                    (set! _%result159700%_
                          (cons _%v159706%_ _%result159700%_))))
                 (_%self153120159715%_
                  (let ((_%$obj159712%_ _%self153120159702%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj159712%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj159712%_)))
                             '#t)
                        _%$obj159712%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj159712%_)))))
                 (_%self153120159717%_ _%self153120159715%_)
                 (_%proc159732%_ _%proc159708%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object159741159746%_
                         (##unchecked-structure-ref
                          _%self153120159717%_
                          '1
                          '#f
                          'for-each))
                        (_%method159742159747%_
                         (##unchecked-structure-ref
                          _%self153120159717%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159742159747%_
                     _%object159741159746%_
                     _%proc159732%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object159748159753%_
                         (##unchecked-structure-ref
                          _%self153120159717%_
                          '1
                          '#f
                          'for-each))
                        (_%method159749159754%_
                         (##unchecked-structure-ref
                          _%self153120159717%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159749159754%_
                     _%object159748159753%_
                     _%proc159732%_)))))
          _%result159700%_)))
    (define hash-values
      (lambda (_%h159670%_)
        (let* ((_%h159676%_
                (let ((_%$obj159673%_ _%h159670%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159673%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159673%_)))
                           '#t)
                      _%$obj159673%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159673%_)))))
               (_%h159678%_ _%h159676%_))
          (__hash-values _%h159678%_))))
    (define __hash-copy
      (lambda (_%h159619%_)
        (let* ((_%h159622%_ _%h159619%_)
               (_%self152632159631%_ _%h159622%_)
               (_%self152632159638%_
                (let ((_%$obj159635%_ _%self152632159631%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159635%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159635%_)))
                           '#t)
                      _%$obj159635%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159635%_)))))
               (_%self152632159640%_ _%self152632159638%_))
          (if __DEBUG
              (let ((_%$obj159660%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object159652159657%_
                              (##unchecked-structure-ref
                               _%self152632159640%_
                               '1
                               '#f
                               'copy))
                             (_%method159653159658%_
                              (##unchecked-structure-ref
                               _%self152632159640%_
                               '3
                               '#f
                               'copy)))
                         (_%method159653159658%_ _%object159652159657%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj159660%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj159660%_)))
                         '#t)
                    _%$obj159660%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj159660%_))))
              (let ()
                (declare (not safe))
                (let ((_%object159662159667%_
                       (##unchecked-structure-ref
                        _%self152632159640%_
                        '1
                        '#f
                        'copy))
                      (_%method159663159668%_
                       (##unchecked-structure-ref
                        _%self152632159640%_
                        '3
                        '#f
                        'copy)))
                  (_%method159663159668%_ _%object159662159667%_)))))))
    (define hash-copy
      (lambda (_%h159601%_)
        (let* ((_%h159607%_
                (let ((_%$obj159604%_ _%h159601%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159604%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159604%_)))
                           '#t)
                      _%$obj159604%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159604%_)))))
               (_%h159609%_ _%h159607%_))
          (__hash-copy _%h159609%_))))
    (define __hash-new
      (lambda (_%h159530%_)
        (let* ((_%h159533%_ _%h159530%_)
               (_%self153608159542%_ _%h159533%_)
               (_%size-hint159545%_ '#f)
               (_%self153608159552%_
                (let ((_%$obj159549%_ _%self153608159542%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159549%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159549%_)))
                           '#t)
                      _%$obj159549%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159549%_)))))
               (_%self153608159554%_ _%self153608159552%_))
          (if (let ((_%$e159570%_ '#t)) (and _%$e159570%_ _%$e159570%_))
              (let ((_%size-hint159574%_ _%size-hint159545%_))
                (if __DEBUG
                    (let ((_%$obj159591%_
                           (let ()
                             (declare (not safe))
                             (let ((_%object159583159588%_
                                    (##unchecked-structure-ref
                                     _%self153608159554%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method159584159589%_
                                    (##unchecked-structure-ref
                                     _%self153608159554%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method159584159589%_
                                _%object159583159588%_
                                _%size-hint159574%_)))))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj159591%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj159591%_)))
                               '#t)
                          _%$obj159591%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj159591%_))))
                    (let ()
                      (declare (not safe))
                      (let ((_%object159593159598%_
                             (##unchecked-structure-ref
                              _%self153608159554%_
                              '1
                              '#f
                              'new))
                            (_%method159594159599%_
                             (##unchecked-structure-ref
                              _%self153608159554%_
                              '7
                              '#f
                              'new)))
                        (_%method159594159599%_
                         _%object159593159598%_
                         _%size-hint159574%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint159545%_)
                '#!void)))))
    (define hash-new
      (lambda (_%h159512%_)
        (let* ((_%h159518%_
                (let ((_%$obj159515%_ _%h159512%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159515%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159515%_)))
                           '#t)
                      _%$obj159515%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159515%_)))))
               (_%h159520%_ _%h159518%_))
          (__hash-new _%h159520%_))))
    (define __hash-clear!
      (lambda (_%h159464%_)
        (let* ((_%h159467%_ _%h159464%_)
               (_%self152387159476%_ _%h159467%_)
               (_%self152387159483%_
                (let ((_%$obj159480%_ _%self152387159476%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159480%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159480%_)))
                           '#t)
                      _%$obj159480%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159480%_)))))
               (_%self152387159485%_ _%self152387159483%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object159497159502%_
                       (##unchecked-structure-ref
                        _%self152387159485%_
                        '1
                        '#f
                        'clear!))
                      (_%method159498159503%_
                       (##unchecked-structure-ref
                        _%self152387159485%_
                        '2
                        '#f
                        'clear!)))
                  (_%method159498159503%_ _%object159497159502%_)))
              (let ()
                (declare (not safe))
                (let ((_%object159504159509%_
                       (##unchecked-structure-ref
                        _%self152387159485%_
                        '1
                        '#f
                        'clear!))
                      (_%method159505159510%_
                       (##unchecked-structure-ref
                        _%self152387159485%_
                        '2
                        '#f
                        'clear!)))
                  (_%method159505159510%_ _%object159504159509%_)))))))
    (define hash-clear!
      (lambda (_%h159446%_)
        (let* ((_%h159452%_
                (let ((_%$obj159449%_ _%h159446%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159449%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159449%_)))
                           '#t)
                      _%$obj159449%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159449%_)))))
               (_%h159454%_ _%h159452%_))
          (__hash-clear! _%h159454%_))))
    (define __hash-merge
      (lambda (_%h159392%_ . _%rest159393%_)
        (let* ((_%h159396%_ _%h159392%_)
               (_%copy159444%_
                (let* ((_%self152632159405%_ _%h159396%_)
                       (_%self152632159412%_
                        (let ((_%$obj159409%_ _%self152632159405%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj159409%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj159409%_)))
                                   '#t)
                              _%$obj159409%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj159409%_)))))
                       (_%self152632159414%_ _%self152632159412%_))
                  (if __DEBUG
                      (let ((_%$obj159434%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object159426159431%_
                                      (##unchecked-structure-ref
                                       _%self152632159414%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method159427159432%_
                                      (##unchecked-structure-ref
                                       _%self152632159414%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method159427159432%_
                                  _%object159426159431%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj159434%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj159434%_)))
                                 '#t)
                            _%$obj159434%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj159434%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object159436159441%_
                               (##unchecked-structure-ref
                                _%self152632159414%_
                                '1
                                '#f
                                'copy))
                              (_%method159437159442%_
                               (##unchecked-structure-ref
                                _%self152632159414%_
                                '3
                                '#f
                                'copy)))
                          (_%method159437159442%_ _%object159436159441%_)))))))
          (apply hash-merge! _%copy159444%_ _%rest159393%_)
          _%copy159444%_)))
    (define hash-merge
      (lambda (_%h159373%_ . _%rest159374%_)
        (let* ((_%h159380%_
                (let ((_%$obj159377%_ _%h159373%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159377%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159377%_)))
                           '#t)
                      _%$obj159377%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159377%_)))))
               (_%h159382%_ _%h159380%_))
          (declare (not safe))
          (##apply __hash-merge _%h159382%_ _%rest159374%_))))
    (define __hash-merge-right
      (lambda (_%h159319%_ . _%rest159320%_)
        (let* ((_%h159323%_ _%h159319%_)
               (_%copy159371%_
                (let* ((_%self152632159332%_ _%h159323%_)
                       (_%self152632159339%_
                        (let ((_%$obj159336%_ _%self152632159332%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj159336%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj159336%_)))
                                   '#t)
                              _%$obj159336%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj159336%_)))))
                       (_%self152632159341%_ _%self152632159339%_))
                  (if __DEBUG
                      (let ((_%$obj159361%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object159353159358%_
                                      (##unchecked-structure-ref
                                       _%self152632159341%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method159354159359%_
                                      (##unchecked-structure-ref
                                       _%self152632159341%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method159354159359%_
                                  _%object159353159358%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj159361%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj159361%_)))
                                 '#t)
                            _%$obj159361%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj159361%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object159363159368%_
                               (##unchecked-structure-ref
                                _%self152632159341%_
                                '1
                                '#f
                                'copy))
                              (_%method159364159369%_
                               (##unchecked-structure-ref
                                _%self152632159341%_
                                '3
                                '#f
                                'copy)))
                          (_%method159364159369%_ _%object159363159368%_)))))))
          (apply hash-merge-right! _%copy159371%_ _%rest159320%_)
          _%copy159371%_)))
    (define hash-merge-right
      (lambda (_%h159300%_ . _%rest159301%_)
        (let* ((_%h159307%_
                (let ((_%$obj159304%_ _%h159300%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159304%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159304%_)))
                           '#t)
                      _%$obj159304%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159304%_)))))
               (_%h159309%_ _%h159307%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h159309%_ _%rest159301%_))))
    (define __hash-merge!
      (lambda (_%h159148%_ . _%rest159149%_)
        (let ((_%h159152%_ _%h159148%_))
          (let ((__tmp170086
                 (lambda (_%hr159161%_)
                   (let* ((_%hr159167%_
                           (let ((_%$obj159164%_ _%hr159161%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj159164%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj159164%_)))
                                      '#t)
                                 _%$obj159164%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj159164%_)))))
                          (_%hr159169%_ _%hr159167%_)
                          (_%self153120159182%_ _%hr159169%_)
                          (_%proc159257%_
                           (lambda (_%k159185%_ _%v159186%_)
                             (if (let* ((_%h159188%_ _%h159152%_)
                                        (_%k159191%_ _%k159185%_)
                                        (_%h159198%_
                                         (let ((_%$obj159195%_ _%h159188%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj159195%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj159195%_)))
                                                    '#t)
                                               _%$obj159195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj159195%_)))))
                                        (_%h159200%_ _%h159198%_))
                                   (__hash-key? _%h159200%_ _%k159191%_))
                                 '#!void
                                 (let* ((_%self154096159216%_ _%h159152%_)
                                        (_%key159219%_ _%k159185%_)
                                        (_%value159222%_ _%v159186%_)
                                        (_%self154096159229%_
                                         (let ((_%$obj159226%_
                                                _%self154096159216%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj159226%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj159226%_)))
                                                    '#t)
                                               _%$obj159226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj159226%_)))))
                                        (_%self154096159231%_
                                         _%self154096159229%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object159242159247%_
                                                (##unchecked-structure-ref
                                                 _%self154096159231%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method159243159248%_
                                                (##unchecked-structure-ref
                                                 _%self154096159231%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method159243159248%_
                                            _%object159242159247%_
                                            _%key159219%_
                                            _%value159222%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object159249159254%_
                                                (##unchecked-structure-ref
                                                 _%self154096159231%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method159250159255%_
                                                (##unchecked-structure-ref
                                                 _%self154096159231%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method159250159255%_
                                            _%object159249159254%_
                                            _%key159219%_
                                            _%value159222%_))))))))
                          (_%self153120159264%_
                           (let ((_%$obj159261%_ _%self153120159182%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj159261%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj159261%_)))
                                      '#t)
                                 _%$obj159261%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj159261%_)))))
                          (_%self153120159266%_ _%self153120159264%_)
                          (_%proc159276%_ _%proc159257%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object159285159290%_
                                  (##unchecked-structure-ref
                                   _%self153120159266%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159286159291%_
                                  (##unchecked-structure-ref
                                   _%self153120159266%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159286159291%_
                              _%object159285159290%_
                              _%proc159276%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object159292159297%_
                                  (##unchecked-structure-ref
                                   _%self153120159266%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159293159298%_
                                  (##unchecked-structure-ref
                                   _%self153120159266%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159293159298%_
                              _%object159292159297%_
                              _%proc159276%_))))))))
            (declare (not safe))
            (##for-each __tmp170086 _%rest159149%_))
          _%h159152%_)))
    (define hash-merge!
      (lambda (_%h159129%_ . _%rest159130%_)
        (let* ((_%h159136%_
                (let ((_%$obj159133%_ _%h159129%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159133%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159133%_)))
                           '#t)
                      _%$obj159133%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159133%_)))))
               (_%h159138%_ _%h159136%_))
          (declare (not safe))
          (##apply __hash-merge! _%h159138%_ _%rest159130%_))))
    (define __hash-merge-right!
      (lambda (_%h159000%_ . _%rest159001%_)
        (let ((_%h159004%_ _%h159000%_))
          (let ((__tmp170087
                 (lambda (_%hr159013%_)
                   (let* ((_%hr159019%_
                           (let ((_%$obj159016%_ _%hr159013%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj159016%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj159016%_)))
                                      '#t)
                                 _%$obj159016%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj159016%_)))))
                          (_%hr159021%_ _%hr159019%_)
                          (_%self153120159034%_ _%hr159021%_)
                          (_%proc159086%_
                           (lambda (_%k159037%_ _%v159038%_)
                             (let* ((_%self154096159040%_ _%h159004%_)
                                    (_%key159043%_ _%k159037%_)
                                    (_%value159046%_ _%v159038%_)
                                    (_%self154096159053%_
                                     (let ((_%$obj159050%_
                                            _%self154096159040%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj159050%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj159050%_)))
                                                '#t)
                                           _%$obj159050%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj159050%_)))))
                                    (_%self154096159055%_
                                     _%self154096159053%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object159071159076%_
                                            (##unchecked-structure-ref
                                             _%self154096159055%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method159072159077%_
                                            (##unchecked-structure-ref
                                             _%self154096159055%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method159072159077%_
                                        _%object159071159076%_
                                        _%key159043%_
                                        _%value159046%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object159078159083%_
                                            (##unchecked-structure-ref
                                             _%self154096159055%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method159079159084%_
                                            (##unchecked-structure-ref
                                             _%self154096159055%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method159079159084%_
                                        _%object159078159083%_
                                        _%key159043%_
                                        _%value159046%_)))))))
                          (_%self153120159093%_
                           (let ((_%$obj159090%_ _%self153120159034%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj159090%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj159090%_)))
                                      '#t)
                                 _%$obj159090%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj159090%_)))))
                          (_%self153120159095%_ _%self153120159093%_)
                          (_%proc159105%_ _%proc159086%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object159114159119%_
                                  (##unchecked-structure-ref
                                   _%self153120159095%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159115159120%_
                                  (##unchecked-structure-ref
                                   _%self153120159095%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159115159120%_
                              _%object159114159119%_
                              _%proc159105%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object159121159126%_
                                  (##unchecked-structure-ref
                                   _%self153120159095%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159122159127%_
                                  (##unchecked-structure-ref
                                   _%self153120159095%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159122159127%_
                              _%object159121159126%_
                              _%proc159105%_))))))))
            (declare (not safe))
            (##for-each __tmp170087 _%rest159001%_))
          _%h159004%_)))
    (define hash-merge-right!
      (lambda (_%h158981%_ . _%rest158982%_)
        (let* ((_%h158988%_
                (let ((_%$obj158985%_ _%h158981%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158985%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158985%_)))
                           '#t)
                      _%$obj158985%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158985%_)))))
               (_%h158990%_ _%h158988%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h158990%_ _%rest158982%_))))))
