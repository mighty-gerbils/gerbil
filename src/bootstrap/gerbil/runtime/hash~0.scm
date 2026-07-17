(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1784471378)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp170139 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp170139
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args168803%_
        (apply make-instance UnboundKeyError::t _%$args168803%_)))
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
      (lambda (_%where168677%_ _%message168678%_ . _%irritants168679%_)
        (let ((__tmp170140
               (let ((__obj170131
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj170131
                    _%message168678%_
                    'where:
                    _%where168677%_
                    'irritants:
                    _%irritants168679%_))
                 __obj170131)))
          (declare (not safe))
          (raise __tmp170140))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp170141 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'HashTable::t
         'HashTable
         __tmp170141
         '(clear! copy delete! for-each length new ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj170133
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170133
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
        __obj170133))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj168675%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj168675%_))))
    (define try-HashTable
      (lambda (_%obj168673%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj168673%_))))
    (define HashTable?
      (lambda (_%obj168671%_)
        (let ((__tmp170142
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj168671%_ __tmp170142))))
    (define is-HashTable?
      (lambda (_%obj168668%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj168668%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self152521168651%_)
        (let ((_%self152521168653%_ _%self152521168651%_))
          (declare (not safe))
          (let ((_%object168660168665%_
                 (##unchecked-structure-ref
                  _%self152521168653%_
                  '1
                  '#f
                  'clear!))
                (_%method168661168666%_
                 (##unchecked-structure-ref
                  _%self152521168653%_
                  '2
                  '#f
                  'clear!)))
            (_%method168661168666%_ _%object168660168665%_)))))
    (define ::HashTable-clear!
      (lambda (_%self152522168621%_)
        (let* ((_%self152522168626%_
                (let ((_%$obj168623%_ _%self152522168621%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168623%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168623%_)))
                           '#t)
                      _%$obj168623%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168623%_)))))
               (_%self152522168628%_ _%self152522168626%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168636168641%_
                       (##unchecked-structure-ref
                        _%self152522168628%_
                        '1
                        '#f
                        'clear!))
                      (_%method168637168642%_
                       (##unchecked-structure-ref
                        _%self152522168628%_
                        '2
                        '#f
                        'clear!)))
                  (_%method168637168642%_ _%object168636168641%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168643168648%_
                       (##unchecked-structure-ref
                        _%self152522168628%_
                        '1
                        '#f
                        'clear!))
                      (_%method168644168649%_
                       (##unchecked-structure-ref
                        _%self152522168628%_
                        '2
                        '#f
                        'clear!)))
                  (_%method168644168649%_ _%object168643168648%_)))))))
    (define __HashTable-copy
      (lambda (_%self152766168604%_)
        (let ((_%self152766168606%_ _%self152766168604%_))
          (declare (not safe))
          (let ((_%object168613168618%_
                 (##unchecked-structure-ref _%self152766168606%_ '1 '#f 'copy))
                (_%method168614168619%_
                 (##unchecked-structure-ref
                  _%self152766168606%_
                  '3
                  '#f
                  'copy)))
            (_%method168614168619%_ _%object168613168618%_)))))
    (define ::HashTable-copy
      (lambda (_%self152767168571%_)
        (let* ((_%self152767168576%_
                (let ((_%$obj168573%_ _%self152767168571%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168573%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168573%_)))
                           '#t)
                      _%$obj168573%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168573%_)))))
               (_%self152767168578%_ _%self152767168576%_))
          (if __DEBUG
              (let ((_%$obj168594%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object168586168591%_
                              (##unchecked-structure-ref
                               _%self152767168578%_
                               '1
                               '#f
                               'copy))
                             (_%method168587168592%_
                              (##unchecked-structure-ref
                               _%self152767168578%_
                               '3
                               '#f
                               'copy)))
                         (_%method168587168592%_ _%object168586168591%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj168594%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj168594%_)))
                         '#t)
                    _%$obj168594%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj168594%_))))
              (let ()
                (declare (not safe))
                (let ((_%object168596168601%_
                       (##unchecked-structure-ref
                        _%self152767168578%_
                        '1
                        '#f
                        'copy))
                      (_%method168597168602%_
                       (##unchecked-structure-ref
                        _%self152767168578%_
                        '3
                        '#f
                        'copy)))
                  (_%method168597168602%_ _%object168596168601%_)))))))
    (define __HashTable-delete!
      (lambda (_%self153010168553%_ _%key168554%_)
        (let ((_%self153010168556%_ _%self153010168553%_))
          (declare (not safe))
          (let ((_%object168563168568%_
                 (##unchecked-structure-ref
                  _%self153010168556%_
                  '1
                  '#f
                  'delete!))
                (_%method168564168569%_
                 (##unchecked-structure-ref
                  _%self153010168556%_
                  '4
                  '#f
                  'delete!)))
            (_%method168564168569%_ _%object168563168568%_ _%key168554%_)))))
    (define ::HashTable-delete!
      (lambda (_%self153011168522%_ _%key168523%_)
        (let* ((_%self153011168528%_
                (let ((_%$obj168525%_ _%self153011168522%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168525%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168525%_)))
                           '#t)
                      _%$obj168525%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168525%_)))))
               (_%self153011168530%_ _%self153011168528%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168538168543%_
                       (##unchecked-structure-ref
                        _%self153011168530%_
                        '1
                        '#f
                        'delete!))
                      (_%method168539168544%_
                       (##unchecked-structure-ref
                        _%self153011168530%_
                        '4
                        '#f
                        'delete!)))
                  (_%method168539168544%_
                   _%object168538168543%_
                   _%key168523%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168545168550%_
                       (##unchecked-structure-ref
                        _%self153011168530%_
                        '1
                        '#f
                        'delete!))
                      (_%method168546168551%_
                       (##unchecked-structure-ref
                        _%self153011168530%_
                        '4
                        '#f
                        'delete!)))
                  (_%method168546168551%_
                   _%object168545168550%_
                   _%key168523%_)))))))
    (define __HashTable-for-each
      (lambda (_%self153254168496%_ _%proc168497%_)
        (let* ((_%self153254168499%_ _%self153254168496%_)
               (_%proc168506%_ _%proc168497%_))
          (declare (not safe))
          (let ((_%object168514168519%_
                 (##unchecked-structure-ref
                  _%self153254168499%_
                  '1
                  '#f
                  'for-each))
                (_%method168515168520%_
                 (##unchecked-structure-ref
                  _%self153254168499%_
                  '5
                  '#f
                  'for-each)))
            (_%method168515168520%_ _%object168514168519%_ _%proc168506%_)))))
    (define ::HashTable-for-each
      (lambda (_%self153255168455%_ _%proc168456%_)
        (let* ((_%self153255168461%_
                (let ((_%$obj168458%_ _%self153255168455%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168458%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168458%_)))
                           '#t)
                      _%$obj168458%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168458%_)))))
               (_%self153255168463%_ _%self153255168461%_))
          (if (procedure? _%proc168456%_)
              (let ((_%proc168472%_ _%proc168456%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object168481168486%_
                             (##unchecked-structure-ref
                              _%self153255168463%_
                              '1
                              '#f
                              'for-each))
                            (_%method168482168487%_
                             (##unchecked-structure-ref
                              _%self153255168463%_
                              '5
                              '#f
                              'for-each)))
                        (_%method168482168487%_
                         _%object168481168486%_
                         _%proc168472%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168488168493%_
                             (##unchecked-structure-ref
                              _%self153255168463%_
                              '1
                              '#f
                              'for-each))
                            (_%method168489168494%_
                             (##unchecked-structure-ref
                              _%self153255168463%_
                              '5
                              '#f
                              'for-each)))
                        (_%method168489168494%_
                         _%object168488168493%_
                         _%proc168472%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc168456%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self153498168438%_)
        (let ((_%self153498168440%_ _%self153498168438%_))
          (declare (not safe))
          (let ((_%object168447168452%_
                 (##unchecked-structure-ref
                  _%self153498168440%_
                  '1
                  '#f
                  'length))
                (_%method168448168453%_
                 (##unchecked-structure-ref
                  _%self153498168440%_
                  '6
                  '#f
                  'length)))
            (_%method168448168453%_ _%object168447168452%_)))))
    (define ::HashTable-length
      (lambda (_%self153499168405%_)
        (let* ((_%self153499168410%_
                (let ((_%$obj168407%_ _%self153499168405%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168407%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168407%_)))
                           '#t)
                      _%$obj168407%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168407%_)))))
               (_%self153499168412%_ _%self153499168410%_))
          (if __DEBUG
              (let ((_%val168428%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object168420168425%_
                              (##unchecked-structure-ref
                               _%self153499168412%_
                               '1
                               '#f
                               'length))
                             (_%method168421168426%_
                              (##unchecked-structure-ref
                               _%self153499168412%_
                               '6
                               '#f
                               'length)))
                         (_%method168421168426%_ _%object168420168425%_)))))
                (if (fixnum? _%val168428%_)
                    _%val168428%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val168428%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object168430168435%_
                       (##unchecked-structure-ref
                        _%self153499168412%_
                        '1
                        '#f
                        'length))
                      (_%method168431168436%_
                       (##unchecked-structure-ref
                        _%self153499168412%_
                        '6
                        '#f
                        'length)))
                  (_%method168431168436%_ _%object168430168435%_)))))))
    (define __HashTable-new__%
      (lambda (_%self153742168369%_ _%size-hint168370%_)
        (let* ((_%self153742168372%_ _%self153742168369%_)
               (_%size-hint168379%_ _%size-hint168370%_))
          (declare (not safe))
          (let ((_%object168387168392%_
                 (##unchecked-structure-ref _%self153742168372%_ '1 '#f 'new))
                (_%method168388168393%_
                 (##unchecked-structure-ref _%self153742168372%_ '7 '#f 'new)))
            (_%method168388168393%_
             _%object168387168392%_
             _%size-hint168379%_)))))
    (define __HashTable-new__0
      (lambda (_%self153742168398%_)
        (let ((_%size-hint168400%_ '#f))
          (__HashTable-new__% _%self153742168398%_ _%size-hint168400%_))))
    (define __HashTable-new
      (lambda _g170143_
        (let ((_g170144_ (let () (declare (not safe)) (##length _g170143_))))
          (cond ((let () (declare (not safe)) (##fx= _g170144_ 1))
                 (apply __HashTable-new__0 _g170143_))
                ((let () (declare (not safe)) (##fx= _g170144_ 2))
                 (apply __HashTable-new__% _g170143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __HashTable-new
                  _g170143_))))))
    (define ::HashTable-new__%
      (lambda (_%self153743168308%_ _%size-hint168309%_)
        (let* ((_%self153743168314%_
                (let ((_%$obj168311%_ _%self153743168308%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168311%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168311%_)))
                           '#t)
                      _%$obj168311%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168311%_)))))
               (_%self153743168316%_ _%self153743168314%_))
          (if (or (not _%size-hint168309%_) (fixnum? _%size-hint168309%_))
              (let ((_%size-hint168331%_ _%size-hint168309%_))
                (if __DEBUG
                    (let ((_%$obj168348%_
                           (let ()
                             (declare (not safe))
                             (let ((_%object168340168345%_
                                    (##unchecked-structure-ref
                                     _%self153743168316%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method168341168346%_
                                    (##unchecked-structure-ref
                                     _%self153743168316%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method168341168346%_
                                _%object168340168345%_
                                _%size-hint168331%_)))))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj168348%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj168348%_)))
                               '#t)
                          _%$obj168348%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj168348%_))))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168350168355%_
                             (##unchecked-structure-ref
                              _%self153743168316%_
                              '1
                              '#f
                              'new))
                            (_%method168351168356%_
                             (##unchecked-structure-ref
                              _%self153743168316%_
                              '7
                              '#f
                              'new)))
                        (_%method168351168356%_
                         _%object168350168355%_
                         _%size-hint168331%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@32.9-32.18"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint168309%_)
                '#!void)))))
    (define ::HashTable-new__0
      (lambda (_%self153743168361%_)
        (let ((_%size-hint168363%_ '#f))
          (::HashTable-new__% _%self153743168361%_ _%size-hint168363%_))))
    (define ::HashTable-new
      (lambda _g170145_
        (let ((_g170146_ (let () (declare (not safe)) (##length _g170145_))))
          (cond ((let () (declare (not safe)) (##fx= _g170146_ 1))
                 (apply ::HashTable-new__0 _g170145_))
                ((let () (declare (not safe)) (##fx= _g170146_ 2))
                 (apply ::HashTable-new__% _g170145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ::HashTable-new
                  _g170145_))))))
    (define __HashTable-ref
      (lambda (_%self153986168288%_ _%key168289%_ _%default168290%_)
        (let ((_%self153986168292%_ _%self153986168288%_))
          (declare (not safe))
          (let ((_%object168299168304%_
                 (##unchecked-structure-ref _%self153986168292%_ '1 '#f 'ref))
                (_%method168300168305%_
                 (##unchecked-structure-ref _%self153986168292%_ '8 '#f 'ref)))
            (_%method168300168305%_
             _%object168299168304%_
             _%key168289%_
             _%default168290%_)))))
    (define ::HashTable-ref
      (lambda (_%self153987168256%_ _%key168257%_ _%default168258%_)
        (let* ((_%self153987168263%_
                (let ((_%$obj168260%_ _%self153987168256%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168260%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168260%_)))
                           '#t)
                      _%$obj168260%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168260%_)))))
               (_%self153987168265%_ _%self153987168263%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168273168278%_
                       (##unchecked-structure-ref
                        _%self153987168265%_
                        '1
                        '#f
                        'ref))
                      (_%method168274168279%_
                       (##unchecked-structure-ref
                        _%self153987168265%_
                        '8
                        '#f
                        'ref)))
                  (_%method168274168279%_
                   _%object168273168278%_
                   _%key168257%_
                   _%default168258%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168280168285%_
                       (##unchecked-structure-ref
                        _%self153987168265%_
                        '1
                        '#f
                        'ref))
                      (_%method168281168286%_
                       (##unchecked-structure-ref
                        _%self153987168265%_
                        '8
                        '#f
                        'ref)))
                  (_%method168281168286%_
                   _%object168280168285%_
                   _%key168257%_
                   _%default168258%_)))))))
    (define __HashTable-set!
      (lambda (_%self154230168237%_ _%key168238%_ _%value168239%_)
        (let ((_%self154230168241%_ _%self154230168237%_))
          (declare (not safe))
          (let ((_%object168248168253%_
                 (##unchecked-structure-ref _%self154230168241%_ '1 '#f 'set!))
                (_%method168249168254%_
                 (##unchecked-structure-ref
                  _%self154230168241%_
                  '9
                  '#f
                  'set!)))
            (_%method168249168254%_
             _%object168248168253%_
             _%key168238%_
             _%value168239%_)))))
    (define ::HashTable-set!
      (lambda (_%self154231168205%_ _%key168206%_ _%value168207%_)
        (let* ((_%self154231168212%_
                (let ((_%$obj168209%_ _%self154231168205%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168209%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168209%_)))
                           '#t)
                      _%$obj168209%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168209%_)))))
               (_%self154231168214%_ _%self154231168212%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168222168227%_
                       (##unchecked-structure-ref
                        _%self154231168214%_
                        '1
                        '#f
                        'set!))
                      (_%method168223168228%_
                       (##unchecked-structure-ref
                        _%self154231168214%_
                        '9
                        '#f
                        'set!)))
                  (_%method168223168228%_
                   _%object168222168227%_
                   _%key168206%_
                   _%value168207%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168229168234%_
                       (##unchecked-structure-ref
                        _%self154231168214%_
                        '1
                        '#f
                        'set!))
                      (_%method168230168235%_
                       (##unchecked-structure-ref
                        _%self154231168214%_
                        '9
                        '#f
                        'set!)))
                  (_%method168230168235%_
                   _%object168229168234%_
                   _%key168206%_
                   _%value168207%_)))))))
    (define __HashTable-update!
      (lambda (_%self154474168177%_
               _%key168178%_
               _%proc168179%_
               _%default168180%_)
        (let* ((_%self154474168182%_ _%self154474168177%_)
               (_%proc168189%_ _%proc168179%_))
          (declare (not safe))
          (let ((_%object168197168202%_
                 (##unchecked-structure-ref
                  _%self154474168182%_
                  '1
                  '#f
                  'update!))
                (_%method168198168203%_
                 (##unchecked-structure-ref
                  _%self154474168182%_
                  '10
                  '#f
                  'update!)))
            (_%method168198168203%_
             _%object168197168202%_
             _%key168178%_
             _%proc168189%_
             _%default168180%_)))))
    (define ::HashTable-update!
      (lambda (_%self154475168134%_
               _%key168135%_
               _%proc168136%_
               _%default168137%_)
        (let* ((_%self154475168142%_
                (let ((_%$obj168139%_ _%self154475168134%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168139%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168139%_)))
                           '#t)
                      _%$obj168139%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168139%_)))))
               (_%self154475168144%_ _%self154475168142%_))
          (if (procedure? _%proc168136%_)
              (let ((_%proc168153%_ _%proc168136%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object168162168167%_
                             (##unchecked-structure-ref
                              _%self154475168144%_
                              '1
                              '#f
                              'update!))
                            (_%method168163168168%_
                             (##unchecked-structure-ref
                              _%self154475168144%_
                              '10
                              '#f
                              'update!)))
                        (_%method168163168168%_
                         _%object168162168167%_
                         _%key168135%_
                         _%proc168153%_
                         _%default168137%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168169168174%_
                             (##unchecked-structure-ref
                              _%self154475168144%_
                              '1
                              '#f
                              'update!))
                            (_%method168170168175%_
                             (##unchecked-structure-ref
                              _%self154475168144%_
                              '10
                              '#f
                              'update!)))
                        (_%method168170168175%_
                         _%object168169168174%_
                         _%key168135%_
                         _%proc168153%_
                         _%default168137%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc168136%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp170147 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'Locker::t
         'Locker
         __tmp170147
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj170135
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170135
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj170135))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj168132%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj168132%_))))
    (define try-Locker
      (lambda (_%obj168130%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj168130%_))))
    (define Locker?
      (lambda (_%obj168128%_)
        (let ((__tmp170148
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj168128%_ __tmp170148))))
    (define is-Locker?
      (lambda (_%obj168125%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj168125%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self154718168108%_)
        (let ((_%self154718168110%_ _%self154718168108%_))
          (declare (not safe))
          (let ((_%object168117168122%_
                 (##unchecked-structure-ref
                  _%self154718168110%_
                  '1
                  '#f
                  'read-lock!))
                (_%method168118168123%_
                 (##unchecked-structure-ref
                  _%self154718168110%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method168118168123%_ _%object168117168122%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self154719168078%_)
        (let* ((_%self154719168083%_
                (let ((_%$obj168080%_ _%self154719168078%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168080%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168080%_)))
                           '#t)
                      _%$obj168080%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj168080%_)))))
               (_%self154719168085%_ _%self154719168083%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168093168098%_
                       (##unchecked-structure-ref
                        _%self154719168085%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method168094168099%_
                       (##unchecked-structure-ref
                        _%self154719168085%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method168094168099%_ _%object168093168098%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168100168105%_
                       (##unchecked-structure-ref
                        _%self154719168085%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method168101168106%_
                       (##unchecked-structure-ref
                        _%self154719168085%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method168101168106%_ _%object168100168105%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self154962168061%_)
        (let ((_%self154962168063%_ _%self154962168061%_))
          (declare (not safe))
          (let ((_%object168070168075%_
                 (##unchecked-structure-ref
                  _%self154962168063%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method168071168076%_
                 (##unchecked-structure-ref
                  _%self154962168063%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method168071168076%_ _%object168070168075%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self154963168031%_)
        (let* ((_%self154963168036%_
                (let ((_%$obj168033%_ _%self154963168031%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168033%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168033%_)))
                           '#t)
                      _%$obj168033%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj168033%_)))))
               (_%self154963168038%_ _%self154963168036%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168046168051%_
                       (##unchecked-structure-ref
                        _%self154963168038%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method168047168052%_
                       (##unchecked-structure-ref
                        _%self154963168038%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method168047168052%_ _%object168046168051%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168053168058%_
                       (##unchecked-structure-ref
                        _%self154963168038%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method168054168059%_
                       (##unchecked-structure-ref
                        _%self154963168038%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method168054168059%_ _%object168053168058%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self155206168014%_)
        (let ((_%self155206168016%_ _%self155206168014%_))
          (declare (not safe))
          (let ((_%object168023168028%_
                 (##unchecked-structure-ref
                  _%self155206168016%_
                  '1
                  '#f
                  'write-lock!))
                (_%method168024168029%_
                 (##unchecked-structure-ref
                  _%self155206168016%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method168024168029%_ _%object168023168028%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self155207167984%_)
        (let* ((_%self155207167989%_
                (let ((_%$obj167986%_ _%self155207167984%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj167986%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj167986%_)))
                           '#t)
                      _%$obj167986%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj167986%_)))))
               (_%self155207167991%_ _%self155207167989%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object167999168004%_
                       (##unchecked-structure-ref
                        _%self155207167991%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method168000168005%_
                       (##unchecked-structure-ref
                        _%self155207167991%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method168000168005%_ _%object167999168004%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168006168011%_
                       (##unchecked-structure-ref
                        _%self155207167991%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method168007168012%_
                       (##unchecked-structure-ref
                        _%self155207167991%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method168007168012%_ _%object168006168011%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self155450167967%_)
        (let ((_%self155450167969%_ _%self155450167967%_))
          (declare (not safe))
          (let ((_%object167976167981%_
                 (##unchecked-structure-ref
                  _%self155450167969%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method167977167982%_
                 (##unchecked-structure-ref
                  _%self155450167969%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method167977167982%_ _%object167976167981%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self155451167937%_)
        (let* ((_%self155451167942%_
                (let ((_%$obj167939%_ _%self155451167937%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj167939%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj167939%_)))
                           '#t)
                      _%$obj167939%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj167939%_)))))
               (_%self155451167944%_ _%self155451167942%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object167952167957%_
                       (##unchecked-structure-ref
                        _%self155451167944%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method167953167958%_
                       (##unchecked-structure-ref
                        _%self155451167944%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method167953167958%_ _%object167952167957%_)))
              (let ()
                (declare (not safe))
                (let ((_%object167959167964%_
                       (##unchecked-structure-ref
                        _%self155451167944%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method167960167965%_
                       (##unchecked-structure-ref
                        _%self155451167944%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method167960167965%_ _%object167959167964%_)))))))
    (let* ((_%klass167900%_ __table::t)
           (_%id167903%_ 'HashTable::ref)
           (_%proc167906%_ raw-table-ref)
           (_%rebind?167909%_ '#f)
           (_%id167914%_ _%id167903%_)
           (_%proc167927%_ _%proc167906%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167900%_
       _%id167914%_
       _%proc167927%_
       _%rebind?167909%_))
    (let* ((_%klass167863%_ __table::t)
           (_%id167866%_ 'HashTable::set!)
           (_%proc167869%_ raw-table-set!)
           (_%rebind?167872%_ '#f)
           (_%id167877%_ _%id167866%_)
           (_%proc167890%_ _%proc167869%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167863%_
       _%id167877%_
       _%proc167890%_
       _%rebind?167872%_))
    (let* ((_%klass167826%_ __table::t)
           (_%id167829%_ 'HashTable::update!)
           (_%proc167832%_ raw-table-update!)
           (_%rebind?167835%_ '#f)
           (_%id167840%_ _%id167829%_)
           (_%proc167853%_ _%proc167832%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167826%_
       _%id167840%_
       _%proc167853%_
       _%rebind?167835%_))
    (let* ((_%klass167789%_ __table::t)
           (_%id167792%_ 'HashTable::delete!)
           (_%proc167795%_ raw-table-delete!)
           (_%rebind?167798%_ '#f)
           (_%id167803%_ _%id167792%_)
           (_%proc167816%_ _%proc167795%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167789%_
       _%id167803%_
       _%proc167816%_
       _%rebind?167798%_))
    (let* ((_%klass167752%_ __table::t)
           (_%id167755%_ 'HashTable::for-each)
           (_%proc167758%_ raw-table-for-each)
           (_%rebind?167761%_ '#f)
           (_%id167766%_ _%id167755%_)
           (_%proc167779%_ _%proc167758%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167752%_
       _%id167766%_
       _%proc167779%_
       _%rebind?167761%_))
    (let* ((_%klass167715%_ __table::t)
           (_%id167718%_ 'HashTable::length)
           (_%proc167721%_ &raw-table-count)
           (_%rebind?167724%_ '#f)
           (_%id167729%_ _%id167718%_)
           (_%proc167742%_ _%proc167721%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167715%_
       _%id167729%_
       _%proc167742%_
       _%rebind?167724%_))
    (let* ((_%klass167678%_ __table::t)
           (_%id167681%_ 'HashTable::copy)
           (_%proc167684%_ raw-table-copy)
           (_%rebind?167687%_ '#f)
           (_%id167692%_ _%id167681%_)
           (_%proc167705%_ _%proc167684%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167678%_
       _%id167692%_
       _%proc167705%_
       _%rebind?167687%_))
    (let* ((_%klass167641%_ __table::t)
           (_%id167644%_ 'HashTable::new)
           (_%proc167647%_ raw-table-new)
           (_%rebind?167650%_ '#f)
           (_%id167655%_ _%id167644%_)
           (_%proc167668%_ _%proc167647%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167641%_
       _%id167655%_
       _%proc167668%_
       _%rebind?167650%_))
    (let* ((_%klass167604%_ __table::t)
           (_%id167607%_ 'HashTable::clear!)
           (_%proc167610%_ raw-table-clear!)
           (_%rebind?167613%_ '#f)
           (_%id167618%_ _%id167607%_)
           (_%proc167631%_ _%proc167610%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167604%_
       _%id167618%_
       _%proc167631%_
       _%rebind?167613%_))
    (let* ((_%klass167567%_ __gc-table::t)
           (_%id167570%_ 'HashTable::ref)
           (_%proc167573%_ gc-table-ref)
           (_%rebind?167576%_ '#f)
           (_%id167581%_ _%id167570%_)
           (_%proc167594%_ _%proc167573%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167567%_
       _%id167581%_
       _%proc167594%_
       _%rebind?167576%_))
    (let* ((_%klass167530%_ __gc-table::t)
           (_%id167533%_ 'HashTable::set!)
           (_%proc167536%_ gc-table-set!)
           (_%rebind?167539%_ '#f)
           (_%id167544%_ _%id167533%_)
           (_%proc167557%_ _%proc167536%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167530%_
       _%id167544%_
       _%proc167557%_
       _%rebind?167539%_))
    (let* ((_%klass167493%_ __gc-table::t)
           (_%id167496%_ 'HashTable::update!)
           (_%proc167499%_ gc-table-update!)
           (_%rebind?167502%_ '#f)
           (_%id167507%_ _%id167496%_)
           (_%proc167520%_ _%proc167499%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167493%_
       _%id167507%_
       _%proc167520%_
       _%rebind?167502%_))
    (let* ((_%klass167456%_ __gc-table::t)
           (_%id167459%_ 'HashTable::delete!)
           (_%proc167462%_ gc-table-delete!)
           (_%rebind?167465%_ '#f)
           (_%id167470%_ _%id167459%_)
           (_%proc167483%_ _%proc167462%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167456%_
       _%id167470%_
       _%proc167483%_
       _%rebind?167465%_))
    (let* ((_%klass167419%_ __gc-table::t)
           (_%id167422%_ 'HashTable::for-each)
           (_%proc167425%_ gc-table-for-each)
           (_%rebind?167428%_ '#f)
           (_%id167433%_ _%id167422%_)
           (_%proc167446%_ _%proc167425%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167419%_
       _%id167433%_
       _%proc167446%_
       _%rebind?167428%_))
    (let* ((_%klass167382%_ __gc-table::t)
           (_%id167385%_ 'HashTable::length)
           (_%proc167388%_ gc-table-length)
           (_%rebind?167391%_ '#f)
           (_%id167396%_ _%id167385%_)
           (_%proc167409%_ _%proc167388%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167382%_
       _%id167396%_
       _%proc167409%_
       _%rebind?167391%_))
    (let* ((_%klass167345%_ __gc-table::t)
           (_%id167348%_ 'HashTable::copy)
           (_%proc167351%_ gc-table-copy)
           (_%rebind?167354%_ '#f)
           (_%id167359%_ _%id167348%_)
           (_%proc167372%_ _%proc167351%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167345%_
       _%id167359%_
       _%proc167372%_
       _%rebind?167354%_))
    (let* ((_%klass167308%_ __gc-table::t)
           (_%id167311%_ 'HashTable::new)
           (_%proc167314%_ gc-table-new)
           (_%rebind?167317%_ '#f)
           (_%id167322%_ _%id167311%_)
           (_%proc167335%_ _%proc167314%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167308%_
       _%id167322%_
       _%proc167335%_
       _%rebind?167317%_))
    (let* ((_%klass167271%_ __gc-table::t)
           (_%id167274%_ 'HashTable::clear!)
           (_%proc167277%_ gc-table-clear!)
           (_%rebind?167280%_ '#f)
           (_%id167285%_ _%id167274%_)
           (_%proc167298%_ _%proc167277%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167271%_
       _%id167285%_
       _%proc167298%_
       _%rebind?167280%_))
    (define gambit-table-update!
      (lambda (_%table167264%_
               _%key167265%_
               _%update167266%_
               _%default167267%_)
        (let ((_%result167269%_
               (table-ref _%table167264%_ _%key167265%_ _%default167267%_)))
          (table-set!
           _%table167264%_
           _%key167265%_
           (_%update167266%_ _%result167269%_)))))
    (define gambit-table-for-each
      (lambda (_%table167261%_ _%proc167262%_)
        (table-for-each _%proc167262%_ _%table167261%_)))
    (define gambit-table-clear!
      (lambda (_%table167259%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table167259%_ '0 '5 '#f '#f))))
    (let* ((_%klass167222%_ (macro-type-table))
           (_%id167225%_ 'HashTable::ref)
           (_%proc167228%_ table-ref)
           (_%rebind?167231%_ '#f)
           (_%id167236%_ _%id167225%_)
           (_%proc167249%_ _%proc167228%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167222%_
       _%id167236%_
       _%proc167249%_
       _%rebind?167231%_))
    (let* ((_%klass167185%_ (macro-type-table))
           (_%id167188%_ 'HashTable::set!)
           (_%proc167191%_ table-set!)
           (_%rebind?167194%_ '#f)
           (_%id167199%_ _%id167188%_)
           (_%proc167212%_ _%proc167191%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167185%_
       _%id167199%_
       _%proc167212%_
       _%rebind?167194%_))
    (let* ((_%klass167148%_ (macro-type-table))
           (_%id167151%_ 'HashTable::update!)
           (_%proc167154%_ gambit-table-update!)
           (_%rebind?167157%_ '#f)
           (_%id167162%_ _%id167151%_)
           (_%proc167175%_ _%proc167154%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167148%_
       _%id167162%_
       _%proc167175%_
       _%rebind?167157%_))
    (let* ((_%klass167111%_ (macro-type-table))
           (_%id167114%_ 'HashTable::delete!)
           (_%proc167117%_ table-set!)
           (_%rebind?167120%_ '#f)
           (_%id167125%_ _%id167114%_)
           (_%proc167138%_ _%proc167117%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167111%_
       _%id167125%_
       _%proc167138%_
       _%rebind?167120%_))
    (let* ((_%klass167074%_ (macro-type-table))
           (_%id167077%_ 'HashTable::for-each)
           (_%proc167080%_ gambit-table-for-each)
           (_%rebind?167083%_ '#f)
           (_%id167088%_ _%id167077%_)
           (_%proc167101%_ _%proc167080%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167074%_
       _%id167088%_
       _%proc167101%_
       _%rebind?167083%_))
    (let* ((_%klass167037%_ (macro-type-table))
           (_%id167040%_ 'HashTable::length)
           (_%proc167043%_ table-length)
           (_%rebind?167046%_ '#f)
           (_%id167051%_ _%id167040%_)
           (_%proc167064%_ _%proc167043%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167037%_
       _%id167051%_
       _%proc167064%_
       _%rebind?167046%_))
    (let* ((_%klass167000%_ (macro-type-table))
           (_%id167003%_ 'HashTable::copy)
           (_%proc167006%_ table-copy)
           (_%rebind?167009%_ '#f)
           (_%id167014%_ _%id167003%_)
           (_%proc167027%_ _%proc167006%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167000%_
       _%id167014%_
       _%proc167027%_
       _%rebind?167009%_))
    (let* ((_%klass166963%_ (macro-type-table))
           (_%id166966%_ 'HashTable::new)
           (_%proc166969%_ table-new)
           (_%rebind?166972%_ '#f)
           (_%id166977%_ _%id166966%_)
           (_%proc166990%_ _%proc166969%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166963%_
       _%id166977%_
       _%proc166990%_
       _%rebind?166972%_))
    (let* ((_%klass166926%_ (macro-type-table))
           (_%id166929%_ 'HashTable::clear!)
           (_%proc166932%_ gambit-table-clear!)
           (_%rebind?166935%_ '#f)
           (_%id166940%_ _%id166929%_)
           (_%proc166953%_ _%proc166932%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166926%_
       _%id166940%_
       _%proc166953%_
       _%rebind?166935%_))
    (define hash-table::t
      (let* ((_%slots166889%_ '(table count free hash test seed lock))
             (_%slot-vector166891%_ (list->vector (cons '#f _%slots166889%_)))
             (_%slot-table166917%_
              (let ((_%slot-table166893%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170151
                       (lambda (_%slot166895%_ _%field166896%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166893%_
                            _%slot166895%_
                            _%field166896%_))
                         (let ((__tmp170152
                                (let ((_%sym166898%_ _%slot166895%_))
                                  (if (symbol? _%sym166898%_)
                                      (let ((_%sym166903%_ _%sym166898%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym166903%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym166898%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166893%_
                            __tmp170152
                            _%field166896%_))))
                      (__tmp170149
                       (let ((__tmp170150
                              (let ()
                                (declare (not safe))
                                (##length _%slots166889%_))))
                         (declare (not safe))
                         (##iota __tmp170150 '1))))
                  (declare (not safe))
                  (##for-each __tmp170151 _%slots166889%_ __tmp170149))
                _%slot-table166893%_))
             (_%flags166919%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields166921%_ '#())
             (_%properties166923%_
              (cons (cons 'direct-slots: _%slots166889%_) '((struct: . #t))))
             (__tmp170153 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags166919%_
         __table::t
         _%fields166921%_
         __tmp170153
         _%slot-vector166891%_
         _%slot-table166917%_
         _%properties166923%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots166852%_ '(gcht immediate))
             (_%slot-vector166854%_ (list->vector (cons '#f _%slots166852%_)))
             (_%slot-table166880%_
              (let ((_%slot-table166856%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170156
                       (lambda (_%slot166858%_ _%field166859%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166856%_
                            _%slot166858%_
                            _%field166859%_))
                         (let ((__tmp170157
                                (let ((_%sym166861%_ _%slot166858%_))
                                  (if (symbol? _%sym166861%_)
                                      (let ((_%sym166866%_ _%sym166861%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym166866%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym166861%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166856%_
                            __tmp170157
                            _%field166859%_))))
                      (__tmp170154
                       (let ((__tmp170155
                              (let ()
                                (declare (not safe))
                                (##length _%slots166852%_))))
                         (declare (not safe))
                         (##iota __tmp170155 '1))))
                  (declare (not safe))
                  (##for-each __tmp170156 _%slots166852%_ __tmp170154))
                _%slot-table166856%_))
             (_%flags166882%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields166884%_ '#())
             (_%properties166886%_
              (cons (cons 'direct-slots: _%slots166852%_) '((struct: . #t))))
             (__tmp170158 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags166882%_
         __gc-table::t
         _%fields166884%_
         __tmp170158
         _%slot-vector166854%_
         _%slot-table166880%_
         _%properties166886%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp170160 (list))
            (__tmp170159
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp170160
         '(table lock)
         __tmp170159
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args166849%_
        (apply make-instance locked-hash-table::t _%$args166849%_)))
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
      (let ((__tmp170162 (list))
            (__tmp170161
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp170162
         '(table key-check)
         __tmp170161
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args166846%_
        (apply make-instance checked-hash-table::t _%$args166846%_)))
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
      (let ((__tmp170164 (list hash-table::t))
            (__tmp170163 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp170164
         '()
         __tmp170163
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args166843%_
        (apply make-instance eq-hash-table::t _%$args166843%_)))
    (define eqv-hash-table::t
      (let ((__tmp170166 (list hash-table::t))
            (__tmp170165 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp170166
         '()
         __tmp170165
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args166840%_
        (apply make-instance eqv-hash-table::t _%$args166840%_)))
    (define symbol-hash-table::t
      (let ((__tmp170168 (list hash-table::t))
            (__tmp170167 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp170168
         '()
         __tmp170167
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args166837%_
        (apply make-instance symbol-hash-table::t _%$args166837%_)))
    (define string-hash-table::t
      (let ((__tmp170170 (list hash-table::t))
            (__tmp170169 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp170170
         '()
         __tmp170169
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args166834%_
        (apply make-instance string-hash-table::t _%$args166834%_)))
    (define immediate-hash-table::t
      (let ((__tmp170172 (list hash-table::t))
            (__tmp170171 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp170172
         '()
         __tmp170171
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args166831%_
        (apply make-instance immediate-hash-table::t _%$args166831%_)))
    (let* ((_%klass166794%_ hash-table::t)
           (_%id166797%_ 'HashTable::ref)
           (_%proc166800%_ raw-table-ref)
           (_%rebind?166803%_ '#f)
           (_%id166808%_ _%id166797%_)
           (_%proc166821%_ _%proc166800%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166794%_
       _%id166808%_
       _%proc166821%_
       _%rebind?166803%_))
    (let* ((_%klass166757%_ hash-table::t)
           (_%id166760%_ 'HashTable::set!)
           (_%proc166763%_ raw-table-set!)
           (_%rebind?166766%_ '#f)
           (_%id166771%_ _%id166760%_)
           (_%proc166784%_ _%proc166763%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166757%_
       _%id166771%_
       _%proc166784%_
       _%rebind?166766%_))
    (let* ((_%klass166720%_ hash-table::t)
           (_%id166723%_ 'HashTable::update!)
           (_%proc166726%_ raw-table-update!)
           (_%rebind?166729%_ '#f)
           (_%id166734%_ _%id166723%_)
           (_%proc166747%_ _%proc166726%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166720%_
       _%id166734%_
       _%proc166747%_
       _%rebind?166729%_))
    (let* ((_%klass166683%_ hash-table::t)
           (_%id166686%_ 'HashTable::delete!)
           (_%proc166689%_ raw-table-delete!)
           (_%rebind?166692%_ '#f)
           (_%id166697%_ _%id166686%_)
           (_%proc166710%_ _%proc166689%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166683%_
       _%id166697%_
       _%proc166710%_
       _%rebind?166692%_))
    (let* ((_%klass166646%_ hash-table::t)
           (_%id166649%_ 'HashTable::for-each)
           (_%proc166652%_ raw-table-for-each)
           (_%rebind?166655%_ '#f)
           (_%id166660%_ _%id166649%_)
           (_%proc166673%_ _%proc166652%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166646%_
       _%id166660%_
       _%proc166673%_
       _%rebind?166655%_))
    (let* ((_%klass166609%_ hash-table::t)
           (_%id166612%_ 'HashTable::length)
           (_%proc166615%_ &raw-table-count)
           (_%rebind?166618%_ '#f)
           (_%id166623%_ _%id166612%_)
           (_%proc166636%_ _%proc166615%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166609%_
       _%id166623%_
       _%proc166636%_
       _%rebind?166618%_))
    (let* ((_%klass166572%_ hash-table::t)
           (_%id166575%_ 'HashTable::copy)
           (_%proc166578%_ raw-table-copy)
           (_%rebind?166581%_ '#f)
           (_%id166586%_ _%id166575%_)
           (_%proc166599%_ _%proc166578%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166572%_
       _%id166586%_
       _%proc166599%_
       _%rebind?166581%_))
    (let* ((_%klass166535%_ hash-table::t)
           (_%id166538%_ 'HashTable::new)
           (_%proc166541%_ raw-table-new)
           (_%rebind?166544%_ '#f)
           (_%id166549%_ _%id166538%_)
           (_%proc166562%_ _%proc166541%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166535%_
       _%id166549%_
       _%proc166562%_
       _%rebind?166544%_))
    (let* ((_%klass166498%_ hash-table::t)
           (_%id166501%_ 'HashTable::clear!)
           (_%proc166504%_ raw-table-clear!)
           (_%rebind?166507%_ '#f)
           (_%id166512%_ _%id166501%_)
           (_%proc166525%_ _%proc166504%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166498%_
       _%id166512%_
       _%proc166525%_
       _%rebind?166507%_))
    (let* ((_%klass166461%_ eq-hash-table::t)
           (_%id166464%_ 'HashTable::ref)
           (_%proc166467%_ eq-table-ref)
           (_%rebind?166470%_ '#f)
           (_%id166475%_ _%id166464%_)
           (_%proc166488%_ _%proc166467%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166461%_
       _%id166475%_
       _%proc166488%_
       _%rebind?166470%_))
    (let* ((_%klass166424%_ eq-hash-table::t)
           (_%id166427%_ 'HashTable::set!)
           (_%proc166430%_ eq-table-set!)
           (_%rebind?166433%_ '#f)
           (_%id166438%_ _%id166427%_)
           (_%proc166451%_ _%proc166430%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166424%_
       _%id166438%_
       _%proc166451%_
       _%rebind?166433%_))
    (let* ((_%klass166387%_ eq-hash-table::t)
           (_%id166390%_ 'HashTable::update!)
           (_%proc166393%_ eq-table-update!)
           (_%rebind?166396%_ '#f)
           (_%id166401%_ _%id166390%_)
           (_%proc166414%_ _%proc166393%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166387%_
       _%id166401%_
       _%proc166414%_
       _%rebind?166396%_))
    (let* ((_%klass166350%_ eq-hash-table::t)
           (_%id166353%_ 'HashTable::delete!)
           (_%proc166356%_ eq-table-delete!)
           (_%rebind?166359%_ '#f)
           (_%id166364%_ _%id166353%_)
           (_%proc166377%_ _%proc166356%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166350%_
       _%id166364%_
       _%proc166377%_
       _%rebind?166359%_))
    (let* ((_%klass166313%_ eqv-hash-table::t)
           (_%id166316%_ 'HashTable::ref)
           (_%proc166319%_ eqv-table-ref)
           (_%rebind?166322%_ '#f)
           (_%id166327%_ _%id166316%_)
           (_%proc166340%_ _%proc166319%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166313%_
       _%id166327%_
       _%proc166340%_
       _%rebind?166322%_))
    (let* ((_%klass166276%_ eqv-hash-table::t)
           (_%id166279%_ 'HashTable::set!)
           (_%proc166282%_ eqv-table-set!)
           (_%rebind?166285%_ '#f)
           (_%id166290%_ _%id166279%_)
           (_%proc166303%_ _%proc166282%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166276%_
       _%id166290%_
       _%proc166303%_
       _%rebind?166285%_))
    (let* ((_%klass166239%_ eqv-hash-table::t)
           (_%id166242%_ 'HashTable::update!)
           (_%proc166245%_ eqv-table-update!)
           (_%rebind?166248%_ '#f)
           (_%id166253%_ _%id166242%_)
           (_%proc166266%_ _%proc166245%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166239%_
       _%id166253%_
       _%proc166266%_
       _%rebind?166248%_))
    (let* ((_%klass166202%_ eqv-hash-table::t)
           (_%id166205%_ 'HashTable::delete!)
           (_%proc166208%_ eqv-table-delete!)
           (_%rebind?166211%_ '#f)
           (_%id166216%_ _%id166205%_)
           (_%proc166229%_ _%proc166208%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166202%_
       _%id166216%_
       _%proc166229%_
       _%rebind?166211%_))
    (let* ((_%klass166165%_ symbol-hash-table::t)
           (_%id166168%_ 'HashTable::ref)
           (_%proc166171%_ symbolic-table-ref)
           (_%rebind?166174%_ '#f)
           (_%id166179%_ _%id166168%_)
           (_%proc166192%_ _%proc166171%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166165%_
       _%id166179%_
       _%proc166192%_
       _%rebind?166174%_))
    (let* ((_%klass166128%_ symbol-hash-table::t)
           (_%id166131%_ 'HashTable::set!)
           (_%proc166134%_ symbolic-table-set!)
           (_%rebind?166137%_ '#f)
           (_%id166142%_ _%id166131%_)
           (_%proc166155%_ _%proc166134%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166128%_
       _%id166142%_
       _%proc166155%_
       _%rebind?166137%_))
    (let* ((_%klass166091%_ symbol-hash-table::t)
           (_%id166094%_ 'HashTable::update!)
           (_%proc166097%_ symbolic-table-update!)
           (_%rebind?166100%_ '#f)
           (_%id166105%_ _%id166094%_)
           (_%proc166118%_ _%proc166097%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166091%_
       _%id166105%_
       _%proc166118%_
       _%rebind?166100%_))
    (let* ((_%klass166054%_ symbol-hash-table::t)
           (_%id166057%_ 'HashTable::delete!)
           (_%proc166060%_ symbolic-table-delete!)
           (_%rebind?166063%_ '#f)
           (_%id166068%_ _%id166057%_)
           (_%proc166081%_ _%proc166060%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166054%_
       _%id166068%_
       _%proc166081%_
       _%rebind?166063%_))
    (let* ((_%klass166017%_ string-hash-table::t)
           (_%id166020%_ 'HashTable::ref)
           (_%proc166023%_ string-table-ref)
           (_%rebind?166026%_ '#f)
           (_%id166031%_ _%id166020%_)
           (_%proc166044%_ _%proc166023%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166017%_
       _%id166031%_
       _%proc166044%_
       _%rebind?166026%_))
    (let* ((_%klass165980%_ string-hash-table::t)
           (_%id165983%_ 'HashTable::set!)
           (_%proc165986%_ string-table-set!)
           (_%rebind?165989%_ '#f)
           (_%id165994%_ _%id165983%_)
           (_%proc166007%_ _%proc165986%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165980%_
       _%id165994%_
       _%proc166007%_
       _%rebind?165989%_))
    (let* ((_%klass165943%_ string-hash-table::t)
           (_%id165946%_ 'HashTable::update!)
           (_%proc165949%_ string-table-update!)
           (_%rebind?165952%_ '#f)
           (_%id165957%_ _%id165946%_)
           (_%proc165970%_ _%proc165949%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165943%_
       _%id165957%_
       _%proc165970%_
       _%rebind?165952%_))
    (let* ((_%klass165906%_ string-hash-table::t)
           (_%id165909%_ 'HashTable::delete!)
           (_%proc165912%_ string-table-delete!)
           (_%rebind?165915%_ '#f)
           (_%id165920%_ _%id165909%_)
           (_%proc165933%_ _%proc165912%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165906%_
       _%id165920%_
       _%proc165933%_
       _%rebind?165915%_))
    (let* ((_%klass165869%_ immediate-hash-table::t)
           (_%id165872%_ 'HashTable::ref)
           (_%proc165875%_ immediate-table-ref)
           (_%rebind?165878%_ '#f)
           (_%id165883%_ _%id165872%_)
           (_%proc165896%_ _%proc165875%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165869%_
       _%id165883%_
       _%proc165896%_
       _%rebind?165878%_))
    (let* ((_%klass165832%_ immediate-hash-table::t)
           (_%id165835%_ 'HashTable::set!)
           (_%proc165838%_ immediate-table-set!)
           (_%rebind?165841%_ '#f)
           (_%id165846%_ _%id165835%_)
           (_%proc165859%_ _%proc165838%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165832%_
       _%id165846%_
       _%proc165859%_
       _%rebind?165841%_))
    (let* ((_%klass165795%_ immediate-hash-table::t)
           (_%id165798%_ 'HashTable::update!)
           (_%proc165801%_ immediate-table-update!)
           (_%rebind?165804%_ '#f)
           (_%id165809%_ _%id165798%_)
           (_%proc165822%_ _%proc165801%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165795%_
       _%id165809%_
       _%proc165822%_
       _%rebind?165804%_))
    (let* ((_%klass165758%_ immediate-hash-table::t)
           (_%id165761%_ 'HashTable::delete!)
           (_%proc165764%_ immediate-table-delete!)
           (_%rebind?165767%_ '#f)
           (_%id165772%_ _%id165761%_)
           (_%proc165785%_ _%proc165764%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165758%_
       _%id165772%_
       _%proc165785%_
       _%rebind?165767%_))
    (let* ((_%klass165721%_ gc-hash-table::t)
           (_%id165724%_ 'HashTable::ref)
           (_%proc165727%_ gc-table-ref)
           (_%rebind?165730%_ '#f)
           (_%id165735%_ _%id165724%_)
           (_%proc165748%_ _%proc165727%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165721%_
       _%id165735%_
       _%proc165748%_
       _%rebind?165730%_))
    (let* ((_%klass165684%_ gc-hash-table::t)
           (_%id165687%_ 'HashTable::set!)
           (_%proc165690%_ gc-table-set!)
           (_%rebind?165693%_ '#f)
           (_%id165698%_ _%id165687%_)
           (_%proc165711%_ _%proc165690%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165684%_
       _%id165698%_
       _%proc165711%_
       _%rebind?165693%_))
    (let* ((_%klass165647%_ gc-hash-table::t)
           (_%id165650%_ 'HashTable::update!)
           (_%proc165653%_ gc-table-update!)
           (_%rebind?165656%_ '#f)
           (_%id165661%_ _%id165650%_)
           (_%proc165674%_ _%proc165653%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165647%_
       _%id165661%_
       _%proc165674%_
       _%rebind?165656%_))
    (let* ((_%klass165610%_ gc-hash-table::t)
           (_%id165613%_ 'HashTable::delete!)
           (_%proc165616%_ gc-table-delete!)
           (_%rebind?165619%_ '#f)
           (_%id165624%_ _%id165613%_)
           (_%proc165637%_ _%proc165616%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165610%_
       _%id165624%_
       _%proc165637%_
       _%rebind?165619%_))
    (let* ((_%klass165573%_ gc-hash-table::t)
           (_%id165576%_ 'HashTable::for-each)
           (_%proc165579%_ gc-table-for-each)
           (_%rebind?165582%_ '#f)
           (_%id165587%_ _%id165576%_)
           (_%proc165600%_ _%proc165579%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165573%_
       _%id165587%_
       _%proc165600%_
       _%rebind?165582%_))
    (let* ((_%klass165536%_ gc-hash-table::t)
           (_%id165539%_ 'HashTable::length)
           (_%proc165542%_ gc-table-length)
           (_%rebind?165545%_ '#f)
           (_%id165550%_ _%id165539%_)
           (_%proc165563%_ _%proc165542%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165536%_
       _%id165550%_
       _%proc165563%_
       _%rebind?165545%_))
    (let* ((_%klass165499%_ gc-hash-table::t)
           (_%id165502%_ 'HashTable::copy)
           (_%proc165505%_ gc-table-copy)
           (_%rebind?165508%_ '#f)
           (_%id165513%_ _%id165502%_)
           (_%proc165526%_ _%proc165505%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165499%_
       _%id165513%_
       _%proc165526%_
       _%rebind?165508%_))
    (let* ((_%klass165462%_ gc-hash-table::t)
           (_%id165465%_ 'HashTable::new)
           (_%proc165468%_ gc-table-new)
           (_%rebind?165471%_ '#f)
           (_%id165476%_ _%id165465%_)
           (_%proc165489%_ _%proc165468%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165462%_
       _%id165476%_
       _%proc165489%_
       _%rebind?165471%_))
    (let* ((_%klass165425%_ gc-hash-table::t)
           (_%id165428%_ 'HashTable::clear!)
           (_%proc165431%_ gc-table-clear!)
           (_%rebind?165434%_ '#f)
           (_%id165439%_ _%id165428%_)
           (_%proc165452%_ _%proc165431%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165425%_
       _%id165439%_
       _%proc165452%_
       _%rebind?165434%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref156076%_
      (lambda (_%self165346%_ _%key165348%_ _%default165349%_)
        (let* ((_%self165352%_ _%self165346%_)
               (_%key165361%_ _%key165348%_)
               (_%default165369%_ _%default165349%_))
          (let ((_%h165378%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165352%_ '1 '#f '#f)))
                (_%l165380%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165352%_ '2 '#f '#f))))
            (let ((__tmp170175
                   (lambda ()
                     (let ((_%self154716165384%_ _%l165380%_))
                       (declare (not safe))
                       (let ((_%object165387165392%_
                              (##unchecked-structure-ref
                               _%self154716165384%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method165388165393%_
                              (##unchecked-structure-ref
                               _%self154716165384%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method165388165393%_ _%object165387165392%_)))))
                  (__tmp170174
                   (lambda ()
                     (let* ((_%self153984165396%_ _%h165378%_)
                            (_%key165399%_ _%key165361%_)
                            (_%default165402%_ _%default165369%_))
                       (declare (not safe))
                       (let ((_%object165405165410%_
                              (##unchecked-structure-ref
                               _%self153984165396%_
                               '1
                               '#f
                               'ref))
                             (_%method165406165411%_
                              (##unchecked-structure-ref
                               _%self153984165396%_
                               '8
                               '#f
                               'ref)))
                         (_%method165406165411%_
                          _%object165405165410%_
                          _%key165399%_
                          _%default165402%_)))))
                  (__tmp170173
                   (lambda ()
                     (let ((_%self154960165414%_ _%l165380%_))
                       (declare (not safe))
                       (let ((_%object165417165422%_
                              (##unchecked-structure-ref
                               _%self154960165414%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method165418165423%_
                              (##unchecked-structure-ref
                               _%self154960165414%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method165418165423%_ _%object165417165422%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170175 __tmp170174 __tmp170173))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref156076%_
       '#f))
    (define _%locked-hash-table::HashTable::set!156078%_
      (lambda (_%self165144%_ _%key165146%_ _%value165147%_)
        (let* ((_%self165150%_ _%self165144%_)
               (_%key165159%_ _%key165146%_)
               (_%value165167%_ _%value165147%_))
          (let ((_%h165176%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165150%_ '1 '#f '#f)))
                (_%l165178%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165150%_ '2 '#f '#f))))
            (let ((__tmp170178
                   (lambda ()
                     (let ((_%self155204165182%_ _%l165178%_))
                       (declare (not safe))
                       (let ((_%object165185165190%_
                              (##unchecked-structure-ref
                               _%self155204165182%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method165186165191%_
                              (##unchecked-structure-ref
                               _%self155204165182%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method165186165191%_ _%object165185165190%_)))))
                  (__tmp170177
                   (lambda ()
                     (let* ((_%self154228165194%_ _%h165176%_)
                            (_%key165197%_ _%key165159%_)
                            (_%value165200%_ _%value165167%_))
                       (declare (not safe))
                       (let ((_%object165203165208%_
                              (##unchecked-structure-ref
                               _%self154228165194%_
                               '1
                               '#f
                               'set!))
                             (_%method165204165209%_
                              (##unchecked-structure-ref
                               _%self154228165194%_
                               '9
                               '#f
                               'set!)))
                         (_%method165204165209%_
                          _%object165203165208%_
                          _%key165197%_
                          _%value165200%_)))))
                  (__tmp170176
                   (lambda ()
                     (let ((_%self155448165212%_ _%l165178%_))
                       (declare (not safe))
                       (let ((_%object165215165220%_
                              (##unchecked-structure-ref
                               _%self155448165212%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method165216165221%_
                              (##unchecked-structure-ref
                               _%self155448165212%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method165216165221%_ _%object165215165220%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170178 __tmp170177 __tmp170176))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!156078%_
       '#f))
    (define _%locked-hash-table::HashTable::update!156080%_
      (lambda (_%self164930%_ _%key164932%_ _%update164933%_ _%default164934%_)
        (let* ((_%self164937%_ _%self164930%_)
               (_%key164946%_ _%key164932%_)
               (_%update164954%_ _%update164933%_)
               (_%default164962%_ _%default164934%_))
          (let ((_%h164971%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164937%_ '1 '#f '#f)))
                (_%l164973%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164937%_ '2 '#f '#f))))
            (let ((__tmp170181
                   (lambda ()
                     (let ((_%self155204164977%_ _%l164973%_))
                       (declare (not safe))
                       (let ((_%object164980164985%_
                              (##unchecked-structure-ref
                               _%self155204164977%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method164981164986%_
                              (##unchecked-structure-ref
                               _%self155204164977%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method164981164986%_ _%object164980164985%_)))))
                  (__tmp170180
                   (lambda ()
                     (let* ((_%self154472164989%_ _%h164971%_)
                            (_%key164992%_ _%key164946%_)
                            (_%proc164995%_ _%update164954%_)
                            (_%default164998%_ _%default164962%_))
                       (declare (not safe))
                       (let ((_%object165001165006%_
                              (##unchecked-structure-ref
                               _%self154472164989%_
                               '1
                               '#f
                               'update!))
                             (_%method165002165007%_
                              (##unchecked-structure-ref
                               _%self154472164989%_
                               '10
                               '#f
                               'update!)))
                         (_%method165002165007%_
                          _%object165001165006%_
                          _%key164992%_
                          _%proc164995%_
                          _%default164998%_)))))
                  (__tmp170179
                   (lambda ()
                     (let ((_%self155448165010%_ _%l164973%_))
                       (declare (not safe))
                       (let ((_%object165013165018%_
                              (##unchecked-structure-ref
                               _%self155448165010%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method165014165019%_
                              (##unchecked-structure-ref
                               _%self155448165010%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method165014165019%_ _%object165013165018%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170181 __tmp170180 __tmp170179))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!156080%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!156082%_
      (lambda (_%self164740%_ _%key164742%_)
        (let* ((_%self164745%_ _%self164740%_) (_%key164754%_ _%key164742%_))
          (let ((_%h164763%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164745%_ '1 '#f '#f)))
                (_%l164765%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164745%_ '2 '#f '#f))))
            (let ((__tmp170184
                   (lambda ()
                     (let ((_%self155204164769%_ _%l164765%_))
                       (declare (not safe))
                       (let ((_%object164772164777%_
                              (##unchecked-structure-ref
                               _%self155204164769%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method164773164778%_
                              (##unchecked-structure-ref
                               _%self155204164769%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method164773164778%_ _%object164772164777%_)))))
                  (__tmp170183
                   (lambda ()
                     (let* ((_%self153008164781%_ _%h164763%_)
                            (_%key164784%_ _%key164754%_))
                       (declare (not safe))
                       (let ((_%object164787164792%_
                              (##unchecked-structure-ref
                               _%self153008164781%_
                               '1
                               '#f
                               'delete!))
                             (_%method164788164793%_
                              (##unchecked-structure-ref
                               _%self153008164781%_
                               '4
                               '#f
                               'delete!)))
                         (_%method164788164793%_
                          _%object164787164792%_
                          _%key164784%_)))))
                  (__tmp170182
                   (lambda ()
                     (let ((_%self155448164796%_ _%l164765%_))
                       (declare (not safe))
                       (let ((_%object164799164804%_
                              (##unchecked-structure-ref
                               _%self155448164796%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method164800164805%_
                              (##unchecked-structure-ref
                               _%self155448164796%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method164800164805%_ _%object164799164804%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170184 __tmp170183 __tmp170182))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!156082%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each156084%_
      (lambda (_%self164550%_ _%proc164552%_)
        (let* ((_%self164555%_ _%self164550%_) (_%proc164564%_ _%proc164552%_))
          (let ((_%h164573%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164555%_ '1 '#f '#f)))
                (_%l164575%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164555%_ '2 '#f '#f))))
            (let ((__tmp170187
                   (lambda ()
                     (let ((_%self154716164579%_ _%l164575%_))
                       (declare (not safe))
                       (let ((_%object164582164587%_
                              (##unchecked-structure-ref
                               _%self154716164579%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method164583164588%_
                              (##unchecked-structure-ref
                               _%self154716164579%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method164583164588%_ _%object164582164587%_)))))
                  (__tmp170186
                   (lambda ()
                     (let* ((_%self153252164591%_ _%h164573%_)
                            (_%proc164594%_ _%proc164564%_))
                       (declare (not safe))
                       (let ((_%object164597164602%_
                              (##unchecked-structure-ref
                               _%self153252164591%_
                               '1
                               '#f
                               'for-each))
                             (_%method164598164603%_
                              (##unchecked-structure-ref
                               _%self153252164591%_
                               '5
                               '#f
                               'for-each)))
                         (_%method164598164603%_
                          _%object164597164602%_
                          _%proc164594%_)))))
                  (__tmp170185
                   (lambda ()
                     (let ((_%self154960164606%_ _%l164575%_))
                       (declare (not safe))
                       (let ((_%object164609164614%_
                              (##unchecked-structure-ref
                               _%self154960164606%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method164610164615%_
                              (##unchecked-structure-ref
                               _%self154960164606%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method164610164615%_ _%object164609164614%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170187 __tmp170186 __tmp170185))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each156084%_
       '#f))
    (define _%locked-hash-table::HashTable::length156086%_
      (lambda (_%self164365%_)
        (let ((_%self164369%_ _%self164365%_))
          (let ((_%h164379%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164369%_ '1 '#f '#f)))
                (_%l164381%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164369%_ '2 '#f '#f))))
            (let* ((_%$%g164383164385%_
                    (let ((__tmp170190
                           (lambda ()
                             (let ((_%self154716164392%_ _%l164381%_))
                               (declare (not safe))
                               (let ((_%object164395164400%_
                                      (##unchecked-structure-ref
                                       _%self154716164392%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method164396164401%_
                                      (##unchecked-structure-ref
                                       _%self154716164392%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method164396164401%_
                                  _%object164395164400%_)))))
                          (__tmp170189
                           (lambda ()
                             (let ((_%self153496164404%_ _%h164379%_))
                               (declare (not safe))
                               (let ((_%object164407164412%_
                                      (##unchecked-structure-ref
                                       _%self153496164404%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method164408164413%_
                                      (##unchecked-structure-ref
                                       _%self153496164404%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method164408164413%_
                                  _%object164407164412%_)))))
                          (__tmp170188
                           (lambda ()
                             (let ((_%self154960164416%_ _%l164381%_))
                               (declare (not safe))
                               (let ((_%object164419164424%_
                                      (##unchecked-structure-ref
                                       _%self154960164416%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method164420164425%_
                                      (##unchecked-structure-ref
                                       _%self154960164416%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method164420164425%_
                                  _%object164419164424%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp170190 __tmp170189 __tmp170188)))
                   (_%val164388%_ _%$%g164383164385%_))
              (if (fixnum? _%val164388%_)
                  _%val164388%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val164388%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length156086%_
       '#f))
    (define _%locked-hash-table::HashTable::copy156088%_
      (lambda (_%self164184%_)
        (let ((_%self164188%_ _%self164184%_))
          (let ((_%h164198%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164188%_ '1 '#f '#f)))
                (_%l164200%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164188%_ '2 '#f '#f))))
            (let ((_%$obj164239%_
                   (let ((__tmp170193
                          (lambda ()
                            (let ((_%self154716164204%_ _%l164200%_))
                              (declare (not safe))
                              (let ((_%object164207164212%_
                                     (##unchecked-structure-ref
                                      _%self154716164204%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method164208164213%_
                                     (##unchecked-structure-ref
                                      _%self154716164204%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method164208164213%_
                                 _%object164207164212%_)))))
                         (__tmp170192
                          (lambda ()
                            (let ((_%self152764164216%_ _%h164198%_))
                              (declare (not safe))
                              (let ((_%object164219164224%_
                                     (##unchecked-structure-ref
                                      _%self152764164216%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method164220164225%_
                                     (##unchecked-structure-ref
                                      _%self152764164216%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method164220164225%_
                                 _%object164219164224%_)))))
                         (__tmp170191
                          (lambda ()
                            (let ((_%self154960164228%_ _%l164200%_))
                              (declare (not safe))
                              (let ((_%object164231164236%_
                                     (##unchecked-structure-ref
                                      _%self154960164228%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method164232164237%_
                                     (##unchecked-structure-ref
                                      _%self154960164228%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method164232164237%_
                                 _%object164231164236%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp170193 __tmp170192 __tmp170191))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj164239%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj164239%_)))
                       '#t)
                  _%$obj164239%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj164239%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy156088%_
       '#f))
    (define _%locked-hash-table::HashTable::new156090%_
      (lambda (_%self163983%_ _%size-hint163985%_)
        (let ((_%self163988%_ _%self163983%_))
          (if (or (not _%size-hint163985%_) (fixnum? _%size-hint163985%_))
              (let ((_%size-hint164004%_ _%size-hint163985%_))
                (let ((_%h164014%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self163988%_
                          '1
                          '#f
                          '#f)))
                      (_%l164016%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self163988%_
                          '2
                          '#f
                          '#f))))
                  (let ((_%$obj164058%_
                         (let ((__tmp170196
                                (lambda ()
                                  (let ((_%self154716164020%_ _%l164016%_))
                                    (declare (not safe))
                                    (let ((_%object164023164028%_
                                           (##unchecked-structure-ref
                                            _%self154716164020%_
                                            '1
                                            '#f
                                            'read-lock!))
                                          (_%method164024164029%_
                                           (##unchecked-structure-ref
                                            _%self154716164020%_
                                            '2
                                            '#f
                                            'read-lock!)))
                                      (_%method164024164029%_
                                       _%object164023164028%_)))))
                               (__tmp170195
                                (lambda ()
                                  (let* ((_%self153740164032%_ _%h164014%_)
                                         (_%size-hint164035%_
                                          _%size-hint164004%_))
                                    (declare (not safe))
                                    (let ((_%object164038164043%_
                                           (##unchecked-structure-ref
                                            _%self153740164032%_
                                            '1
                                            '#f
                                            'new))
                                          (_%method164039164044%_
                                           (##unchecked-structure-ref
                                            _%self153740164032%_
                                            '7
                                            '#f
                                            'new)))
                                      (_%method164039164044%_
                                       _%object164038164043%_
                                       _%size-hint164035%_)))))
                               (__tmp170194
                                (lambda ()
                                  (let ((_%self154960164047%_ _%l164016%_))
                                    (declare (not safe))
                                    (let ((_%object164050164055%_
                                           (##unchecked-structure-ref
                                            _%self154960164047%_
                                            '1
                                            '#f
                                            'read-unlock!))
                                          (_%method164051164056%_
                                           (##unchecked-structure-ref
                                            _%self154960164047%_
                                            '3
                                            '#f
                                            'read-unlock!)))
                                      (_%method164051164056%_
                                       _%object164050164055%_))))))
                           (declare (not safe))
                           (##dynamic-wind
                            __tmp170196
                            __tmp170195
                            __tmp170194))))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj164058%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj164058%_)))
                             '#t)
                        _%$obj164058%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj164058%_))))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@309.29-309.38"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint163985%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::new
       _%locked-hash-table::HashTable::new156090%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!156092%_
      (lambda (_%self163805%_)
        (let ((_%self163809%_ _%self163805%_))
          (let ((_%h163819%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self163809%_ '1 '#f '#f)))
                (_%l163821%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self163809%_ '2 '#f '#f))))
            (let ((__tmp170199
                   (lambda ()
                     (let ((_%self155204163825%_ _%l163821%_))
                       (declare (not safe))
                       (let ((_%object163828163833%_
                              (##unchecked-structure-ref
                               _%self155204163825%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method163829163834%_
                              (##unchecked-structure-ref
                               _%self155204163825%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method163829163834%_ _%object163828163833%_)))))
                  (__tmp170198
                   (lambda ()
                     (let ((_%self152519163837%_ _%h163819%_))
                       (declare (not safe))
                       (let ((_%object163840163845%_
                              (##unchecked-structure-ref
                               _%self152519163837%_
                               '1
                               '#f
                               'clear!))
                             (_%method163841163846%_
                              (##unchecked-structure-ref
                               _%self152519163837%_
                               '2
                               '#f
                               'clear!)))
                         (_%method163841163846%_ _%object163840163845%_)))))
                  (__tmp170197
                   (lambda ()
                     (let ((_%self155448163849%_ _%l163821%_))
                       (declare (not safe))
                       (let ((_%object163852163857%_
                              (##unchecked-structure-ref
                               _%self155448163849%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method163853163858%_
                              (##unchecked-structure-ref
                               _%self155448163849%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method163853163858%_ _%object163852163857%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170199 __tmp170198 __tmp170197))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!156092%_
       '#f))
    (let* ((_%klass163645%_ (macro-type-mutex))
           (_%id163648%_ 'Locker::read-lock!)
           (_%proc163651%_ mutex-lock!)
           (_%rebind?163654%_ '#f)
           (_%id163659%_ _%id163648%_)
           (_%proc163672%_ _%proc163651%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163645%_
       _%id163659%_
       _%proc163672%_
       _%rebind?163654%_))
    (let* ((_%klass163608%_ (macro-type-mutex))
           (_%id163611%_ 'Locker::read-unlock!)
           (_%proc163614%_ mutex-unlock!)
           (_%rebind?163617%_ '#f)
           (_%id163622%_ _%id163611%_)
           (_%proc163635%_ _%proc163614%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163608%_
       _%id163622%_
       _%proc163635%_
       _%rebind?163617%_))
    (let* ((_%klass163571%_ (macro-type-mutex))
           (_%id163574%_ 'Locker::write-lock!)
           (_%proc163577%_ mutex-lock!)
           (_%rebind?163580%_ '#f)
           (_%id163585%_ _%id163574%_)
           (_%proc163598%_ _%proc163577%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163571%_
       _%id163585%_
       _%proc163598%_
       _%rebind?163580%_))
    (let* ((_%klass163534%_ (macro-type-mutex))
           (_%id163537%_ 'Locker::write-unlock!)
           (_%proc163540%_ mutex-unlock!)
           (_%rebind?163543%_ '#f)
           (_%id163548%_ _%id163537%_)
           (_%proc163561%_ _%proc163540%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163534%_
       _%id163548%_
       _%proc163561%_
       _%rebind?163543%_))
    (define _%checked-hash-table::HashTable::ref156303%_
      (lambda (_%self163475%_ _%key163476%_ _%default163477%_)
        (let* ((_%self163480%_ _%self163475%_)
               (_%key163489%_ _%key163476%_)
               (_%default163497%_ _%default163477%_))
          (declare (not safe))
          (let ((_%h163508%_
                 (##unchecked-structure-ref _%self163480%_ '1 '#f '#f))
                (_%key?163510%_
                 (##unchecked-structure-ref _%self163480%_ '2 '#f '#f)))
            (if (_%key?163510%_ _%key163489%_)
                (let* ((_%self153984163517%_ _%h163508%_)
                       (_%key163520%_ _%key163489%_)
                       (_%default163523%_ _%default163497%_))
                  (declare (not safe))
                  (let ((_%object163526163531%_
                         (##unchecked-structure-ref
                          _%self153984163517%_
                          '1
                          '#f
                          'ref))
                        (_%method163527163532%_
                         (##unchecked-structure-ref
                          _%self153984163517%_
                          '8
                          '#f
                          'ref)))
                    (_%method163527163532%_
                     _%object163526163531%_
                     _%key163520%_
                     _%default163523%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key163489%_ (cons _%default163497%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref156303%_
       '#f))
    (define _%checked-hash-table::HashTable::set!156305%_
      (lambda (_%self163293%_ _%key163294%_ _%value163295%_)
        (let* ((_%self163298%_ _%self163293%_)
               (_%key163307%_ _%key163294%_)
               (_%value163315%_ _%value163295%_))
          (declare (not safe))
          (let ((_%h163326%_
                 (##unchecked-structure-ref _%self163298%_ '1 '#f '#f))
                (_%key?163328%_
                 (##unchecked-structure-ref _%self163298%_ '2 '#f '#f)))
            (if (_%key?163328%_ _%key163307%_)
                (let* ((_%self154228163335%_ _%h163326%_)
                       (_%key163338%_ _%key163307%_)
                       (_%value163341%_ _%value163315%_))
                  (declare (not safe))
                  (let ((_%object163344163349%_
                         (##unchecked-structure-ref
                          _%self154228163335%_
                          '1
                          '#f
                          'set!))
                        (_%method163345163350%_
                         (##unchecked-structure-ref
                          _%self154228163335%_
                          '9
                          '#f
                          'set!)))
                    (_%method163345163350%_
                     _%object163344163349%_
                     _%key163338%_
                     _%value163341%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key163307%_ (cons _%value163315%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!156305%_
       '#f))
    (define _%checked-hash-table::HashTable::update!156307%_
      (lambda (_%self163098%_ _%key163099%_ _%update163100%_ _%default163101%_)
        (let* ((_%self163104%_ _%self163098%_)
               (_%key163113%_ _%key163099%_)
               (_%update163121%_ _%update163100%_)
               (_%default163129%_ _%default163101%_))
          (declare (not safe))
          (let ((_%h163140%_
                 (##unchecked-structure-ref _%self163104%_ '1 '#f '#f))
                (_%key?163142%_
                 (##unchecked-structure-ref _%self163104%_ '2 '#f '#f)))
            (if (_%key?163142%_ _%key163113%_)
                (let* ((_%self154472163150%_ _%h163140%_)
                       (_%key163153%_ _%key163113%_)
                       (_%proc163156%_ _%update163121%_)
                       (_%default163159%_ _%default163129%_))
                  (declare (not safe))
                  (let ((_%object163162163167%_
                         (##unchecked-structure-ref
                          _%self154472163150%_
                          '1
                          '#f
                          'update!))
                        (_%method163163163168%_
                         (##unchecked-structure-ref
                          _%self154472163150%_
                          '10
                          '#f
                          'update!)))
                    (_%method163163163168%_
                     _%object163162163167%_
                     _%key163153%_
                     _%proc163156%_
                     _%default163159%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key163113%_
                         (cons _%update163121%_ (cons _%default163129%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!156307%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!156309%_
      (lambda (_%self162929%_ _%key162930%_)
        (let* ((_%self162933%_ _%self162929%_) (_%key162942%_ _%key162930%_))
          (declare (not safe))
          (let ((_%h162953%_
                 (##unchecked-structure-ref _%self162933%_ '1 '#f '#f))
                (_%key?162955%_
                 (##unchecked-structure-ref _%self162933%_ '2 '#f '#f)))
            (if (_%key?162955%_ _%key162942%_)
                (let* ((_%self153008162961%_ _%h162953%_)
                       (_%key162964%_ _%key162942%_))
                  (declare (not safe))
                  (let ((_%object162967162972%_
                         (##unchecked-structure-ref
                          _%self153008162961%_
                          '1
                          '#f
                          'delete!))
                        (_%method162968162973%_
                         (##unchecked-structure-ref
                          _%self153008162961%_
                          '4
                          '#f
                          'delete!)))
                    (_%method162968162973%_
                     _%object162967162972%_
                     _%key162964%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key162942%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!156309%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each156311%_
      (lambda (_%self162760%_ _%proc162761%_)
        (let* ((_%self162764%_ _%self162760%_) (_%proc162773%_ _%proc162761%_))
          (declare (not safe))
          (let ((_%h162784%_
                 (##unchecked-structure-ref _%self162764%_ '1 '#f '#f))
                (_%key?162786%_
                 (##unchecked-structure-ref _%self162764%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self153252162792%_ _%h162784%_)
                       (_%proc162795%_ _%proc162773%_))
                  (declare (not safe))
                  (let ((_%object162798162803%_
                         (##unchecked-structure-ref
                          _%self153252162792%_
                          '1
                          '#f
                          'for-each))
                        (_%method162799162804%_
                         (##unchecked-structure-ref
                          _%self153252162792%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162799162804%_
                     _%object162798162803%_
                     _%proc162795%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc162773%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each156311%_
       '#f))
    (define _%checked-hash-table::HashTable::length156313%_
      (lambda (_%self162606%_)
        (let ((_%self162609%_ _%self162606%_))
          (declare (not safe))
          (let ((_%h162621%_
                 (##unchecked-structure-ref _%self162609%_ '1 '#f '#f))
                (_%key?162623%_
                 (##unchecked-structure-ref _%self162609%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self153496162626%_ _%h162621%_))
                  (declare (not safe))
                  (let ((_%object162629162634%_
                         (##unchecked-structure-ref
                          _%self153496162626%_
                          '1
                          '#f
                          'length))
                        (_%method162630162635%_
                         (##unchecked-structure-ref
                          _%self153496162626%_
                          '6
                          '#f
                          'length)))
                    (_%method162630162635%_ _%object162629162634%_)))
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
       _%checked-hash-table::HashTable::length156313%_
       '#f))
    (define _%checked-hash-table::HashTable::copy156315%_
      (lambda (_%self162452%_)
        (let ((_%self162455%_ _%self162452%_))
          (declare (not safe))
          (let ((_%h162467%_
                 (##unchecked-structure-ref _%self162455%_ '1 '#f '#f))
                (_%key?162469%_
                 (##unchecked-structure-ref _%self162455%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self152764162472%_ _%h162467%_))
                  (declare (not safe))
                  (let ((_%object162475162480%_
                         (##unchecked-structure-ref
                          _%self152764162472%_
                          '1
                          '#f
                          'copy))
                        (_%method162476162481%_
                         (##unchecked-structure-ref
                          _%self152764162472%_
                          '3
                          '#f
                          'copy)))
                    (_%method162476162481%_ _%object162475162480%_)))
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
       _%checked-hash-table::HashTable::copy156315%_
       '#f))
    (define _%checked-hash-table::HashTable::new156317%_
      (lambda (_%self162278%_ _%size-hint162279%_)
        (let ((_%self162282%_ _%self162278%_))
          (if (or (not _%size-hint162279%_) (fixnum? _%size-hint162279%_))
              (let ((_%size-hint162298%_ _%size-hint162279%_))
                (declare (not safe))
                (let ((_%h162310%_
                       (##unchecked-structure-ref _%self162282%_ '1 '#f '#f))
                      (_%key?162312%_
                       (##unchecked-structure-ref _%self162282%_ '2 '#f '#f)))
                  (if '#!void
                      (let* ((_%self153740162315%_ _%h162310%_)
                             (_%size-hint162318%_ _%size-hint162298%_))
                        (declare (not safe))
                        (let ((_%object162321162326%_
                               (##unchecked-structure-ref
                                _%self153740162315%_
                                '1
                                '#f
                                'new))
                              (_%method162322162327%_
                               (##unchecked-structure-ref
                                _%self153740162315%_
                                '7
                                '#f
                                'new)))
                          (_%method162322162327%_
                           _%object162321162326%_
                           _%size-hint162318%_)))
                      (begin
                        (raise-contract-violation-error
                         '"invalid key"
                         'context:
                         '&HashTable-new
                         'value:
                         (cons _%size-hint162298%_ '()))
                        '#!void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@368.35-368.44"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint162279%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::new
       _%checked-hash-table::HashTable::new156317%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!156319%_
      (lambda (_%self162124%_)
        (let ((_%self162127%_ _%self162124%_))
          (declare (not safe))
          (let ((_%h162139%_
                 (##unchecked-structure-ref _%self162127%_ '1 '#f '#f))
                (_%key?162141%_
                 (##unchecked-structure-ref _%self162127%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self152519162144%_ _%h162139%_))
                  (declare (not safe))
                  (let ((_%object162147162152%_
                         (##unchecked-structure-ref
                          _%self152519162144%_
                          '1
                          '#f
                          'clear!))
                        (_%method162148162153%_
                         (##unchecked-structure-ref
                          _%self152519162144%_
                          '2
                          '#f
                          'clear!)))
                    (_%method162148162153%_ _%object162147162152%_)))
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
       _%checked-hash-table::HashTable::clear!156319%_
       '#f))
    (define make-generic-hash-table__%
      (lambda (_%table161973%_
               _%count161974%_
               _%free161975%_
               _%hash161976%_
               _%test161977%_
               _%seed161978%_
               _%lock161979%_)
        (let ((__tmp170200
               (let () (declare (not safe)) (ensure-lock _%lock161979%_))))
          (declare (not safe))
          (##structure
           hash-table::t
           _%table161973%_
           _%count161974%_
           _%free161975%_
           _%hash161976%_
           _%test161977%_
           _%seed161978%_
           __tmp170200))))
    (define make-generic-hash-table__0
      (lambda (_%table161984%_
               _%count161985%_
               _%free161986%_
               _%hash161987%_
               _%test161988%_
               _%seed161989%_)
        (let ((_%lock161991%_ '#f))
          (make-generic-hash-table__%
           _%table161984%_
           _%count161985%_
           _%free161986%_
           _%hash161987%_
           _%test161988%_
           _%seed161989%_
           _%lock161991%_))))
    (define make-generic-hash-table
      (lambda _g170201_
        (let ((_g170202_ (let () (declare (not safe)) (##length _g170201_))))
          (cond ((let () (declare (not safe)) (##fx= _g170202_ 6))
                 (apply make-generic-hash-table__0 _g170201_))
                ((let () (declare (not safe)) (##fx= _g170202_ 7))
                 (apply make-generic-hash-table__% _g170201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-generic-hash-table
                  _g170201_))))))
    (define make-hash-table__%
      (lambda (_%@@keywords161382%_
               _%$%size-hint161372161383%_
               _%$%seed161373161384%_
               _%$%test161374161385%_
               _%$%hash161375161386%_
               _%$%lock161376161387%_
               _%$%check161377161388%_
               _%$%weak-keys161378161389%_
               _%$%weak-values161379161390%_)
        (let* ((_%size-hint161392%_
                (if (eq? _%$%size-hint161372161383%_ absent-value)
                    '#f
                    _%$%size-hint161372161383%_))
               (_%seed161394%_
                (if (eq? _%$%seed161373161384%_ absent-value)
                    '#f
                    _%$%seed161373161384%_))
               (_%test161396%_
                (if (eq? _%$%test161374161385%_ absent-value)
                    equal?
                    _%$%test161374161385%_))
               (_%hash161398%_
                (if (eq? _%$%hash161375161386%_ absent-value)
                    '#f
                    _%$%hash161375161386%_))
               (_%lock161400%_
                (if (eq? _%$%lock161376161387%_ absent-value)
                    '#f
                    _%$%lock161376161387%_))
               (_%check161402%_
                (if (eq? _%$%check161377161388%_ absent-value)
                    '#f
                    _%$%check161377161388%_))
               (_%weak-keys161404%_
                (if (eq? _%$%weak-keys161378161389%_ absent-value)
                    '#f
                    _%$%weak-keys161378161389%_))
               (_%weak-values161406%_
                (if (eq? _%$%weak-values161379161390%_ absent-value)
                    '#f
                    _%$%weak-values161379161390%_)))
          (letrec ((_%table-seed161409%_
                    (lambda ()
                      (if (fixnum? _%seed161394%_)
                          _%seed161394%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock161553%_
                    (lambda (_%ht161940%_)
                      (let ((_%ht161943%_ _%ht161940%_))
                        (if _%lock161400%_
                            (let ((_%$obj161955%_
                                   (let ((__tmp170203
                                          (let ((_%$obj161952%_
                                                 _%lock161400%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj161952%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj161952%_)))
                                                     '#t)
                                                _%$obj161952%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj161952%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht161943%_
                                      __tmp170203))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj161955%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj161955%_)))
                                       '#t)
                                  _%$obj161955%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj161955%_))))
                            _%ht161943%_))))
                   (_%wrap-lock161554%_
                    (lambda (_%ht161928%_)
                      (let ((_%ht161931%_ _%ht161928%_))
                        (_%__wrap-lock161553%_ _%ht161931%_))))
                   (_%__wrap-checked161676%_
                    (lambda (_%ht161912%_ _%implicit161913%_)
                      (let ((_%ht161916%_ _%ht161912%_))
                        (if _%check161402%_
                            (let ((_%$obj161925%_
                                   (let ((__tmp170204
                                          (if (procedure? _%check161402%_)
                                              _%check161402%_
                                              _%implicit161913%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht161916%_
                                      __tmp170204))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj161925%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj161925%_)))
                                       '#t)
                                  _%$obj161925%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj161925%_))))
                            _%ht161916%_))))
                   (_%wrap-checked161677%_
                    (lambda (_%ht161899%_ _%implicit161900%_)
                      (let ((_%ht161903%_ _%ht161899%_))
                        (_%__wrap-checked161676%_
                         _%ht161903%_
                         _%implicit161900%_))))
                   (_%make161678%_
                    (lambda (_%kons161847%_
                             _%key?161848%_
                             _%hash161849%_
                             _%test161850%_)
                      (let* ((_%size161853%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint161392%_)))
                             (_%table161855%_
                              (let ((__tmp170205 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size161853%_ __tmp170205)))
                             (_%ht161860%_
                              (let ((_%$obj161857%_
                                     (_%kons161847%_
                                      _%table161855%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size161853%_ '2))
                                      _%hash161849%_
                                      _%test161850%_
                                      (_%table-seed161409%_)
                                      '#f)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj161857%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj161857%_)))
                                         '#t)
                                    _%$obj161857%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj161857%_)))))
                             (_%ht161882%_
                              (let* ((_%ht161863%_ _%ht161860%_)
                                     (_%ht161867%_ _%ht161863%_))
                                (_%__wrap-lock161553%_ _%ht161867%_)))
                             (_%implicit161885%_ _%key?161848%_)
                             (_%ht161889%_ _%ht161882%_))
                        (_%__wrap-checked161676%_
                         _%ht161889%_
                         _%implicit161885%_))))
                   (_%make-gc-hash-table161679%_
                    (lambda ()
                      (let* ((_%ht161812%_
                              (let ((_%$obj161809%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint161392%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj161809%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj161809%_)))
                                         '#t)
                                    _%$obj161809%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj161809%_)))))
                             (_%ht161830%_
                              (let* ((_%ht161814%_ _%ht161812%_)
                                     (_%ht161818%_ _%ht161814%_))
                                (_%__wrap-lock161553%_ _%ht161818%_)))
                             (_%implicit161833%_ true)
                             (_%ht161837%_ _%ht161830%_))
                        (_%__wrap-checked161676%_
                         _%ht161837%_
                         _%implicit161833%_))))
                   (_%make-gambit-table161680%_
                    (lambda ()
                      (let* ((_%size161749%_
                              (let ((_%$e161746%_ _%size-hint161392%_))
                                (if _%$e161746%_
                                    _%$e161746%_
                                    (macro-absent-obj))))
                             (_%test161754%_
                              (let ((_%$e161751%_ _%test161396%_))
                                (if _%$e161751%_ _%$e161751%_ equal?)))
                             (_%hash161762%_
                              (let ((_%$e161756%_ _%hash161398%_))
                                (if _%$e161756%_
                                    _%$e161756%_
                                    (if (eq? _%test161754%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test161754%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht161767%_
                              (let ((_%$obj161764%_
                                     (make-table
                                      'size:
                                      _%size161749%_
                                      'test:
                                      _%test161754%_
                                      'hash:
                                      _%hash161762%_
                                      'weak-keys:
                                      _%weak-keys161404%_
                                      'weak-values:
                                      _%weak-values161406%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj161764%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj161764%_)))
                                         '#t)
                                    _%$obj161764%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj161764%_)))))
                             (_%ht161790%_
                              (let* ((_%ht161770%_ _%ht161767%_)
                                     (_%ht161774%_ _%ht161770%_))
                                (_%__wrap-lock161553%_ _%ht161774%_)))
                             (_%implicit161793%_ true)
                             (_%ht161797%_ _%ht161790%_))
                        (_%__wrap-checked161676%_
                         _%ht161797%_
                         _%implicit161793%_)))))
            (if (or _%weak-keys161404%_ _%weak-values161406%_)
                (_%make-gambit-table161680%_)
                (if (and (or (eq? _%test161396%_ eq?)
                             (eq? _%test161396%_ ##eq?))
                         (or (not _%hash161398%_)
                             (eq? _%hash161398%_ eq?-hash)
                             (eq? _%hash161398%_ eq-hash))
                         (not _%seed161394%_))
                    (_%make-gc-hash-table161679%_)
                    (if (and (or (eq? _%test161396%_ eq?)
                                 (eq? _%test161396%_ ##eq?))
                             (or (not _%hash161398%_)
                                 (eq? _%hash161398%_ eq?-hash)
                                 (eq? _%hash161398%_ eq-hash)))
                        (_%make161678%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test161396%_ eqv?)
                                     (eq? _%test161396%_ ##eqv?))
                                 (or (not _%hash161398%_)
                                     (eq? _%hash161398%_ eqv?-hash)
                                     (eq? _%hash161398%_ eqv-hash)))
                            (_%make161678%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test161396%_ eq?)
                                         (eq? _%test161396%_ ##eq?))
                                     (or (eq? _%hash161398%_ symbolic-hash)
                                         (eq? _%hash161398%_ ##symbol-hash)))
                                (_%make161678%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test161396%_ eq?)
                                             (eq? _%test161396%_ ##eq?))
                                         (eq? _%hash161398%_ immediate-hash))
                                    (_%make161678%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test161396%_ equal?)
                                                 (eq? _%test161396%_ ##equal?)
                                                 (eq? _%test161396%_ string=?)
                                                 (eq? _%test161396%_
                                                      ##string=?))
                                             (or (eq? _%hash161398%_
                                                      string-hash)
                                                 (eq? _%hash161398%_
                                                      ##string=?-hash)))
                                        (_%make161678%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test161396%_ equal?)
                                                 (not _%hash161398%_))
                                            (_%make161678%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test161396%_)
                                                (if (procedure? _%hash161398%_)
                                                    (_%make161678%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash161398%_
                                                     _%test161396%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash161398%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test161396%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords161962%_ . _%args161963%_)
        (apply make-hash-table__%
               _%@@keywords161962%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161962%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161962%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161962%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161962%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161962%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161962%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161962%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161962%_
                  'weak-values:
                  absent-value))
               _%args161963%_)))
    (define make-hash-table
      (lambda _%$%args161380161969%_
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
               _%$%args161380161969%_)))
    (define make-hash-table-eq
      (lambda _%args161369%_
        (apply make-hash-table 'test: eq? _%args161369%_)))
    (define make-hash-table-eqv
      (lambda _%args161367%_
        (apply make-hash-table 'test: eqv? _%args161367%_)))
    (define make-hash-table-symbolic
      (lambda _%args161365%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args161365%_)))
    (define make-hash-table-string
      (lambda _%args161363%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args161363%_)))
    (define make-hash-table-immediate
      (lambda _%args161361%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args161361%_)))
    (define list->hash-table
      (lambda (_%lst161358%_ . _%args161359%_)
        (list->hash-table!
         _%lst161358%_
         (apply make-hash-table
                'size:
                (length _%lst161358%_)
                _%args161359%_))))
    (define list->hash-table-eq
      (lambda (_%lst161355%_ . _%args161356%_)
        (list->hash-table!
         _%lst161355%_
         (apply make-hash-table-eq
                'size:
                (length _%lst161355%_)
                _%args161356%_))))
    (define list->hash-table-eqv
      (lambda (_%lst161352%_ . _%args161353%_)
        (list->hash-table!
         _%lst161352%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst161352%_)
                _%args161353%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst161349%_ . _%args161350%_)
        (list->hash-table!
         _%lst161349%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst161349%_)
                _%args161350%_))))
    (define list->hash-table-string
      (lambda (_%lst161346%_ . _%args161347%_)
        (list->hash-table!
         _%lst161346%_
         (apply make-hash-table-string
                'size:
                (length _%lst161346%_)
                _%args161347%_))))
    (define list->hash-table-immediate
      (lambda (_%lst161343%_ . _%args161344%_)
        (list->hash-table!
         _%lst161343%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst161343%_)
                _%args161344%_))))
    (define list->hash-table!
      (lambda (_%lst161294%_ _%h161295%_)
        (for-each
         (lambda (_%el161297%_)
           (let* ((_%$%el161298161305%_ _%el161297%_)
                  (_%$%E161300161308%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%$%el161298161305%_
                              '([k . v])))
                     '#!void))
                  (_%$%K161301161331%_
                   (lambda (_%v161311%_ _%k161312%_)
                     (let* ((_%self154228161314%_ _%h161295%_)
                            (_%key161317%_ _%k161312%_)
                            (_%value161320%_ _%v161311%_))
                       (declare (not safe))
                       (let ((_%object161323161328%_
                              (##unchecked-structure-ref
                               _%self154228161314%_
                               '1
                               '#f
                               'set!))
                             (_%method161324161329%_
                              (##unchecked-structure-ref
                               _%self154228161314%_
                               '9
                               '#f
                               'set!)))
                         (_%method161324161329%_
                          _%object161323161328%_
                          _%key161317%_
                          _%value161320%_))))))
             (if (pair? _%$%el161298161305%_)
                 (let ((_%$%hd161302161334%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el161298161305%_)))
                       (_%$%tl161303161336%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el161298161305%_))))
                   (let* ((_%k161339%_ _%$%hd161302161334%_)
                          (_%v161341%_ _%$%tl161303161336%_))
                     (_%$%K161301161331%_ _%v161341%_ _%k161339%_)))
                 (_%$%E161300161308%_))))
         _%lst161294%_)
        _%h161295%_))
    (define plist->hash-table
      (lambda (_%lst161291%_ . _%args161292%_)
        (plist->hash-table!
         _%lst161291%_
         (apply make-hash-table
                'size:
                (length _%lst161291%_)
                _%args161292%_))))
    (define plist->hash-table-eq
      (lambda (_%lst161288%_ . _%args161289%_)
        (plist->hash-table!
         _%lst161288%_
         (apply make-hash-table-eq
                'size:
                (length _%lst161288%_)
                _%args161289%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst161285%_ . _%args161286%_)
        (plist->hash-table!
         _%lst161285%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst161285%_)
                _%args161286%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst161282%_ . _%args161283%_)
        (plist->hash-table!
         _%lst161282%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst161282%_)
                _%args161283%_))))
    (define plist->hash-table-string
      (lambda (_%lst161279%_ . _%args161280%_)
        (plist->hash-table!
         _%lst161279%_
         (apply make-hash-table-string
                'size:
                (length _%lst161279%_)
                _%args161280%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst161276%_ . _%args161277%_)
        (plist->hash-table!
         _%lst161276%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst161276%_)
                _%args161277%_))))
    (define plist->hash-table!
      (lambda (_%lst161199%_ _%h161200%_)
        (let _%loop161202%_ ((_%rest161204%_ _%lst161199%_))
          (let* ((_%$%rest161205161217%_ _%rest161204%_)
                 (_%$%else161208161225%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst161199%_)))))
            (let ((_%$%K161211161257%_
                   (lambda (_%rest161236%_ _%val161237%_ _%key161238%_)
                     (let* ((_%self154228161240%_ _%h161200%_)
                            (_%key161243%_ _%key161238%_)
                            (_%value161246%_ _%val161237%_))
                       (declare (not safe))
                       (let ((_%object161249161254%_
                              (##unchecked-structure-ref
                               _%self154228161240%_
                               '1
                               '#f
                               'set!))
                             (_%method161250161255%_
                              (##unchecked-structure-ref
                               _%self154228161240%_
                               '9
                               '#f
                               'set!)))
                         (_%method161250161255%_
                          _%object161249161254%_
                          _%key161243%_
                          _%value161246%_)))
                     (_%loop161202%_ _%rest161236%_)))
                  (_%$%K161210161230%_ (lambda () _%h161200%_)))
              (let ((_%$%try-match161207161233%_
                     (lambda ()
                       (if (null? _%$%rest161205161217%_)
                           (_%$%K161210161230%_)
                           (_%$%else161208161225%_)))))
                (if (pair? _%$%rest161205161217%_)
                    (let ((_%$%tl161213161262%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest161205161217%_)))
                          (_%$%hd161212161260%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest161205161217%_))))
                      (if (pair? _%$%tl161213161262%_)
                          (let ((_%$%tl161215161269%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl161213161262%_)))
                                (_%$%hd161214161267%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl161213161262%_))))
                            (let ((_%key161265%_ _%$%hd161212161260%_)
                                  (_%val161272%_ _%$%hd161214161267%_)
                                  (_%rest161274%_ _%$%tl161215161269%_))
                              (_%$%K161211161257%_
                               _%rest161274%_
                               _%val161272%_
                               _%key161265%_)))
                          (_%$%else161208161225%_)))
                    (_%$%try-match161207161233%_))))))))
    (define __hash-length
      (lambda (_%h161148%_)
        (let* ((_%h161151%_ _%h161148%_)
               (_%self153497161160%_ _%h161151%_)
               (_%self153497161167%_
                (let ((_%$obj161164%_ _%self153497161160%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161164%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161164%_)))
                           '#t)
                      _%$obj161164%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161164%_)))))
               (_%self153497161169%_ _%self153497161167%_))
          (if __DEBUG
              (let ((_%val161189%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object161181161186%_
                              (##unchecked-structure-ref
                               _%self153497161169%_
                               '1
                               '#f
                               'length))
                             (_%method161182161187%_
                              (##unchecked-structure-ref
                               _%self153497161169%_
                               '6
                               '#f
                               'length)))
                         (_%method161182161187%_ _%object161181161186%_)))))
                (if (fixnum? _%val161189%_)
                    _%val161189%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val161189%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object161191161196%_
                       (##unchecked-structure-ref
                        _%self153497161169%_
                        '1
                        '#f
                        'length))
                      (_%method161192161197%_
                       (##unchecked-structure-ref
                        _%self153497161169%_
                        '6
                        '#f
                        'length)))
                  (_%method161192161197%_ _%object161191161196%_)))))))
    (define hash-length
      (lambda (_%h161130%_)
        (let* ((_%h161136%_
                (let ((_%$obj161133%_ _%h161130%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161133%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161133%_)))
                           '#t)
                      _%$obj161133%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161133%_)))))
               (_%h161138%_ _%h161136%_))
          (__hash-length _%h161138%_))))
    (define __hash-ref__%
      (lambda (_%h161058%_ _%key161059%_ _%default161060%_)
        (let* ((_%h161063%_ _%h161058%_)
               (_%result161116%_
                (let* ((_%self153985161072%_ _%h161063%_)
                       (_%key161075%_ _%key161059%_)
                       (_%default161078%_ _%default161060%_)
                       (_%self153985161085%_
                        (let ((_%$obj161082%_ _%self153985161072%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj161082%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj161082%_)))
                                   '#t)
                              _%$obj161082%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj161082%_)))))
                       (_%self153985161087%_ _%self153985161085%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object161101161106%_
                               (##unchecked-structure-ref
                                _%self153985161087%_
                                '1
                                '#f
                                'ref))
                              (_%method161102161107%_
                               (##unchecked-structure-ref
                                _%self153985161087%_
                                '8
                                '#f
                                'ref)))
                          (_%method161102161107%_
                           _%object161101161106%_
                           _%key161075%_
                           _%default161078%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object161108161113%_
                               (##unchecked-structure-ref
                                _%self153985161087%_
                                '1
                                '#f
                                'ref))
                              (_%method161109161114%_
                               (##unchecked-structure-ref
                                _%self153985161087%_
                                '8
                                '#f
                                'ref)))
                          (_%method161109161114%_
                           _%object161108161113%_
                           _%key161075%_
                           _%default161078%_)))))))
          (if (eq? _%result161116%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h161063%_
               'key:
               _%key161059%_)
              _%result161116%_))))
    (define __hash-ref__0
      (lambda (_%h161121%_ _%key161122%_)
        (let ((_%default161124%_ absent-obj))
          (__hash-ref__% _%h161121%_ _%key161122%_ _%default161124%_))))
    (define __hash-ref
      (lambda _g170206_
        (let ((_g170207_ (let () (declare (not safe)) (##length _g170206_))))
          (cond ((let () (declare (not safe)) (##fx= _g170207_ 2))
                 (apply __hash-ref__0 _g170206_))
                ((let () (declare (not safe)) (##fx= _g170207_ 3))
                 (apply __hash-ref__% _g170206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g170206_))))))
    (define hash-ref__%
      (lambda (_%h161025%_ _%key161026%_ _%default161027%_)
        (let* ((_%h161033%_
                (let ((_%$obj161030%_ _%h161025%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161030%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161030%_)))
                           '#t)
                      _%$obj161030%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161030%_)))))
               (_%h161035%_ _%h161033%_))
          (__hash-ref__% _%h161035%_ _%key161026%_ _%default161027%_))))
    (define hash-ref__0
      (lambda (_%h161048%_ _%key161049%_)
        (let ((_%default161051%_ absent-obj))
          (hash-ref__% _%h161048%_ _%key161049%_ _%default161051%_))))
    (define hash-ref
      (lambda _g170208_
        (let ((_g170209_ (let () (declare (not safe)) (##length _g170208_))))
          (cond ((let () (declare (not safe)) (##fx= _g170209_ 2))
                 (apply hash-ref__0 _g170208_))
                ((let () (declare (not safe)) (##fx= _g170209_ 3))
                 (apply hash-ref__% _g170208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g170208_))))))
    (define __hash-get
      (lambda (_%h160967%_ _%key160968%_)
        (let* ((_%h160971%_ _%h160967%_)
               (_%self153985160980%_ _%h160971%_)
               (_%key160983%_ _%key160968%_)
               (_%default160986%_ '#f)
               (_%self153985160993%_
                (let ((_%$obj160990%_ _%self153985160980%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160990%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160990%_)))
                           '#t)
                      _%$obj160990%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160990%_)))))
               (_%self153985160995%_ _%self153985160993%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161009161014%_
                       (##unchecked-structure-ref
                        _%self153985160995%_
                        '1
                        '#f
                        'ref))
                      (_%method161010161015%_
                       (##unchecked-structure-ref
                        _%self153985160995%_
                        '8
                        '#f
                        'ref)))
                  (_%method161010161015%_
                   _%object161009161014%_
                   _%key160983%_
                   _%default160986%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161016161021%_
                       (##unchecked-structure-ref
                        _%self153985160995%_
                        '1
                        '#f
                        'ref))
                      (_%method161017161022%_
                       (##unchecked-structure-ref
                        _%self153985160995%_
                        '8
                        '#f
                        'ref)))
                  (_%method161017161022%_
                   _%object161016161021%_
                   _%key160983%_
                   _%default160986%_)))))))
    (define hash-get
      (lambda (_%h160948%_ _%key160949%_)
        (let* ((_%h160955%_
                (let ((_%$obj160952%_ _%h160948%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160952%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160952%_)))
                           '#t)
                      _%$obj160952%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160952%_)))))
               (_%h160957%_ _%h160955%_))
          (__hash-get _%h160957%_ _%key160949%_))))
    (define __hash-put!
      (lambda (_%h160890%_ _%key160891%_ _%value160892%_)
        (let* ((_%h160895%_ _%h160890%_)
               (_%self154229160904%_ _%h160895%_)
               (_%key160907%_ _%key160891%_)
               (_%value160910%_ _%value160892%_)
               (_%self154229160917%_
                (let ((_%$obj160914%_ _%self154229160904%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160914%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160914%_)))
                           '#t)
                      _%$obj160914%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160914%_)))))
               (_%self154229160919%_ _%self154229160917%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160933160938%_
                       (##unchecked-structure-ref
                        _%self154229160919%_
                        '1
                        '#f
                        'set!))
                      (_%method160934160939%_
                       (##unchecked-structure-ref
                        _%self154229160919%_
                        '9
                        '#f
                        'set!)))
                  (_%method160934160939%_
                   _%object160933160938%_
                   _%key160907%_
                   _%value160910%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160940160945%_
                       (##unchecked-structure-ref
                        _%self154229160919%_
                        '1
                        '#f
                        'set!))
                      (_%method160941160946%_
                       (##unchecked-structure-ref
                        _%self154229160919%_
                        '9
                        '#f
                        'set!)))
                  (_%method160941160946%_
                   _%object160940160945%_
                   _%key160907%_
                   _%value160910%_)))))))
    (define hash-put!
      (lambda (_%h160870%_ _%key160871%_ _%value160872%_)
        (let* ((_%h160878%_
                (let ((_%$obj160875%_ _%h160870%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160875%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160875%_)))
                           '#t)
                      _%$obj160875%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160875%_)))))
               (_%h160880%_ _%h160878%_))
          (__hash-put! _%h160880%_ _%key160871%_ _%value160872%_))))
    (define __hash-update!__%
      (lambda (_%h160783%_ _%key160784%_ _%update160785%_ _%default160786%_)
        (let* ((_%h160789%_ _%h160783%_)
               (_%self154473160798%_ _%h160789%_)
               (_%key160801%_ _%key160784%_)
               (_%proc160804%_ _%update160785%_)
               (_%default160807%_ _%default160786%_)
               (_%self154473160814%_
                (let ((_%$obj160811%_ _%self154473160798%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160811%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160811%_)))
                           '#t)
                      _%$obj160811%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160811%_)))))
               (_%self154473160816%_ _%self154473160814%_))
          (if (procedure? _%proc160804%_)
              (let ((_%proc160832%_ _%proc160804%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object160841160846%_
                             (##unchecked-structure-ref
                              _%self154473160816%_
                              '1
                              '#f
                              'update!))
                            (_%method160842160847%_
                             (##unchecked-structure-ref
                              _%self154473160816%_
                              '10
                              '#f
                              'update!)))
                        (_%method160842160847%_
                         _%object160841160846%_
                         _%key160801%_
                         _%proc160832%_
                         _%default160807%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object160848160853%_
                             (##unchecked-structure-ref
                              _%self154473160816%_
                              '1
                              '#f
                              'update!))
                            (_%method160849160854%_
                             (##unchecked-structure-ref
                              _%self154473160816%_
                              '10
                              '#f
                              'update!)))
                        (_%method160849160854%_
                         _%object160848160853%_
                         _%key160801%_
                         _%proc160832%_
                         _%default160807%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc160804%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h160859%_ _%key160860%_ _%update160861%_)
        (let ((_%default160863%_ '#!void))
          (__hash-update!__%
           _%h160859%_
           _%key160860%_
           _%update160861%_
           _%default160863%_))))
    (define __hash-update!
      (lambda _g170210_
        (let ((_g170211_ (let () (declare (not safe)) (##length _g170210_))))
          (cond ((let () (declare (not safe)) (##fx= _g170211_ 3))
                 (apply __hash-update!__0 _g170210_))
                ((let () (declare (not safe)) (##fx= _g170211_ 4))
                 (apply __hash-update!__% _g170210_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g170210_))))))
    (define hash-update!__%
      (lambda (_%h160747%_ _%key160748%_ _%update160749%_ _%default160750%_)
        (let* ((_%h160756%_
                (let ((_%$obj160753%_ _%h160747%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160753%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160753%_)))
                           '#t)
                      _%$obj160753%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160753%_)))))
               (_%h160758%_ _%h160756%_))
          (__hash-update!__%
           _%h160758%_
           _%key160748%_
           _%update160749%_
           _%default160750%_))))
    (define hash-update!__0
      (lambda (_%h160771%_ _%key160772%_ _%update160773%_)
        (let ((_%default160775%_ '#!void))
          (hash-update!__%
           _%h160771%_
           _%key160772%_
           _%update160773%_
           _%default160775%_))))
    (define hash-update!
      (lambda _g170212_
        (let ((_g170213_ (let () (declare (not safe)) (##length _g170212_))))
          (cond ((let () (declare (not safe)) (##fx= _g170213_ 3))
                 (apply hash-update!__0 _g170212_))
                ((let () (declare (not safe)) (##fx= _g170213_ 4))
                 (apply hash-update!__% _g170212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g170212_))))))
    (define __hash-remove!
      (lambda (_%h160693%_ _%key160694%_)
        (let* ((_%h160697%_ _%h160693%_)
               (_%self153009160706%_ _%h160697%_)
               (_%key160709%_ _%key160694%_)
               (_%self153009160716%_
                (let ((_%$obj160713%_ _%self153009160706%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160713%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160713%_)))
                           '#t)
                      _%$obj160713%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160713%_)))))
               (_%self153009160718%_ _%self153009160716%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160731160736%_
                       (##unchecked-structure-ref
                        _%self153009160718%_
                        '1
                        '#f
                        'delete!))
                      (_%method160732160737%_
                       (##unchecked-structure-ref
                        _%self153009160718%_
                        '4
                        '#f
                        'delete!)))
                  (_%method160732160737%_
                   _%object160731160736%_
                   _%key160709%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160738160743%_
                       (##unchecked-structure-ref
                        _%self153009160718%_
                        '1
                        '#f
                        'delete!))
                      (_%method160739160744%_
                       (##unchecked-structure-ref
                        _%self153009160718%_
                        '4
                        '#f
                        'delete!)))
                  (_%method160739160744%_
                   _%object160738160743%_
                   _%key160709%_)))))))
    (define hash-remove!
      (lambda (_%h160674%_ _%key160675%_)
        (let* ((_%h160681%_
                (let ((_%$obj160678%_ _%h160674%_))
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
               (_%h160683%_ _%h160681%_))
          (__hash-remove! _%h160683%_ _%key160675%_))))
    (define __hash-key?
      (lambda (_%h160617%_ _%k160618%_)
        (let ((_%h160621%_ _%h160617%_))
          (not (eq? (let* ((_%self153985160630%_ _%h160621%_)
                           (_%key160633%_ _%k160618%_)
                           (_%default160636%_ absent-value)
                           (_%self153985160643%_
                            (let ((_%$obj160640%_ _%self153985160630%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj160640%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj160640%_)))
                                       '#t)
                                  _%$obj160640%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj160640%_)))))
                           (_%self153985160645%_ _%self153985160643%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object160659160664%_
                                   (##unchecked-structure-ref
                                    _%self153985160645%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method160660160665%_
                                   (##unchecked-structure-ref
                                    _%self153985160645%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method160660160665%_
                               _%object160659160664%_
                               _%key160633%_
                               _%default160636%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object160666160671%_
                                   (##unchecked-structure-ref
                                    _%self153985160645%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method160667160672%_
                                   (##unchecked-structure-ref
                                    _%self153985160645%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method160667160672%_
                               _%object160666160671%_
                               _%key160633%_
                               _%default160636%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h160598%_ _%k160599%_)
        (let* ((_%h160605%_
                (let ((_%$obj160602%_ _%h160598%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160602%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160602%_)))
                           '#t)
                      _%$obj160602%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160602%_)))))
               (_%h160607%_ _%h160605%_))
          (__hash-key? _%h160607%_ _%k160599%_))))
    (define __hash->list
      (lambda (_%h160530%_)
        (let* ((_%h160533%_ _%h160530%_) (_%lst160542%_ '()))
          (let* ((_%self153253160544%_ _%h160533%_)
                 (_%proc160550%_
                  (lambda (_%k160547%_ _%v160548%_)
                    (set! _%lst160542%_
                          (cons (cons _%k160547%_ _%v160548%_)
                                _%lst160542%_))))
                 (_%self153253160557%_
                  (let ((_%$obj160554%_ _%self153253160544%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj160554%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj160554%_)))
                             '#t)
                        _%$obj160554%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj160554%_)))))
                 (_%self153253160559%_ _%self153253160557%_)
                 (_%proc160574%_ _%proc160550%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160583160588%_
                         (##unchecked-structure-ref
                          _%self153253160559%_
                          '1
                          '#f
                          'for-each))
                        (_%method160584160589%_
                         (##unchecked-structure-ref
                          _%self153253160559%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160584160589%_
                     _%object160583160588%_
                     _%proc160574%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160590160595%_
                         (##unchecked-structure-ref
                          _%self153253160559%_
                          '1
                          '#f
                          'for-each))
                        (_%method160591160596%_
                         (##unchecked-structure-ref
                          _%self153253160559%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160591160596%_
                     _%object160590160595%_
                     _%proc160574%_)))))
          _%lst160542%_)))
    (define hash->list
      (lambda (_%h160512%_)
        (let* ((_%h160518%_
                (let ((_%$obj160515%_ _%h160512%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160515%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160515%_)))
                           '#t)
                      _%$obj160515%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160515%_)))))
               (_%h160520%_ _%h160518%_))
          (__hash->list _%h160520%_))))
    (define __hash->plist
      (lambda (_%h160444%_)
        (let* ((_%h160447%_ _%h160444%_) (_%lst160456%_ '()))
          (let* ((_%self153253160458%_ _%h160447%_)
                 (_%proc160464%_
                  (lambda (_%k160461%_ _%v160462%_)
                    (set! _%lst160456%_
                          (cons _%k160461%_
                                (cons _%v160462%_ _%lst160456%_)))))
                 (_%self153253160471%_
                  (let ((_%$obj160468%_ _%self153253160458%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj160468%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj160468%_)))
                             '#t)
                        _%$obj160468%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj160468%_)))))
                 (_%self153253160473%_ _%self153253160471%_)
                 (_%proc160488%_ _%proc160464%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160497160502%_
                         (##unchecked-structure-ref
                          _%self153253160473%_
                          '1
                          '#f
                          'for-each))
                        (_%method160498160503%_
                         (##unchecked-structure-ref
                          _%self153253160473%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160498160503%_
                     _%object160497160502%_
                     _%proc160488%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160504160509%_
                         (##unchecked-structure-ref
                          _%self153253160473%_
                          '1
                          '#f
                          'for-each))
                        (_%method160505160510%_
                         (##unchecked-structure-ref
                          _%self153253160473%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160505160510%_
                     _%object160504160509%_
                     _%proc160488%_)))))
          _%lst160456%_)))
    (define hash->plist
      (lambda (_%h160426%_)
        (let* ((_%h160432%_
                (let ((_%$obj160429%_ _%h160426%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160429%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160429%_)))
                           '#t)
                      _%$obj160429%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160429%_)))))
               (_%h160434%_ _%h160432%_))
          (__hash->plist _%h160434%_))))
    (define __hash-for-each
      (lambda (_%proc160355%_ _%h160356%_)
        (let* ((_%proc160359%_ _%proc160355%_)
               (_%h160367%_ _%h160356%_)
               (_%self153253160376%_ _%h160367%_)
               (_%proc160379%_ _%proc160359%_)
               (_%self153253160386%_
                (let ((_%$obj160383%_ _%self153253160376%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160383%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160383%_)))
                           '#t)
                      _%$obj160383%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160383%_)))))
               (_%self153253160388%_ _%self153253160386%_)
               (_%proc160402%_ _%proc160379%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160411160416%_
                       (##unchecked-structure-ref
                        _%self153253160388%_
                        '1
                        '#f
                        'for-each))
                      (_%method160412160417%_
                       (##unchecked-structure-ref
                        _%self153253160388%_
                        '5
                        '#f
                        'for-each)))
                  (_%method160412160417%_
                   _%object160411160416%_
                   _%proc160402%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160418160423%_
                       (##unchecked-structure-ref
                        _%self153253160388%_
                        '1
                        '#f
                        'for-each))
                      (_%method160419160424%_
                       (##unchecked-structure-ref
                        _%self153253160388%_
                        '5
                        '#f
                        'for-each)))
                  (_%method160419160424%_
                   _%object160418160423%_
                   _%proc160402%_)))))))
    (define hash-for-each
      (lambda (_%proc160326%_ _%h160327%_)
        (if (procedure? _%proc160326%_)
            (let* ((_%proc160331%_ _%proc160326%_)
                   (_%h160343%_
                    (let ((_%$obj160340%_ _%h160327%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj160340%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj160340%_)))
                               '#t)
                          _%$obj160340%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj160340%_)))))
                   (_%h160345%_ _%h160343%_))
              (__hash-for-each _%proc160331%_ _%h160345%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@594.22-594.26"
               'contract:
               'procedure?
               'value:
               _%proc160326%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc160249%_ _%h160250%_)
        (let* ((_%proc160253%_ _%proc160249%_)
               (_%h160261%_ _%h160250%_)
               (_%result160270%_ '()))
          (let* ((_%self153253160272%_ _%h160261%_)
                 (_%proc160278%_
                  (lambda (_%k160275%_ _%v160276%_)
                    (set! _%result160270%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc160253%_ _%k160275%_ _%v160276%_))
                                _%result160270%_))))
                 (_%self153253160285%_
                  (let ((_%$obj160282%_ _%self153253160272%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj160282%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj160282%_)))
                             '#t)
                        _%$obj160282%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj160282%_)))))
                 (_%self153253160287%_ _%self153253160285%_)
                 (_%proc160302%_ _%proc160278%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160311160316%_
                         (##unchecked-structure-ref
                          _%self153253160287%_
                          '1
                          '#f
                          'for-each))
                        (_%method160312160317%_
                         (##unchecked-structure-ref
                          _%self153253160287%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160312160317%_
                     _%object160311160316%_
                     _%proc160302%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160318160323%_
                         (##unchecked-structure-ref
                          _%self153253160287%_
                          '1
                          '#f
                          'for-each))
                        (_%method160319160324%_
                         (##unchecked-structure-ref
                          _%self153253160287%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160319160324%_
                     _%object160318160323%_
                     _%proc160302%_)))))
          _%result160270%_)))
    (define hash-map
      (lambda (_%proc160220%_ _%h160221%_)
        (if (procedure? _%proc160220%_)
            (let* ((_%proc160225%_ _%proc160220%_)
                   (_%h160237%_
                    (let ((_%$obj160234%_ _%h160221%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj160234%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj160234%_)))
                               '#t)
                          _%$obj160234%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj160234%_)))))
                   (_%h160239%_ _%h160237%_))
              (__hash-map _%proc160225%_ _%h160239%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@597.17-597.21"
               'contract:
               'procedure?
               'value:
               _%proc160220%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc160142%_ _%iv160143%_ _%h160144%_)
        (let* ((_%proc160147%_ _%proc160142%_)
               (_%h160155%_ _%h160144%_)
               (_%result160164%_ _%iv160143%_))
          (let* ((_%self153253160166%_ _%h160155%_)
                 (_%proc160172%_
                  (lambda (_%k160169%_ _%v160170%_)
                    (set! _%result160164%_
                          (let ()
                            (declare (not safe))
                            (_%proc160147%_
                             _%k160169%_
                             _%v160170%_
                             _%result160164%_)))))
                 (_%self153253160179%_
                  (let ((_%$obj160176%_ _%self153253160166%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj160176%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj160176%_)))
                             '#t)
                        _%$obj160176%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj160176%_)))))
                 (_%self153253160181%_ _%self153253160179%_)
                 (_%proc160196%_ _%proc160172%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160205160210%_
                         (##unchecked-structure-ref
                          _%self153253160181%_
                          '1
                          '#f
                          'for-each))
                        (_%method160206160211%_
                         (##unchecked-structure-ref
                          _%self153253160181%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160206160211%_
                     _%object160205160210%_
                     _%proc160196%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160212160217%_
                         (##unchecked-structure-ref
                          _%self153253160181%_
                          '1
                          '#f
                          'for-each))
                        (_%method160213160218%_
                         (##unchecked-structure-ref
                          _%self153253160181%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160213160218%_
                     _%object160212160217%_
                     _%proc160196%_)))))
          _%result160164%_)))
    (define hash-fold
      (lambda (_%proc160112%_ _%iv160113%_ _%h160114%_)
        (if (procedure? _%proc160112%_)
            (let* ((_%proc160118%_ _%proc160112%_)
                   (_%h160130%_
                    (let ((_%$obj160127%_ _%h160114%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj160127%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj160127%_)))
                               '#t)
                          _%$obj160127%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj160127%_)))))
                   (_%h160132%_ _%h160130%_))
              (__hash-fold _%proc160118%_ _%iv160113%_ _%h160132%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc160112%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc160019%_ _%h160020%_ _%default-value160021%_)
        (let* ((_%proc160024%_ _%proc160019%_)
               (_%h160032%_ _%h160020%_)
               (__tmp170214
                (lambda (_%return160041%_)
                  (let* ((_%self153253160043%_ _%h160032%_)
                         (_%proc160052%_
                          (lambda (_%k160046%_ _%v160047%_)
                            (let ((_%$e160049%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc160024%_
                                      _%k160046%_
                                      _%v160047%_))))
                              (if _%$e160049%_
                                  (_%return160041%_ _%$e160049%_)
                                  '#!void))))
                         (_%self153253160059%_
                          (let ((_%$obj160056%_ _%self153253160043%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj160056%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj160056%_)))
                                     '#t)
                                _%$obj160056%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj160056%_)))))
                         (_%self153253160061%_ _%self153253160059%_)
                         (_%proc160076%_ _%proc160052%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object160085160090%_
                                 (##unchecked-structure-ref
                                  _%self153253160061%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method160086160091%_
                                 (##unchecked-structure-ref
                                  _%self153253160061%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method160086160091%_
                             _%object160085160090%_
                             _%proc160076%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object160092160097%_
                                 (##unchecked-structure-ref
                                  _%self153253160061%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method160093160098%_
                                 (##unchecked-structure-ref
                                  _%self153253160061%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method160093160098%_
                             _%object160092160097%_
                             _%proc160076%_)))))
                  _%default-value160021%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp170214))))
    (define __hash-find__0
      (lambda (_%proc160103%_ _%h160104%_)
        (let ((_%default-value160106%_ '#f))
          (__hash-find__%
           _%proc160103%_
           _%h160104%_
           _%default-value160106%_))))
    (define __hash-find
      (lambda _g170215_
        (let ((_g170216_ (let () (declare (not safe)) (##length _g170215_))))
          (cond ((let () (declare (not safe)) (##fx= _g170216_ 2))
                 (apply __hash-find__0 _g170215_))
                ((let () (declare (not safe)) (##fx= _g170216_ 3))
                 (apply __hash-find__% _g170215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g170215_))))))
    (define hash-find__%
      (lambda (_%proc159976%_ _%h159977%_ _%default-value159978%_)
        (if (procedure? _%proc159976%_)
            (let* ((_%proc159982%_ _%proc159976%_)
                   (_%h159994%_
                    (let ((_%$obj159991%_ _%h159977%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj159991%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj159991%_)))
                               '#t)
                          _%$obj159991%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj159991%_)))))
                   (_%h159996%_ _%h159994%_))
              (__hash-find__%
               _%proc159982%_
               _%h159996%_
               _%default-value159978%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@608.18-608.22"
               'contract:
               'procedure?
               'value:
               _%proc159976%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc160009%_ _%h160010%_)
        (let ((_%default-value160012%_ '#f))
          (hash-find__% _%proc160009%_ _%h160010%_ _%default-value160012%_))))
    (define hash-find
      (lambda _g170217_
        (let ((_g170218_ (let () (declare (not safe)) (##length _g170217_))))
          (cond ((let () (declare (not safe)) (##fx= _g170218_ 2))
                 (apply hash-find__0 _g170217_))
                ((let () (declare (not safe)) (##fx= _g170218_ 3))
                 (apply hash-find__% _g170217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g170217_))))))
    (define __hash-keys
      (lambda (_%h159907%_)
        (let* ((_%h159910%_ _%h159907%_) (_%result159919%_ '()))
          (let* ((_%self153253159921%_ _%h159910%_)
                 (_%proc159927%_
                  (lambda (_%k159924%_ _%v159925%_)
                    (set! _%result159919%_
                          (cons _%k159924%_ _%result159919%_))))
                 (_%self153253159934%_
                  (let ((_%$obj159931%_ _%self153253159921%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj159931%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj159931%_)))
                             '#t)
                        _%$obj159931%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj159931%_)))))
                 (_%self153253159936%_ _%self153253159934%_)
                 (_%proc159951%_ _%proc159927%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object159960159965%_
                         (##unchecked-structure-ref
                          _%self153253159936%_
                          '1
                          '#f
                          'for-each))
                        (_%method159961159966%_
                         (##unchecked-structure-ref
                          _%self153253159936%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159961159966%_
                     _%object159960159965%_
                     _%proc159951%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object159967159972%_
                         (##unchecked-structure-ref
                          _%self153253159936%_
                          '1
                          '#f
                          'for-each))
                        (_%method159968159973%_
                         (##unchecked-structure-ref
                          _%self153253159936%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159968159973%_
                     _%object159967159972%_
                     _%proc159951%_)))))
          _%result159919%_)))
    (define hash-keys
      (lambda (_%h159889%_)
        (let* ((_%h159895%_
                (let ((_%$obj159892%_ _%h159889%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159892%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159892%_)))
                           '#t)
                      _%$obj159892%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159892%_)))))
               (_%h159897%_ _%h159895%_))
          (__hash-keys _%h159897%_))))
    (define __hash-values
      (lambda (_%h159821%_)
        (let* ((_%h159824%_ _%h159821%_) (_%result159833%_ '()))
          (let* ((_%self153253159835%_ _%h159824%_)
                 (_%proc159841%_
                  (lambda (_%k159838%_ _%v159839%_)
                    (set! _%result159833%_
                          (cons _%v159839%_ _%result159833%_))))
                 (_%self153253159848%_
                  (let ((_%$obj159845%_ _%self153253159835%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj159845%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj159845%_)))
                             '#t)
                        _%$obj159845%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj159845%_)))))
                 (_%self153253159850%_ _%self153253159848%_)
                 (_%proc159865%_ _%proc159841%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object159874159879%_
                         (##unchecked-structure-ref
                          _%self153253159850%_
                          '1
                          '#f
                          'for-each))
                        (_%method159875159880%_
                         (##unchecked-structure-ref
                          _%self153253159850%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159875159880%_
                     _%object159874159879%_
                     _%proc159865%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object159881159886%_
                         (##unchecked-structure-ref
                          _%self153253159850%_
                          '1
                          '#f
                          'for-each))
                        (_%method159882159887%_
                         (##unchecked-structure-ref
                          _%self153253159850%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159882159887%_
                     _%object159881159886%_
                     _%proc159865%_)))))
          _%result159833%_)))
    (define hash-values
      (lambda (_%h159803%_)
        (let* ((_%h159809%_
                (let ((_%$obj159806%_ _%h159803%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159806%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159806%_)))
                           '#t)
                      _%$obj159806%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159806%_)))))
               (_%h159811%_ _%h159809%_))
          (__hash-values _%h159811%_))))
    (define __hash-copy
      (lambda (_%h159752%_)
        (let* ((_%h159755%_ _%h159752%_)
               (_%self152765159764%_ _%h159755%_)
               (_%self152765159771%_
                (let ((_%$obj159768%_ _%self152765159764%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159768%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159768%_)))
                           '#t)
                      _%$obj159768%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159768%_)))))
               (_%self152765159773%_ _%self152765159771%_))
          (if __DEBUG
              (let ((_%$obj159793%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object159785159790%_
                              (##unchecked-structure-ref
                               _%self152765159773%_
                               '1
                               '#f
                               'copy))
                             (_%method159786159791%_
                              (##unchecked-structure-ref
                               _%self152765159773%_
                               '3
                               '#f
                               'copy)))
                         (_%method159786159791%_ _%object159785159790%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj159793%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj159793%_)))
                         '#t)
                    _%$obj159793%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj159793%_))))
              (let ()
                (declare (not safe))
                (let ((_%object159795159800%_
                       (##unchecked-structure-ref
                        _%self152765159773%_
                        '1
                        '#f
                        'copy))
                      (_%method159796159801%_
                       (##unchecked-structure-ref
                        _%self152765159773%_
                        '3
                        '#f
                        'copy)))
                  (_%method159796159801%_ _%object159795159800%_)))))))
    (define hash-copy
      (lambda (_%h159734%_)
        (let* ((_%h159740%_
                (let ((_%$obj159737%_ _%h159734%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159737%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159737%_)))
                           '#t)
                      _%$obj159737%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159737%_)))))
               (_%h159742%_ _%h159740%_))
          (__hash-copy _%h159742%_))))
    (define __hash-new
      (lambda (_%h159663%_)
        (let* ((_%h159666%_ _%h159663%_)
               (_%self153741159675%_ _%h159666%_)
               (_%size-hint159678%_ '#f)
               (_%self153741159685%_
                (let ((_%$obj159682%_ _%self153741159675%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159682%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159682%_)))
                           '#t)
                      _%$obj159682%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159682%_)))))
               (_%self153741159687%_ _%self153741159685%_))
          (if (let ((_%$e159703%_ '#t)) (and _%$e159703%_ _%$e159703%_))
              (let ((_%size-hint159707%_ _%size-hint159678%_))
                (if __DEBUG
                    (let ((_%$obj159724%_
                           (let ()
                             (declare (not safe))
                             (let ((_%object159716159721%_
                                    (##unchecked-structure-ref
                                     _%self153741159687%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method159717159722%_
                                    (##unchecked-structure-ref
                                     _%self153741159687%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method159717159722%_
                                _%object159716159721%_
                                _%size-hint159707%_)))))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj159724%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj159724%_)))
                               '#t)
                          _%$obj159724%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj159724%_))))
                    (let ()
                      (declare (not safe))
                      (let ((_%object159726159731%_
                             (##unchecked-structure-ref
                              _%self153741159687%_
                              '1
                              '#f
                              'new))
                            (_%method159727159732%_
                             (##unchecked-structure-ref
                              _%self153741159687%_
                              '7
                              '#f
                              'new)))
                        (_%method159727159732%_
                         _%object159726159731%_
                         _%size-hint159707%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint159678%_)
                '#!void)))))
    (define hash-new
      (lambda (_%h159645%_)
        (let* ((_%h159651%_
                (let ((_%$obj159648%_ _%h159645%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159648%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159648%_)))
                           '#t)
                      _%$obj159648%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159648%_)))))
               (_%h159653%_ _%h159651%_))
          (__hash-new _%h159653%_))))
    (define __hash-clear!
      (lambda (_%h159597%_)
        (let* ((_%h159600%_ _%h159597%_)
               (_%self152520159609%_ _%h159600%_)
               (_%self152520159616%_
                (let ((_%$obj159613%_ _%self152520159609%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159613%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159613%_)))
                           '#t)
                      _%$obj159613%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159613%_)))))
               (_%self152520159618%_ _%self152520159616%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object159630159635%_
                       (##unchecked-structure-ref
                        _%self152520159618%_
                        '1
                        '#f
                        'clear!))
                      (_%method159631159636%_
                       (##unchecked-structure-ref
                        _%self152520159618%_
                        '2
                        '#f
                        'clear!)))
                  (_%method159631159636%_ _%object159630159635%_)))
              (let ()
                (declare (not safe))
                (let ((_%object159637159642%_
                       (##unchecked-structure-ref
                        _%self152520159618%_
                        '1
                        '#f
                        'clear!))
                      (_%method159638159643%_
                       (##unchecked-structure-ref
                        _%self152520159618%_
                        '2
                        '#f
                        'clear!)))
                  (_%method159638159643%_ _%object159637159642%_)))))))
    (define hash-clear!
      (lambda (_%h159579%_)
        (let* ((_%h159585%_
                (let ((_%$obj159582%_ _%h159579%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159582%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159582%_)))
                           '#t)
                      _%$obj159582%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159582%_)))))
               (_%h159587%_ _%h159585%_))
          (__hash-clear! _%h159587%_))))
    (define __hash-merge
      (lambda (_%h159525%_ . _%rest159526%_)
        (let* ((_%h159529%_ _%h159525%_)
               (_%copy159577%_
                (let* ((_%self152765159538%_ _%h159529%_)
                       (_%self152765159545%_
                        (let ((_%$obj159542%_ _%self152765159538%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj159542%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj159542%_)))
                                   '#t)
                              _%$obj159542%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj159542%_)))))
                       (_%self152765159547%_ _%self152765159545%_))
                  (if __DEBUG
                      (let ((_%$obj159567%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object159559159564%_
                                      (##unchecked-structure-ref
                                       _%self152765159547%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method159560159565%_
                                      (##unchecked-structure-ref
                                       _%self152765159547%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method159560159565%_
                                  _%object159559159564%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj159567%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj159567%_)))
                                 '#t)
                            _%$obj159567%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj159567%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object159569159574%_
                               (##unchecked-structure-ref
                                _%self152765159547%_
                                '1
                                '#f
                                'copy))
                              (_%method159570159575%_
                               (##unchecked-structure-ref
                                _%self152765159547%_
                                '3
                                '#f
                                'copy)))
                          (_%method159570159575%_ _%object159569159574%_)))))))
          (apply hash-merge! _%copy159577%_ _%rest159526%_)
          _%copy159577%_)))
    (define hash-merge
      (lambda (_%h159506%_ . _%rest159507%_)
        (let* ((_%h159513%_
                (let ((_%$obj159510%_ _%h159506%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159510%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159510%_)))
                           '#t)
                      _%$obj159510%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159510%_)))))
               (_%h159515%_ _%h159513%_))
          (declare (not safe))
          (##apply __hash-merge _%h159515%_ _%rest159507%_))))
    (define __hash-merge-right
      (lambda (_%h159452%_ . _%rest159453%_)
        (let* ((_%h159456%_ _%h159452%_)
               (_%copy159504%_
                (let* ((_%self152765159465%_ _%h159456%_)
                       (_%self152765159472%_
                        (let ((_%$obj159469%_ _%self152765159465%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj159469%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj159469%_)))
                                   '#t)
                              _%$obj159469%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj159469%_)))))
                       (_%self152765159474%_ _%self152765159472%_))
                  (if __DEBUG
                      (let ((_%$obj159494%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object159486159491%_
                                      (##unchecked-structure-ref
                                       _%self152765159474%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method159487159492%_
                                      (##unchecked-structure-ref
                                       _%self152765159474%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method159487159492%_
                                  _%object159486159491%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj159494%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj159494%_)))
                                 '#t)
                            _%$obj159494%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj159494%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object159496159501%_
                               (##unchecked-structure-ref
                                _%self152765159474%_
                                '1
                                '#f
                                'copy))
                              (_%method159497159502%_
                               (##unchecked-structure-ref
                                _%self152765159474%_
                                '3
                                '#f
                                'copy)))
                          (_%method159497159502%_ _%object159496159501%_)))))))
          (apply hash-merge-right! _%copy159504%_ _%rest159453%_)
          _%copy159504%_)))
    (define hash-merge-right
      (lambda (_%h159433%_ . _%rest159434%_)
        (let* ((_%h159440%_
                (let ((_%$obj159437%_ _%h159433%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159437%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159437%_)))
                           '#t)
                      _%$obj159437%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159437%_)))))
               (_%h159442%_ _%h159440%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h159442%_ _%rest159434%_))))
    (define __hash-merge!
      (lambda (_%h159281%_ . _%rest159282%_)
        (let ((_%h159285%_ _%h159281%_))
          (let ((__tmp170219
                 (lambda (_%hr159294%_)
                   (let* ((_%hr159300%_
                           (let ((_%$obj159297%_ _%hr159294%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj159297%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj159297%_)))
                                      '#t)
                                 _%$obj159297%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj159297%_)))))
                          (_%hr159302%_ _%hr159300%_)
                          (_%self153253159315%_ _%hr159302%_)
                          (_%proc159390%_
                           (lambda (_%k159318%_ _%v159319%_)
                             (if (let* ((_%h159321%_ _%h159285%_)
                                        (_%k159324%_ _%k159318%_)
                                        (_%h159331%_
                                         (let ((_%$obj159328%_ _%h159321%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj159328%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj159328%_)))
                                                    '#t)
                                               _%$obj159328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj159328%_)))))
                                        (_%h159333%_ _%h159331%_))
                                   (__hash-key? _%h159333%_ _%k159324%_))
                                 '#!void
                                 (let* ((_%self154229159349%_ _%h159285%_)
                                        (_%key159352%_ _%k159318%_)
                                        (_%value159355%_ _%v159319%_)
                                        (_%self154229159362%_
                                         (let ((_%$obj159359%_
                                                _%self154229159349%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj159359%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj159359%_)))
                                                    '#t)
                                               _%$obj159359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj159359%_)))))
                                        (_%self154229159364%_
                                         _%self154229159362%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object159375159380%_
                                                (##unchecked-structure-ref
                                                 _%self154229159364%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method159376159381%_
                                                (##unchecked-structure-ref
                                                 _%self154229159364%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method159376159381%_
                                            _%object159375159380%_
                                            _%key159352%_
                                            _%value159355%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object159382159387%_
                                                (##unchecked-structure-ref
                                                 _%self154229159364%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method159383159388%_
                                                (##unchecked-structure-ref
                                                 _%self154229159364%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method159383159388%_
                                            _%object159382159387%_
                                            _%key159352%_
                                            _%value159355%_))))))))
                          (_%self153253159397%_
                           (let ((_%$obj159394%_ _%self153253159315%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj159394%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj159394%_)))
                                      '#t)
                                 _%$obj159394%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj159394%_)))))
                          (_%self153253159399%_ _%self153253159397%_)
                          (_%proc159409%_ _%proc159390%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object159418159423%_
                                  (##unchecked-structure-ref
                                   _%self153253159399%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159419159424%_
                                  (##unchecked-structure-ref
                                   _%self153253159399%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159419159424%_
                              _%object159418159423%_
                              _%proc159409%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object159425159430%_
                                  (##unchecked-structure-ref
                                   _%self153253159399%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159426159431%_
                                  (##unchecked-structure-ref
                                   _%self153253159399%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159426159431%_
                              _%object159425159430%_
                              _%proc159409%_))))))))
            (declare (not safe))
            (##for-each __tmp170219 _%rest159282%_))
          _%h159285%_)))
    (define hash-merge!
      (lambda (_%h159262%_ . _%rest159263%_)
        (let* ((_%h159269%_
                (let ((_%$obj159266%_ _%h159262%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159266%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159266%_)))
                           '#t)
                      _%$obj159266%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159266%_)))))
               (_%h159271%_ _%h159269%_))
          (declare (not safe))
          (##apply __hash-merge! _%h159271%_ _%rest159263%_))))
    (define __hash-merge-right!
      (lambda (_%h159133%_ . _%rest159134%_)
        (let ((_%h159137%_ _%h159133%_))
          (let ((__tmp170220
                 (lambda (_%hr159146%_)
                   (let* ((_%hr159152%_
                           (let ((_%$obj159149%_ _%hr159146%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj159149%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj159149%_)))
                                      '#t)
                                 _%$obj159149%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj159149%_)))))
                          (_%hr159154%_ _%hr159152%_)
                          (_%self153253159167%_ _%hr159154%_)
                          (_%proc159219%_
                           (lambda (_%k159170%_ _%v159171%_)
                             (let* ((_%self154229159173%_ _%h159137%_)
                                    (_%key159176%_ _%k159170%_)
                                    (_%value159179%_ _%v159171%_)
                                    (_%self154229159186%_
                                     (let ((_%$obj159183%_
                                            _%self154229159173%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj159183%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj159183%_)))
                                                '#t)
                                           _%$obj159183%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj159183%_)))))
                                    (_%self154229159188%_
                                     _%self154229159186%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object159204159209%_
                                            (##unchecked-structure-ref
                                             _%self154229159188%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method159205159210%_
                                            (##unchecked-structure-ref
                                             _%self154229159188%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method159205159210%_
                                        _%object159204159209%_
                                        _%key159176%_
                                        _%value159179%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object159211159216%_
                                            (##unchecked-structure-ref
                                             _%self154229159188%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method159212159217%_
                                            (##unchecked-structure-ref
                                             _%self154229159188%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method159212159217%_
                                        _%object159211159216%_
                                        _%key159176%_
                                        _%value159179%_)))))))
                          (_%self153253159226%_
                           (let ((_%$obj159223%_ _%self153253159167%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj159223%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj159223%_)))
                                      '#t)
                                 _%$obj159223%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj159223%_)))))
                          (_%self153253159228%_ _%self153253159226%_)
                          (_%proc159238%_ _%proc159219%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object159247159252%_
                                  (##unchecked-structure-ref
                                   _%self153253159228%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159248159253%_
                                  (##unchecked-structure-ref
                                   _%self153253159228%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159248159253%_
                              _%object159247159252%_
                              _%proc159238%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object159254159259%_
                                  (##unchecked-structure-ref
                                   _%self153253159228%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159255159260%_
                                  (##unchecked-structure-ref
                                   _%self153253159228%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159255159260%_
                              _%object159254159259%_
                              _%proc159238%_))))))))
            (declare (not safe))
            (##for-each __tmp170220 _%rest159134%_))
          _%h159137%_)))
    (define hash-merge-right!
      (lambda (_%h159114%_ . _%rest159115%_)
        (let* ((_%h159121%_
                (let ((_%$obj159118%_ _%h159114%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj159118%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj159118%_)))
                           '#t)
                      _%$obj159118%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj159118%_)))))
               (_%h159123%_ _%h159121%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h159123%_ _%rest159115%_))))))
