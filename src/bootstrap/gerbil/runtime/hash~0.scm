(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1781138350)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp163296 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp163296
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args162038%_
        (apply make-instance UnboundKeyError::t _%$args162038%_)))
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
      (lambda (_%where161912%_ _%message161913%_ . _%irritants161914%_)
        (let ((__tmp163297
               (let ((__obj163288
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj163288
                    _%message161913%_
                    'where:
                    _%where161912%_
                    'irritants:
                    _%irritants161914%_))
                 __obj163288)))
          (declare (not safe))
          (raise __tmp163297))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp163298 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'HashTable::t
         'HashTable
         __tmp163298
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj163290
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj163290
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj163290))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj161910%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj161910%_))))
    (define try-HashTable
      (lambda (_%obj161908%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj161908%_))))
    (define HashTable?
      (lambda (_%obj161906%_)
        (let ((__tmp163299
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj161906%_ __tmp163299))))
    (define is-HashTable?
      (lambda (_%obj161903%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj161903%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self146893161886%_)
        (let ((_%self146893161888%_ _%self146893161886%_))
          (declare (not safe))
          (let ((_%object161895161900%_
                 (##unchecked-structure-ref
                  _%self146893161888%_
                  '1
                  '#f
                  'clear!))
                (_%method161896161901%_
                 (##unchecked-structure-ref
                  _%self146893161888%_
                  '2
                  '#f
                  'clear!)))
            (_%method161896161901%_ _%object161895161900%_)))))
    (define ::HashTable-clear!
      (lambda (_%self146894161856%_)
        (let* ((_%self146894161861%_
                (let ((_%$obj161858%_ _%self146894161856%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161858%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161858%_)))
                           '#t)
                      _%$obj161858%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161858%_)))))
               (_%self146894161863%_ _%self146894161861%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161871161876%_
                       (##unchecked-structure-ref
                        _%self146894161863%_
                        '1
                        '#f
                        'clear!))
                      (_%method161872161877%_
                       (##unchecked-structure-ref
                        _%self146894161863%_
                        '2
                        '#f
                        'clear!)))
                  (_%method161872161877%_ _%object161871161876%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161878161883%_
                       (##unchecked-structure-ref
                        _%self146894161863%_
                        '1
                        '#f
                        'clear!))
                      (_%method161879161884%_
                       (##unchecked-structure-ref
                        _%self146894161863%_
                        '2
                        '#f
                        'clear!)))
                  (_%method161879161884%_ _%object161878161883%_)))))))
    (define __HashTable-copy
      (lambda (_%self147138161839%_)
        (let ((_%self147138161841%_ _%self147138161839%_))
          (declare (not safe))
          (let ((_%object161848161853%_
                 (##unchecked-structure-ref _%self147138161841%_ '1 '#f 'copy))
                (_%method161849161854%_
                 (##unchecked-structure-ref
                  _%self147138161841%_
                  '3
                  '#f
                  'copy)))
            (_%method161849161854%_ _%object161848161853%_)))))
    (define ::HashTable-copy
      (lambda (_%self147139161806%_)
        (let* ((_%self147139161811%_
                (let ((_%$obj161808%_ _%self147139161806%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161808%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161808%_)))
                           '#t)
                      _%$obj161808%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161808%_)))))
               (_%self147139161813%_ _%self147139161811%_))
          (if __DEBUG
              (let ((_%$obj161829%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object161821161826%_
                              (##unchecked-structure-ref
                               _%self147139161813%_
                               '1
                               '#f
                               'copy))
                             (_%method161822161827%_
                              (##unchecked-structure-ref
                               _%self147139161813%_
                               '3
                               '#f
                               'copy)))
                         (_%method161822161827%_ _%object161821161826%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj161829%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj161829%_)))
                         '#t)
                    _%$obj161829%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj161829%_))))
              (let ()
                (declare (not safe))
                (let ((_%object161831161836%_
                       (##unchecked-structure-ref
                        _%self147139161813%_
                        '1
                        '#f
                        'copy))
                      (_%method161832161837%_
                       (##unchecked-structure-ref
                        _%self147139161813%_
                        '3
                        '#f
                        'copy)))
                  (_%method161832161837%_ _%object161831161836%_)))))))
    (define __HashTable-delete!
      (lambda (_%self147382161788%_ _%key161789%_)
        (let ((_%self147382161791%_ _%self147382161788%_))
          (declare (not safe))
          (let ((_%object161798161803%_
                 (##unchecked-structure-ref
                  _%self147382161791%_
                  '1
                  '#f
                  'delete!))
                (_%method161799161804%_
                 (##unchecked-structure-ref
                  _%self147382161791%_
                  '4
                  '#f
                  'delete!)))
            (_%method161799161804%_ _%object161798161803%_ _%key161789%_)))))
    (define ::HashTable-delete!
      (lambda (_%self147383161757%_ _%key161758%_)
        (let* ((_%self147383161763%_
                (let ((_%$obj161760%_ _%self147383161757%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161760%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161760%_)))
                           '#t)
                      _%$obj161760%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161760%_)))))
               (_%self147383161765%_ _%self147383161763%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161773161778%_
                       (##unchecked-structure-ref
                        _%self147383161765%_
                        '1
                        '#f
                        'delete!))
                      (_%method161774161779%_
                       (##unchecked-structure-ref
                        _%self147383161765%_
                        '4
                        '#f
                        'delete!)))
                  (_%method161774161779%_
                   _%object161773161778%_
                   _%key161758%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161780161785%_
                       (##unchecked-structure-ref
                        _%self147383161765%_
                        '1
                        '#f
                        'delete!))
                      (_%method161781161786%_
                       (##unchecked-structure-ref
                        _%self147383161765%_
                        '4
                        '#f
                        'delete!)))
                  (_%method161781161786%_
                   _%object161780161785%_
                   _%key161758%_)))))))
    (define __HashTable-for-each
      (lambda (_%self147626161731%_ _%proc161732%_)
        (let* ((_%self147626161734%_ _%self147626161731%_)
               (_%proc161741%_ _%proc161732%_))
          (declare (not safe))
          (let ((_%object161749161754%_
                 (##unchecked-structure-ref
                  _%self147626161734%_
                  '1
                  '#f
                  'for-each))
                (_%method161750161755%_
                 (##unchecked-structure-ref
                  _%self147626161734%_
                  '5
                  '#f
                  'for-each)))
            (_%method161750161755%_ _%object161749161754%_ _%proc161741%_)))))
    (define ::HashTable-for-each
      (lambda (_%self147627161690%_ _%proc161691%_)
        (let* ((_%self147627161696%_
                (let ((_%$obj161693%_ _%self147627161690%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161693%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161693%_)))
                           '#t)
                      _%$obj161693%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161693%_)))))
               (_%self147627161698%_ _%self147627161696%_))
          (if (procedure? _%proc161691%_)
              (let ((_%proc161707%_ _%proc161691%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object161716161721%_
                             (##unchecked-structure-ref
                              _%self147627161698%_
                              '1
                              '#f
                              'for-each))
                            (_%method161717161722%_
                             (##unchecked-structure-ref
                              _%self147627161698%_
                              '5
                              '#f
                              'for-each)))
                        (_%method161717161722%_
                         _%object161716161721%_
                         _%proc161707%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object161723161728%_
                             (##unchecked-structure-ref
                              _%self147627161698%_
                              '1
                              '#f
                              'for-each))
                            (_%method161724161729%_
                             (##unchecked-structure-ref
                              _%self147627161698%_
                              '5
                              '#f
                              'for-each)))
                        (_%method161724161729%_
                         _%object161723161728%_
                         _%proc161707%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc161691%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self147870161673%_)
        (let ((_%self147870161675%_ _%self147870161673%_))
          (declare (not safe))
          (let ((_%object161682161687%_
                 (##unchecked-structure-ref
                  _%self147870161675%_
                  '1
                  '#f
                  'length))
                (_%method161683161688%_
                 (##unchecked-structure-ref
                  _%self147870161675%_
                  '6
                  '#f
                  'length)))
            (_%method161683161688%_ _%object161682161687%_)))))
    (define ::HashTable-length
      (lambda (_%self147871161640%_)
        (let* ((_%self147871161645%_
                (let ((_%$obj161642%_ _%self147871161640%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161642%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161642%_)))
                           '#t)
                      _%$obj161642%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161642%_)))))
               (_%self147871161647%_ _%self147871161645%_))
          (if __DEBUG
              (let ((_%val161663%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object161655161660%_
                              (##unchecked-structure-ref
                               _%self147871161647%_
                               '1
                               '#f
                               'length))
                             (_%method161656161661%_
                              (##unchecked-structure-ref
                               _%self147871161647%_
                               '6
                               '#f
                               'length)))
                         (_%method161656161661%_ _%object161655161660%_)))))
                (if (fixnum? _%val161663%_)
                    _%val161663%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val161663%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object161665161670%_
                       (##unchecked-structure-ref
                        _%self147871161647%_
                        '1
                        '#f
                        'length))
                      (_%method161666161671%_
                       (##unchecked-structure-ref
                        _%self147871161647%_
                        '6
                        '#f
                        'length)))
                  (_%method161666161671%_ _%object161665161670%_)))))))
    (define __HashTable-ref
      (lambda (_%self148114161621%_ _%key161622%_ _%default161623%_)
        (let ((_%self148114161625%_ _%self148114161621%_))
          (declare (not safe))
          (let ((_%object161632161637%_
                 (##unchecked-structure-ref _%self148114161625%_ '1 '#f 'ref))
                (_%method161633161638%_
                 (##unchecked-structure-ref _%self148114161625%_ '7 '#f 'ref)))
            (_%method161633161638%_
             _%object161632161637%_
             _%key161622%_
             _%default161623%_)))))
    (define ::HashTable-ref
      (lambda (_%self148115161589%_ _%key161590%_ _%default161591%_)
        (let* ((_%self148115161596%_
                (let ((_%$obj161593%_ _%self148115161589%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161593%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161593%_)))
                           '#t)
                      _%$obj161593%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161593%_)))))
               (_%self148115161598%_ _%self148115161596%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161606161611%_
                       (##unchecked-structure-ref
                        _%self148115161598%_
                        '1
                        '#f
                        'ref))
                      (_%method161607161612%_
                       (##unchecked-structure-ref
                        _%self148115161598%_
                        '7
                        '#f
                        'ref)))
                  (_%method161607161612%_
                   _%object161606161611%_
                   _%key161590%_
                   _%default161591%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161613161618%_
                       (##unchecked-structure-ref
                        _%self148115161598%_
                        '1
                        '#f
                        'ref))
                      (_%method161614161619%_
                       (##unchecked-structure-ref
                        _%self148115161598%_
                        '7
                        '#f
                        'ref)))
                  (_%method161614161619%_
                   _%object161613161618%_
                   _%key161590%_
                   _%default161591%_)))))))
    (define __HashTable-set!
      (lambda (_%self148358161570%_ _%key161571%_ _%value161572%_)
        (let ((_%self148358161574%_ _%self148358161570%_))
          (declare (not safe))
          (let ((_%object161581161586%_
                 (##unchecked-structure-ref _%self148358161574%_ '1 '#f 'set!))
                (_%method161582161587%_
                 (##unchecked-structure-ref
                  _%self148358161574%_
                  '8
                  '#f
                  'set!)))
            (_%method161582161587%_
             _%object161581161586%_
             _%key161571%_
             _%value161572%_)))))
    (define ::HashTable-set!
      (lambda (_%self148359161538%_ _%key161539%_ _%value161540%_)
        (let* ((_%self148359161545%_
                (let ((_%$obj161542%_ _%self148359161538%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161542%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161542%_)))
                           '#t)
                      _%$obj161542%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161542%_)))))
               (_%self148359161547%_ _%self148359161545%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161555161560%_
                       (##unchecked-structure-ref
                        _%self148359161547%_
                        '1
                        '#f
                        'set!))
                      (_%method161556161561%_
                       (##unchecked-structure-ref
                        _%self148359161547%_
                        '8
                        '#f
                        'set!)))
                  (_%method161556161561%_
                   _%object161555161560%_
                   _%key161539%_
                   _%value161540%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161562161567%_
                       (##unchecked-structure-ref
                        _%self148359161547%_
                        '1
                        '#f
                        'set!))
                      (_%method161563161568%_
                       (##unchecked-structure-ref
                        _%self148359161547%_
                        '8
                        '#f
                        'set!)))
                  (_%method161563161568%_
                   _%object161562161567%_
                   _%key161539%_
                   _%value161540%_)))))))
    (define __HashTable-update!
      (lambda (_%self148602161510%_
               _%key161511%_
               _%proc161512%_
               _%default161513%_)
        (let* ((_%self148602161515%_ _%self148602161510%_)
               (_%proc161522%_ _%proc161512%_))
          (declare (not safe))
          (let ((_%object161530161535%_
                 (##unchecked-structure-ref
                  _%self148602161515%_
                  '1
                  '#f
                  'update!))
                (_%method161531161536%_
                 (##unchecked-structure-ref
                  _%self148602161515%_
                  '9
                  '#f
                  'update!)))
            (_%method161531161536%_
             _%object161530161535%_
             _%key161511%_
             _%proc161522%_
             _%default161513%_)))))
    (define ::HashTable-update!
      (lambda (_%self148603161467%_
               _%key161468%_
               _%proc161469%_
               _%default161470%_)
        (let* ((_%self148603161475%_
                (let ((_%$obj161472%_ _%self148603161467%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161472%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161472%_)))
                           '#t)
                      _%$obj161472%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161472%_)))))
               (_%self148603161477%_ _%self148603161475%_))
          (if (procedure? _%proc161469%_)
              (let ((_%proc161486%_ _%proc161469%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object161495161500%_
                             (##unchecked-structure-ref
                              _%self148603161477%_
                              '1
                              '#f
                              'update!))
                            (_%method161496161501%_
                             (##unchecked-structure-ref
                              _%self148603161477%_
                              '9
                              '#f
                              'update!)))
                        (_%method161496161501%_
                         _%object161495161500%_
                         _%key161468%_
                         _%proc161486%_
                         _%default161470%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object161502161507%_
                             (##unchecked-structure-ref
                              _%self148603161477%_
                              '1
                              '#f
                              'update!))
                            (_%method161503161508%_
                             (##unchecked-structure-ref
                              _%self148603161477%_
                              '9
                              '#f
                              'update!)))
                        (_%method161503161508%_
                         _%object161502161507%_
                         _%key161468%_
                         _%proc161486%_
                         _%default161470%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc161469%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp163300 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'Locker::t
         'Locker
         __tmp163300
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj163292
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj163292
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj163292))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj161465%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj161465%_))))
    (define try-Locker
      (lambda (_%obj161463%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj161463%_))))
    (define Locker?
      (lambda (_%obj161461%_)
        (let ((__tmp163301
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj161461%_ __tmp163301))))
    (define is-Locker?
      (lambda (_%obj161458%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj161458%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self148846161441%_)
        (let ((_%self148846161443%_ _%self148846161441%_))
          (declare (not safe))
          (let ((_%object161450161455%_
                 (##unchecked-structure-ref
                  _%self148846161443%_
                  '1
                  '#f
                  'read-lock!))
                (_%method161451161456%_
                 (##unchecked-structure-ref
                  _%self148846161443%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method161451161456%_ _%object161450161455%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self148847161411%_)
        (let* ((_%self148847161416%_
                (let ((_%$obj161413%_ _%self148847161411%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161413%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161413%_)))
                           '#t)
                      _%$obj161413%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj161413%_)))))
               (_%self148847161418%_ _%self148847161416%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161426161431%_
                       (##unchecked-structure-ref
                        _%self148847161418%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method161427161432%_
                       (##unchecked-structure-ref
                        _%self148847161418%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method161427161432%_ _%object161426161431%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161433161438%_
                       (##unchecked-structure-ref
                        _%self148847161418%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method161434161439%_
                       (##unchecked-structure-ref
                        _%self148847161418%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method161434161439%_ _%object161433161438%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self149090161394%_)
        (let ((_%self149090161396%_ _%self149090161394%_))
          (declare (not safe))
          (let ((_%object161403161408%_
                 (##unchecked-structure-ref
                  _%self149090161396%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method161404161409%_
                 (##unchecked-structure-ref
                  _%self149090161396%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method161404161409%_ _%object161403161408%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self149091161364%_)
        (let* ((_%self149091161369%_
                (let ((_%$obj161366%_ _%self149091161364%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161366%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161366%_)))
                           '#t)
                      _%$obj161366%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj161366%_)))))
               (_%self149091161371%_ _%self149091161369%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161379161384%_
                       (##unchecked-structure-ref
                        _%self149091161371%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method161380161385%_
                       (##unchecked-structure-ref
                        _%self149091161371%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method161380161385%_ _%object161379161384%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161386161391%_
                       (##unchecked-structure-ref
                        _%self149091161371%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method161387161392%_
                       (##unchecked-structure-ref
                        _%self149091161371%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method161387161392%_ _%object161386161391%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self149334161347%_)
        (let ((_%self149334161349%_ _%self149334161347%_))
          (declare (not safe))
          (let ((_%object161356161361%_
                 (##unchecked-structure-ref
                  _%self149334161349%_
                  '1
                  '#f
                  'write-lock!))
                (_%method161357161362%_
                 (##unchecked-structure-ref
                  _%self149334161349%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method161357161362%_ _%object161356161361%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self149335161317%_)
        (let* ((_%self149335161322%_
                (let ((_%$obj161319%_ _%self149335161317%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161319%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161319%_)))
                           '#t)
                      _%$obj161319%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj161319%_)))))
               (_%self149335161324%_ _%self149335161322%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161332161337%_
                       (##unchecked-structure-ref
                        _%self149335161324%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method161333161338%_
                       (##unchecked-structure-ref
                        _%self149335161324%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method161333161338%_ _%object161332161337%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161339161344%_
                       (##unchecked-structure-ref
                        _%self149335161324%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method161340161345%_
                       (##unchecked-structure-ref
                        _%self149335161324%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method161340161345%_ _%object161339161344%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self149578161300%_)
        (let ((_%self149578161302%_ _%self149578161300%_))
          (declare (not safe))
          (let ((_%object161309161314%_
                 (##unchecked-structure-ref
                  _%self149578161302%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method161310161315%_
                 (##unchecked-structure-ref
                  _%self149578161302%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method161310161315%_ _%object161309161314%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self149579161270%_)
        (let* ((_%self149579161275%_
                (let ((_%$obj161272%_ _%self149579161270%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161272%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161272%_)))
                           '#t)
                      _%$obj161272%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj161272%_)))))
               (_%self149579161277%_ _%self149579161275%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161285161290%_
                       (##unchecked-structure-ref
                        _%self149579161277%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method161286161291%_
                       (##unchecked-structure-ref
                        _%self149579161277%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method161286161291%_ _%object161285161290%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161292161297%_
                       (##unchecked-structure-ref
                        _%self149579161277%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method161293161298%_
                       (##unchecked-structure-ref
                        _%self149579161277%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method161293161298%_ _%object161292161297%_)))))))
    (let* ((_%klass161233%_ __table::t)
           (_%id161236%_ 'HashTable::ref)
           (_%proc161239%_ raw-table-ref)
           (_%rebind?161242%_ '#f)
           (_%id161247%_ _%id161236%_)
           (_%proc161260%_ _%proc161239%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161233%_
       _%id161247%_
       _%proc161260%_
       _%rebind?161242%_))
    (let* ((_%klass161196%_ __table::t)
           (_%id161199%_ 'HashTable::set!)
           (_%proc161202%_ raw-table-set!)
           (_%rebind?161205%_ '#f)
           (_%id161210%_ _%id161199%_)
           (_%proc161223%_ _%proc161202%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161196%_
       _%id161210%_
       _%proc161223%_
       _%rebind?161205%_))
    (let* ((_%klass161159%_ __table::t)
           (_%id161162%_ 'HashTable::update!)
           (_%proc161165%_ raw-table-update!)
           (_%rebind?161168%_ '#f)
           (_%id161173%_ _%id161162%_)
           (_%proc161186%_ _%proc161165%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161159%_
       _%id161173%_
       _%proc161186%_
       _%rebind?161168%_))
    (let* ((_%klass161122%_ __table::t)
           (_%id161125%_ 'HashTable::delete!)
           (_%proc161128%_ raw-table-delete!)
           (_%rebind?161131%_ '#f)
           (_%id161136%_ _%id161125%_)
           (_%proc161149%_ _%proc161128%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161122%_
       _%id161136%_
       _%proc161149%_
       _%rebind?161131%_))
    (let* ((_%klass161085%_ __table::t)
           (_%id161088%_ 'HashTable::for-each)
           (_%proc161091%_ raw-table-for-each)
           (_%rebind?161094%_ '#f)
           (_%id161099%_ _%id161088%_)
           (_%proc161112%_ _%proc161091%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161085%_
       _%id161099%_
       _%proc161112%_
       _%rebind?161094%_))
    (let* ((_%klass161048%_ __table::t)
           (_%id161051%_ 'HashTable::length)
           (_%proc161054%_ &raw-table-count)
           (_%rebind?161057%_ '#f)
           (_%id161062%_ _%id161051%_)
           (_%proc161075%_ _%proc161054%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161048%_
       _%id161062%_
       _%proc161075%_
       _%rebind?161057%_))
    (let* ((_%klass161011%_ __table::t)
           (_%id161014%_ 'HashTable::copy)
           (_%proc161017%_ raw-table-copy)
           (_%rebind?161020%_ '#f)
           (_%id161025%_ _%id161014%_)
           (_%proc161038%_ _%proc161017%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161011%_
       _%id161025%_
       _%proc161038%_
       _%rebind?161020%_))
    (let* ((_%klass160974%_ __table::t)
           (_%id160977%_ 'HashTable::clear!)
           (_%proc160980%_ raw-table-clear!)
           (_%rebind?160983%_ '#f)
           (_%id160988%_ _%id160977%_)
           (_%proc161001%_ _%proc160980%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160974%_
       _%id160988%_
       _%proc161001%_
       _%rebind?160983%_))
    (let* ((_%klass160937%_ __gc-table::t)
           (_%id160940%_ 'HashTable::ref)
           (_%proc160943%_ gc-table-ref)
           (_%rebind?160946%_ '#f)
           (_%id160951%_ _%id160940%_)
           (_%proc160964%_ _%proc160943%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160937%_
       _%id160951%_
       _%proc160964%_
       _%rebind?160946%_))
    (let* ((_%klass160900%_ __gc-table::t)
           (_%id160903%_ 'HashTable::set!)
           (_%proc160906%_ gc-table-set!)
           (_%rebind?160909%_ '#f)
           (_%id160914%_ _%id160903%_)
           (_%proc160927%_ _%proc160906%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160900%_
       _%id160914%_
       _%proc160927%_
       _%rebind?160909%_))
    (let* ((_%klass160863%_ __gc-table::t)
           (_%id160866%_ 'HashTable::update!)
           (_%proc160869%_ gc-table-update!)
           (_%rebind?160872%_ '#f)
           (_%id160877%_ _%id160866%_)
           (_%proc160890%_ _%proc160869%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160863%_
       _%id160877%_
       _%proc160890%_
       _%rebind?160872%_))
    (let* ((_%klass160826%_ __gc-table::t)
           (_%id160829%_ 'HashTable::delete!)
           (_%proc160832%_ gc-table-delete!)
           (_%rebind?160835%_ '#f)
           (_%id160840%_ _%id160829%_)
           (_%proc160853%_ _%proc160832%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160826%_
       _%id160840%_
       _%proc160853%_
       _%rebind?160835%_))
    (let* ((_%klass160789%_ __gc-table::t)
           (_%id160792%_ 'HashTable::for-each)
           (_%proc160795%_ gc-table-for-each)
           (_%rebind?160798%_ '#f)
           (_%id160803%_ _%id160792%_)
           (_%proc160816%_ _%proc160795%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160789%_
       _%id160803%_
       _%proc160816%_
       _%rebind?160798%_))
    (let* ((_%klass160752%_ __gc-table::t)
           (_%id160755%_ 'HashTable::length)
           (_%proc160758%_ gc-table-length)
           (_%rebind?160761%_ '#f)
           (_%id160766%_ _%id160755%_)
           (_%proc160779%_ _%proc160758%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160752%_
       _%id160766%_
       _%proc160779%_
       _%rebind?160761%_))
    (let* ((_%klass160715%_ __gc-table::t)
           (_%id160718%_ 'HashTable::copy)
           (_%proc160721%_ gc-table-copy)
           (_%rebind?160724%_ '#f)
           (_%id160729%_ _%id160718%_)
           (_%proc160742%_ _%proc160721%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160715%_
       _%id160729%_
       _%proc160742%_
       _%rebind?160724%_))
    (let* ((_%klass160678%_ __gc-table::t)
           (_%id160681%_ 'HashTable::clear!)
           (_%proc160684%_ gc-table-clear!)
           (_%rebind?160687%_ '#f)
           (_%id160692%_ _%id160681%_)
           (_%proc160705%_ _%proc160684%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160678%_
       _%id160692%_
       _%proc160705%_
       _%rebind?160687%_))
    (define gambit-table-update!
      (lambda (_%table160671%_
               _%key160672%_
               _%update160673%_
               _%default160674%_)
        (let ((_%result160676%_
               (table-ref _%table160671%_ _%key160672%_ _%default160674%_)))
          (table-set!
           _%table160671%_
           _%key160672%_
           (_%update160673%_ _%default160674%_)))))
    (define gambit-table-for-each
      (lambda (_%table160668%_ _%proc160669%_)
        (table-for-each _%proc160669%_ _%table160668%_)))
    (define gambit-table-clear!
      (lambda (_%table160666%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table160666%_ '0 '5 '#f '#f))))
    (let* ((_%klass160629%_ (macro-type-table))
           (_%id160632%_ 'HashTable::ref)
           (_%proc160635%_ table-ref)
           (_%rebind?160638%_ '#f)
           (_%id160643%_ _%id160632%_)
           (_%proc160656%_ _%proc160635%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160629%_
       _%id160643%_
       _%proc160656%_
       _%rebind?160638%_))
    (let* ((_%klass160592%_ (macro-type-table))
           (_%id160595%_ 'HashTable::set!)
           (_%proc160598%_ table-set!)
           (_%rebind?160601%_ '#f)
           (_%id160606%_ _%id160595%_)
           (_%proc160619%_ _%proc160598%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160592%_
       _%id160606%_
       _%proc160619%_
       _%rebind?160601%_))
    (let* ((_%klass160555%_ (macro-type-table))
           (_%id160558%_ 'HashTable::update!)
           (_%proc160561%_ gambit-table-update!)
           (_%rebind?160564%_ '#f)
           (_%id160569%_ _%id160558%_)
           (_%proc160582%_ _%proc160561%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160555%_
       _%id160569%_
       _%proc160582%_
       _%rebind?160564%_))
    (let* ((_%klass160518%_ (macro-type-table))
           (_%id160521%_ 'HashTable::delete!)
           (_%proc160524%_ table-set!)
           (_%rebind?160527%_ '#f)
           (_%id160532%_ _%id160521%_)
           (_%proc160545%_ _%proc160524%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160518%_
       _%id160532%_
       _%proc160545%_
       _%rebind?160527%_))
    (let* ((_%klass160481%_ (macro-type-table))
           (_%id160484%_ 'HashTable::for-each)
           (_%proc160487%_ gambit-table-for-each)
           (_%rebind?160490%_ '#f)
           (_%id160495%_ _%id160484%_)
           (_%proc160508%_ _%proc160487%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160481%_
       _%id160495%_
       _%proc160508%_
       _%rebind?160490%_))
    (let* ((_%klass160444%_ (macro-type-table))
           (_%id160447%_ 'HashTable::length)
           (_%proc160450%_ table-length)
           (_%rebind?160453%_ '#f)
           (_%id160458%_ _%id160447%_)
           (_%proc160471%_ _%proc160450%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160444%_
       _%id160458%_
       _%proc160471%_
       _%rebind?160453%_))
    (let* ((_%klass160407%_ (macro-type-table))
           (_%id160410%_ 'HashTable::copy)
           (_%proc160413%_ table-copy)
           (_%rebind?160416%_ '#f)
           (_%id160421%_ _%id160410%_)
           (_%proc160434%_ _%proc160413%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160407%_
       _%id160421%_
       _%proc160434%_
       _%rebind?160416%_))
    (let* ((_%klass160370%_ (macro-type-table))
           (_%id160373%_ 'HashTable::clear!)
           (_%proc160376%_ gambit-table-clear!)
           (_%rebind?160379%_ '#f)
           (_%id160384%_ _%id160373%_)
           (_%proc160397%_ _%proc160376%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160370%_
       _%id160384%_
       _%proc160397%_
       _%rebind?160379%_))
    (define hash-table::t
      (let* ((_%slots160333%_ '(table count free hash test seed))
             (_%slot-vector160335%_ (list->vector (cons '#f _%slots160333%_)))
             (_%slot-table160361%_
              (let ((_%slot-table160337%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp163304
                       (lambda (_%slot160339%_ _%field160340%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160337%_
                            _%slot160339%_
                            _%field160340%_))
                         (let ((__tmp163305
                                (let ((_%sym160342%_ _%slot160339%_))
                                  (if (symbol? _%sym160342%_)
                                      (let ((_%sym160347%_ _%sym160342%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym160347%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym160342%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160337%_
                            __tmp163305
                            _%field160340%_))))
                      (__tmp163302
                       (let ((__tmp163303
                              (let ()
                                (declare (not safe))
                                (##length _%slots160333%_))))
                         (declare (not safe))
                         (##iota __tmp163303 '1))))
                  (declare (not safe))
                  (##for-each __tmp163304 _%slots160333%_ __tmp163302))
                _%slot-table160337%_))
             (_%flags160363%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields160365%_ '#())
             (_%properties160367%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots160333%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp163306 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags160363%_
         __table::t
         _%fields160365%_
         __tmp163306
         _%slot-vector160335%_
         _%slot-table160361%_
         _%properties160367%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots160296%_ '(gcht immediate))
             (_%slot-vector160298%_ (list->vector (cons '#f _%slots160296%_)))
             (_%slot-table160324%_
              (let ((_%slot-table160300%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp163309
                       (lambda (_%slot160302%_ _%field160303%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160300%_
                            _%slot160302%_
                            _%field160303%_))
                         (let ((__tmp163310
                                (let ((_%sym160305%_ _%slot160302%_))
                                  (if (symbol? _%sym160305%_)
                                      (let ((_%sym160310%_ _%sym160305%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym160310%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym160305%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160300%_
                            __tmp163310
                            _%field160303%_))))
                      (__tmp163307
                       (let ((__tmp163308
                              (let ()
                                (declare (not safe))
                                (##length _%slots160296%_))))
                         (declare (not safe))
                         (##iota __tmp163308 '1))))
                  (declare (not safe))
                  (##for-each __tmp163309 _%slots160296%_ __tmp163307))
                _%slot-table160300%_))
             (_%flags160326%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields160328%_ '#())
             (_%properties160330%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots160296%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp163311 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags160326%_
         __gc-table::t
         _%fields160328%_
         __tmp163311
         _%slot-vector160298%_
         _%slot-table160324%_
         _%properties160330%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp163313 (list))
            (__tmp163312
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp163313
         '(table lock)
         __tmp163312
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args160293%_
        (apply make-instance locked-hash-table::t _%$args160293%_)))
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
      (let ((__tmp163315 (list))
            (__tmp163314
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp163315
         '(table key-check)
         __tmp163314
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args160290%_
        (apply make-instance checked-hash-table::t _%$args160290%_)))
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
      (let ((__tmp163317 (list hash-table::t))
            (__tmp163316 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp163317
         '()
         __tmp163316
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args160287%_
        (apply make-instance eq-hash-table::t _%$args160287%_)))
    (define eqv-hash-table::t
      (let ((__tmp163319 (list hash-table::t))
            (__tmp163318 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp163319
         '()
         __tmp163318
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args160284%_
        (apply make-instance eqv-hash-table::t _%$args160284%_)))
    (define symbol-hash-table::t
      (let ((__tmp163321 (list hash-table::t))
            (__tmp163320 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp163321
         '()
         __tmp163320
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args160281%_
        (apply make-instance symbol-hash-table::t _%$args160281%_)))
    (define string-hash-table::t
      (let ((__tmp163323 (list hash-table::t))
            (__tmp163322 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp163323
         '()
         __tmp163322
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args160278%_
        (apply make-instance string-hash-table::t _%$args160278%_)))
    (define immediate-hash-table::t
      (let ((__tmp163325 (list hash-table::t))
            (__tmp163324 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp163325
         '()
         __tmp163324
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args160275%_
        (apply make-instance immediate-hash-table::t _%$args160275%_)))
    (let* ((_%klass160238%_ hash-table::t)
           (_%id160241%_ 'HashTable::ref)
           (_%proc160244%_ raw-table-ref)
           (_%rebind?160247%_ '#f)
           (_%id160252%_ _%id160241%_)
           (_%proc160265%_ _%proc160244%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160238%_
       _%id160252%_
       _%proc160265%_
       _%rebind?160247%_))
    (let* ((_%klass160201%_ hash-table::t)
           (_%id160204%_ 'HashTable::set!)
           (_%proc160207%_ raw-table-set!)
           (_%rebind?160210%_ '#f)
           (_%id160215%_ _%id160204%_)
           (_%proc160228%_ _%proc160207%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160201%_
       _%id160215%_
       _%proc160228%_
       _%rebind?160210%_))
    (let* ((_%klass160164%_ hash-table::t)
           (_%id160167%_ 'HashTable::update!)
           (_%proc160170%_ raw-table-update!)
           (_%rebind?160173%_ '#f)
           (_%id160178%_ _%id160167%_)
           (_%proc160191%_ _%proc160170%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160164%_
       _%id160178%_
       _%proc160191%_
       _%rebind?160173%_))
    (let* ((_%klass160127%_ hash-table::t)
           (_%id160130%_ 'HashTable::delete!)
           (_%proc160133%_ raw-table-delete!)
           (_%rebind?160136%_ '#f)
           (_%id160141%_ _%id160130%_)
           (_%proc160154%_ _%proc160133%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160127%_
       _%id160141%_
       _%proc160154%_
       _%rebind?160136%_))
    (let* ((_%klass160090%_ hash-table::t)
           (_%id160093%_ 'HashTable::for-each)
           (_%proc160096%_ raw-table-for-each)
           (_%rebind?160099%_ '#f)
           (_%id160104%_ _%id160093%_)
           (_%proc160117%_ _%proc160096%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160090%_
       _%id160104%_
       _%proc160117%_
       _%rebind?160099%_))
    (let* ((_%klass160053%_ hash-table::t)
           (_%id160056%_ 'HashTable::length)
           (_%proc160059%_ &raw-table-count)
           (_%rebind?160062%_ '#f)
           (_%id160067%_ _%id160056%_)
           (_%proc160080%_ _%proc160059%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160053%_
       _%id160067%_
       _%proc160080%_
       _%rebind?160062%_))
    (let* ((_%klass160016%_ hash-table::t)
           (_%id160019%_ 'HashTable::copy)
           (_%proc160022%_ raw-table-copy)
           (_%rebind?160025%_ '#f)
           (_%id160030%_ _%id160019%_)
           (_%proc160043%_ _%proc160022%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160016%_
       _%id160030%_
       _%proc160043%_
       _%rebind?160025%_))
    (let* ((_%klass159979%_ hash-table::t)
           (_%id159982%_ 'HashTable::clear!)
           (_%proc159985%_ raw-table-clear!)
           (_%rebind?159988%_ '#f)
           (_%id159993%_ _%id159982%_)
           (_%proc160006%_ _%proc159985%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159979%_
       _%id159993%_
       _%proc160006%_
       _%rebind?159988%_))
    (let* ((_%klass159942%_ eq-hash-table::t)
           (_%id159945%_ 'HashTable::ref)
           (_%proc159948%_ eq-table-ref)
           (_%rebind?159951%_ '#f)
           (_%id159956%_ _%id159945%_)
           (_%proc159969%_ _%proc159948%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159942%_
       _%id159956%_
       _%proc159969%_
       _%rebind?159951%_))
    (let* ((_%klass159905%_ eq-hash-table::t)
           (_%id159908%_ 'HashTable::set!)
           (_%proc159911%_ eq-table-set!)
           (_%rebind?159914%_ '#f)
           (_%id159919%_ _%id159908%_)
           (_%proc159932%_ _%proc159911%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159905%_
       _%id159919%_
       _%proc159932%_
       _%rebind?159914%_))
    (let* ((_%klass159868%_ eq-hash-table::t)
           (_%id159871%_ 'HashTable::update!)
           (_%proc159874%_ eq-table-update!)
           (_%rebind?159877%_ '#f)
           (_%id159882%_ _%id159871%_)
           (_%proc159895%_ _%proc159874%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159868%_
       _%id159882%_
       _%proc159895%_
       _%rebind?159877%_))
    (let* ((_%klass159831%_ eq-hash-table::t)
           (_%id159834%_ 'HashTable::delete!)
           (_%proc159837%_ eq-table-delete!)
           (_%rebind?159840%_ '#f)
           (_%id159845%_ _%id159834%_)
           (_%proc159858%_ _%proc159837%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159831%_
       _%id159845%_
       _%proc159858%_
       _%rebind?159840%_))
    (let* ((_%klass159794%_ eqv-hash-table::t)
           (_%id159797%_ 'HashTable::ref)
           (_%proc159800%_ eqv-table-ref)
           (_%rebind?159803%_ '#f)
           (_%id159808%_ _%id159797%_)
           (_%proc159821%_ _%proc159800%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159794%_
       _%id159808%_
       _%proc159821%_
       _%rebind?159803%_))
    (let* ((_%klass159757%_ eqv-hash-table::t)
           (_%id159760%_ 'HashTable::set!)
           (_%proc159763%_ eqv-table-set!)
           (_%rebind?159766%_ '#f)
           (_%id159771%_ _%id159760%_)
           (_%proc159784%_ _%proc159763%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159757%_
       _%id159771%_
       _%proc159784%_
       _%rebind?159766%_))
    (let* ((_%klass159720%_ eqv-hash-table::t)
           (_%id159723%_ 'HashTable::update!)
           (_%proc159726%_ eqv-table-update!)
           (_%rebind?159729%_ '#f)
           (_%id159734%_ _%id159723%_)
           (_%proc159747%_ _%proc159726%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159720%_
       _%id159734%_
       _%proc159747%_
       _%rebind?159729%_))
    (let* ((_%klass159683%_ eqv-hash-table::t)
           (_%id159686%_ 'HashTable::delete!)
           (_%proc159689%_ eqv-table-delete!)
           (_%rebind?159692%_ '#f)
           (_%id159697%_ _%id159686%_)
           (_%proc159710%_ _%proc159689%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159683%_
       _%id159697%_
       _%proc159710%_
       _%rebind?159692%_))
    (let* ((_%klass159646%_ symbol-hash-table::t)
           (_%id159649%_ 'HashTable::ref)
           (_%proc159652%_ symbolic-table-ref)
           (_%rebind?159655%_ '#f)
           (_%id159660%_ _%id159649%_)
           (_%proc159673%_ _%proc159652%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159646%_
       _%id159660%_
       _%proc159673%_
       _%rebind?159655%_))
    (let* ((_%klass159609%_ symbol-hash-table::t)
           (_%id159612%_ 'HashTable::set!)
           (_%proc159615%_ symbolic-table-set!)
           (_%rebind?159618%_ '#f)
           (_%id159623%_ _%id159612%_)
           (_%proc159636%_ _%proc159615%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159609%_
       _%id159623%_
       _%proc159636%_
       _%rebind?159618%_))
    (let* ((_%klass159572%_ symbol-hash-table::t)
           (_%id159575%_ 'HashTable::update!)
           (_%proc159578%_ symbolic-table-update!)
           (_%rebind?159581%_ '#f)
           (_%id159586%_ _%id159575%_)
           (_%proc159599%_ _%proc159578%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159572%_
       _%id159586%_
       _%proc159599%_
       _%rebind?159581%_))
    (let* ((_%klass159535%_ symbol-hash-table::t)
           (_%id159538%_ 'HashTable::delete!)
           (_%proc159541%_ symbolic-table-delete!)
           (_%rebind?159544%_ '#f)
           (_%id159549%_ _%id159538%_)
           (_%proc159562%_ _%proc159541%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159535%_
       _%id159549%_
       _%proc159562%_
       _%rebind?159544%_))
    (let* ((_%klass159498%_ string-hash-table::t)
           (_%id159501%_ 'HashTable::ref)
           (_%proc159504%_ string-table-ref)
           (_%rebind?159507%_ '#f)
           (_%id159512%_ _%id159501%_)
           (_%proc159525%_ _%proc159504%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159498%_
       _%id159512%_
       _%proc159525%_
       _%rebind?159507%_))
    (let* ((_%klass159461%_ string-hash-table::t)
           (_%id159464%_ 'HashTable::set!)
           (_%proc159467%_ string-table-set!)
           (_%rebind?159470%_ '#f)
           (_%id159475%_ _%id159464%_)
           (_%proc159488%_ _%proc159467%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159461%_
       _%id159475%_
       _%proc159488%_
       _%rebind?159470%_))
    (let* ((_%klass159424%_ string-hash-table::t)
           (_%id159427%_ 'HashTable::update!)
           (_%proc159430%_ string-table-update!)
           (_%rebind?159433%_ '#f)
           (_%id159438%_ _%id159427%_)
           (_%proc159451%_ _%proc159430%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159424%_
       _%id159438%_
       _%proc159451%_
       _%rebind?159433%_))
    (let* ((_%klass159387%_ string-hash-table::t)
           (_%id159390%_ 'HashTable::delete!)
           (_%proc159393%_ string-table-delete!)
           (_%rebind?159396%_ '#f)
           (_%id159401%_ _%id159390%_)
           (_%proc159414%_ _%proc159393%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159387%_
       _%id159401%_
       _%proc159414%_
       _%rebind?159396%_))
    (let* ((_%klass159350%_ immediate-hash-table::t)
           (_%id159353%_ 'HashTable::ref)
           (_%proc159356%_ immediate-table-ref)
           (_%rebind?159359%_ '#f)
           (_%id159364%_ _%id159353%_)
           (_%proc159377%_ _%proc159356%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159350%_
       _%id159364%_
       _%proc159377%_
       _%rebind?159359%_))
    (let* ((_%klass159313%_ immediate-hash-table::t)
           (_%id159316%_ 'HashTable::set!)
           (_%proc159319%_ immediate-table-set!)
           (_%rebind?159322%_ '#f)
           (_%id159327%_ _%id159316%_)
           (_%proc159340%_ _%proc159319%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159313%_
       _%id159327%_
       _%proc159340%_
       _%rebind?159322%_))
    (let* ((_%klass159276%_ immediate-hash-table::t)
           (_%id159279%_ 'HashTable::update!)
           (_%proc159282%_ immediate-table-update!)
           (_%rebind?159285%_ '#f)
           (_%id159290%_ _%id159279%_)
           (_%proc159303%_ _%proc159282%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159276%_
       _%id159290%_
       _%proc159303%_
       _%rebind?159285%_))
    (let* ((_%klass159239%_ immediate-hash-table::t)
           (_%id159242%_ 'HashTable::delete!)
           (_%proc159245%_ immediate-table-delete!)
           (_%rebind?159248%_ '#f)
           (_%id159253%_ _%id159242%_)
           (_%proc159266%_ _%proc159245%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159239%_
       _%id159253%_
       _%proc159266%_
       _%rebind?159248%_))
    (let* ((_%klass159202%_ gc-hash-table::t)
           (_%id159205%_ 'HashTable::ref)
           (_%proc159208%_ gc-table-ref)
           (_%rebind?159211%_ '#f)
           (_%id159216%_ _%id159205%_)
           (_%proc159229%_ _%proc159208%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159202%_
       _%id159216%_
       _%proc159229%_
       _%rebind?159211%_))
    (let* ((_%klass159165%_ gc-hash-table::t)
           (_%id159168%_ 'HashTable::set!)
           (_%proc159171%_ gc-table-set!)
           (_%rebind?159174%_ '#f)
           (_%id159179%_ _%id159168%_)
           (_%proc159192%_ _%proc159171%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159165%_
       _%id159179%_
       _%proc159192%_
       _%rebind?159174%_))
    (let* ((_%klass159128%_ gc-hash-table::t)
           (_%id159131%_ 'HashTable::update!)
           (_%proc159134%_ gc-table-update!)
           (_%rebind?159137%_ '#f)
           (_%id159142%_ _%id159131%_)
           (_%proc159155%_ _%proc159134%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159128%_
       _%id159142%_
       _%proc159155%_
       _%rebind?159137%_))
    (let* ((_%klass159091%_ gc-hash-table::t)
           (_%id159094%_ 'HashTable::delete!)
           (_%proc159097%_ gc-table-delete!)
           (_%rebind?159100%_ '#f)
           (_%id159105%_ _%id159094%_)
           (_%proc159118%_ _%proc159097%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159091%_
       _%id159105%_
       _%proc159118%_
       _%rebind?159100%_))
    (let* ((_%klass159054%_ gc-hash-table::t)
           (_%id159057%_ 'HashTable::for-each)
           (_%proc159060%_ gc-table-for-each)
           (_%rebind?159063%_ '#f)
           (_%id159068%_ _%id159057%_)
           (_%proc159081%_ _%proc159060%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159054%_
       _%id159068%_
       _%proc159081%_
       _%rebind?159063%_))
    (let* ((_%klass159017%_ gc-hash-table::t)
           (_%id159020%_ 'HashTable::length)
           (_%proc159023%_ gc-table-length)
           (_%rebind?159026%_ '#f)
           (_%id159031%_ _%id159020%_)
           (_%proc159044%_ _%proc159023%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159017%_
       _%id159031%_
       _%proc159044%_
       _%rebind?159026%_))
    (let* ((_%klass158980%_ gc-hash-table::t)
           (_%id158983%_ 'HashTable::copy)
           (_%proc158986%_ gc-table-copy)
           (_%rebind?158989%_ '#f)
           (_%id158994%_ _%id158983%_)
           (_%proc159007%_ _%proc158986%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158980%_
       _%id158994%_
       _%proc159007%_
       _%rebind?158989%_))
    (let* ((_%klass158943%_ gc-hash-table::t)
           (_%id158946%_ 'HashTable::clear!)
           (_%proc158949%_ gc-table-clear!)
           (_%rebind?158952%_ '#f)
           (_%id158957%_ _%id158946%_)
           (_%proc158970%_ _%proc158949%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158943%_
       _%id158957%_
       _%proc158970%_
       _%rebind?158952%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref150204%_
      (lambda (_%self158864%_ _%key158866%_ _%default158867%_)
        (let* ((_%self158870%_ _%self158864%_)
               (_%key158879%_ _%key158866%_)
               (_%default158887%_ _%default158867%_))
          (let ((_%h158896%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158870%_ '1 '#f '#f)))
                (_%l158898%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158870%_ '2 '#f '#f))))
            (let ((__tmp163328
                   (lambda ()
                     (let ((_%self148844158902%_ _%l158898%_))
                       (declare (not safe))
                       (let ((_%object158905158910%_
                              (##unchecked-structure-ref
                               _%self148844158902%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method158906158911%_
                              (##unchecked-structure-ref
                               _%self148844158902%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method158906158911%_ _%object158905158910%_)))))
                  (__tmp163327
                   (lambda ()
                     (let* ((_%self148112158914%_ _%h158896%_)
                            (_%key158917%_ _%key158879%_)
                            (_%default158920%_ _%default158887%_))
                       (declare (not safe))
                       (let ((_%object158923158928%_
                              (##unchecked-structure-ref
                               _%self148112158914%_
                               '1
                               '#f
                               'ref))
                             (_%method158924158929%_
                              (##unchecked-structure-ref
                               _%self148112158914%_
                               '7
                               '#f
                               'ref)))
                         (_%method158924158929%_
                          _%object158923158928%_
                          _%key158917%_
                          _%default158920%_)))))
                  (__tmp163326
                   (lambda ()
                     (let ((_%self149088158932%_ _%l158898%_))
                       (declare (not safe))
                       (let ((_%object158935158940%_
                              (##unchecked-structure-ref
                               _%self149088158932%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method158936158941%_
                              (##unchecked-structure-ref
                               _%self149088158932%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method158936158941%_ _%object158935158940%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163328 __tmp163327 __tmp163326))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref150204%_
       '#f))
    (define _%locked-hash-table::HashTable::set!150206%_
      (lambda (_%self158662%_ _%key158664%_ _%value158665%_)
        (let* ((_%self158668%_ _%self158662%_)
               (_%key158677%_ _%key158664%_)
               (_%value158685%_ _%value158665%_))
          (let ((_%h158694%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158668%_ '1 '#f '#f)))
                (_%l158696%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158668%_ '2 '#f '#f))))
            (let ((__tmp163331
                   (lambda ()
                     (let ((_%self149332158700%_ _%l158696%_))
                       (declare (not safe))
                       (let ((_%object158703158708%_
                              (##unchecked-structure-ref
                               _%self149332158700%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158704158709%_
                              (##unchecked-structure-ref
                               _%self149332158700%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158704158709%_ _%object158703158708%_)))))
                  (__tmp163330
                   (lambda ()
                     (let* ((_%self148356158712%_ _%h158694%_)
                            (_%key158715%_ _%key158677%_)
                            (_%value158718%_ _%value158685%_))
                       (declare (not safe))
                       (let ((_%object158721158726%_
                              (##unchecked-structure-ref
                               _%self148356158712%_
                               '1
                               '#f
                               'set!))
                             (_%method158722158727%_
                              (##unchecked-structure-ref
                               _%self148356158712%_
                               '8
                               '#f
                               'set!)))
                         (_%method158722158727%_
                          _%object158721158726%_
                          _%key158715%_
                          _%value158718%_)))))
                  (__tmp163329
                   (lambda ()
                     (let ((_%self149576158730%_ _%l158696%_))
                       (declare (not safe))
                       (let ((_%object158733158738%_
                              (##unchecked-structure-ref
                               _%self149576158730%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158734158739%_
                              (##unchecked-structure-ref
                               _%self149576158730%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158734158739%_ _%object158733158738%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163331 __tmp163330 __tmp163329))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!150206%_
       '#f))
    (define _%locked-hash-table::HashTable::update!150208%_
      (lambda (_%self158448%_ _%key158450%_ _%update158451%_ _%default158452%_)
        (let* ((_%self158455%_ _%self158448%_)
               (_%key158464%_ _%key158450%_)
               (_%update158472%_ _%update158451%_)
               (_%default158480%_ _%default158452%_))
          (let ((_%h158489%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158455%_ '1 '#f '#f)))
                (_%l158491%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158455%_ '2 '#f '#f))))
            (let ((__tmp163334
                   (lambda ()
                     (let ((_%self149332158495%_ _%l158491%_))
                       (declare (not safe))
                       (let ((_%object158498158503%_
                              (##unchecked-structure-ref
                               _%self149332158495%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158499158504%_
                              (##unchecked-structure-ref
                               _%self149332158495%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158499158504%_ _%object158498158503%_)))))
                  (__tmp163333
                   (lambda ()
                     (let* ((_%self148600158507%_ _%h158489%_)
                            (_%key158510%_ _%key158464%_)
                            (_%proc158513%_ _%update158472%_)
                            (_%default158516%_ _%default158480%_))
                       (declare (not safe))
                       (let ((_%object158519158524%_
                              (##unchecked-structure-ref
                               _%self148600158507%_
                               '1
                               '#f
                               'update!))
                             (_%method158520158525%_
                              (##unchecked-structure-ref
                               _%self148600158507%_
                               '9
                               '#f
                               'update!)))
                         (_%method158520158525%_
                          _%object158519158524%_
                          _%key158510%_
                          _%proc158513%_
                          _%default158516%_)))))
                  (__tmp163332
                   (lambda ()
                     (let ((_%self149576158528%_ _%l158491%_))
                       (declare (not safe))
                       (let ((_%object158531158536%_
                              (##unchecked-structure-ref
                               _%self149576158528%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158532158537%_
                              (##unchecked-structure-ref
                               _%self149576158528%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158532158537%_ _%object158531158536%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163334 __tmp163333 __tmp163332))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!150208%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!150210%_
      (lambda (_%self158258%_ _%key158260%_)
        (let* ((_%self158263%_ _%self158258%_) (_%key158272%_ _%key158260%_))
          (let ((_%h158281%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158263%_ '1 '#f '#f)))
                (_%l158283%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158263%_ '2 '#f '#f))))
            (let ((__tmp163337
                   (lambda ()
                     (let ((_%self149332158287%_ _%l158283%_))
                       (declare (not safe))
                       (let ((_%object158290158295%_
                              (##unchecked-structure-ref
                               _%self149332158287%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158291158296%_
                              (##unchecked-structure-ref
                               _%self149332158287%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158291158296%_ _%object158290158295%_)))))
                  (__tmp163336
                   (lambda ()
                     (let* ((_%self147380158299%_ _%h158281%_)
                            (_%key158302%_ _%key158272%_))
                       (declare (not safe))
                       (let ((_%object158305158310%_
                              (##unchecked-structure-ref
                               _%self147380158299%_
                               '1
                               '#f
                               'delete!))
                             (_%method158306158311%_
                              (##unchecked-structure-ref
                               _%self147380158299%_
                               '4
                               '#f
                               'delete!)))
                         (_%method158306158311%_
                          _%object158305158310%_
                          _%key158302%_)))))
                  (__tmp163335
                   (lambda ()
                     (let ((_%self149576158314%_ _%l158283%_))
                       (declare (not safe))
                       (let ((_%object158317158322%_
                              (##unchecked-structure-ref
                               _%self149576158314%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158318158323%_
                              (##unchecked-structure-ref
                               _%self149576158314%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158318158323%_ _%object158317158322%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163337 __tmp163336 __tmp163335))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!150210%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each150212%_
      (lambda (_%self158068%_ _%proc158070%_)
        (let* ((_%self158073%_ _%self158068%_) (_%proc158082%_ _%proc158070%_))
          (let ((_%h158091%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158073%_ '1 '#f '#f)))
                (_%l158093%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158073%_ '2 '#f '#f))))
            (let ((__tmp163340
                   (lambda ()
                     (let ((_%self148844158097%_ _%l158093%_))
                       (declare (not safe))
                       (let ((_%object158100158105%_
                              (##unchecked-structure-ref
                               _%self148844158097%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method158101158106%_
                              (##unchecked-structure-ref
                               _%self148844158097%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method158101158106%_ _%object158100158105%_)))))
                  (__tmp163339
                   (lambda ()
                     (let* ((_%self147624158109%_ _%h158091%_)
                            (_%proc158112%_ _%proc158082%_))
                       (declare (not safe))
                       (let ((_%object158115158120%_
                              (##unchecked-structure-ref
                               _%self147624158109%_
                               '1
                               '#f
                               'for-each))
                             (_%method158116158121%_
                              (##unchecked-structure-ref
                               _%self147624158109%_
                               '5
                               '#f
                               'for-each)))
                         (_%method158116158121%_
                          _%object158115158120%_
                          _%proc158112%_)))))
                  (__tmp163338
                   (lambda ()
                     (let ((_%self149088158124%_ _%l158093%_))
                       (declare (not safe))
                       (let ((_%object158127158132%_
                              (##unchecked-structure-ref
                               _%self149088158124%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method158128158133%_
                              (##unchecked-structure-ref
                               _%self149088158124%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method158128158133%_ _%object158127158132%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163340 __tmp163339 __tmp163338))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each150212%_
       '#f))
    (define _%locked-hash-table::HashTable::length150214%_
      (lambda (_%self157883%_)
        (let ((_%self157887%_ _%self157883%_))
          (let ((_%h157897%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157887%_ '1 '#f '#f)))
                (_%l157899%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157887%_ '2 '#f '#f))))
            (let* ((_%$%g157901157903%_
                    (let ((__tmp163343
                           (lambda ()
                             (let ((_%self148844157910%_ _%l157899%_))
                               (declare (not safe))
                               (let ((_%object157913157918%_
                                      (##unchecked-structure-ref
                                       _%self148844157910%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method157914157919%_
                                      (##unchecked-structure-ref
                                       _%self148844157910%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method157914157919%_
                                  _%object157913157918%_)))))
                          (__tmp163342
                           (lambda ()
                             (let ((_%self147868157922%_ _%h157897%_))
                               (declare (not safe))
                               (let ((_%object157925157930%_
                                      (##unchecked-structure-ref
                                       _%self147868157922%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method157926157931%_
                                      (##unchecked-structure-ref
                                       _%self147868157922%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method157926157931%_
                                  _%object157925157930%_)))))
                          (__tmp163341
                           (lambda ()
                             (let ((_%self149088157934%_ _%l157899%_))
                               (declare (not safe))
                               (let ((_%object157937157942%_
                                      (##unchecked-structure-ref
                                       _%self149088157934%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method157938157943%_
                                      (##unchecked-structure-ref
                                       _%self149088157934%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method157938157943%_
                                  _%object157937157942%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp163343 __tmp163342 __tmp163341)))
                   (_%val157906%_ _%$%g157901157903%_))
              (if (fixnum? _%val157906%_)
                  _%val157906%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val157906%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length150214%_
       '#f))
    (define _%locked-hash-table::HashTable::copy150216%_
      (lambda (_%self157702%_)
        (let ((_%self157706%_ _%self157702%_))
          (let ((_%h157716%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157706%_ '1 '#f '#f)))
                (_%l157718%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157706%_ '2 '#f '#f))))
            (let ((_%$obj157757%_
                   (let ((__tmp163346
                          (lambda ()
                            (let ((_%self148844157722%_ _%l157718%_))
                              (declare (not safe))
                              (let ((_%object157725157730%_
                                     (##unchecked-structure-ref
                                      _%self148844157722%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method157726157731%_
                                     (##unchecked-structure-ref
                                      _%self148844157722%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method157726157731%_
                                 _%object157725157730%_)))))
                         (__tmp163345
                          (lambda ()
                            (let ((_%self147136157734%_ _%h157716%_))
                              (declare (not safe))
                              (let ((_%object157737157742%_
                                     (##unchecked-structure-ref
                                      _%self147136157734%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method157738157743%_
                                     (##unchecked-structure-ref
                                      _%self147136157734%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method157738157743%_
                                 _%object157737157742%_)))))
                         (__tmp163344
                          (lambda ()
                            (let ((_%self149088157746%_ _%l157718%_))
                              (declare (not safe))
                              (let ((_%object157749157754%_
                                     (##unchecked-structure-ref
                                      _%self149088157746%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method157750157755%_
                                     (##unchecked-structure-ref
                                      _%self149088157746%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method157750157755%_
                                 _%object157749157754%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp163346 __tmp163345 __tmp163344))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj157757%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj157757%_)))
                       '#t)
                  _%$obj157757%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj157757%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy150216%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!150218%_
      (lambda (_%self157524%_)
        (let ((_%self157528%_ _%self157524%_))
          (let ((_%h157538%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157528%_ '1 '#f '#f)))
                (_%l157540%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157528%_ '2 '#f '#f))))
            (let ((__tmp163349
                   (lambda ()
                     (let ((_%self149332157544%_ _%l157540%_))
                       (declare (not safe))
                       (let ((_%object157547157552%_
                              (##unchecked-structure-ref
                               _%self149332157544%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157548157553%_
                              (##unchecked-structure-ref
                               _%self149332157544%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157548157553%_ _%object157547157552%_)))))
                  (__tmp163348
                   (lambda ()
                     (let ((_%self146891157556%_ _%h157538%_))
                       (declare (not safe))
                       (let ((_%object157559157564%_
                              (##unchecked-structure-ref
                               _%self146891157556%_
                               '1
                               '#f
                               'clear!))
                             (_%method157560157565%_
                              (##unchecked-structure-ref
                               _%self146891157556%_
                               '2
                               '#f
                               'clear!)))
                         (_%method157560157565%_ _%object157559157564%_)))))
                  (__tmp163347
                   (lambda ()
                     (let ((_%self149576157568%_ _%l157540%_))
                       (declare (not safe))
                       (let ((_%object157571157576%_
                              (##unchecked-structure-ref
                               _%self149576157568%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157572157577%_
                              (##unchecked-structure-ref
                               _%self149576157568%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157572157577%_ _%object157571157576%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163349 __tmp163348 __tmp163347))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!150218%_
       '#f))
    (let* ((_%klass157364%_ (macro-type-mutex))
           (_%id157367%_ 'Locker::read-lock!)
           (_%proc157370%_ mutex-lock!)
           (_%rebind?157373%_ '#f)
           (_%id157378%_ _%id157367%_)
           (_%proc157391%_ _%proc157370%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157364%_
       _%id157378%_
       _%proc157391%_
       _%rebind?157373%_))
    (let* ((_%klass157327%_ (macro-type-mutex))
           (_%id157330%_ 'Locker::read-unlock!)
           (_%proc157333%_ mutex-unlock!)
           (_%rebind?157336%_ '#f)
           (_%id157341%_ _%id157330%_)
           (_%proc157354%_ _%proc157333%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157327%_
       _%id157341%_
       _%proc157354%_
       _%rebind?157336%_))
    (let* ((_%klass157290%_ (macro-type-mutex))
           (_%id157293%_ 'Locker::write-lock!)
           (_%proc157296%_ mutex-lock!)
           (_%rebind?157299%_ '#f)
           (_%id157304%_ _%id157293%_)
           (_%proc157317%_ _%proc157296%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157290%_
       _%id157304%_
       _%proc157317%_
       _%rebind?157299%_))
    (let* ((_%klass157253%_ (macro-type-mutex))
           (_%id157256%_ 'Locker::write-unlock!)
           (_%proc157259%_ mutex-unlock!)
           (_%rebind?157262%_ '#f)
           (_%id157267%_ _%id157256%_)
           (_%proc157280%_ _%proc157259%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157253%_
       _%id157267%_
       _%proc157280%_
       _%rebind?157262%_))
    (define _%checked-hash-table::HashTable::ref150429%_
      (lambda (_%self157194%_ _%key157195%_ _%default157196%_)
        (let* ((_%self157199%_ _%self157194%_)
               (_%key157208%_ _%key157195%_)
               (_%default157216%_ _%default157196%_))
          (declare (not safe))
          (let ((_%h157227%_
                 (##unchecked-structure-ref _%self157199%_ '1 '#f '#f))
                (_%key?157229%_
                 (##unchecked-structure-ref _%self157199%_ '2 '#f '#f)))
            (if (_%key?157229%_ _%key157208%_)
                (let* ((_%self148112157236%_ _%h157227%_)
                       (_%key157239%_ _%key157208%_)
                       (_%default157242%_ _%default157216%_))
                  (declare (not safe))
                  (let ((_%object157245157250%_
                         (##unchecked-structure-ref
                          _%self148112157236%_
                          '1
                          '#f
                          'ref))
                        (_%method157246157251%_
                         (##unchecked-structure-ref
                          _%self148112157236%_
                          '7
                          '#f
                          'ref)))
                    (_%method157246157251%_
                     _%object157245157250%_
                     _%key157239%_
                     _%default157242%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key157208%_ (cons _%default157216%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref150429%_
       '#f))
    (define _%checked-hash-table::HashTable::set!150431%_
      (lambda (_%self157012%_ _%key157013%_ _%value157014%_)
        (let* ((_%self157017%_ _%self157012%_)
               (_%key157026%_ _%key157013%_)
               (_%value157034%_ _%value157014%_))
          (declare (not safe))
          (let ((_%h157045%_
                 (##unchecked-structure-ref _%self157017%_ '1 '#f '#f))
                (_%key?157047%_
                 (##unchecked-structure-ref _%self157017%_ '2 '#f '#f)))
            (if (_%key?157047%_ _%key157026%_)
                (let* ((_%self148356157054%_ _%h157045%_)
                       (_%key157057%_ _%key157026%_)
                       (_%value157060%_ _%value157034%_))
                  (declare (not safe))
                  (let ((_%object157063157068%_
                         (##unchecked-structure-ref
                          _%self148356157054%_
                          '1
                          '#f
                          'set!))
                        (_%method157064157069%_
                         (##unchecked-structure-ref
                          _%self148356157054%_
                          '8
                          '#f
                          'set!)))
                    (_%method157064157069%_
                     _%object157063157068%_
                     _%key157057%_
                     _%value157060%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key157026%_ (cons _%value157034%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!150431%_
       '#f))
    (define _%checked-hash-table::HashTable::update!150433%_
      (lambda (_%self156817%_ _%key156818%_ _%update156819%_ _%default156820%_)
        (let* ((_%self156823%_ _%self156817%_)
               (_%key156832%_ _%key156818%_)
               (_%update156840%_ _%update156819%_)
               (_%default156848%_ _%default156820%_))
          (declare (not safe))
          (let ((_%h156859%_
                 (##unchecked-structure-ref _%self156823%_ '1 '#f '#f))
                (_%key?156861%_
                 (##unchecked-structure-ref _%self156823%_ '2 '#f '#f)))
            (if (_%key?156861%_ _%key156832%_)
                (let* ((_%self148600156869%_ _%h156859%_)
                       (_%key156872%_ _%key156832%_)
                       (_%proc156875%_ _%update156840%_)
                       (_%default156878%_ _%default156848%_))
                  (declare (not safe))
                  (let ((_%object156881156886%_
                         (##unchecked-structure-ref
                          _%self148600156869%_
                          '1
                          '#f
                          'update!))
                        (_%method156882156887%_
                         (##unchecked-structure-ref
                          _%self148600156869%_
                          '9
                          '#f
                          'update!)))
                    (_%method156882156887%_
                     _%object156881156886%_
                     _%key156872%_
                     _%proc156875%_
                     _%default156878%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key156832%_
                         (cons _%update156840%_ (cons _%default156848%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!150433%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!150435%_
      (lambda (_%self156648%_ _%key156649%_)
        (let* ((_%self156652%_ _%self156648%_) (_%key156661%_ _%key156649%_))
          (declare (not safe))
          (let ((_%h156672%_
                 (##unchecked-structure-ref _%self156652%_ '1 '#f '#f))
                (_%key?156674%_
                 (##unchecked-structure-ref _%self156652%_ '2 '#f '#f)))
            (if (_%key?156674%_ _%key156661%_)
                (let* ((_%self147380156680%_ _%h156672%_)
                       (_%key156683%_ _%key156661%_))
                  (declare (not safe))
                  (let ((_%object156686156691%_
                         (##unchecked-structure-ref
                          _%self147380156680%_
                          '1
                          '#f
                          'delete!))
                        (_%method156687156692%_
                         (##unchecked-structure-ref
                          _%self147380156680%_
                          '4
                          '#f
                          'delete!)))
                    (_%method156687156692%_
                     _%object156686156691%_
                     _%key156683%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key156661%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!150435%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each150437%_
      (lambda (_%self156479%_ _%proc156480%_)
        (let* ((_%self156483%_ _%self156479%_) (_%proc156492%_ _%proc156480%_))
          (declare (not safe))
          (let ((_%h156503%_
                 (##unchecked-structure-ref _%self156483%_ '1 '#f '#f))
                (_%key?156505%_
                 (##unchecked-structure-ref _%self156483%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self147624156511%_ _%h156503%_)
                       (_%proc156514%_ _%proc156492%_))
                  (declare (not safe))
                  (let ((_%object156517156522%_
                         (##unchecked-structure-ref
                          _%self147624156511%_
                          '1
                          '#f
                          'for-each))
                        (_%method156518156523%_
                         (##unchecked-structure-ref
                          _%self147624156511%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156518156523%_
                     _%object156517156522%_
                     _%proc156514%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc156492%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each150437%_
       '#f))
    (define _%checked-hash-table::HashTable::length150439%_
      (lambda (_%self156325%_)
        (let ((_%self156328%_ _%self156325%_))
          (declare (not safe))
          (let ((_%h156340%_
                 (##unchecked-structure-ref _%self156328%_ '1 '#f '#f))
                (_%key?156342%_
                 (##unchecked-structure-ref _%self156328%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self147868156345%_ _%h156340%_))
                  (declare (not safe))
                  (let ((_%object156348156353%_
                         (##unchecked-structure-ref
                          _%self147868156345%_
                          '1
                          '#f
                          'length))
                        (_%method156349156354%_
                         (##unchecked-structure-ref
                          _%self147868156345%_
                          '6
                          '#f
                          'length)))
                    (_%method156349156354%_ _%object156348156353%_)))
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
       _%checked-hash-table::HashTable::length150439%_
       '#f))
    (define _%checked-hash-table::HashTable::copy150441%_
      (lambda (_%self156171%_)
        (let ((_%self156174%_ _%self156171%_))
          (declare (not safe))
          (let ((_%h156186%_
                 (##unchecked-structure-ref _%self156174%_ '1 '#f '#f))
                (_%key?156188%_
                 (##unchecked-structure-ref _%self156174%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self147136156191%_ _%h156186%_))
                  (declare (not safe))
                  (let ((_%object156194156199%_
                         (##unchecked-structure-ref
                          _%self147136156191%_
                          '1
                          '#f
                          'copy))
                        (_%method156195156200%_
                         (##unchecked-structure-ref
                          _%self147136156191%_
                          '3
                          '#f
                          'copy)))
                    (_%method156195156200%_ _%object156194156199%_)))
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
       _%checked-hash-table::HashTable::copy150441%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!150443%_
      (lambda (_%self156017%_)
        (let ((_%self156020%_ _%self156017%_))
          (declare (not safe))
          (let ((_%h156032%_
                 (##unchecked-structure-ref _%self156020%_ '1 '#f '#f))
                (_%key?156034%_
                 (##unchecked-structure-ref _%self156020%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146891156037%_ _%h156032%_))
                  (declare (not safe))
                  (let ((_%object156040156045%_
                         (##unchecked-structure-ref
                          _%self146891156037%_
                          '1
                          '#f
                          'clear!))
                        (_%method156041156046%_
                         (##unchecked-structure-ref
                          _%self146891156037%_
                          '2
                          '#f
                          'clear!)))
                    (_%method156041156046%_ _%object156040156045%_)))
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
       _%checked-hash-table::HashTable::clear!150443%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table155887%_
               _%count155888%_
               _%free155889%_
               _%hash155890%_
               _%test155891%_
               _%seed155892%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table155887%_
           _%count155888%_
           _%free155889%_
           _%hash155890%_
           _%test155891%_
           _%seed155892%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords155297%_
               _%$%size-hint155287155298%_
               _%$%seed155288155299%_
               _%$%test155289155300%_
               _%$%hash155290155301%_
               _%$%lock155291155302%_
               _%$%check155292155303%_
               _%$%weak-keys155293155304%_
               _%$%weak-values155294155305%_)
        (let* ((_%size-hint155307%_
                (if (eq? _%$%size-hint155287155298%_ absent-value)
                    '#f
                    _%$%size-hint155287155298%_))
               (_%seed155309%_
                (if (eq? _%$%seed155288155299%_ absent-value)
                    '#f
                    _%$%seed155288155299%_))
               (_%test155311%_
                (if (eq? _%$%test155289155300%_ absent-value)
                    equal?
                    _%$%test155289155300%_))
               (_%hash155313%_
                (if (eq? _%$%hash155290155301%_ absent-value)
                    '#f
                    _%$%hash155290155301%_))
               (_%lock155315%_
                (if (eq? _%$%lock155291155302%_ absent-value)
                    '#f
                    _%$%lock155291155302%_))
               (_%check155317%_
                (if (eq? _%$%check155292155303%_ absent-value)
                    '#f
                    _%$%check155292155303%_))
               (_%weak-keys155319%_
                (if (eq? _%$%weak-keys155293155304%_ absent-value)
                    '#f
                    _%$%weak-keys155293155304%_))
               (_%weak-values155321%_
                (if (eq? _%$%weak-values155294155305%_ absent-value)
                    '#f
                    _%$%weak-values155294155305%_)))
          (letrec ((_%table-seed155324%_
                    (lambda ()
                      (if (fixnum? _%seed155309%_)
                          _%seed155309%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock155468%_
                    (lambda (_%ht155855%_)
                      (let ((_%ht155858%_ _%ht155855%_))
                        (if _%lock155315%_
                            (let ((_%$obj155870%_
                                   (let ((__tmp163350
                                          (let ((_%$obj155867%_
                                                 _%lock155315%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj155867%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj155867%_)))
                                                     '#t)
                                                _%$obj155867%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj155867%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht155858%_
                                      __tmp163350))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj155870%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj155870%_)))
                                       '#t)
                                  _%$obj155870%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj155870%_))))
                            _%ht155858%_))))
                   (_%wrap-lock155469%_
                    (lambda (_%ht155843%_)
                      (let ((_%ht155846%_ _%ht155843%_))
                        (_%__wrap-lock155468%_ _%ht155846%_))))
                   (_%__wrap-checked155591%_
                    (lambda (_%ht155827%_ _%implicit155828%_)
                      (let ((_%ht155831%_ _%ht155827%_))
                        (if _%check155317%_
                            (let ((_%$obj155840%_
                                   (let ((__tmp163351
                                          (if (procedure? _%check155317%_)
                                              _%check155317%_
                                              _%implicit155828%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht155831%_
                                      __tmp163351))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj155840%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj155840%_)))
                                       '#t)
                                  _%$obj155840%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj155840%_))))
                            _%ht155831%_))))
                   (_%wrap-checked155592%_
                    (lambda (_%ht155814%_ _%implicit155815%_)
                      (let ((_%ht155818%_ _%ht155814%_))
                        (_%__wrap-checked155591%_
                         _%ht155818%_
                         _%implicit155815%_))))
                   (_%make155593%_
                    (lambda (_%kons155762%_
                             _%key?155763%_
                             _%hash155764%_
                             _%test155765%_)
                      (let* ((_%size155768%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint155307%_)))
                             (_%table155770%_
                              (let ((__tmp163352 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size155768%_ __tmp163352)))
                             (_%ht155775%_
                              (let ((_%$obj155772%_
                                     (_%kons155762%_
                                      _%table155770%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size155768%_ '2))
                                      _%hash155764%_
                                      _%test155765%_
                                      (_%table-seed155324%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155772%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155772%_)))
                                         '#t)
                                    _%$obj155772%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155772%_)))))
                             (_%ht155797%_
                              (let* ((_%ht155778%_ _%ht155775%_)
                                     (_%ht155782%_ _%ht155778%_))
                                (_%__wrap-lock155468%_ _%ht155782%_)))
                             (_%implicit155800%_ _%key?155763%_)
                             (_%ht155804%_ _%ht155797%_))
                        (_%__wrap-checked155591%_
                         _%ht155804%_
                         _%implicit155800%_))))
                   (_%make-gc-hash-table155594%_
                    (lambda ()
                      (let* ((_%ht155727%_
                              (let ((_%$obj155724%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint155307%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155724%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155724%_)))
                                         '#t)
                                    _%$obj155724%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155724%_)))))
                             (_%ht155745%_
                              (let* ((_%ht155729%_ _%ht155727%_)
                                     (_%ht155733%_ _%ht155729%_))
                                (_%__wrap-lock155468%_ _%ht155733%_)))
                             (_%implicit155748%_ true)
                             (_%ht155752%_ _%ht155745%_))
                        (_%__wrap-checked155591%_
                         _%ht155752%_
                         _%implicit155748%_))))
                   (_%make-gambit-table155595%_
                    (lambda ()
                      (let* ((_%size155664%_
                              (let ((_%$e155661%_ _%size-hint155307%_))
                                (if _%$e155661%_
                                    _%$e155661%_
                                    (macro-absent-obj))))
                             (_%test155669%_
                              (let ((_%$e155666%_ _%test155311%_))
                                (if _%$e155666%_ _%$e155666%_ equal?)))
                             (_%hash155677%_
                              (let ((_%$e155671%_ _%hash155313%_))
                                (if _%$e155671%_
                                    _%$e155671%_
                                    (if (eq? _%test155669%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test155669%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht155682%_
                              (let ((_%$obj155679%_
                                     (make-table
                                      'size:
                                      _%size155664%_
                                      'test:
                                      _%test155669%_
                                      'hash:
                                      _%hash155677%_
                                      'weak-keys:
                                      _%weak-keys155319%_
                                      'weak-values:
                                      _%weak-values155321%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155679%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155679%_)))
                                         '#t)
                                    _%$obj155679%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155679%_)))))
                             (_%ht155705%_
                              (let* ((_%ht155685%_ _%ht155682%_)
                                     (_%ht155689%_ _%ht155685%_))
                                (_%__wrap-lock155468%_ _%ht155689%_)))
                             (_%implicit155708%_ true)
                             (_%ht155712%_ _%ht155705%_))
                        (_%__wrap-checked155591%_
                         _%ht155712%_
                         _%implicit155708%_)))))
            (if (or _%weak-keys155319%_ _%weak-values155321%_)
                (_%make-gambit-table155595%_)
                (if (and (or (eq? _%test155311%_ eq?)
                             (eq? _%test155311%_ ##eq?))
                         (or (not _%hash155313%_)
                             (eq? _%hash155313%_ eq?-hash)
                             (eq? _%hash155313%_ eq-hash))
                         (not _%seed155309%_))
                    (_%make-gc-hash-table155594%_)
                    (if (and (or (eq? _%test155311%_ eq?)
                                 (eq? _%test155311%_ ##eq?))
                             (or (not _%hash155313%_)
                                 (eq? _%hash155313%_ eq?-hash)
                                 (eq? _%hash155313%_ eq-hash)))
                        (_%make155593%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test155311%_ eqv?)
                                     (eq? _%test155311%_ ##eqv?))
                                 (or (not _%hash155313%_)
                                     (eq? _%hash155313%_ eqv?-hash)
                                     (eq? _%hash155313%_ eqv-hash)))
                            (_%make155593%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test155311%_ eq?)
                                         (eq? _%test155311%_ ##eq?))
                                     (or (eq? _%hash155313%_ symbolic-hash)
                                         (eq? _%hash155313%_ ##symbol-hash)))
                                (_%make155593%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test155311%_ eq?)
                                             (eq? _%test155311%_ ##eq?))
                                         (eq? _%hash155313%_ immediate-hash))
                                    (_%make155593%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test155311%_ equal?)
                                                 (eq? _%test155311%_ ##equal?)
                                                 (eq? _%test155311%_ string=?)
                                                 (eq? _%test155311%_
                                                      ##string=?))
                                             (or (eq? _%hash155313%_
                                                      string-hash)
                                                 (eq? _%hash155313%_
                                                      ##string=?-hash)))
                                        (_%make155593%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test155311%_ equal?)
                                                 (not _%hash155313%_))
                                            (_%make155593%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test155311%_)
                                                (if (procedure? _%hash155313%_)
                                                    (_%make155593%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash155313%_
                                                     _%test155311%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash155313%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test155311%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords155877%_ . _%args155878%_)
        (apply make-hash-table__%
               _%@@keywords155877%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155877%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155877%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155877%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155877%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155877%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155877%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155877%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155877%_
                  'weak-values:
                  absent-value))
               _%args155878%_)))
    (define make-hash-table
      (lambda _%$%args155295155884%_
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
               _%$%args155295155884%_)))
    (define make-hash-table-eq
      (lambda _%args155284%_
        (apply make-hash-table 'test: eq? _%args155284%_)))
    (define make-hash-table-eqv
      (lambda _%args155282%_
        (apply make-hash-table 'test: eqv? _%args155282%_)))
    (define make-hash-table-symbolic
      (lambda _%args155280%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args155280%_)))
    (define make-hash-table-string
      (lambda _%args155278%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args155278%_)))
    (define make-hash-table-immediate
      (lambda _%args155276%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args155276%_)))
    (define list->hash-table
      (lambda (_%lst155273%_ . _%args155274%_)
        (list->hash-table!
         _%lst155273%_
         (apply make-hash-table
                'size:
                (length _%lst155273%_)
                _%args155274%_))))
    (define list->hash-table-eq
      (lambda (_%lst155270%_ . _%args155271%_)
        (list->hash-table!
         _%lst155270%_
         (apply make-hash-table-eq
                'size:
                (length _%lst155270%_)
                _%args155271%_))))
    (define list->hash-table-eqv
      (lambda (_%lst155267%_ . _%args155268%_)
        (list->hash-table!
         _%lst155267%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst155267%_)
                _%args155268%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst155264%_ . _%args155265%_)
        (list->hash-table!
         _%lst155264%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst155264%_)
                _%args155265%_))))
    (define list->hash-table-string
      (lambda (_%lst155261%_ . _%args155262%_)
        (list->hash-table!
         _%lst155261%_
         (apply make-hash-table-string
                'size:
                (length _%lst155261%_)
                _%args155262%_))))
    (define list->hash-table-immediate
      (lambda (_%lst155258%_ . _%args155259%_)
        (list->hash-table!
         _%lst155258%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst155258%_)
                _%args155259%_))))
    (define list->hash-table!
      (lambda (_%lst155209%_ _%h155210%_)
        (for-each
         (lambda (_%el155212%_)
           (let* ((_%$%el155213155220%_ _%el155212%_)
                  (_%$%E155215155223%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%$%el155213155220%_
                              '([k . v])))
                     '#!void))
                  (_%$%K155216155246%_
                   (lambda (_%v155226%_ _%k155227%_)
                     (let* ((_%self148356155229%_ _%h155210%_)
                            (_%key155232%_ _%k155227%_)
                            (_%value155235%_ _%v155226%_))
                       (declare (not safe))
                       (let ((_%object155238155243%_
                              (##unchecked-structure-ref
                               _%self148356155229%_
                               '1
                               '#f
                               'set!))
                             (_%method155239155244%_
                              (##unchecked-structure-ref
                               _%self148356155229%_
                               '8
                               '#f
                               'set!)))
                         (_%method155239155244%_
                          _%object155238155243%_
                          _%key155232%_
                          _%value155235%_))))))
             (if (pair? _%$%el155213155220%_)
                 (let ((_%$%hd155217155249%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el155213155220%_)))
                       (_%$%tl155218155251%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el155213155220%_))))
                   (let* ((_%k155254%_ _%$%hd155217155249%_)
                          (_%v155256%_ _%$%tl155218155251%_))
                     (_%$%K155216155246%_ _%v155256%_ _%k155254%_)))
                 (_%$%E155215155223%_))))
         _%lst155209%_)
        _%h155210%_))
    (define plist->hash-table
      (lambda (_%lst155206%_ . _%args155207%_)
        (plist->hash-table!
         _%lst155206%_
         (apply make-hash-table
                'size:
                (length _%lst155206%_)
                _%args155207%_))))
    (define plist->hash-table-eq
      (lambda (_%lst155203%_ . _%args155204%_)
        (plist->hash-table!
         _%lst155203%_
         (apply make-hash-table-eq
                'size:
                (length _%lst155203%_)
                _%args155204%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst155200%_ . _%args155201%_)
        (plist->hash-table!
         _%lst155200%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst155200%_)
                _%args155201%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst155197%_ . _%args155198%_)
        (plist->hash-table!
         _%lst155197%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst155197%_)
                _%args155198%_))))
    (define plist->hash-table-string
      (lambda (_%lst155194%_ . _%args155195%_)
        (plist->hash-table!
         _%lst155194%_
         (apply make-hash-table-string
                'size:
                (length _%lst155194%_)
                _%args155195%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst155191%_ . _%args155192%_)
        (plist->hash-table!
         _%lst155191%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst155191%_)
                _%args155192%_))))
    (define plist->hash-table!
      (lambda (_%lst155114%_ _%h155115%_)
        (let _%loop155117%_ ((_%rest155119%_ _%lst155114%_))
          (let* ((_%$%rest155120155132%_ _%rest155119%_)
                 (_%$%else155123155140%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst155114%_)))))
            (let ((_%$%K155126155172%_
                   (lambda (_%rest155151%_ _%val155152%_ _%key155153%_)
                     (let* ((_%self148356155155%_ _%h155115%_)
                            (_%key155158%_ _%key155153%_)
                            (_%value155161%_ _%val155152%_))
                       (declare (not safe))
                       (let ((_%object155164155169%_
                              (##unchecked-structure-ref
                               _%self148356155155%_
                               '1
                               '#f
                               'set!))
                             (_%method155165155170%_
                              (##unchecked-structure-ref
                               _%self148356155155%_
                               '8
                               '#f
                               'set!)))
                         (_%method155165155170%_
                          _%object155164155169%_
                          _%key155158%_
                          _%value155161%_)))
                     (_%loop155117%_ _%rest155151%_)))
                  (_%$%K155125155145%_ (lambda () _%h155115%_)))
              (let ((_%$%try-match155122155148%_
                     (lambda ()
                       (if (null? _%$%rest155120155132%_)
                           (_%$%K155125155145%_)
                           (_%$%else155123155140%_)))))
                (if (pair? _%$%rest155120155132%_)
                    (let ((_%$%tl155128155177%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest155120155132%_)))
                          (_%$%hd155127155175%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest155120155132%_))))
                      (if (pair? _%$%tl155128155177%_)
                          (let ((_%$%tl155130155184%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl155128155177%_)))
                                (_%$%hd155129155182%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl155128155177%_))))
                            (let ((_%key155180%_ _%$%hd155127155175%_)
                                  (_%val155187%_ _%$%hd155129155182%_)
                                  (_%rest155189%_ _%$%tl155130155184%_))
                              (_%$%K155126155172%_
                               _%rest155189%_
                               _%val155187%_
                               _%key155180%_)))
                          (_%$%else155123155140%_)))
                    (_%$%try-match155122155148%_))))))))
    (define __hash-length
      (lambda (_%h155063%_)
        (let* ((_%h155066%_ _%h155063%_)
               (_%self147869155075%_ _%h155066%_)
               (_%self147869155082%_
                (let ((_%$obj155079%_ _%self147869155075%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155079%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155079%_)))
                           '#t)
                      _%$obj155079%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155079%_)))))
               (_%self147869155084%_ _%self147869155082%_))
          (if __DEBUG
              (let ((_%val155104%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object155096155101%_
                              (##unchecked-structure-ref
                               _%self147869155084%_
                               '1
                               '#f
                               'length))
                             (_%method155097155102%_
                              (##unchecked-structure-ref
                               _%self147869155084%_
                               '6
                               '#f
                               'length)))
                         (_%method155097155102%_ _%object155096155101%_)))))
                (if (fixnum? _%val155104%_)
                    _%val155104%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val155104%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object155106155111%_
                       (##unchecked-structure-ref
                        _%self147869155084%_
                        '1
                        '#f
                        'length))
                      (_%method155107155112%_
                       (##unchecked-structure-ref
                        _%self147869155084%_
                        '6
                        '#f
                        'length)))
                  (_%method155107155112%_ _%object155106155111%_)))))))
    (define hash-length
      (lambda (_%h155045%_)
        (let* ((_%h155051%_
                (let ((_%$obj155048%_ _%h155045%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155048%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155048%_)))
                           '#t)
                      _%$obj155048%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155048%_)))))
               (_%h155053%_ _%h155051%_))
          (__hash-length _%h155053%_))))
    (define __hash-ref__%
      (lambda (_%h154973%_ _%key154974%_ _%default154975%_)
        (let* ((_%h154978%_ _%h154973%_)
               (_%result155031%_
                (let* ((_%self148113154987%_ _%h154978%_)
                       (_%key154990%_ _%key154974%_)
                       (_%default154993%_ _%default154975%_)
                       (_%self148113155000%_
                        (let ((_%$obj154997%_ _%self148113154987%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj154997%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj154997%_)))
                                   '#t)
                              _%$obj154997%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj154997%_)))))
                       (_%self148113155002%_ _%self148113155000%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object155016155021%_
                               (##unchecked-structure-ref
                                _%self148113155002%_
                                '1
                                '#f
                                'ref))
                              (_%method155017155022%_
                               (##unchecked-structure-ref
                                _%self148113155002%_
                                '7
                                '#f
                                'ref)))
                          (_%method155017155022%_
                           _%object155016155021%_
                           _%key154990%_
                           _%default154993%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object155023155028%_
                               (##unchecked-structure-ref
                                _%self148113155002%_
                                '1
                                '#f
                                'ref))
                              (_%method155024155029%_
                               (##unchecked-structure-ref
                                _%self148113155002%_
                                '7
                                '#f
                                'ref)))
                          (_%method155024155029%_
                           _%object155023155028%_
                           _%key154990%_
                           _%default154993%_)))))))
          (if (eq? _%result155031%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h154978%_
               'key:
               _%key154974%_)
              _%result155031%_))))
    (define __hash-ref__0
      (lambda (_%h155036%_ _%key155037%_)
        (let ((_%default155039%_ absent-obj))
          (__hash-ref__% _%h155036%_ _%key155037%_ _%default155039%_))))
    (define __hash-ref
      (lambda _g163353_
        (let ((_g163354_ (let () (declare (not safe)) (##length _g163353_))))
          (cond ((let () (declare (not safe)) (##fx= _g163354_ 2))
                 (apply __hash-ref__0 _g163353_))
                ((let () (declare (not safe)) (##fx= _g163354_ 3))
                 (apply __hash-ref__% _g163353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g163353_))))))
    (define hash-ref__%
      (lambda (_%h154940%_ _%key154941%_ _%default154942%_)
        (let* ((_%h154948%_
                (let ((_%$obj154945%_ _%h154940%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154945%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154945%_)))
                           '#t)
                      _%$obj154945%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154945%_)))))
               (_%h154950%_ _%h154948%_))
          (__hash-ref__% _%h154950%_ _%key154941%_ _%default154942%_))))
    (define hash-ref__0
      (lambda (_%h154963%_ _%key154964%_)
        (let ((_%default154966%_ absent-obj))
          (hash-ref__% _%h154963%_ _%key154964%_ _%default154966%_))))
    (define hash-ref
      (lambda _g163355_
        (let ((_g163356_ (let () (declare (not safe)) (##length _g163355_))))
          (cond ((let () (declare (not safe)) (##fx= _g163356_ 2))
                 (apply hash-ref__0 _g163355_))
                ((let () (declare (not safe)) (##fx= _g163356_ 3))
                 (apply hash-ref__% _g163355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g163355_))))))
    (define __hash-get
      (lambda (_%h154882%_ _%key154883%_)
        (let* ((_%h154886%_ _%h154882%_)
               (_%self148113154895%_ _%h154886%_)
               (_%key154898%_ _%key154883%_)
               (_%default154901%_ '#f)
               (_%self148113154908%_
                (let ((_%$obj154905%_ _%self148113154895%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154905%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154905%_)))
                           '#t)
                      _%$obj154905%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154905%_)))))
               (_%self148113154910%_ _%self148113154908%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154924154929%_
                       (##unchecked-structure-ref
                        _%self148113154910%_
                        '1
                        '#f
                        'ref))
                      (_%method154925154930%_
                       (##unchecked-structure-ref
                        _%self148113154910%_
                        '7
                        '#f
                        'ref)))
                  (_%method154925154930%_
                   _%object154924154929%_
                   _%key154898%_
                   _%default154901%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154931154936%_
                       (##unchecked-structure-ref
                        _%self148113154910%_
                        '1
                        '#f
                        'ref))
                      (_%method154932154937%_
                       (##unchecked-structure-ref
                        _%self148113154910%_
                        '7
                        '#f
                        'ref)))
                  (_%method154932154937%_
                   _%object154931154936%_
                   _%key154898%_
                   _%default154901%_)))))))
    (define hash-get
      (lambda (_%h154863%_ _%key154864%_)
        (let* ((_%h154870%_
                (let ((_%$obj154867%_ _%h154863%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154867%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154867%_)))
                           '#t)
                      _%$obj154867%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154867%_)))))
               (_%h154872%_ _%h154870%_))
          (__hash-get _%h154872%_ _%key154864%_))))
    (define __hash-put!
      (lambda (_%h154805%_ _%key154806%_ _%value154807%_)
        (let* ((_%h154810%_ _%h154805%_)
               (_%self148357154819%_ _%h154810%_)
               (_%key154822%_ _%key154806%_)
               (_%value154825%_ _%value154807%_)
               (_%self148357154832%_
                (let ((_%$obj154829%_ _%self148357154819%_))
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
               (_%self148357154834%_ _%self148357154832%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154848154853%_
                       (##unchecked-structure-ref
                        _%self148357154834%_
                        '1
                        '#f
                        'set!))
                      (_%method154849154854%_
                       (##unchecked-structure-ref
                        _%self148357154834%_
                        '8
                        '#f
                        'set!)))
                  (_%method154849154854%_
                   _%object154848154853%_
                   _%key154822%_
                   _%value154825%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154855154860%_
                       (##unchecked-structure-ref
                        _%self148357154834%_
                        '1
                        '#f
                        'set!))
                      (_%method154856154861%_
                       (##unchecked-structure-ref
                        _%self148357154834%_
                        '8
                        '#f
                        'set!)))
                  (_%method154856154861%_
                   _%object154855154860%_
                   _%key154822%_
                   _%value154825%_)))))))
    (define hash-put!
      (lambda (_%h154785%_ _%key154786%_ _%value154787%_)
        (let* ((_%h154793%_
                (let ((_%$obj154790%_ _%h154785%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154790%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154790%_)))
                           '#t)
                      _%$obj154790%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154790%_)))))
               (_%h154795%_ _%h154793%_))
          (__hash-put! _%h154795%_ _%key154786%_ _%value154787%_))))
    (define __hash-update!__%
      (lambda (_%h154698%_ _%key154699%_ _%update154700%_ _%default154701%_)
        (let* ((_%h154704%_ _%h154698%_)
               (_%self148601154713%_ _%h154704%_)
               (_%key154716%_ _%key154699%_)
               (_%proc154719%_ _%update154700%_)
               (_%default154722%_ _%default154701%_)
               (_%self148601154729%_
                (let ((_%$obj154726%_ _%self148601154713%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154726%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154726%_)))
                           '#t)
                      _%$obj154726%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154726%_)))))
               (_%self148601154731%_ _%self148601154729%_))
          (if (procedure? _%proc154719%_)
              (let ((_%proc154747%_ _%proc154719%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object154756154761%_
                             (##unchecked-structure-ref
                              _%self148601154731%_
                              '1
                              '#f
                              'update!))
                            (_%method154757154762%_
                             (##unchecked-structure-ref
                              _%self148601154731%_
                              '9
                              '#f
                              'update!)))
                        (_%method154757154762%_
                         _%object154756154761%_
                         _%key154716%_
                         _%proc154747%_
                         _%default154722%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object154763154768%_
                             (##unchecked-structure-ref
                              _%self148601154731%_
                              '1
                              '#f
                              'update!))
                            (_%method154764154769%_
                             (##unchecked-structure-ref
                              _%self148601154731%_
                              '9
                              '#f
                              'update!)))
                        (_%method154764154769%_
                         _%object154763154768%_
                         _%key154716%_
                         _%proc154747%_
                         _%default154722%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc154719%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h154774%_ _%key154775%_ _%update154776%_)
        (let ((_%default154778%_ '#!void))
          (__hash-update!__%
           _%h154774%_
           _%key154775%_
           _%update154776%_
           _%default154778%_))))
    (define __hash-update!
      (lambda _g163357_
        (let ((_g163358_ (let () (declare (not safe)) (##length _g163357_))))
          (cond ((let () (declare (not safe)) (##fx= _g163358_ 3))
                 (apply __hash-update!__0 _g163357_))
                ((let () (declare (not safe)) (##fx= _g163358_ 4))
                 (apply __hash-update!__% _g163357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g163357_))))))
    (define hash-update!__%
      (lambda (_%h154662%_ _%key154663%_ _%update154664%_ _%default154665%_)
        (let* ((_%h154671%_
                (let ((_%$obj154668%_ _%h154662%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154668%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154668%_)))
                           '#t)
                      _%$obj154668%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154668%_)))))
               (_%h154673%_ _%h154671%_))
          (__hash-update!__%
           _%h154673%_
           _%key154663%_
           _%update154664%_
           _%default154665%_))))
    (define hash-update!__0
      (lambda (_%h154686%_ _%key154687%_ _%update154688%_)
        (let ((_%default154690%_ '#!void))
          (hash-update!__%
           _%h154686%_
           _%key154687%_
           _%update154688%_
           _%default154690%_))))
    (define hash-update!
      (lambda _g163359_
        (let ((_g163360_ (let () (declare (not safe)) (##length _g163359_))))
          (cond ((let () (declare (not safe)) (##fx= _g163360_ 3))
                 (apply hash-update!__0 _g163359_))
                ((let () (declare (not safe)) (##fx= _g163360_ 4))
                 (apply hash-update!__% _g163359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g163359_))))))
    (define __hash-remove!
      (lambda (_%h154608%_ _%key154609%_)
        (let* ((_%h154612%_ _%h154608%_)
               (_%self147381154621%_ _%h154612%_)
               (_%key154624%_ _%key154609%_)
               (_%self147381154631%_
                (let ((_%$obj154628%_ _%self147381154621%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154628%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154628%_)))
                           '#t)
                      _%$obj154628%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154628%_)))))
               (_%self147381154633%_ _%self147381154631%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154646154651%_
                       (##unchecked-structure-ref
                        _%self147381154633%_
                        '1
                        '#f
                        'delete!))
                      (_%method154647154652%_
                       (##unchecked-structure-ref
                        _%self147381154633%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154647154652%_
                   _%object154646154651%_
                   _%key154624%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154653154658%_
                       (##unchecked-structure-ref
                        _%self147381154633%_
                        '1
                        '#f
                        'delete!))
                      (_%method154654154659%_
                       (##unchecked-structure-ref
                        _%self147381154633%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154654154659%_
                   _%object154653154658%_
                   _%key154624%_)))))))
    (define hash-remove!
      (lambda (_%h154589%_ _%key154590%_)
        (let* ((_%h154596%_
                (let ((_%$obj154593%_ _%h154589%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154593%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154593%_)))
                           '#t)
                      _%$obj154593%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154593%_)))))
               (_%h154598%_ _%h154596%_))
          (__hash-remove! _%h154598%_ _%key154590%_))))
    (define __hash-key?
      (lambda (_%h154532%_ _%k154533%_)
        (let ((_%h154536%_ _%h154532%_))
          (not (eq? (let* ((_%self148113154545%_ _%h154536%_)
                           (_%key154548%_ _%k154533%_)
                           (_%default154551%_ absent-value)
                           (_%self148113154558%_
                            (let ((_%$obj154555%_ _%self148113154545%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154555%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154555%_)))
                                       '#t)
                                  _%$obj154555%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154555%_)))))
                           (_%self148113154560%_ _%self148113154558%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object154574154579%_
                                   (##unchecked-structure-ref
                                    _%self148113154560%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154575154580%_
                                   (##unchecked-structure-ref
                                    _%self148113154560%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154575154580%_
                               _%object154574154579%_
                               _%key154548%_
                               _%default154551%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object154581154586%_
                                   (##unchecked-structure-ref
                                    _%self148113154560%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154582154587%_
                                   (##unchecked-structure-ref
                                    _%self148113154560%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154582154587%_
                               _%object154581154586%_
                               _%key154548%_
                               _%default154551%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h154513%_ _%k154514%_)
        (let* ((_%h154520%_
                (let ((_%$obj154517%_ _%h154513%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154517%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154517%_)))
                           '#t)
                      _%$obj154517%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154517%_)))))
               (_%h154522%_ _%h154520%_))
          (__hash-key? _%h154522%_ _%k154514%_))))
    (define __hash->list
      (lambda (_%h154445%_)
        (let* ((_%h154448%_ _%h154445%_) (_%lst154457%_ '()))
          (let* ((_%self147625154459%_ _%h154448%_)
                 (_%proc154465%_
                  (lambda (_%k154462%_ _%v154463%_)
                    (set! _%lst154457%_
                          (cons (cons _%k154462%_ _%v154463%_)
                                _%lst154457%_))))
                 (_%self147625154472%_
                  (let ((_%$obj154469%_ _%self147625154459%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154469%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154469%_)))
                             '#t)
                        _%$obj154469%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154469%_)))))
                 (_%self147625154474%_ _%self147625154472%_)
                 (_%proc154489%_ _%proc154465%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154498154503%_
                         (##unchecked-structure-ref
                          _%self147625154474%_
                          '1
                          '#f
                          'for-each))
                        (_%method154499154504%_
                         (##unchecked-structure-ref
                          _%self147625154474%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154499154504%_
                     _%object154498154503%_
                     _%proc154489%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154505154510%_
                         (##unchecked-structure-ref
                          _%self147625154474%_
                          '1
                          '#f
                          'for-each))
                        (_%method154506154511%_
                         (##unchecked-structure-ref
                          _%self147625154474%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154506154511%_
                     _%object154505154510%_
                     _%proc154489%_)))))
          _%lst154457%_)))
    (define hash->list
      (lambda (_%h154427%_)
        (let* ((_%h154433%_
                (let ((_%$obj154430%_ _%h154427%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154430%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154430%_)))
                           '#t)
                      _%$obj154430%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154430%_)))))
               (_%h154435%_ _%h154433%_))
          (__hash->list _%h154435%_))))
    (define __hash->plist
      (lambda (_%h154359%_)
        (let* ((_%h154362%_ _%h154359%_) (_%lst154371%_ '()))
          (let* ((_%self147625154373%_ _%h154362%_)
                 (_%proc154379%_
                  (lambda (_%k154376%_ _%v154377%_)
                    (set! _%lst154371%_
                          (cons _%k154376%_
                                (cons _%v154377%_ _%lst154371%_)))))
                 (_%self147625154386%_
                  (let ((_%$obj154383%_ _%self147625154373%_))
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
                 (_%self147625154388%_ _%self147625154386%_)
                 (_%proc154403%_ _%proc154379%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154412154417%_
                         (##unchecked-structure-ref
                          _%self147625154388%_
                          '1
                          '#f
                          'for-each))
                        (_%method154413154418%_
                         (##unchecked-structure-ref
                          _%self147625154388%_
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
                          _%self147625154388%_
                          '1
                          '#f
                          'for-each))
                        (_%method154420154425%_
                         (##unchecked-structure-ref
                          _%self147625154388%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154420154425%_
                     _%object154419154424%_
                     _%proc154403%_)))))
          _%lst154371%_)))
    (define hash->plist
      (lambda (_%h154341%_)
        (let* ((_%h154347%_
                (let ((_%$obj154344%_ _%h154341%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154344%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154344%_)))
                           '#t)
                      _%$obj154344%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154344%_)))))
               (_%h154349%_ _%h154347%_))
          (__hash->plist _%h154349%_))))
    (define __hash-for-each
      (lambda (_%proc154270%_ _%h154271%_)
        (let* ((_%proc154274%_ _%proc154270%_)
               (_%h154282%_ _%h154271%_)
               (_%self147625154291%_ _%h154282%_)
               (_%proc154294%_ _%proc154274%_)
               (_%self147625154301%_
                (let ((_%$obj154298%_ _%self147625154291%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154298%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154298%_)))
                           '#t)
                      _%$obj154298%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154298%_)))))
               (_%self147625154303%_ _%self147625154301%_)
               (_%proc154317%_ _%proc154294%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154326154331%_
                       (##unchecked-structure-ref
                        _%self147625154303%_
                        '1
                        '#f
                        'for-each))
                      (_%method154327154332%_
                       (##unchecked-structure-ref
                        _%self147625154303%_
                        '5
                        '#f
                        'for-each)))
                  (_%method154327154332%_
                   _%object154326154331%_
                   _%proc154317%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154333154338%_
                       (##unchecked-structure-ref
                        _%self147625154303%_
                        '1
                        '#f
                        'for-each))
                      (_%method154334154339%_
                       (##unchecked-structure-ref
                        _%self147625154303%_
                        '5
                        '#f
                        'for-each)))
                  (_%method154334154339%_
                   _%object154333154338%_
                   _%proc154317%_)))))))
    (define hash-for-each
      (lambda (_%proc154241%_ _%h154242%_)
        (if (procedure? _%proc154241%_)
            (let* ((_%proc154246%_ _%proc154241%_)
                   (_%h154258%_
                    (let ((_%$obj154255%_ _%h154242%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj154255%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj154255%_)))
                               '#t)
                          _%$obj154255%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj154255%_)))))
                   (_%h154260%_ _%h154258%_))
              (__hash-for-each _%proc154246%_ _%h154260%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@584.22-584.26"
               'contract:
               'procedure?
               'value:
               _%proc154241%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc154164%_ _%h154165%_)
        (let* ((_%proc154168%_ _%proc154164%_)
               (_%h154176%_ _%h154165%_)
               (_%result154185%_ '()))
          (let* ((_%self147625154187%_ _%h154176%_)
                 (_%proc154193%_
                  (lambda (_%k154190%_ _%v154191%_)
                    (set! _%result154185%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc154168%_ _%k154190%_ _%v154191%_))
                                _%result154185%_))))
                 (_%self147625154200%_
                  (let ((_%$obj154197%_ _%self147625154187%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154197%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154197%_)))
                             '#t)
                        _%$obj154197%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154197%_)))))
                 (_%self147625154202%_ _%self147625154200%_)
                 (_%proc154217%_ _%proc154193%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154226154231%_
                         (##unchecked-structure-ref
                          _%self147625154202%_
                          '1
                          '#f
                          'for-each))
                        (_%method154227154232%_
                         (##unchecked-structure-ref
                          _%self147625154202%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154227154232%_
                     _%object154226154231%_
                     _%proc154217%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154233154238%_
                         (##unchecked-structure-ref
                          _%self147625154202%_
                          '1
                          '#f
                          'for-each))
                        (_%method154234154239%_
                         (##unchecked-structure-ref
                          _%self147625154202%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154234154239%_
                     _%object154233154238%_
                     _%proc154217%_)))))
          _%result154185%_)))
    (define hash-map
      (lambda (_%proc154135%_ _%h154136%_)
        (if (procedure? _%proc154135%_)
            (let* ((_%proc154140%_ _%proc154135%_)
                   (_%h154152%_
                    (let ((_%$obj154149%_ _%h154136%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj154149%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj154149%_)))
                               '#t)
                          _%$obj154149%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj154149%_)))))
                   (_%h154154%_ _%h154152%_))
              (__hash-map _%proc154140%_ _%h154154%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@587.17-587.21"
               'contract:
               'procedure?
               'value:
               _%proc154135%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc154057%_ _%iv154058%_ _%h154059%_)
        (let* ((_%proc154062%_ _%proc154057%_)
               (_%h154070%_ _%h154059%_)
               (_%result154079%_ _%iv154058%_))
          (let* ((_%self147625154081%_ _%h154070%_)
                 (_%proc154087%_
                  (lambda (_%k154084%_ _%v154085%_)
                    (set! _%result154079%_
                          (let ()
                            (declare (not safe))
                            (_%proc154062%_
                             _%k154084%_
                             _%v154085%_
                             _%result154079%_)))))
                 (_%self147625154094%_
                  (let ((_%$obj154091%_ _%self147625154081%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154091%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154091%_)))
                             '#t)
                        _%$obj154091%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154091%_)))))
                 (_%self147625154096%_ _%self147625154094%_)
                 (_%proc154111%_ _%proc154087%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154120154125%_
                         (##unchecked-structure-ref
                          _%self147625154096%_
                          '1
                          '#f
                          'for-each))
                        (_%method154121154126%_
                         (##unchecked-structure-ref
                          _%self147625154096%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154121154126%_
                     _%object154120154125%_
                     _%proc154111%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154127154132%_
                         (##unchecked-structure-ref
                          _%self147625154096%_
                          '1
                          '#f
                          'for-each))
                        (_%method154128154133%_
                         (##unchecked-structure-ref
                          _%self147625154096%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154128154133%_
                     _%object154127154132%_
                     _%proc154111%_)))))
          _%result154079%_)))
    (define hash-fold
      (lambda (_%proc154027%_ _%iv154028%_ _%h154029%_)
        (if (procedure? _%proc154027%_)
            (let* ((_%proc154033%_ _%proc154027%_)
                   (_%h154045%_
                    (let ((_%$obj154042%_ _%h154029%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj154042%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj154042%_)))
                               '#t)
                          _%$obj154042%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj154042%_)))))
                   (_%h154047%_ _%h154045%_))
              (__hash-fold _%proc154033%_ _%iv154028%_ _%h154047%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@593.18-593.22"
               'contract:
               'procedure?
               'value:
               _%proc154027%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc153934%_ _%h153935%_ _%default-value153936%_)
        (let* ((_%proc153939%_ _%proc153934%_)
               (_%h153947%_ _%h153935%_)
               (__tmp163361
                (lambda (_%return153956%_)
                  (let* ((_%self147625153958%_ _%h153947%_)
                         (_%proc153967%_
                          (lambda (_%k153961%_ _%v153962%_)
                            (let ((_%$e153964%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc153939%_
                                      _%k153961%_
                                      _%v153962%_))))
                              (if _%$e153964%_
                                  (_%return153956%_ _%$e153964%_)
                                  '#!void))))
                         (_%self147625153974%_
                          (let ((_%$obj153971%_ _%self147625153958%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj153971%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj153971%_)))
                                     '#t)
                                _%$obj153971%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj153971%_)))))
                         (_%self147625153976%_ _%self147625153974%_)
                         (_%proc153991%_ _%proc153967%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object154000154005%_
                                 (##unchecked-structure-ref
                                  _%self147625153976%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method154001154006%_
                                 (##unchecked-structure-ref
                                  _%self147625153976%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method154001154006%_
                             _%object154000154005%_
                             _%proc153991%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object154007154012%_
                                 (##unchecked-structure-ref
                                  _%self147625153976%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method154008154013%_
                                 (##unchecked-structure-ref
                                  _%self147625153976%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method154008154013%_
                             _%object154007154012%_
                             _%proc153991%_)))))
                  _%default-value153936%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp163361))))
    (define __hash-find__0
      (lambda (_%proc154018%_ _%h154019%_)
        (let ((_%default-value154021%_ '#f))
          (__hash-find__%
           _%proc154018%_
           _%h154019%_
           _%default-value154021%_))))
    (define __hash-find
      (lambda _g163362_
        (let ((_g163363_ (let () (declare (not safe)) (##length _g163362_))))
          (cond ((let () (declare (not safe)) (##fx= _g163363_ 2))
                 (apply __hash-find__0 _g163362_))
                ((let () (declare (not safe)) (##fx= _g163363_ 3))
                 (apply __hash-find__% _g163362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g163362_))))))
    (define hash-find__%
      (lambda (_%proc153891%_ _%h153892%_ _%default-value153893%_)
        (if (procedure? _%proc153891%_)
            (let* ((_%proc153897%_ _%proc153891%_)
                   (_%h153909%_
                    (let ((_%$obj153906%_ _%h153892%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj153906%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj153906%_)))
                               '#t)
                          _%$obj153906%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj153906%_)))))
                   (_%h153911%_ _%h153909%_))
              (__hash-find__%
               _%proc153897%_
               _%h153911%_
               _%default-value153893%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc153891%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc153924%_ _%h153925%_)
        (let ((_%default-value153927%_ '#f))
          (hash-find__% _%proc153924%_ _%h153925%_ _%default-value153927%_))))
    (define hash-find
      (lambda _g163364_
        (let ((_g163365_ (let () (declare (not safe)) (##length _g163364_))))
          (cond ((let () (declare (not safe)) (##fx= _g163365_ 2))
                 (apply hash-find__0 _g163364_))
                ((let () (declare (not safe)) (##fx= _g163365_ 3))
                 (apply hash-find__% _g163364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g163364_))))))
    (define __hash-keys
      (lambda (_%h153822%_)
        (let* ((_%h153825%_ _%h153822%_) (_%result153834%_ '()))
          (let* ((_%self147625153836%_ _%h153825%_)
                 (_%proc153842%_
                  (lambda (_%k153839%_ _%v153840%_)
                    (set! _%result153834%_
                          (cons _%k153839%_ _%result153834%_))))
                 (_%self147625153849%_
                  (let ((_%$obj153846%_ _%self147625153836%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153846%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153846%_)))
                             '#t)
                        _%$obj153846%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153846%_)))))
                 (_%self147625153851%_ _%self147625153849%_)
                 (_%proc153866%_ _%proc153842%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153875153880%_
                         (##unchecked-structure-ref
                          _%self147625153851%_
                          '1
                          '#f
                          'for-each))
                        (_%method153876153881%_
                         (##unchecked-structure-ref
                          _%self147625153851%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153876153881%_
                     _%object153875153880%_
                     _%proc153866%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153882153887%_
                         (##unchecked-structure-ref
                          _%self147625153851%_
                          '1
                          '#f
                          'for-each))
                        (_%method153883153888%_
                         (##unchecked-structure-ref
                          _%self147625153851%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153883153888%_
                     _%object153882153887%_
                     _%proc153866%_)))))
          _%result153834%_)))
    (define hash-keys
      (lambda (_%h153804%_)
        (let* ((_%h153810%_
                (let ((_%$obj153807%_ _%h153804%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153807%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153807%_)))
                           '#t)
                      _%$obj153807%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153807%_)))))
               (_%h153812%_ _%h153810%_))
          (__hash-keys _%h153812%_))))
    (define __hash-values
      (lambda (_%h153736%_)
        (let* ((_%h153739%_ _%h153736%_) (_%result153748%_ '()))
          (let* ((_%self147625153750%_ _%h153739%_)
                 (_%proc153756%_
                  (lambda (_%k153753%_ _%v153754%_)
                    (set! _%result153748%_
                          (cons _%v153754%_ _%result153748%_))))
                 (_%self147625153763%_
                  (let ((_%$obj153760%_ _%self147625153750%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153760%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153760%_)))
                             '#t)
                        _%$obj153760%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153760%_)))))
                 (_%self147625153765%_ _%self147625153763%_)
                 (_%proc153780%_ _%proc153756%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153789153794%_
                         (##unchecked-structure-ref
                          _%self147625153765%_
                          '1
                          '#f
                          'for-each))
                        (_%method153790153795%_
                         (##unchecked-structure-ref
                          _%self147625153765%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153790153795%_
                     _%object153789153794%_
                     _%proc153780%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153796153801%_
                         (##unchecked-structure-ref
                          _%self147625153765%_
                          '1
                          '#f
                          'for-each))
                        (_%method153797153802%_
                         (##unchecked-structure-ref
                          _%self147625153765%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153797153802%_
                     _%object153796153801%_
                     _%proc153780%_)))))
          _%result153748%_)))
    (define hash-values
      (lambda (_%h153718%_)
        (let* ((_%h153724%_
                (let ((_%$obj153721%_ _%h153718%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153721%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153721%_)))
                           '#t)
                      _%$obj153721%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153721%_)))))
               (_%h153726%_ _%h153724%_))
          (__hash-values _%h153726%_))))
    (define __hash-copy
      (lambda (_%h153667%_)
        (let* ((_%h153670%_ _%h153667%_)
               (_%self147137153679%_ _%h153670%_)
               (_%self147137153686%_
                (let ((_%$obj153683%_ _%self147137153679%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153683%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153683%_)))
                           '#t)
                      _%$obj153683%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153683%_)))))
               (_%self147137153688%_ _%self147137153686%_))
          (if __DEBUG
              (let ((_%$obj153708%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object153700153705%_
                              (##unchecked-structure-ref
                               _%self147137153688%_
                               '1
                               '#f
                               'copy))
                             (_%method153701153706%_
                              (##unchecked-structure-ref
                               _%self147137153688%_
                               '3
                               '#f
                               'copy)))
                         (_%method153701153706%_ _%object153700153705%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj153708%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj153708%_)))
                         '#t)
                    _%$obj153708%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj153708%_))))
              (let ()
                (declare (not safe))
                (let ((_%object153710153715%_
                       (##unchecked-structure-ref
                        _%self147137153688%_
                        '1
                        '#f
                        'copy))
                      (_%method153711153716%_
                       (##unchecked-structure-ref
                        _%self147137153688%_
                        '3
                        '#f
                        'copy)))
                  (_%method153711153716%_ _%object153710153715%_)))))))
    (define hash-copy
      (lambda (_%h153649%_)
        (let* ((_%h153655%_
                (let ((_%$obj153652%_ _%h153649%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153652%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153652%_)))
                           '#t)
                      _%$obj153652%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153652%_)))))
               (_%h153657%_ _%h153655%_))
          (__hash-copy _%h153657%_))))
    (define __hash-clear!
      (lambda (_%h153601%_)
        (let* ((_%h153604%_ _%h153601%_)
               (_%self146892153613%_ _%h153604%_)
               (_%self146892153620%_
                (let ((_%$obj153617%_ _%self146892153613%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153617%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153617%_)))
                           '#t)
                      _%$obj153617%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153617%_)))))
               (_%self146892153622%_ _%self146892153620%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153634153639%_
                       (##unchecked-structure-ref
                        _%self146892153622%_
                        '1
                        '#f
                        'clear!))
                      (_%method153635153640%_
                       (##unchecked-structure-ref
                        _%self146892153622%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153635153640%_ _%object153634153639%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153641153646%_
                       (##unchecked-structure-ref
                        _%self146892153622%_
                        '1
                        '#f
                        'clear!))
                      (_%method153642153647%_
                       (##unchecked-structure-ref
                        _%self146892153622%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153642153647%_ _%object153641153646%_)))))))
    (define hash-clear!
      (lambda (_%h153583%_)
        (let* ((_%h153589%_
                (let ((_%$obj153586%_ _%h153583%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153586%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153586%_)))
                           '#t)
                      _%$obj153586%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153586%_)))))
               (_%h153591%_ _%h153589%_))
          (__hash-clear! _%h153591%_))))
    (define __hash-merge
      (lambda (_%h153529%_ . _%rest153530%_)
        (let* ((_%h153533%_ _%h153529%_)
               (_%copy153581%_
                (let* ((_%self147137153542%_ _%h153533%_)
                       (_%self147137153549%_
                        (let ((_%$obj153546%_ _%self147137153542%_))
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
                                (cast HashTable::interface _%$obj153546%_)))))
                       (_%self147137153551%_ _%self147137153549%_))
                  (if __DEBUG
                      (let ((_%$obj153571%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object153563153568%_
                                      (##unchecked-structure-ref
                                       _%self147137153551%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method153564153569%_
                                      (##unchecked-structure-ref
                                       _%self147137153551%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method153564153569%_
                                  _%object153563153568%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj153571%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj153571%_)))
                                 '#t)
                            _%$obj153571%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj153571%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153573153578%_
                               (##unchecked-structure-ref
                                _%self147137153551%_
                                '1
                                '#f
                                'copy))
                              (_%method153574153579%_
                               (##unchecked-structure-ref
                                _%self147137153551%_
                                '3
                                '#f
                                'copy)))
                          (_%method153574153579%_ _%object153573153578%_)))))))
          (apply hash-merge! _%copy153581%_ _%rest153530%_)
          _%copy153581%_)))
    (define hash-merge
      (lambda (_%h153510%_ . _%rest153511%_)
        (let* ((_%h153517%_
                (let ((_%$obj153514%_ _%h153510%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153514%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153514%_)))
                           '#t)
                      _%$obj153514%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153514%_)))))
               (_%h153519%_ _%h153517%_))
          (declare (not safe))
          (##apply __hash-merge _%h153519%_ _%rest153511%_))))
    (define __hash-merge-right
      (lambda (_%h153456%_ . _%rest153457%_)
        (let* ((_%h153460%_ _%h153456%_)
               (_%copy153508%_
                (let* ((_%self147137153469%_ _%h153460%_)
                       (_%self147137153476%_
                        (let ((_%$obj153473%_ _%self147137153469%_))
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
                       (_%self147137153478%_ _%self147137153476%_))
                  (if __DEBUG
                      (let ((_%$obj153498%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object153490153495%_
                                      (##unchecked-structure-ref
                                       _%self147137153478%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method153491153496%_
                                      (##unchecked-structure-ref
                                       _%self147137153478%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method153491153496%_
                                  _%object153490153495%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj153498%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj153498%_)))
                                 '#t)
                            _%$obj153498%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj153498%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153500153505%_
                               (##unchecked-structure-ref
                                _%self147137153478%_
                                '1
                                '#f
                                'copy))
                              (_%method153501153506%_
                               (##unchecked-structure-ref
                                _%self147137153478%_
                                '3
                                '#f
                                'copy)))
                          (_%method153501153506%_ _%object153500153505%_)))))))
          (apply hash-merge-right! _%copy153508%_ _%rest153457%_)
          _%copy153508%_)))
    (define hash-merge-right
      (lambda (_%h153437%_ . _%rest153438%_)
        (let* ((_%h153444%_
                (let ((_%$obj153441%_ _%h153437%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153441%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153441%_)))
                           '#t)
                      _%$obj153441%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153441%_)))))
               (_%h153446%_ _%h153444%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h153446%_ _%rest153438%_))))
    (define __hash-merge!
      (lambda (_%h153285%_ . _%rest153286%_)
        (let ((_%h153289%_ _%h153285%_))
          (let ((__tmp163366
                 (lambda (_%hr153298%_)
                   (let* ((_%hr153304%_
                           (let ((_%$obj153301%_ _%hr153298%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153301%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153301%_)))
                                      '#t)
                                 _%$obj153301%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153301%_)))))
                          (_%hr153306%_ _%hr153304%_)
                          (_%self147625153319%_ _%hr153306%_)
                          (_%proc153394%_
                           (lambda (_%k153322%_ _%v153323%_)
                             (if (let* ((_%h153325%_ _%h153289%_)
                                        (_%k153328%_ _%k153322%_)
                                        (_%h153335%_
                                         (let ((_%$obj153332%_ _%h153325%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj153332%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj153332%_)))
                                                    '#t)
                                               _%$obj153332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj153332%_)))))
                                        (_%h153337%_ _%h153335%_))
                                   (__hash-key? _%h153337%_ _%k153328%_))
                                 '#!void
                                 (let* ((_%self148357153353%_ _%h153289%_)
                                        (_%key153356%_ _%k153322%_)
                                        (_%value153359%_ _%v153323%_)
                                        (_%self148357153366%_
                                         (let ((_%$obj153363%_
                                                _%self148357153353%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj153363%_))
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
                                        (_%self148357153368%_
                                         _%self148357153366%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object153379153384%_
                                                (##unchecked-structure-ref
                                                 _%self148357153368%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method153380153385%_
                                                (##unchecked-structure-ref
                                                 _%self148357153368%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method153380153385%_
                                            _%object153379153384%_
                                            _%key153356%_
                                            _%value153359%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object153386153391%_
                                                (##unchecked-structure-ref
                                                 _%self148357153368%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method153387153392%_
                                                (##unchecked-structure-ref
                                                 _%self148357153368%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method153387153392%_
                                            _%object153386153391%_
                                            _%key153356%_
                                            _%value153359%_))))))))
                          (_%self147625153401%_
                           (let ((_%$obj153398%_ _%self147625153319%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153398%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153398%_)))
                                      '#t)
                                 _%$obj153398%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153398%_)))))
                          (_%self147625153403%_ _%self147625153401%_)
                          (_%proc153413%_ _%proc153394%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object153422153427%_
                                  (##unchecked-structure-ref
                                   _%self147625153403%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153423153428%_
                                  (##unchecked-structure-ref
                                   _%self147625153403%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153423153428%_
                              _%object153422153427%_
                              _%proc153413%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object153429153434%_
                                  (##unchecked-structure-ref
                                   _%self147625153403%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153430153435%_
                                  (##unchecked-structure-ref
                                   _%self147625153403%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153430153435%_
                              _%object153429153434%_
                              _%proc153413%_))))))))
            (declare (not safe))
            (##for-each __tmp163366 _%rest153286%_))
          _%h153289%_)))
    (define hash-merge!
      (lambda (_%h153266%_ . _%rest153267%_)
        (let* ((_%h153273%_
                (let ((_%$obj153270%_ _%h153266%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153270%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153270%_)))
                           '#t)
                      _%$obj153270%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153270%_)))))
               (_%h153275%_ _%h153273%_))
          (declare (not safe))
          (##apply __hash-merge! _%h153275%_ _%rest153267%_))))
    (define __hash-merge-right!
      (lambda (_%h153137%_ . _%rest153138%_)
        (let ((_%h153141%_ _%h153137%_))
          (let ((__tmp163367
                 (lambda (_%hr153150%_)
                   (let* ((_%hr153156%_
                           (let ((_%$obj153153%_ _%hr153150%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153153%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153153%_)))
                                      '#t)
                                 _%$obj153153%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153153%_)))))
                          (_%hr153158%_ _%hr153156%_)
                          (_%self147625153171%_ _%hr153158%_)
                          (_%proc153223%_
                           (lambda (_%k153174%_ _%v153175%_)
                             (let* ((_%self148357153177%_ _%h153141%_)
                                    (_%key153180%_ _%k153174%_)
                                    (_%value153183%_ _%v153175%_)
                                    (_%self148357153190%_
                                     (let ((_%$obj153187%_
                                            _%self148357153177%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj153187%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj153187%_)))
                                                '#t)
                                           _%$obj153187%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj153187%_)))))
                                    (_%self148357153192%_
                                     _%self148357153190%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153208153213%_
                                            (##unchecked-structure-ref
                                             _%self148357153192%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153209153214%_
                                            (##unchecked-structure-ref
                                             _%self148357153192%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153209153214%_
                                        _%object153208153213%_
                                        _%key153180%_
                                        _%value153183%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153215153220%_
                                            (##unchecked-structure-ref
                                             _%self148357153192%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153216153221%_
                                            (##unchecked-structure-ref
                                             _%self148357153192%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153216153221%_
                                        _%object153215153220%_
                                        _%key153180%_
                                        _%value153183%_)))))))
                          (_%self147625153230%_
                           (let ((_%$obj153227%_ _%self147625153171%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153227%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153227%_)))
                                      '#t)
                                 _%$obj153227%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153227%_)))))
                          (_%self147625153232%_ _%self147625153230%_)
                          (_%proc153242%_ _%proc153223%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object153251153256%_
                                  (##unchecked-structure-ref
                                   _%self147625153232%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153252153257%_
                                  (##unchecked-structure-ref
                                   _%self147625153232%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153252153257%_
                              _%object153251153256%_
                              _%proc153242%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object153258153263%_
                                  (##unchecked-structure-ref
                                   _%self147625153232%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153259153264%_
                                  (##unchecked-structure-ref
                                   _%self147625153232%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153259153264%_
                              _%object153258153263%_
                              _%proc153242%_))))))))
            (declare (not safe))
            (##for-each __tmp163367 _%rest153138%_))
          _%h153141%_)))
    (define hash-merge-right!
      (lambda (_%h153118%_ . _%rest153119%_)
        (let* ((_%h153125%_
                (let ((_%$obj153122%_ _%h153118%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153122%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153122%_)))
                           '#t)
                      _%$obj153122%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153122%_)))))
               (_%h153127%_ _%h153125%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h153127%_ _%rest153119%_))))))
