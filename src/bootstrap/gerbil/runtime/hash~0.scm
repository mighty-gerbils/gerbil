(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1779967241)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp163200 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp163200
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args161942%_
        (apply make-instance UnboundKeyError::t _%$args161942%_)))
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
      (lambda (_%where161816%_ _%message161817%_ . _%irritants161818%_)
        (let ((__tmp163201
               (let ((__obj163192
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj163192
                    _%message161817%_
                    'where:
                    _%where161816%_
                    'irritants:
                    _%irritants161818%_))
                 __obj163192)))
          (declare (not safe))
          (raise __tmp163201))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp163202 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'HashTable::t
         'HashTable
         __tmp163202
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj163194
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj163194
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj163194))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj161814%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj161814%_))))
    (define try-HashTable
      (lambda (_%obj161812%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj161812%_))))
    (define HashTable?
      (lambda (_%obj161810%_)
        (let ((__tmp163203
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj161810%_ __tmp163203))))
    (define is-HashTable?
      (lambda (_%obj161807%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj161807%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self146797161790%_)
        (let ((_%self146797161792%_ _%self146797161790%_))
          (declare (not safe))
          (let ((_%object161799161804%_
                 (##unchecked-structure-ref
                  _%self146797161792%_
                  '1
                  '#f
                  'clear!))
                (_%method161800161805%_
                 (##unchecked-structure-ref
                  _%self146797161792%_
                  '2
                  '#f
                  'clear!)))
            (_%method161800161805%_ _%object161799161804%_)))))
    (define ::HashTable-clear!
      (lambda (_%self146798161760%_)
        (let* ((_%self146798161765%_
                (let ((_%$obj161762%_ _%self146798161760%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161762%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161762%_)))
                           '#t)
                      _%$obj161762%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161762%_)))))
               (_%self146798161767%_ _%self146798161765%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161775161780%_
                       (##unchecked-structure-ref
                        _%self146798161767%_
                        '1
                        '#f
                        'clear!))
                      (_%method161776161781%_
                       (##unchecked-structure-ref
                        _%self146798161767%_
                        '2
                        '#f
                        'clear!)))
                  (_%method161776161781%_ _%object161775161780%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161782161787%_
                       (##unchecked-structure-ref
                        _%self146798161767%_
                        '1
                        '#f
                        'clear!))
                      (_%method161783161788%_
                       (##unchecked-structure-ref
                        _%self146798161767%_
                        '2
                        '#f
                        'clear!)))
                  (_%method161783161788%_ _%object161782161787%_)))))))
    (define __HashTable-copy
      (lambda (_%self147042161743%_)
        (let ((_%self147042161745%_ _%self147042161743%_))
          (declare (not safe))
          (let ((_%object161752161757%_
                 (##unchecked-structure-ref _%self147042161745%_ '1 '#f 'copy))
                (_%method161753161758%_
                 (##unchecked-structure-ref
                  _%self147042161745%_
                  '3
                  '#f
                  'copy)))
            (_%method161753161758%_ _%object161752161757%_)))))
    (define ::HashTable-copy
      (lambda (_%self147043161710%_)
        (let* ((_%self147043161715%_
                (let ((_%$obj161712%_ _%self147043161710%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161712%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161712%_)))
                           '#t)
                      _%$obj161712%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161712%_)))))
               (_%self147043161717%_ _%self147043161715%_))
          (if __DEBUG
              (let ((_%$obj161733%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object161725161730%_
                              (##unchecked-structure-ref
                               _%self147043161717%_
                               '1
                               '#f
                               'copy))
                             (_%method161726161731%_
                              (##unchecked-structure-ref
                               _%self147043161717%_
                               '3
                               '#f
                               'copy)))
                         (_%method161726161731%_ _%object161725161730%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj161733%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj161733%_)))
                         '#t)
                    _%$obj161733%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj161733%_))))
              (let ()
                (declare (not safe))
                (let ((_%object161735161740%_
                       (##unchecked-structure-ref
                        _%self147043161717%_
                        '1
                        '#f
                        'copy))
                      (_%method161736161741%_
                       (##unchecked-structure-ref
                        _%self147043161717%_
                        '3
                        '#f
                        'copy)))
                  (_%method161736161741%_ _%object161735161740%_)))))))
    (define __HashTable-delete!
      (lambda (_%self147286161692%_ _%key161693%_)
        (let ((_%self147286161695%_ _%self147286161692%_))
          (declare (not safe))
          (let ((_%object161702161707%_
                 (##unchecked-structure-ref
                  _%self147286161695%_
                  '1
                  '#f
                  'delete!))
                (_%method161703161708%_
                 (##unchecked-structure-ref
                  _%self147286161695%_
                  '4
                  '#f
                  'delete!)))
            (_%method161703161708%_ _%object161702161707%_ _%key161693%_)))))
    (define ::HashTable-delete!
      (lambda (_%self147287161661%_ _%key161662%_)
        (let* ((_%self147287161667%_
                (let ((_%$obj161664%_ _%self147287161661%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161664%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161664%_)))
                           '#t)
                      _%$obj161664%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161664%_)))))
               (_%self147287161669%_ _%self147287161667%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161677161682%_
                       (##unchecked-structure-ref
                        _%self147287161669%_
                        '1
                        '#f
                        'delete!))
                      (_%method161678161683%_
                       (##unchecked-structure-ref
                        _%self147287161669%_
                        '4
                        '#f
                        'delete!)))
                  (_%method161678161683%_
                   _%object161677161682%_
                   _%key161662%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161684161689%_
                       (##unchecked-structure-ref
                        _%self147287161669%_
                        '1
                        '#f
                        'delete!))
                      (_%method161685161690%_
                       (##unchecked-structure-ref
                        _%self147287161669%_
                        '4
                        '#f
                        'delete!)))
                  (_%method161685161690%_
                   _%object161684161689%_
                   _%key161662%_)))))))
    (define __HashTable-for-each
      (lambda (_%self147530161635%_ _%proc161636%_)
        (let* ((_%self147530161638%_ _%self147530161635%_)
               (_%proc161645%_ _%proc161636%_))
          (declare (not safe))
          (let ((_%object161653161658%_
                 (##unchecked-structure-ref
                  _%self147530161638%_
                  '1
                  '#f
                  'for-each))
                (_%method161654161659%_
                 (##unchecked-structure-ref
                  _%self147530161638%_
                  '5
                  '#f
                  'for-each)))
            (_%method161654161659%_ _%object161653161658%_ _%proc161645%_)))))
    (define ::HashTable-for-each
      (lambda (_%self147531161594%_ _%proc161595%_)
        (let* ((_%self147531161600%_
                (let ((_%$obj161597%_ _%self147531161594%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161597%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161597%_)))
                           '#t)
                      _%$obj161597%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161597%_)))))
               (_%self147531161602%_ _%self147531161600%_))
          (if (procedure? _%proc161595%_)
              (let ((_%proc161611%_ _%proc161595%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object161620161625%_
                             (##unchecked-structure-ref
                              _%self147531161602%_
                              '1
                              '#f
                              'for-each))
                            (_%method161621161626%_
                             (##unchecked-structure-ref
                              _%self147531161602%_
                              '5
                              '#f
                              'for-each)))
                        (_%method161621161626%_
                         _%object161620161625%_
                         _%proc161611%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object161627161632%_
                             (##unchecked-structure-ref
                              _%self147531161602%_
                              '1
                              '#f
                              'for-each))
                            (_%method161628161633%_
                             (##unchecked-structure-ref
                              _%self147531161602%_
                              '5
                              '#f
                              'for-each)))
                        (_%method161628161633%_
                         _%object161627161632%_
                         _%proc161611%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc161595%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self147774161577%_)
        (let ((_%self147774161579%_ _%self147774161577%_))
          (declare (not safe))
          (let ((_%object161586161591%_
                 (##unchecked-structure-ref
                  _%self147774161579%_
                  '1
                  '#f
                  'length))
                (_%method161587161592%_
                 (##unchecked-structure-ref
                  _%self147774161579%_
                  '6
                  '#f
                  'length)))
            (_%method161587161592%_ _%object161586161591%_)))))
    (define ::HashTable-length
      (lambda (_%self147775161544%_)
        (let* ((_%self147775161549%_
                (let ((_%$obj161546%_ _%self147775161544%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161546%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161546%_)))
                           '#t)
                      _%$obj161546%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161546%_)))))
               (_%self147775161551%_ _%self147775161549%_))
          (if __DEBUG
              (let ((_%val161567%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object161559161564%_
                              (##unchecked-structure-ref
                               _%self147775161551%_
                               '1
                               '#f
                               'length))
                             (_%method161560161565%_
                              (##unchecked-structure-ref
                               _%self147775161551%_
                               '6
                               '#f
                               'length)))
                         (_%method161560161565%_ _%object161559161564%_)))))
                (if (fixnum? _%val161567%_)
                    _%val161567%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val161567%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object161569161574%_
                       (##unchecked-structure-ref
                        _%self147775161551%_
                        '1
                        '#f
                        'length))
                      (_%method161570161575%_
                       (##unchecked-structure-ref
                        _%self147775161551%_
                        '6
                        '#f
                        'length)))
                  (_%method161570161575%_ _%object161569161574%_)))))))
    (define __HashTable-ref
      (lambda (_%self148018161525%_ _%key161526%_ _%default161527%_)
        (let ((_%self148018161529%_ _%self148018161525%_))
          (declare (not safe))
          (let ((_%object161536161541%_
                 (##unchecked-structure-ref _%self148018161529%_ '1 '#f 'ref))
                (_%method161537161542%_
                 (##unchecked-structure-ref _%self148018161529%_ '7 '#f 'ref)))
            (_%method161537161542%_
             _%object161536161541%_
             _%key161526%_
             _%default161527%_)))))
    (define ::HashTable-ref
      (lambda (_%self148019161493%_ _%key161494%_ _%default161495%_)
        (let* ((_%self148019161500%_
                (let ((_%$obj161497%_ _%self148019161493%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161497%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161497%_)))
                           '#t)
                      _%$obj161497%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161497%_)))))
               (_%self148019161502%_ _%self148019161500%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161510161515%_
                       (##unchecked-structure-ref
                        _%self148019161502%_
                        '1
                        '#f
                        'ref))
                      (_%method161511161516%_
                       (##unchecked-structure-ref
                        _%self148019161502%_
                        '7
                        '#f
                        'ref)))
                  (_%method161511161516%_
                   _%object161510161515%_
                   _%key161494%_
                   _%default161495%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161517161522%_
                       (##unchecked-structure-ref
                        _%self148019161502%_
                        '1
                        '#f
                        'ref))
                      (_%method161518161523%_
                       (##unchecked-structure-ref
                        _%self148019161502%_
                        '7
                        '#f
                        'ref)))
                  (_%method161518161523%_
                   _%object161517161522%_
                   _%key161494%_
                   _%default161495%_)))))))
    (define __HashTable-set!
      (lambda (_%self148262161474%_ _%key161475%_ _%value161476%_)
        (let ((_%self148262161478%_ _%self148262161474%_))
          (declare (not safe))
          (let ((_%object161485161490%_
                 (##unchecked-structure-ref _%self148262161478%_ '1 '#f 'set!))
                (_%method161486161491%_
                 (##unchecked-structure-ref
                  _%self148262161478%_
                  '8
                  '#f
                  'set!)))
            (_%method161486161491%_
             _%object161485161490%_
             _%key161475%_
             _%value161476%_)))))
    (define ::HashTable-set!
      (lambda (_%self148263161442%_ _%key161443%_ _%value161444%_)
        (let* ((_%self148263161449%_
                (let ((_%$obj161446%_ _%self148263161442%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161446%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161446%_)))
                           '#t)
                      _%$obj161446%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161446%_)))))
               (_%self148263161451%_ _%self148263161449%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161459161464%_
                       (##unchecked-structure-ref
                        _%self148263161451%_
                        '1
                        '#f
                        'set!))
                      (_%method161460161465%_
                       (##unchecked-structure-ref
                        _%self148263161451%_
                        '8
                        '#f
                        'set!)))
                  (_%method161460161465%_
                   _%object161459161464%_
                   _%key161443%_
                   _%value161444%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161466161471%_
                       (##unchecked-structure-ref
                        _%self148263161451%_
                        '1
                        '#f
                        'set!))
                      (_%method161467161472%_
                       (##unchecked-structure-ref
                        _%self148263161451%_
                        '8
                        '#f
                        'set!)))
                  (_%method161467161472%_
                   _%object161466161471%_
                   _%key161443%_
                   _%value161444%_)))))))
    (define __HashTable-update!
      (lambda (_%self148506161414%_
               _%key161415%_
               _%proc161416%_
               _%default161417%_)
        (let* ((_%self148506161419%_ _%self148506161414%_)
               (_%proc161426%_ _%proc161416%_))
          (declare (not safe))
          (let ((_%object161434161439%_
                 (##unchecked-structure-ref
                  _%self148506161419%_
                  '1
                  '#f
                  'update!))
                (_%method161435161440%_
                 (##unchecked-structure-ref
                  _%self148506161419%_
                  '9
                  '#f
                  'update!)))
            (_%method161435161440%_
             _%object161434161439%_
             _%key161415%_
             _%proc161426%_
             _%default161417%_)))))
    (define ::HashTable-update!
      (lambda (_%self148507161371%_
               _%key161372%_
               _%proc161373%_
               _%default161374%_)
        (let* ((_%self148507161379%_
                (let ((_%$obj161376%_ _%self148507161371%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161376%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161376%_)))
                           '#t)
                      _%$obj161376%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161376%_)))))
               (_%self148507161381%_ _%self148507161379%_))
          (if (procedure? _%proc161373%_)
              (let ((_%proc161390%_ _%proc161373%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object161399161404%_
                             (##unchecked-structure-ref
                              _%self148507161381%_
                              '1
                              '#f
                              'update!))
                            (_%method161400161405%_
                             (##unchecked-structure-ref
                              _%self148507161381%_
                              '9
                              '#f
                              'update!)))
                        (_%method161400161405%_
                         _%object161399161404%_
                         _%key161372%_
                         _%proc161390%_
                         _%default161374%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object161406161411%_
                             (##unchecked-structure-ref
                              _%self148507161381%_
                              '1
                              '#f
                              'update!))
                            (_%method161407161412%_
                             (##unchecked-structure-ref
                              _%self148507161381%_
                              '9
                              '#f
                              'update!)))
                        (_%method161407161412%_
                         _%object161406161411%_
                         _%key161372%_
                         _%proc161390%_
                         _%default161374%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc161373%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp163204 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'Locker::t
         'Locker
         __tmp163204
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj163196
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj163196
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj163196))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj161369%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj161369%_))))
    (define try-Locker
      (lambda (_%obj161367%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj161367%_))))
    (define Locker?
      (lambda (_%obj161365%_)
        (let ((__tmp163205
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj161365%_ __tmp163205))))
    (define is-Locker?
      (lambda (_%obj161362%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj161362%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self148750161345%_)
        (let ((_%self148750161347%_ _%self148750161345%_))
          (declare (not safe))
          (let ((_%object161354161359%_
                 (##unchecked-structure-ref
                  _%self148750161347%_
                  '1
                  '#f
                  'read-lock!))
                (_%method161355161360%_
                 (##unchecked-structure-ref
                  _%self148750161347%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method161355161360%_ _%object161354161359%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self148751161315%_)
        (let* ((_%self148751161320%_
                (let ((_%$obj161317%_ _%self148751161315%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161317%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161317%_)))
                           '#t)
                      _%$obj161317%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj161317%_)))))
               (_%self148751161322%_ _%self148751161320%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161330161335%_
                       (##unchecked-structure-ref
                        _%self148751161322%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method161331161336%_
                       (##unchecked-structure-ref
                        _%self148751161322%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method161331161336%_ _%object161330161335%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161337161342%_
                       (##unchecked-structure-ref
                        _%self148751161322%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method161338161343%_
                       (##unchecked-structure-ref
                        _%self148751161322%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method161338161343%_ _%object161337161342%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self148994161298%_)
        (let ((_%self148994161300%_ _%self148994161298%_))
          (declare (not safe))
          (let ((_%object161307161312%_
                 (##unchecked-structure-ref
                  _%self148994161300%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method161308161313%_
                 (##unchecked-structure-ref
                  _%self148994161300%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method161308161313%_ _%object161307161312%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self148995161268%_)
        (let* ((_%self148995161273%_
                (let ((_%$obj161270%_ _%self148995161268%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161270%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161270%_)))
                           '#t)
                      _%$obj161270%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj161270%_)))))
               (_%self148995161275%_ _%self148995161273%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161283161288%_
                       (##unchecked-structure-ref
                        _%self148995161275%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method161284161289%_
                       (##unchecked-structure-ref
                        _%self148995161275%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method161284161289%_ _%object161283161288%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161290161295%_
                       (##unchecked-structure-ref
                        _%self148995161275%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method161291161296%_
                       (##unchecked-structure-ref
                        _%self148995161275%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method161291161296%_ _%object161290161295%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self149238161251%_)
        (let ((_%self149238161253%_ _%self149238161251%_))
          (declare (not safe))
          (let ((_%object161260161265%_
                 (##unchecked-structure-ref
                  _%self149238161253%_
                  '1
                  '#f
                  'write-lock!))
                (_%method161261161266%_
                 (##unchecked-structure-ref
                  _%self149238161253%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method161261161266%_ _%object161260161265%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self149239161221%_)
        (let* ((_%self149239161226%_
                (let ((_%$obj161223%_ _%self149239161221%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161223%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161223%_)))
                           '#t)
                      _%$obj161223%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj161223%_)))))
               (_%self149239161228%_ _%self149239161226%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161236161241%_
                       (##unchecked-structure-ref
                        _%self149239161228%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method161237161242%_
                       (##unchecked-structure-ref
                        _%self149239161228%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method161237161242%_ _%object161236161241%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161243161248%_
                       (##unchecked-structure-ref
                        _%self149239161228%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method161244161249%_
                       (##unchecked-structure-ref
                        _%self149239161228%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method161244161249%_ _%object161243161248%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self149482161204%_)
        (let ((_%self149482161206%_ _%self149482161204%_))
          (declare (not safe))
          (let ((_%object161213161218%_
                 (##unchecked-structure-ref
                  _%self149482161206%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method161214161219%_
                 (##unchecked-structure-ref
                  _%self149482161206%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method161214161219%_ _%object161213161218%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self149483161174%_)
        (let* ((_%self149483161179%_
                (let ((_%$obj161176%_ _%self149483161174%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161176%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161176%_)))
                           '#t)
                      _%$obj161176%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj161176%_)))))
               (_%self149483161181%_ _%self149483161179%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161189161194%_
                       (##unchecked-structure-ref
                        _%self149483161181%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method161190161195%_
                       (##unchecked-structure-ref
                        _%self149483161181%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method161190161195%_ _%object161189161194%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161196161201%_
                       (##unchecked-structure-ref
                        _%self149483161181%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method161197161202%_
                       (##unchecked-structure-ref
                        _%self149483161181%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method161197161202%_ _%object161196161201%_)))))))
    (let* ((_%klass161137%_ __table::t)
           (_%id161140%_ 'HashTable::ref)
           (_%proc161143%_ raw-table-ref)
           (_%rebind?161146%_ '#f)
           (_%id161151%_ _%id161140%_)
           (_%proc161164%_ _%proc161143%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161137%_
       _%id161151%_
       _%proc161164%_
       _%rebind?161146%_))
    (let* ((_%klass161100%_ __table::t)
           (_%id161103%_ 'HashTable::set!)
           (_%proc161106%_ raw-table-set!)
           (_%rebind?161109%_ '#f)
           (_%id161114%_ _%id161103%_)
           (_%proc161127%_ _%proc161106%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161100%_
       _%id161114%_
       _%proc161127%_
       _%rebind?161109%_))
    (let* ((_%klass161063%_ __table::t)
           (_%id161066%_ 'HashTable::update!)
           (_%proc161069%_ raw-table-update!)
           (_%rebind?161072%_ '#f)
           (_%id161077%_ _%id161066%_)
           (_%proc161090%_ _%proc161069%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161063%_
       _%id161077%_
       _%proc161090%_
       _%rebind?161072%_))
    (let* ((_%klass161026%_ __table::t)
           (_%id161029%_ 'HashTable::delete!)
           (_%proc161032%_ raw-table-delete!)
           (_%rebind?161035%_ '#f)
           (_%id161040%_ _%id161029%_)
           (_%proc161053%_ _%proc161032%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161026%_
       _%id161040%_
       _%proc161053%_
       _%rebind?161035%_))
    (let* ((_%klass160989%_ __table::t)
           (_%id160992%_ 'HashTable::for-each)
           (_%proc160995%_ raw-table-for-each)
           (_%rebind?160998%_ '#f)
           (_%id161003%_ _%id160992%_)
           (_%proc161016%_ _%proc160995%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160989%_
       _%id161003%_
       _%proc161016%_
       _%rebind?160998%_))
    (let* ((_%klass160952%_ __table::t)
           (_%id160955%_ 'HashTable::length)
           (_%proc160958%_ &raw-table-count)
           (_%rebind?160961%_ '#f)
           (_%id160966%_ _%id160955%_)
           (_%proc160979%_ _%proc160958%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160952%_
       _%id160966%_
       _%proc160979%_
       _%rebind?160961%_))
    (let* ((_%klass160915%_ __table::t)
           (_%id160918%_ 'HashTable::copy)
           (_%proc160921%_ raw-table-copy)
           (_%rebind?160924%_ '#f)
           (_%id160929%_ _%id160918%_)
           (_%proc160942%_ _%proc160921%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160915%_
       _%id160929%_
       _%proc160942%_
       _%rebind?160924%_))
    (let* ((_%klass160878%_ __table::t)
           (_%id160881%_ 'HashTable::clear!)
           (_%proc160884%_ raw-table-clear!)
           (_%rebind?160887%_ '#f)
           (_%id160892%_ _%id160881%_)
           (_%proc160905%_ _%proc160884%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160878%_
       _%id160892%_
       _%proc160905%_
       _%rebind?160887%_))
    (let* ((_%klass160841%_ __gc-table::t)
           (_%id160844%_ 'HashTable::ref)
           (_%proc160847%_ gc-table-ref)
           (_%rebind?160850%_ '#f)
           (_%id160855%_ _%id160844%_)
           (_%proc160868%_ _%proc160847%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160841%_
       _%id160855%_
       _%proc160868%_
       _%rebind?160850%_))
    (let* ((_%klass160804%_ __gc-table::t)
           (_%id160807%_ 'HashTable::set!)
           (_%proc160810%_ gc-table-set!)
           (_%rebind?160813%_ '#f)
           (_%id160818%_ _%id160807%_)
           (_%proc160831%_ _%proc160810%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160804%_
       _%id160818%_
       _%proc160831%_
       _%rebind?160813%_))
    (let* ((_%klass160767%_ __gc-table::t)
           (_%id160770%_ 'HashTable::update!)
           (_%proc160773%_ gc-table-update!)
           (_%rebind?160776%_ '#f)
           (_%id160781%_ _%id160770%_)
           (_%proc160794%_ _%proc160773%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160767%_
       _%id160781%_
       _%proc160794%_
       _%rebind?160776%_))
    (let* ((_%klass160730%_ __gc-table::t)
           (_%id160733%_ 'HashTable::delete!)
           (_%proc160736%_ gc-table-delete!)
           (_%rebind?160739%_ '#f)
           (_%id160744%_ _%id160733%_)
           (_%proc160757%_ _%proc160736%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160730%_
       _%id160744%_
       _%proc160757%_
       _%rebind?160739%_))
    (let* ((_%klass160693%_ __gc-table::t)
           (_%id160696%_ 'HashTable::for-each)
           (_%proc160699%_ gc-table-for-each)
           (_%rebind?160702%_ '#f)
           (_%id160707%_ _%id160696%_)
           (_%proc160720%_ _%proc160699%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160693%_
       _%id160707%_
       _%proc160720%_
       _%rebind?160702%_))
    (let* ((_%klass160656%_ __gc-table::t)
           (_%id160659%_ 'HashTable::length)
           (_%proc160662%_ gc-table-length)
           (_%rebind?160665%_ '#f)
           (_%id160670%_ _%id160659%_)
           (_%proc160683%_ _%proc160662%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160656%_
       _%id160670%_
       _%proc160683%_
       _%rebind?160665%_))
    (let* ((_%klass160619%_ __gc-table::t)
           (_%id160622%_ 'HashTable::copy)
           (_%proc160625%_ gc-table-copy)
           (_%rebind?160628%_ '#f)
           (_%id160633%_ _%id160622%_)
           (_%proc160646%_ _%proc160625%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160619%_
       _%id160633%_
       _%proc160646%_
       _%rebind?160628%_))
    (let* ((_%klass160582%_ __gc-table::t)
           (_%id160585%_ 'HashTable::clear!)
           (_%proc160588%_ gc-table-clear!)
           (_%rebind?160591%_ '#f)
           (_%id160596%_ _%id160585%_)
           (_%proc160609%_ _%proc160588%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160582%_
       _%id160596%_
       _%proc160609%_
       _%rebind?160591%_))
    (define gambit-table-update!
      (lambda (_%table160575%_
               _%key160576%_
               _%update160577%_
               _%default160578%_)
        (let ((_%result160580%_
               (table-ref _%table160575%_ _%key160576%_ _%default160578%_)))
          (table-set!
           _%table160575%_
           _%key160576%_
           (_%update160577%_ _%default160578%_)))))
    (define gambit-table-for-each
      (lambda (_%table160572%_ _%proc160573%_)
        (table-for-each _%proc160573%_ _%table160572%_)))
    (define gambit-table-clear!
      (lambda (_%table160570%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table160570%_ '0 '5 '#f '#f))))
    (let* ((_%klass160533%_ (macro-type-table))
           (_%id160536%_ 'HashTable::ref)
           (_%proc160539%_ table-ref)
           (_%rebind?160542%_ '#f)
           (_%id160547%_ _%id160536%_)
           (_%proc160560%_ _%proc160539%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160533%_
       _%id160547%_
       _%proc160560%_
       _%rebind?160542%_))
    (let* ((_%klass160496%_ (macro-type-table))
           (_%id160499%_ 'HashTable::set!)
           (_%proc160502%_ table-set!)
           (_%rebind?160505%_ '#f)
           (_%id160510%_ _%id160499%_)
           (_%proc160523%_ _%proc160502%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160496%_
       _%id160510%_
       _%proc160523%_
       _%rebind?160505%_))
    (let* ((_%klass160459%_ (macro-type-table))
           (_%id160462%_ 'HashTable::update!)
           (_%proc160465%_ gambit-table-update!)
           (_%rebind?160468%_ '#f)
           (_%id160473%_ _%id160462%_)
           (_%proc160486%_ _%proc160465%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160459%_
       _%id160473%_
       _%proc160486%_
       _%rebind?160468%_))
    (let* ((_%klass160422%_ (macro-type-table))
           (_%id160425%_ 'HashTable::delete!)
           (_%proc160428%_ table-set!)
           (_%rebind?160431%_ '#f)
           (_%id160436%_ _%id160425%_)
           (_%proc160449%_ _%proc160428%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160422%_
       _%id160436%_
       _%proc160449%_
       _%rebind?160431%_))
    (let* ((_%klass160385%_ (macro-type-table))
           (_%id160388%_ 'HashTable::for-each)
           (_%proc160391%_ gambit-table-for-each)
           (_%rebind?160394%_ '#f)
           (_%id160399%_ _%id160388%_)
           (_%proc160412%_ _%proc160391%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160385%_
       _%id160399%_
       _%proc160412%_
       _%rebind?160394%_))
    (let* ((_%klass160348%_ (macro-type-table))
           (_%id160351%_ 'HashTable::length)
           (_%proc160354%_ table-length)
           (_%rebind?160357%_ '#f)
           (_%id160362%_ _%id160351%_)
           (_%proc160375%_ _%proc160354%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160348%_
       _%id160362%_
       _%proc160375%_
       _%rebind?160357%_))
    (let* ((_%klass160311%_ (macro-type-table))
           (_%id160314%_ 'HashTable::copy)
           (_%proc160317%_ table-copy)
           (_%rebind?160320%_ '#f)
           (_%id160325%_ _%id160314%_)
           (_%proc160338%_ _%proc160317%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160311%_
       _%id160325%_
       _%proc160338%_
       _%rebind?160320%_))
    (let* ((_%klass160274%_ (macro-type-table))
           (_%id160277%_ 'HashTable::clear!)
           (_%proc160280%_ gambit-table-clear!)
           (_%rebind?160283%_ '#f)
           (_%id160288%_ _%id160277%_)
           (_%proc160301%_ _%proc160280%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160274%_
       _%id160288%_
       _%proc160301%_
       _%rebind?160283%_))
    (define hash-table::t
      (let* ((_%slots160237%_ '(table count free hash test seed))
             (_%slot-vector160239%_ (list->vector (cons '#f _%slots160237%_)))
             (_%slot-table160265%_
              (let ((_%slot-table160241%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp163208
                       (lambda (_%slot160243%_ _%field160244%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160241%_
                            _%slot160243%_
                            _%field160244%_))
                         (let ((__tmp163209
                                (let ((_%sym160246%_ _%slot160243%_))
                                  (if (symbol? _%sym160246%_)
                                      (let ((_%sym160251%_ _%sym160246%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym160251%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym160246%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160241%_
                            __tmp163209
                            _%field160244%_))))
                      (__tmp163206
                       (let ((__tmp163207
                              (let ()
                                (declare (not safe))
                                (##length _%slots160237%_))))
                         (declare (not safe))
                         (##iota __tmp163207 '1))))
                  (declare (not safe))
                  (##for-each __tmp163208 _%slots160237%_ __tmp163206))
                _%slot-table160241%_))
             (_%flags160267%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields160269%_ '#())
             (_%properties160271%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots160237%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp163210 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags160267%_
         __table::t
         _%fields160269%_
         __tmp163210
         _%slot-vector160239%_
         _%slot-table160265%_
         _%properties160271%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots160200%_ '(gcht immediate))
             (_%slot-vector160202%_ (list->vector (cons '#f _%slots160200%_)))
             (_%slot-table160228%_
              (let ((_%slot-table160204%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp163213
                       (lambda (_%slot160206%_ _%field160207%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160204%_
                            _%slot160206%_
                            _%field160207%_))
                         (let ((__tmp163214
                                (let ((_%sym160209%_ _%slot160206%_))
                                  (if (symbol? _%sym160209%_)
                                      (let ((_%sym160214%_ _%sym160209%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym160214%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym160209%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160204%_
                            __tmp163214
                            _%field160207%_))))
                      (__tmp163211
                       (let ((__tmp163212
                              (let ()
                                (declare (not safe))
                                (##length _%slots160200%_))))
                         (declare (not safe))
                         (##iota __tmp163212 '1))))
                  (declare (not safe))
                  (##for-each __tmp163213 _%slots160200%_ __tmp163211))
                _%slot-table160204%_))
             (_%flags160230%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields160232%_ '#())
             (_%properties160234%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots160200%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp163215 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags160230%_
         __gc-table::t
         _%fields160232%_
         __tmp163215
         _%slot-vector160202%_
         _%slot-table160228%_
         _%properties160234%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp163217 (list))
            (__tmp163216
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp163217
         '(table lock)
         __tmp163216
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args160197%_
        (apply make-instance locked-hash-table::t _%$args160197%_)))
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
      (let ((__tmp163219 (list))
            (__tmp163218
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp163219
         '(table key-check)
         __tmp163218
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args160194%_
        (apply make-instance checked-hash-table::t _%$args160194%_)))
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
      (let ((__tmp163221 (list hash-table::t))
            (__tmp163220 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp163221
         '()
         __tmp163220
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args160191%_
        (apply make-instance eq-hash-table::t _%$args160191%_)))
    (define eqv-hash-table::t
      (let ((__tmp163223 (list hash-table::t))
            (__tmp163222 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp163223
         '()
         __tmp163222
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args160188%_
        (apply make-instance eqv-hash-table::t _%$args160188%_)))
    (define symbol-hash-table::t
      (let ((__tmp163225 (list hash-table::t))
            (__tmp163224 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp163225
         '()
         __tmp163224
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args160185%_
        (apply make-instance symbol-hash-table::t _%$args160185%_)))
    (define string-hash-table::t
      (let ((__tmp163227 (list hash-table::t))
            (__tmp163226 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp163227
         '()
         __tmp163226
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args160182%_
        (apply make-instance string-hash-table::t _%$args160182%_)))
    (define immediate-hash-table::t
      (let ((__tmp163229 (list hash-table::t))
            (__tmp163228 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp163229
         '()
         __tmp163228
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args160179%_
        (apply make-instance immediate-hash-table::t _%$args160179%_)))
    (let* ((_%klass160142%_ hash-table::t)
           (_%id160145%_ 'HashTable::ref)
           (_%proc160148%_ raw-table-ref)
           (_%rebind?160151%_ '#f)
           (_%id160156%_ _%id160145%_)
           (_%proc160169%_ _%proc160148%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160142%_
       _%id160156%_
       _%proc160169%_
       _%rebind?160151%_))
    (let* ((_%klass160105%_ hash-table::t)
           (_%id160108%_ 'HashTable::set!)
           (_%proc160111%_ raw-table-set!)
           (_%rebind?160114%_ '#f)
           (_%id160119%_ _%id160108%_)
           (_%proc160132%_ _%proc160111%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160105%_
       _%id160119%_
       _%proc160132%_
       _%rebind?160114%_))
    (let* ((_%klass160068%_ hash-table::t)
           (_%id160071%_ 'HashTable::update!)
           (_%proc160074%_ raw-table-update!)
           (_%rebind?160077%_ '#f)
           (_%id160082%_ _%id160071%_)
           (_%proc160095%_ _%proc160074%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160068%_
       _%id160082%_
       _%proc160095%_
       _%rebind?160077%_))
    (let* ((_%klass160031%_ hash-table::t)
           (_%id160034%_ 'HashTable::delete!)
           (_%proc160037%_ raw-table-delete!)
           (_%rebind?160040%_ '#f)
           (_%id160045%_ _%id160034%_)
           (_%proc160058%_ _%proc160037%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160031%_
       _%id160045%_
       _%proc160058%_
       _%rebind?160040%_))
    (let* ((_%klass159994%_ hash-table::t)
           (_%id159997%_ 'HashTable::for-each)
           (_%proc160000%_ raw-table-for-each)
           (_%rebind?160003%_ '#f)
           (_%id160008%_ _%id159997%_)
           (_%proc160021%_ _%proc160000%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159994%_
       _%id160008%_
       _%proc160021%_
       _%rebind?160003%_))
    (let* ((_%klass159957%_ hash-table::t)
           (_%id159960%_ 'HashTable::length)
           (_%proc159963%_ &raw-table-count)
           (_%rebind?159966%_ '#f)
           (_%id159971%_ _%id159960%_)
           (_%proc159984%_ _%proc159963%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159957%_
       _%id159971%_
       _%proc159984%_
       _%rebind?159966%_))
    (let* ((_%klass159920%_ hash-table::t)
           (_%id159923%_ 'HashTable::copy)
           (_%proc159926%_ raw-table-copy)
           (_%rebind?159929%_ '#f)
           (_%id159934%_ _%id159923%_)
           (_%proc159947%_ _%proc159926%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159920%_
       _%id159934%_
       _%proc159947%_
       _%rebind?159929%_))
    (let* ((_%klass159883%_ hash-table::t)
           (_%id159886%_ 'HashTable::clear!)
           (_%proc159889%_ raw-table-clear!)
           (_%rebind?159892%_ '#f)
           (_%id159897%_ _%id159886%_)
           (_%proc159910%_ _%proc159889%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159883%_
       _%id159897%_
       _%proc159910%_
       _%rebind?159892%_))
    (let* ((_%klass159846%_ eq-hash-table::t)
           (_%id159849%_ 'HashTable::ref)
           (_%proc159852%_ eq-table-ref)
           (_%rebind?159855%_ '#f)
           (_%id159860%_ _%id159849%_)
           (_%proc159873%_ _%proc159852%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159846%_
       _%id159860%_
       _%proc159873%_
       _%rebind?159855%_))
    (let* ((_%klass159809%_ eq-hash-table::t)
           (_%id159812%_ 'HashTable::set!)
           (_%proc159815%_ eq-table-set!)
           (_%rebind?159818%_ '#f)
           (_%id159823%_ _%id159812%_)
           (_%proc159836%_ _%proc159815%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159809%_
       _%id159823%_
       _%proc159836%_
       _%rebind?159818%_))
    (let* ((_%klass159772%_ eq-hash-table::t)
           (_%id159775%_ 'HashTable::update!)
           (_%proc159778%_ eq-table-update!)
           (_%rebind?159781%_ '#f)
           (_%id159786%_ _%id159775%_)
           (_%proc159799%_ _%proc159778%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159772%_
       _%id159786%_
       _%proc159799%_
       _%rebind?159781%_))
    (let* ((_%klass159735%_ eq-hash-table::t)
           (_%id159738%_ 'HashTable::delete!)
           (_%proc159741%_ eq-table-delete!)
           (_%rebind?159744%_ '#f)
           (_%id159749%_ _%id159738%_)
           (_%proc159762%_ _%proc159741%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159735%_
       _%id159749%_
       _%proc159762%_
       _%rebind?159744%_))
    (let* ((_%klass159698%_ eqv-hash-table::t)
           (_%id159701%_ 'HashTable::ref)
           (_%proc159704%_ eqv-table-ref)
           (_%rebind?159707%_ '#f)
           (_%id159712%_ _%id159701%_)
           (_%proc159725%_ _%proc159704%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159698%_
       _%id159712%_
       _%proc159725%_
       _%rebind?159707%_))
    (let* ((_%klass159661%_ eqv-hash-table::t)
           (_%id159664%_ 'HashTable::set!)
           (_%proc159667%_ eqv-table-set!)
           (_%rebind?159670%_ '#f)
           (_%id159675%_ _%id159664%_)
           (_%proc159688%_ _%proc159667%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159661%_
       _%id159675%_
       _%proc159688%_
       _%rebind?159670%_))
    (let* ((_%klass159624%_ eqv-hash-table::t)
           (_%id159627%_ 'HashTable::update!)
           (_%proc159630%_ eqv-table-update!)
           (_%rebind?159633%_ '#f)
           (_%id159638%_ _%id159627%_)
           (_%proc159651%_ _%proc159630%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159624%_
       _%id159638%_
       _%proc159651%_
       _%rebind?159633%_))
    (let* ((_%klass159587%_ eqv-hash-table::t)
           (_%id159590%_ 'HashTable::delete!)
           (_%proc159593%_ eqv-table-delete!)
           (_%rebind?159596%_ '#f)
           (_%id159601%_ _%id159590%_)
           (_%proc159614%_ _%proc159593%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159587%_
       _%id159601%_
       _%proc159614%_
       _%rebind?159596%_))
    (let* ((_%klass159550%_ symbol-hash-table::t)
           (_%id159553%_ 'HashTable::ref)
           (_%proc159556%_ symbolic-table-ref)
           (_%rebind?159559%_ '#f)
           (_%id159564%_ _%id159553%_)
           (_%proc159577%_ _%proc159556%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159550%_
       _%id159564%_
       _%proc159577%_
       _%rebind?159559%_))
    (let* ((_%klass159513%_ symbol-hash-table::t)
           (_%id159516%_ 'HashTable::set!)
           (_%proc159519%_ symbolic-table-set!)
           (_%rebind?159522%_ '#f)
           (_%id159527%_ _%id159516%_)
           (_%proc159540%_ _%proc159519%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159513%_
       _%id159527%_
       _%proc159540%_
       _%rebind?159522%_))
    (let* ((_%klass159476%_ symbol-hash-table::t)
           (_%id159479%_ 'HashTable::update!)
           (_%proc159482%_ symbolic-table-update!)
           (_%rebind?159485%_ '#f)
           (_%id159490%_ _%id159479%_)
           (_%proc159503%_ _%proc159482%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159476%_
       _%id159490%_
       _%proc159503%_
       _%rebind?159485%_))
    (let* ((_%klass159439%_ symbol-hash-table::t)
           (_%id159442%_ 'HashTable::delete!)
           (_%proc159445%_ symbolic-table-delete!)
           (_%rebind?159448%_ '#f)
           (_%id159453%_ _%id159442%_)
           (_%proc159466%_ _%proc159445%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159439%_
       _%id159453%_
       _%proc159466%_
       _%rebind?159448%_))
    (let* ((_%klass159402%_ string-hash-table::t)
           (_%id159405%_ 'HashTable::ref)
           (_%proc159408%_ string-table-ref)
           (_%rebind?159411%_ '#f)
           (_%id159416%_ _%id159405%_)
           (_%proc159429%_ _%proc159408%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159402%_
       _%id159416%_
       _%proc159429%_
       _%rebind?159411%_))
    (let* ((_%klass159365%_ string-hash-table::t)
           (_%id159368%_ 'HashTable::set!)
           (_%proc159371%_ string-table-set!)
           (_%rebind?159374%_ '#f)
           (_%id159379%_ _%id159368%_)
           (_%proc159392%_ _%proc159371%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159365%_
       _%id159379%_
       _%proc159392%_
       _%rebind?159374%_))
    (let* ((_%klass159328%_ string-hash-table::t)
           (_%id159331%_ 'HashTable::update!)
           (_%proc159334%_ string-table-update!)
           (_%rebind?159337%_ '#f)
           (_%id159342%_ _%id159331%_)
           (_%proc159355%_ _%proc159334%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159328%_
       _%id159342%_
       _%proc159355%_
       _%rebind?159337%_))
    (let* ((_%klass159291%_ string-hash-table::t)
           (_%id159294%_ 'HashTable::delete!)
           (_%proc159297%_ string-table-delete!)
           (_%rebind?159300%_ '#f)
           (_%id159305%_ _%id159294%_)
           (_%proc159318%_ _%proc159297%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159291%_
       _%id159305%_
       _%proc159318%_
       _%rebind?159300%_))
    (let* ((_%klass159254%_ immediate-hash-table::t)
           (_%id159257%_ 'HashTable::ref)
           (_%proc159260%_ immediate-table-ref)
           (_%rebind?159263%_ '#f)
           (_%id159268%_ _%id159257%_)
           (_%proc159281%_ _%proc159260%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159254%_
       _%id159268%_
       _%proc159281%_
       _%rebind?159263%_))
    (let* ((_%klass159217%_ immediate-hash-table::t)
           (_%id159220%_ 'HashTable::set!)
           (_%proc159223%_ immediate-table-set!)
           (_%rebind?159226%_ '#f)
           (_%id159231%_ _%id159220%_)
           (_%proc159244%_ _%proc159223%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159217%_
       _%id159231%_
       _%proc159244%_
       _%rebind?159226%_))
    (let* ((_%klass159180%_ immediate-hash-table::t)
           (_%id159183%_ 'HashTable::update!)
           (_%proc159186%_ immediate-table-update!)
           (_%rebind?159189%_ '#f)
           (_%id159194%_ _%id159183%_)
           (_%proc159207%_ _%proc159186%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159180%_
       _%id159194%_
       _%proc159207%_
       _%rebind?159189%_))
    (let* ((_%klass159143%_ immediate-hash-table::t)
           (_%id159146%_ 'HashTable::delete!)
           (_%proc159149%_ immediate-table-delete!)
           (_%rebind?159152%_ '#f)
           (_%id159157%_ _%id159146%_)
           (_%proc159170%_ _%proc159149%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159143%_
       _%id159157%_
       _%proc159170%_
       _%rebind?159152%_))
    (let* ((_%klass159106%_ gc-hash-table::t)
           (_%id159109%_ 'HashTable::ref)
           (_%proc159112%_ gc-table-ref)
           (_%rebind?159115%_ '#f)
           (_%id159120%_ _%id159109%_)
           (_%proc159133%_ _%proc159112%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159106%_
       _%id159120%_
       _%proc159133%_
       _%rebind?159115%_))
    (let* ((_%klass159069%_ gc-hash-table::t)
           (_%id159072%_ 'HashTable::set!)
           (_%proc159075%_ gc-table-set!)
           (_%rebind?159078%_ '#f)
           (_%id159083%_ _%id159072%_)
           (_%proc159096%_ _%proc159075%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159069%_
       _%id159083%_
       _%proc159096%_
       _%rebind?159078%_))
    (let* ((_%klass159032%_ gc-hash-table::t)
           (_%id159035%_ 'HashTable::update!)
           (_%proc159038%_ gc-table-update!)
           (_%rebind?159041%_ '#f)
           (_%id159046%_ _%id159035%_)
           (_%proc159059%_ _%proc159038%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159032%_
       _%id159046%_
       _%proc159059%_
       _%rebind?159041%_))
    (let* ((_%klass158995%_ gc-hash-table::t)
           (_%id158998%_ 'HashTable::delete!)
           (_%proc159001%_ gc-table-delete!)
           (_%rebind?159004%_ '#f)
           (_%id159009%_ _%id158998%_)
           (_%proc159022%_ _%proc159001%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158995%_
       _%id159009%_
       _%proc159022%_
       _%rebind?159004%_))
    (let* ((_%klass158958%_ gc-hash-table::t)
           (_%id158961%_ 'HashTable::for-each)
           (_%proc158964%_ gc-table-for-each)
           (_%rebind?158967%_ '#f)
           (_%id158972%_ _%id158961%_)
           (_%proc158985%_ _%proc158964%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158958%_
       _%id158972%_
       _%proc158985%_
       _%rebind?158967%_))
    (let* ((_%klass158921%_ gc-hash-table::t)
           (_%id158924%_ 'HashTable::length)
           (_%proc158927%_ gc-table-length)
           (_%rebind?158930%_ '#f)
           (_%id158935%_ _%id158924%_)
           (_%proc158948%_ _%proc158927%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158921%_
       _%id158935%_
       _%proc158948%_
       _%rebind?158930%_))
    (let* ((_%klass158884%_ gc-hash-table::t)
           (_%id158887%_ 'HashTable::copy)
           (_%proc158890%_ gc-table-copy)
           (_%rebind?158893%_ '#f)
           (_%id158898%_ _%id158887%_)
           (_%proc158911%_ _%proc158890%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158884%_
       _%id158898%_
       _%proc158911%_
       _%rebind?158893%_))
    (let* ((_%klass158847%_ gc-hash-table::t)
           (_%id158850%_ 'HashTable::clear!)
           (_%proc158853%_ gc-table-clear!)
           (_%rebind?158856%_ '#f)
           (_%id158861%_ _%id158850%_)
           (_%proc158874%_ _%proc158853%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158847%_
       _%id158861%_
       _%proc158874%_
       _%rebind?158856%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref150108%_
      (lambda (_%self158768%_ _%key158770%_ _%default158771%_)
        (let* ((_%self158774%_ _%self158768%_)
               (_%key158783%_ _%key158770%_)
               (_%default158791%_ _%default158771%_))
          (let ((_%h158800%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158774%_ '1 '#f '#f)))
                (_%l158802%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158774%_ '2 '#f '#f))))
            (let ((__tmp163232
                   (lambda ()
                     (let ((_%self148748158806%_ _%l158802%_))
                       (declare (not safe))
                       (let ((_%object158809158814%_
                              (##unchecked-structure-ref
                               _%self148748158806%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method158810158815%_
                              (##unchecked-structure-ref
                               _%self148748158806%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method158810158815%_ _%object158809158814%_)))))
                  (__tmp163231
                   (lambda ()
                     (let* ((_%self148016158818%_ _%h158800%_)
                            (_%key158821%_ _%key158783%_)
                            (_%default158824%_ _%default158791%_))
                       (declare (not safe))
                       (let ((_%object158827158832%_
                              (##unchecked-structure-ref
                               _%self148016158818%_
                               '1
                               '#f
                               'ref))
                             (_%method158828158833%_
                              (##unchecked-structure-ref
                               _%self148016158818%_
                               '7
                               '#f
                               'ref)))
                         (_%method158828158833%_
                          _%object158827158832%_
                          _%key158821%_
                          _%default158824%_)))))
                  (__tmp163230
                   (lambda ()
                     (let ((_%self148992158836%_ _%l158802%_))
                       (declare (not safe))
                       (let ((_%object158839158844%_
                              (##unchecked-structure-ref
                               _%self148992158836%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method158840158845%_
                              (##unchecked-structure-ref
                               _%self148992158836%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method158840158845%_ _%object158839158844%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163232 __tmp163231 __tmp163230))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref150108%_
       '#f))
    (define _%locked-hash-table::HashTable::set!150110%_
      (lambda (_%self158566%_ _%key158568%_ _%value158569%_)
        (let* ((_%self158572%_ _%self158566%_)
               (_%key158581%_ _%key158568%_)
               (_%value158589%_ _%value158569%_))
          (let ((_%h158598%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158572%_ '1 '#f '#f)))
                (_%l158600%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158572%_ '2 '#f '#f))))
            (let ((__tmp163235
                   (lambda ()
                     (let ((_%self149236158604%_ _%l158600%_))
                       (declare (not safe))
                       (let ((_%object158607158612%_
                              (##unchecked-structure-ref
                               _%self149236158604%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158608158613%_
                              (##unchecked-structure-ref
                               _%self149236158604%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158608158613%_ _%object158607158612%_)))))
                  (__tmp163234
                   (lambda ()
                     (let* ((_%self148260158616%_ _%h158598%_)
                            (_%key158619%_ _%key158581%_)
                            (_%value158622%_ _%value158589%_))
                       (declare (not safe))
                       (let ((_%object158625158630%_
                              (##unchecked-structure-ref
                               _%self148260158616%_
                               '1
                               '#f
                               'set!))
                             (_%method158626158631%_
                              (##unchecked-structure-ref
                               _%self148260158616%_
                               '8
                               '#f
                               'set!)))
                         (_%method158626158631%_
                          _%object158625158630%_
                          _%key158619%_
                          _%value158622%_)))))
                  (__tmp163233
                   (lambda ()
                     (let ((_%self149480158634%_ _%l158600%_))
                       (declare (not safe))
                       (let ((_%object158637158642%_
                              (##unchecked-structure-ref
                               _%self149480158634%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158638158643%_
                              (##unchecked-structure-ref
                               _%self149480158634%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158638158643%_ _%object158637158642%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163235 __tmp163234 __tmp163233))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!150110%_
       '#f))
    (define _%locked-hash-table::HashTable::update!150112%_
      (lambda (_%self158352%_ _%key158354%_ _%update158355%_ _%default158356%_)
        (let* ((_%self158359%_ _%self158352%_)
               (_%key158368%_ _%key158354%_)
               (_%update158376%_ _%update158355%_)
               (_%default158384%_ _%default158356%_))
          (let ((_%h158393%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158359%_ '1 '#f '#f)))
                (_%l158395%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158359%_ '2 '#f '#f))))
            (let ((__tmp163238
                   (lambda ()
                     (let ((_%self149236158399%_ _%l158395%_))
                       (declare (not safe))
                       (let ((_%object158402158407%_
                              (##unchecked-structure-ref
                               _%self149236158399%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158403158408%_
                              (##unchecked-structure-ref
                               _%self149236158399%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158403158408%_ _%object158402158407%_)))))
                  (__tmp163237
                   (lambda ()
                     (let* ((_%self148504158411%_ _%h158393%_)
                            (_%key158414%_ _%key158368%_)
                            (_%proc158417%_ _%update158376%_)
                            (_%default158420%_ _%default158384%_))
                       (declare (not safe))
                       (let ((_%object158423158428%_
                              (##unchecked-structure-ref
                               _%self148504158411%_
                               '1
                               '#f
                               'update!))
                             (_%method158424158429%_
                              (##unchecked-structure-ref
                               _%self148504158411%_
                               '9
                               '#f
                               'update!)))
                         (_%method158424158429%_
                          _%object158423158428%_
                          _%key158414%_
                          _%proc158417%_
                          _%default158420%_)))))
                  (__tmp163236
                   (lambda ()
                     (let ((_%self149480158432%_ _%l158395%_))
                       (declare (not safe))
                       (let ((_%object158435158440%_
                              (##unchecked-structure-ref
                               _%self149480158432%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158436158441%_
                              (##unchecked-structure-ref
                               _%self149480158432%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158436158441%_ _%object158435158440%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163238 __tmp163237 __tmp163236))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!150112%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!150114%_
      (lambda (_%self158162%_ _%key158164%_)
        (let* ((_%self158167%_ _%self158162%_) (_%key158176%_ _%key158164%_))
          (let ((_%h158185%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158167%_ '1 '#f '#f)))
                (_%l158187%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158167%_ '2 '#f '#f))))
            (let ((__tmp163241
                   (lambda ()
                     (let ((_%self149236158191%_ _%l158187%_))
                       (declare (not safe))
                       (let ((_%object158194158199%_
                              (##unchecked-structure-ref
                               _%self149236158191%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158195158200%_
                              (##unchecked-structure-ref
                               _%self149236158191%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158195158200%_ _%object158194158199%_)))))
                  (__tmp163240
                   (lambda ()
                     (let* ((_%self147284158203%_ _%h158185%_)
                            (_%key158206%_ _%key158176%_))
                       (declare (not safe))
                       (let ((_%object158209158214%_
                              (##unchecked-structure-ref
                               _%self147284158203%_
                               '1
                               '#f
                               'delete!))
                             (_%method158210158215%_
                              (##unchecked-structure-ref
                               _%self147284158203%_
                               '4
                               '#f
                               'delete!)))
                         (_%method158210158215%_
                          _%object158209158214%_
                          _%key158206%_)))))
                  (__tmp163239
                   (lambda ()
                     (let ((_%self149480158218%_ _%l158187%_))
                       (declare (not safe))
                       (let ((_%object158221158226%_
                              (##unchecked-structure-ref
                               _%self149480158218%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158222158227%_
                              (##unchecked-structure-ref
                               _%self149480158218%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158222158227%_ _%object158221158226%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163241 __tmp163240 __tmp163239))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!150114%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each150116%_
      (lambda (_%self157972%_ _%proc157974%_)
        (let* ((_%self157977%_ _%self157972%_) (_%proc157986%_ _%proc157974%_))
          (let ((_%h157995%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157977%_ '1 '#f '#f)))
                (_%l157997%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157977%_ '2 '#f '#f))))
            (let ((__tmp163244
                   (lambda ()
                     (let ((_%self148748158001%_ _%l157997%_))
                       (declare (not safe))
                       (let ((_%object158004158009%_
                              (##unchecked-structure-ref
                               _%self148748158001%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method158005158010%_
                              (##unchecked-structure-ref
                               _%self148748158001%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method158005158010%_ _%object158004158009%_)))))
                  (__tmp163243
                   (lambda ()
                     (let* ((_%self147528158013%_ _%h157995%_)
                            (_%proc158016%_ _%proc157986%_))
                       (declare (not safe))
                       (let ((_%object158019158024%_
                              (##unchecked-structure-ref
                               _%self147528158013%_
                               '1
                               '#f
                               'for-each))
                             (_%method158020158025%_
                              (##unchecked-structure-ref
                               _%self147528158013%_
                               '5
                               '#f
                               'for-each)))
                         (_%method158020158025%_
                          _%object158019158024%_
                          _%proc158016%_)))))
                  (__tmp163242
                   (lambda ()
                     (let ((_%self148992158028%_ _%l157997%_))
                       (declare (not safe))
                       (let ((_%object158031158036%_
                              (##unchecked-structure-ref
                               _%self148992158028%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method158032158037%_
                              (##unchecked-structure-ref
                               _%self148992158028%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method158032158037%_ _%object158031158036%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163244 __tmp163243 __tmp163242))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each150116%_
       '#f))
    (define _%locked-hash-table::HashTable::length150118%_
      (lambda (_%self157787%_)
        (let ((_%self157791%_ _%self157787%_))
          (let ((_%h157801%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157791%_ '1 '#f '#f)))
                (_%l157803%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157791%_ '2 '#f '#f))))
            (let* ((_%g157805157807%_
                    (let ((__tmp163247
                           (lambda ()
                             (let ((_%self148748157814%_ _%l157803%_))
                               (declare (not safe))
                               (let ((_%object157817157822%_
                                      (##unchecked-structure-ref
                                       _%self148748157814%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method157818157823%_
                                      (##unchecked-structure-ref
                                       _%self148748157814%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method157818157823%_
                                  _%object157817157822%_)))))
                          (__tmp163246
                           (lambda ()
                             (let ((_%self147772157826%_ _%h157801%_))
                               (declare (not safe))
                               (let ((_%object157829157834%_
                                      (##unchecked-structure-ref
                                       _%self147772157826%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method157830157835%_
                                      (##unchecked-structure-ref
                                       _%self147772157826%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method157830157835%_
                                  _%object157829157834%_)))))
                          (__tmp163245
                           (lambda ()
                             (let ((_%self148992157838%_ _%l157803%_))
                               (declare (not safe))
                               (let ((_%object157841157846%_
                                      (##unchecked-structure-ref
                                       _%self148992157838%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method157842157847%_
                                      (##unchecked-structure-ref
                                       _%self148992157838%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method157842157847%_
                                  _%object157841157846%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp163247 __tmp163246 __tmp163245)))
                   (_%val157810%_ _%g157805157807%_))
              (if (fixnum? _%val157810%_)
                  _%val157810%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val157810%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length150118%_
       '#f))
    (define _%locked-hash-table::HashTable::copy150120%_
      (lambda (_%self157606%_)
        (let ((_%self157610%_ _%self157606%_))
          (let ((_%h157620%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157610%_ '1 '#f '#f)))
                (_%l157622%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157610%_ '2 '#f '#f))))
            (let ((_%$obj157661%_
                   (let ((__tmp163250
                          (lambda ()
                            (let ((_%self148748157626%_ _%l157622%_))
                              (declare (not safe))
                              (let ((_%object157629157634%_
                                     (##unchecked-structure-ref
                                      _%self148748157626%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method157630157635%_
                                     (##unchecked-structure-ref
                                      _%self148748157626%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method157630157635%_
                                 _%object157629157634%_)))))
                         (__tmp163249
                          (lambda ()
                            (let ((_%self147040157638%_ _%h157620%_))
                              (declare (not safe))
                              (let ((_%object157641157646%_
                                     (##unchecked-structure-ref
                                      _%self147040157638%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method157642157647%_
                                     (##unchecked-structure-ref
                                      _%self147040157638%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method157642157647%_
                                 _%object157641157646%_)))))
                         (__tmp163248
                          (lambda ()
                            (let ((_%self148992157650%_ _%l157622%_))
                              (declare (not safe))
                              (let ((_%object157653157658%_
                                     (##unchecked-structure-ref
                                      _%self148992157650%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method157654157659%_
                                     (##unchecked-structure-ref
                                      _%self148992157650%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method157654157659%_
                                 _%object157653157658%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp163250 __tmp163249 __tmp163248))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj157661%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj157661%_)))
                       '#t)
                  _%$obj157661%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj157661%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy150120%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!150122%_
      (lambda (_%self157428%_)
        (let ((_%self157432%_ _%self157428%_))
          (let ((_%h157442%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157432%_ '1 '#f '#f)))
                (_%l157444%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157432%_ '2 '#f '#f))))
            (let ((__tmp163253
                   (lambda ()
                     (let ((_%self149236157448%_ _%l157444%_))
                       (declare (not safe))
                       (let ((_%object157451157456%_
                              (##unchecked-structure-ref
                               _%self149236157448%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157452157457%_
                              (##unchecked-structure-ref
                               _%self149236157448%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157452157457%_ _%object157451157456%_)))))
                  (__tmp163252
                   (lambda ()
                     (let ((_%self146795157460%_ _%h157442%_))
                       (declare (not safe))
                       (let ((_%object157463157468%_
                              (##unchecked-structure-ref
                               _%self146795157460%_
                               '1
                               '#f
                               'clear!))
                             (_%method157464157469%_
                              (##unchecked-structure-ref
                               _%self146795157460%_
                               '2
                               '#f
                               'clear!)))
                         (_%method157464157469%_ _%object157463157468%_)))))
                  (__tmp163251
                   (lambda ()
                     (let ((_%self149480157472%_ _%l157444%_))
                       (declare (not safe))
                       (let ((_%object157475157480%_
                              (##unchecked-structure-ref
                               _%self149480157472%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157476157481%_
                              (##unchecked-structure-ref
                               _%self149480157472%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157476157481%_ _%object157475157480%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp163253 __tmp163252 __tmp163251))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!150122%_
       '#f))
    (let* ((_%klass157268%_ (macro-type-mutex))
           (_%id157271%_ 'Locker::read-lock!)
           (_%proc157274%_ mutex-lock!)
           (_%rebind?157277%_ '#f)
           (_%id157282%_ _%id157271%_)
           (_%proc157295%_ _%proc157274%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157268%_
       _%id157282%_
       _%proc157295%_
       _%rebind?157277%_))
    (let* ((_%klass157231%_ (macro-type-mutex))
           (_%id157234%_ 'Locker::read-unlock!)
           (_%proc157237%_ mutex-unlock!)
           (_%rebind?157240%_ '#f)
           (_%id157245%_ _%id157234%_)
           (_%proc157258%_ _%proc157237%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157231%_
       _%id157245%_
       _%proc157258%_
       _%rebind?157240%_))
    (let* ((_%klass157194%_ (macro-type-mutex))
           (_%id157197%_ 'Locker::write-lock!)
           (_%proc157200%_ mutex-lock!)
           (_%rebind?157203%_ '#f)
           (_%id157208%_ _%id157197%_)
           (_%proc157221%_ _%proc157200%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157194%_
       _%id157208%_
       _%proc157221%_
       _%rebind?157203%_))
    (let* ((_%klass157157%_ (macro-type-mutex))
           (_%id157160%_ 'Locker::write-unlock!)
           (_%proc157163%_ mutex-unlock!)
           (_%rebind?157166%_ '#f)
           (_%id157171%_ _%id157160%_)
           (_%proc157184%_ _%proc157163%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157157%_
       _%id157171%_
       _%proc157184%_
       _%rebind?157166%_))
    (define _%checked-hash-table::HashTable::ref150333%_
      (lambda (_%self157098%_ _%key157099%_ _%default157100%_)
        (let* ((_%self157103%_ _%self157098%_)
               (_%key157112%_ _%key157099%_)
               (_%default157120%_ _%default157100%_))
          (declare (not safe))
          (let ((_%h157131%_
                 (##unchecked-structure-ref _%self157103%_ '1 '#f '#f))
                (_%key?157133%_
                 (##unchecked-structure-ref _%self157103%_ '2 '#f '#f)))
            (if (_%key?157133%_ _%key157112%_)
                (let* ((_%self148016157140%_ _%h157131%_)
                       (_%key157143%_ _%key157112%_)
                       (_%default157146%_ _%default157120%_))
                  (declare (not safe))
                  (let ((_%object157149157154%_
                         (##unchecked-structure-ref
                          _%self148016157140%_
                          '1
                          '#f
                          'ref))
                        (_%method157150157155%_
                         (##unchecked-structure-ref
                          _%self148016157140%_
                          '7
                          '#f
                          'ref)))
                    (_%method157150157155%_
                     _%object157149157154%_
                     _%key157143%_
                     _%default157146%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key157112%_ (cons _%default157120%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref150333%_
       '#f))
    (define _%checked-hash-table::HashTable::set!150335%_
      (lambda (_%self156916%_ _%key156917%_ _%value156918%_)
        (let* ((_%self156921%_ _%self156916%_)
               (_%key156930%_ _%key156917%_)
               (_%value156938%_ _%value156918%_))
          (declare (not safe))
          (let ((_%h156949%_
                 (##unchecked-structure-ref _%self156921%_ '1 '#f '#f))
                (_%key?156951%_
                 (##unchecked-structure-ref _%self156921%_ '2 '#f '#f)))
            (if (_%key?156951%_ _%key156930%_)
                (let* ((_%self148260156958%_ _%h156949%_)
                       (_%key156961%_ _%key156930%_)
                       (_%value156964%_ _%value156938%_))
                  (declare (not safe))
                  (let ((_%object156967156972%_
                         (##unchecked-structure-ref
                          _%self148260156958%_
                          '1
                          '#f
                          'set!))
                        (_%method156968156973%_
                         (##unchecked-structure-ref
                          _%self148260156958%_
                          '8
                          '#f
                          'set!)))
                    (_%method156968156973%_
                     _%object156967156972%_
                     _%key156961%_
                     _%value156964%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key156930%_ (cons _%value156938%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!150335%_
       '#f))
    (define _%checked-hash-table::HashTable::update!150337%_
      (lambda (_%self156721%_ _%key156722%_ _%update156723%_ _%default156724%_)
        (let* ((_%self156727%_ _%self156721%_)
               (_%key156736%_ _%key156722%_)
               (_%update156744%_ _%update156723%_)
               (_%default156752%_ _%default156724%_))
          (declare (not safe))
          (let ((_%h156763%_
                 (##unchecked-structure-ref _%self156727%_ '1 '#f '#f))
                (_%key?156765%_
                 (##unchecked-structure-ref _%self156727%_ '2 '#f '#f)))
            (if (_%key?156765%_ _%key156736%_)
                (let* ((_%self148504156773%_ _%h156763%_)
                       (_%key156776%_ _%key156736%_)
                       (_%proc156779%_ _%update156744%_)
                       (_%default156782%_ _%default156752%_))
                  (declare (not safe))
                  (let ((_%object156785156790%_
                         (##unchecked-structure-ref
                          _%self148504156773%_
                          '1
                          '#f
                          'update!))
                        (_%method156786156791%_
                         (##unchecked-structure-ref
                          _%self148504156773%_
                          '9
                          '#f
                          'update!)))
                    (_%method156786156791%_
                     _%object156785156790%_
                     _%key156776%_
                     _%proc156779%_
                     _%default156782%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key156736%_
                         (cons _%update156744%_ (cons _%default156752%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!150337%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!150339%_
      (lambda (_%self156552%_ _%key156553%_)
        (let* ((_%self156556%_ _%self156552%_) (_%key156565%_ _%key156553%_))
          (declare (not safe))
          (let ((_%h156576%_
                 (##unchecked-structure-ref _%self156556%_ '1 '#f '#f))
                (_%key?156578%_
                 (##unchecked-structure-ref _%self156556%_ '2 '#f '#f)))
            (if (_%key?156578%_ _%key156565%_)
                (let* ((_%self147284156584%_ _%h156576%_)
                       (_%key156587%_ _%key156565%_))
                  (declare (not safe))
                  (let ((_%object156590156595%_
                         (##unchecked-structure-ref
                          _%self147284156584%_
                          '1
                          '#f
                          'delete!))
                        (_%method156591156596%_
                         (##unchecked-structure-ref
                          _%self147284156584%_
                          '4
                          '#f
                          'delete!)))
                    (_%method156591156596%_
                     _%object156590156595%_
                     _%key156587%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key156565%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!150339%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each150341%_
      (lambda (_%self156383%_ _%proc156384%_)
        (let* ((_%self156387%_ _%self156383%_) (_%proc156396%_ _%proc156384%_))
          (declare (not safe))
          (let ((_%h156407%_
                 (##unchecked-structure-ref _%self156387%_ '1 '#f '#f))
                (_%key?156409%_
                 (##unchecked-structure-ref _%self156387%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self147528156415%_ _%h156407%_)
                       (_%proc156418%_ _%proc156396%_))
                  (declare (not safe))
                  (let ((_%object156421156426%_
                         (##unchecked-structure-ref
                          _%self147528156415%_
                          '1
                          '#f
                          'for-each))
                        (_%method156422156427%_
                         (##unchecked-structure-ref
                          _%self147528156415%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156422156427%_
                     _%object156421156426%_
                     _%proc156418%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc156396%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each150341%_
       '#f))
    (define _%checked-hash-table::HashTable::length150343%_
      (lambda (_%self156229%_)
        (let ((_%self156232%_ _%self156229%_))
          (declare (not safe))
          (let ((_%h156244%_
                 (##unchecked-structure-ref _%self156232%_ '1 '#f '#f))
                (_%key?156246%_
                 (##unchecked-structure-ref _%self156232%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self147772156249%_ _%h156244%_))
                  (declare (not safe))
                  (let ((_%object156252156257%_
                         (##unchecked-structure-ref
                          _%self147772156249%_
                          '1
                          '#f
                          'length))
                        (_%method156253156258%_
                         (##unchecked-structure-ref
                          _%self147772156249%_
                          '6
                          '#f
                          'length)))
                    (_%method156253156258%_ _%object156252156257%_)))
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
       _%checked-hash-table::HashTable::length150343%_
       '#f))
    (define _%checked-hash-table::HashTable::copy150345%_
      (lambda (_%self156075%_)
        (let ((_%self156078%_ _%self156075%_))
          (declare (not safe))
          (let ((_%h156090%_
                 (##unchecked-structure-ref _%self156078%_ '1 '#f '#f))
                (_%key?156092%_
                 (##unchecked-structure-ref _%self156078%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self147040156095%_ _%h156090%_))
                  (declare (not safe))
                  (let ((_%object156098156103%_
                         (##unchecked-structure-ref
                          _%self147040156095%_
                          '1
                          '#f
                          'copy))
                        (_%method156099156104%_
                         (##unchecked-structure-ref
                          _%self147040156095%_
                          '3
                          '#f
                          'copy)))
                    (_%method156099156104%_ _%object156098156103%_)))
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
       _%checked-hash-table::HashTable::copy150345%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!150347%_
      (lambda (_%self155921%_)
        (let ((_%self155924%_ _%self155921%_))
          (declare (not safe))
          (let ((_%h155936%_
                 (##unchecked-structure-ref _%self155924%_ '1 '#f '#f))
                (_%key?155938%_
                 (##unchecked-structure-ref _%self155924%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146795155941%_ _%h155936%_))
                  (declare (not safe))
                  (let ((_%object155944155949%_
                         (##unchecked-structure-ref
                          _%self146795155941%_
                          '1
                          '#f
                          'clear!))
                        (_%method155945155950%_
                         (##unchecked-structure-ref
                          _%self146795155941%_
                          '2
                          '#f
                          'clear!)))
                    (_%method155945155950%_ _%object155944155949%_)))
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
       _%checked-hash-table::HashTable::clear!150347%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table155791%_
               _%count155792%_
               _%free155793%_
               _%hash155794%_
               _%test155795%_
               _%seed155796%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table155791%_
           _%count155792%_
           _%free155793%_
           _%hash155794%_
           _%test155795%_
           _%seed155796%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords155201%_
               _%size-hint155191155202%_
               _%seed155192155203%_
               _%test155193155204%_
               _%hash155194155205%_
               _%lock155195155206%_
               _%check155196155207%_
               _%weak-keys155197155208%_
               _%weak-values155198155209%_)
        (let* ((_%size-hint155211%_
                (if (eq? _%size-hint155191155202%_ absent-value)
                    '#f
                    _%size-hint155191155202%_))
               (_%seed155213%_
                (if (eq? _%seed155192155203%_ absent-value)
                    '#f
                    _%seed155192155203%_))
               (_%test155215%_
                (if (eq? _%test155193155204%_ absent-value)
                    equal?
                    _%test155193155204%_))
               (_%hash155217%_
                (if (eq? _%hash155194155205%_ absent-value)
                    '#f
                    _%hash155194155205%_))
               (_%lock155219%_
                (if (eq? _%lock155195155206%_ absent-value)
                    '#f
                    _%lock155195155206%_))
               (_%check155221%_
                (if (eq? _%check155196155207%_ absent-value)
                    '#f
                    _%check155196155207%_))
               (_%weak-keys155223%_
                (if (eq? _%weak-keys155197155208%_ absent-value)
                    '#f
                    _%weak-keys155197155208%_))
               (_%weak-values155225%_
                (if (eq? _%weak-values155198155209%_ absent-value)
                    '#f
                    _%weak-values155198155209%_)))
          (letrec ((_%table-seed155228%_
                    (lambda ()
                      (if (fixnum? _%seed155213%_)
                          _%seed155213%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock155372%_
                    (lambda (_%ht155759%_)
                      (let ((_%ht155762%_ _%ht155759%_))
                        (if _%lock155219%_
                            (let ((_%$obj155774%_
                                   (let ((__tmp163254
                                          (let ((_%$obj155771%_
                                                 _%lock155219%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj155771%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj155771%_)))
                                                     '#t)
                                                _%$obj155771%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj155771%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht155762%_
                                      __tmp163254))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj155774%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj155774%_)))
                                       '#t)
                                  _%$obj155774%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj155774%_))))
                            _%ht155762%_))))
                   (_%wrap-lock155373%_
                    (lambda (_%ht155747%_)
                      (let ((_%ht155750%_ _%ht155747%_))
                        (_%__wrap-lock155372%_ _%ht155750%_))))
                   (_%__wrap-checked155495%_
                    (lambda (_%ht155731%_ _%implicit155732%_)
                      (let ((_%ht155735%_ _%ht155731%_))
                        (if _%check155221%_
                            (let ((_%$obj155744%_
                                   (let ((__tmp163255
                                          (if (procedure? _%check155221%_)
                                              _%check155221%_
                                              _%implicit155732%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht155735%_
                                      __tmp163255))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj155744%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj155744%_)))
                                       '#t)
                                  _%$obj155744%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj155744%_))))
                            _%ht155735%_))))
                   (_%wrap-checked155496%_
                    (lambda (_%ht155718%_ _%implicit155719%_)
                      (let ((_%ht155722%_ _%ht155718%_))
                        (_%__wrap-checked155495%_
                         _%ht155722%_
                         _%implicit155719%_))))
                   (_%make155497%_
                    (lambda (_%kons155666%_
                             _%key?155667%_
                             _%hash155668%_
                             _%test155669%_)
                      (let* ((_%size155672%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint155211%_)))
                             (_%table155674%_
                              (let ((__tmp163256 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size155672%_ __tmp163256)))
                             (_%ht155679%_
                              (let ((_%$obj155676%_
                                     (_%kons155666%_
                                      _%table155674%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size155672%_ '2))
                                      _%hash155668%_
                                      _%test155669%_
                                      (_%table-seed155228%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155676%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155676%_)))
                                         '#t)
                                    _%$obj155676%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155676%_)))))
                             (_%ht155701%_
                              (let* ((_%ht155682%_ _%ht155679%_)
                                     (_%ht155686%_ _%ht155682%_))
                                (_%__wrap-lock155372%_ _%ht155686%_)))
                             (_%implicit155704%_ _%key?155667%_)
                             (_%ht155708%_ _%ht155701%_))
                        (_%__wrap-checked155495%_
                         _%ht155708%_
                         _%implicit155704%_))))
                   (_%make-gc-hash-table155498%_
                    (lambda ()
                      (let* ((_%ht155631%_
                              (let ((_%$obj155628%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint155211%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155628%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155628%_)))
                                         '#t)
                                    _%$obj155628%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155628%_)))))
                             (_%ht155649%_
                              (let* ((_%ht155633%_ _%ht155631%_)
                                     (_%ht155637%_ _%ht155633%_))
                                (_%__wrap-lock155372%_ _%ht155637%_)))
                             (_%implicit155652%_ true)
                             (_%ht155656%_ _%ht155649%_))
                        (_%__wrap-checked155495%_
                         _%ht155656%_
                         _%implicit155652%_))))
                   (_%make-gambit-table155499%_
                    (lambda ()
                      (let* ((_%size155568%_
                              (let ((_%$e155565%_ _%size-hint155211%_))
                                (if _%$e155565%_
                                    _%$e155565%_
                                    (macro-absent-obj))))
                             (_%test155573%_
                              (let ((_%$e155570%_ _%test155215%_))
                                (if _%$e155570%_ _%$e155570%_ equal?)))
                             (_%hash155581%_
                              (let ((_%$e155575%_ _%hash155217%_))
                                (if _%$e155575%_
                                    _%$e155575%_
                                    (if (eq? _%test155573%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test155573%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht155586%_
                              (let ((_%$obj155583%_
                                     (make-table
                                      'size:
                                      _%size155568%_
                                      'test:
                                      _%test155573%_
                                      'hash:
                                      _%hash155581%_
                                      'weak-keys:
                                      _%weak-keys155223%_
                                      'weak-values:
                                      _%weak-values155225%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155583%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155583%_)))
                                         '#t)
                                    _%$obj155583%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155583%_)))))
                             (_%ht155609%_
                              (let* ((_%ht155589%_ _%ht155586%_)
                                     (_%ht155593%_ _%ht155589%_))
                                (_%__wrap-lock155372%_ _%ht155593%_)))
                             (_%implicit155612%_ true)
                             (_%ht155616%_ _%ht155609%_))
                        (_%__wrap-checked155495%_
                         _%ht155616%_
                         _%implicit155612%_)))))
            (if (or _%weak-keys155223%_ _%weak-values155225%_)
                (_%make-gambit-table155499%_)
                (if (and (or (eq? _%test155215%_ eq?)
                             (eq? _%test155215%_ ##eq?))
                         (or (not _%hash155217%_)
                             (eq? _%hash155217%_ eq?-hash)
                             (eq? _%hash155217%_ eq-hash))
                         (not _%seed155213%_))
                    (_%make-gc-hash-table155498%_)
                    (if (and (or (eq? _%test155215%_ eq?)
                                 (eq? _%test155215%_ ##eq?))
                             (or (not _%hash155217%_)
                                 (eq? _%hash155217%_ eq?-hash)
                                 (eq? _%hash155217%_ eq-hash)))
                        (_%make155497%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test155215%_ eqv?)
                                     (eq? _%test155215%_ ##eqv?))
                                 (or (not _%hash155217%_)
                                     (eq? _%hash155217%_ eqv?-hash)
                                     (eq? _%hash155217%_ eqv-hash)))
                            (_%make155497%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test155215%_ eq?)
                                         (eq? _%test155215%_ ##eq?))
                                     (or (eq? _%hash155217%_ symbolic-hash)
                                         (eq? _%hash155217%_ ##symbol-hash)))
                                (_%make155497%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test155215%_ eq?)
                                             (eq? _%test155215%_ ##eq?))
                                         (eq? _%hash155217%_ immediate-hash))
                                    (_%make155497%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test155215%_ equal?)
                                                 (eq? _%test155215%_ ##equal?)
                                                 (eq? _%test155215%_ string=?)
                                                 (eq? _%test155215%_
                                                      ##string=?))
                                             (or (eq? _%hash155217%_
                                                      string-hash)
                                                 (eq? _%hash155217%_
                                                      ##string=?-hash)))
                                        (_%make155497%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test155215%_ equal?)
                                                 (not _%hash155217%_))
                                            (_%make155497%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test155215%_)
                                                (if (procedure? _%hash155217%_)
                                                    (_%make155497%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash155217%_
                                                     _%test155215%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash155217%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test155215%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords155781%_ . _%args155782%_)
        (apply make-hash-table__%
               _%@@keywords155781%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155781%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155781%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155781%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155781%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords155781%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155781%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155781%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155781%_
                  'weak-values:
                  absent-value))
               _%args155782%_)))
    (define make-hash-table
      (lambda _%args155199155788%_
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
               _%args155199155788%_)))
    (define make-hash-table-eq
      (lambda _%args155188%_
        (apply make-hash-table 'test: eq? _%args155188%_)))
    (define make-hash-table-eqv
      (lambda _%args155186%_
        (apply make-hash-table 'test: eqv? _%args155186%_)))
    (define make-hash-table-symbolic
      (lambda _%args155184%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args155184%_)))
    (define make-hash-table-string
      (lambda _%args155182%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args155182%_)))
    (define make-hash-table-immediate
      (lambda _%args155180%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args155180%_)))
    (define list->hash-table
      (lambda (_%lst155177%_ . _%args155178%_)
        (list->hash-table!
         _%lst155177%_
         (apply make-hash-table
                'size:
                (length _%lst155177%_)
                _%args155178%_))))
    (define list->hash-table-eq
      (lambda (_%lst155174%_ . _%args155175%_)
        (list->hash-table!
         _%lst155174%_
         (apply make-hash-table-eq
                'size:
                (length _%lst155174%_)
                _%args155175%_))))
    (define list->hash-table-eqv
      (lambda (_%lst155171%_ . _%args155172%_)
        (list->hash-table!
         _%lst155171%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst155171%_)
                _%args155172%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst155168%_ . _%args155169%_)
        (list->hash-table!
         _%lst155168%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst155168%_)
                _%args155169%_))))
    (define list->hash-table-string
      (lambda (_%lst155165%_ . _%args155166%_)
        (list->hash-table!
         _%lst155165%_
         (apply make-hash-table-string
                'size:
                (length _%lst155165%_)
                _%args155166%_))))
    (define list->hash-table-immediate
      (lambda (_%lst155162%_ . _%args155163%_)
        (list->hash-table!
         _%lst155162%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst155162%_)
                _%args155163%_))))
    (define list->hash-table!
      (lambda (_%lst155113%_ _%h155114%_)
        (for-each
         (lambda (_%el155116%_)
           (let* ((_%el155117155124%_ _%el155116%_)
                  (_%E155119155127%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el155117155124%_
                              '([k . v])))
                     '#!void))
                  (_%K155120155150%_
                   (lambda (_%v155130%_ _%k155131%_)
                     (let* ((_%self148260155133%_ _%h155114%_)
                            (_%key155136%_ _%k155131%_)
                            (_%value155139%_ _%v155130%_))
                       (declare (not safe))
                       (let ((_%object155142155147%_
                              (##unchecked-structure-ref
                               _%self148260155133%_
                               '1
                               '#f
                               'set!))
                             (_%method155143155148%_
                              (##unchecked-structure-ref
                               _%self148260155133%_
                               '8
                               '#f
                               'set!)))
                         (_%method155143155148%_
                          _%object155142155147%_
                          _%key155136%_
                          _%value155139%_))))))
             (if (pair? _%el155117155124%_)
                 (let ((_%hd155121155153%_
                        (let ()
                          (declare (not safe))
                          (##car _%el155117155124%_)))
                       (_%tl155122155155%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el155117155124%_))))
                   (let* ((_%k155158%_ _%hd155121155153%_)
                          (_%v155160%_ _%tl155122155155%_))
                     (_%K155120155150%_ _%v155160%_ _%k155158%_)))
                 (_%E155119155127%_))))
         _%lst155113%_)
        _%h155114%_))
    (define plist->hash-table
      (lambda (_%lst155110%_ . _%args155111%_)
        (plist->hash-table!
         _%lst155110%_
         (apply make-hash-table
                'size:
                (length _%lst155110%_)
                _%args155111%_))))
    (define plist->hash-table-eq
      (lambda (_%lst155107%_ . _%args155108%_)
        (plist->hash-table!
         _%lst155107%_
         (apply make-hash-table-eq
                'size:
                (length _%lst155107%_)
                _%args155108%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst155104%_ . _%args155105%_)
        (plist->hash-table!
         _%lst155104%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst155104%_)
                _%args155105%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst155101%_ . _%args155102%_)
        (plist->hash-table!
         _%lst155101%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst155101%_)
                _%args155102%_))))
    (define plist->hash-table-string
      (lambda (_%lst155098%_ . _%args155099%_)
        (plist->hash-table!
         _%lst155098%_
         (apply make-hash-table-string
                'size:
                (length _%lst155098%_)
                _%args155099%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst155095%_ . _%args155096%_)
        (plist->hash-table!
         _%lst155095%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst155095%_)
                _%args155096%_))))
    (define plist->hash-table!
      (lambda (_%lst155018%_ _%h155019%_)
        (let _%loop155021%_ ((_%rest155023%_ _%lst155018%_))
          (let* ((_%rest155024155036%_ _%rest155023%_)
                 (_%else155027155044%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst155018%_)))))
            (let ((_%K155030155076%_
                   (lambda (_%rest155055%_ _%val155056%_ _%key155057%_)
                     (let* ((_%self148260155059%_ _%h155019%_)
                            (_%key155062%_ _%key155057%_)
                            (_%value155065%_ _%val155056%_))
                       (declare (not safe))
                       (let ((_%object155068155073%_
                              (##unchecked-structure-ref
                               _%self148260155059%_
                               '1
                               '#f
                               'set!))
                             (_%method155069155074%_
                              (##unchecked-structure-ref
                               _%self148260155059%_
                               '8
                               '#f
                               'set!)))
                         (_%method155069155074%_
                          _%object155068155073%_
                          _%key155062%_
                          _%value155065%_)))
                     (_%loop155021%_ _%rest155055%_)))
                  (_%K155029155049%_ (lambda () _%h155019%_)))
              (let ((_%try-match155026155052%_
                     (lambda ()
                       (if (null? _%rest155024155036%_)
                           (_%K155029155049%_)
                           (_%else155027155044%_)))))
                (if (pair? _%rest155024155036%_)
                    (let ((_%tl155032155081%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest155024155036%_)))
                          (_%hd155031155079%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest155024155036%_))))
                      (if (pair? _%tl155032155081%_)
                          (let ((_%tl155034155088%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl155032155081%_)))
                                (_%hd155033155086%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl155032155081%_))))
                            (let ((_%key155084%_ _%hd155031155079%_)
                                  (_%val155091%_ _%hd155033155086%_)
                                  (_%rest155093%_ _%tl155034155088%_))
                              (_%K155030155076%_
                               _%rest155093%_
                               _%val155091%_
                               _%key155084%_)))
                          (_%else155027155044%_)))
                    (_%try-match155026155052%_))))))))
    (define __hash-length
      (lambda (_%h154967%_)
        (let* ((_%h154970%_ _%h154967%_)
               (_%self147773154979%_ _%h154970%_)
               (_%self147773154986%_
                (let ((_%$obj154983%_ _%self147773154979%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154983%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154983%_)))
                           '#t)
                      _%$obj154983%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154983%_)))))
               (_%self147773154988%_ _%self147773154986%_))
          (if __DEBUG
              (let ((_%val155008%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object155000155005%_
                              (##unchecked-structure-ref
                               _%self147773154988%_
                               '1
                               '#f
                               'length))
                             (_%method155001155006%_
                              (##unchecked-structure-ref
                               _%self147773154988%_
                               '6
                               '#f
                               'length)))
                         (_%method155001155006%_ _%object155000155005%_)))))
                (if (fixnum? _%val155008%_)
                    _%val155008%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val155008%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object155010155015%_
                       (##unchecked-structure-ref
                        _%self147773154988%_
                        '1
                        '#f
                        'length))
                      (_%method155011155016%_
                       (##unchecked-structure-ref
                        _%self147773154988%_
                        '6
                        '#f
                        'length)))
                  (_%method155011155016%_ _%object155010155015%_)))))))
    (define hash-length
      (lambda (_%h154949%_)
        (let* ((_%h154955%_
                (let ((_%$obj154952%_ _%h154949%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154952%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154952%_)))
                           '#t)
                      _%$obj154952%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154952%_)))))
               (_%h154957%_ _%h154955%_))
          (__hash-length _%h154957%_))))
    (define __hash-ref__%
      (lambda (_%h154877%_ _%key154878%_ _%default154879%_)
        (let* ((_%h154882%_ _%h154877%_)
               (_%result154935%_
                (let* ((_%self148017154891%_ _%h154882%_)
                       (_%key154894%_ _%key154878%_)
                       (_%default154897%_ _%default154879%_)
                       (_%self148017154904%_
                        (let ((_%$obj154901%_ _%self148017154891%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj154901%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj154901%_)))
                                   '#t)
                              _%$obj154901%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj154901%_)))))
                       (_%self148017154906%_ _%self148017154904%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object154920154925%_
                               (##unchecked-structure-ref
                                _%self148017154906%_
                                '1
                                '#f
                                'ref))
                              (_%method154921154926%_
                               (##unchecked-structure-ref
                                _%self148017154906%_
                                '7
                                '#f
                                'ref)))
                          (_%method154921154926%_
                           _%object154920154925%_
                           _%key154894%_
                           _%default154897%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object154927154932%_
                               (##unchecked-structure-ref
                                _%self148017154906%_
                                '1
                                '#f
                                'ref))
                              (_%method154928154933%_
                               (##unchecked-structure-ref
                                _%self148017154906%_
                                '7
                                '#f
                                'ref)))
                          (_%method154928154933%_
                           _%object154927154932%_
                           _%key154894%_
                           _%default154897%_)))))))
          (if (eq? _%result154935%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h154882%_
               'key:
               _%key154878%_)
              _%result154935%_))))
    (define __hash-ref__0
      (lambda (_%h154940%_ _%key154941%_)
        (let ((_%default154943%_ absent-obj))
          (__hash-ref__% _%h154940%_ _%key154941%_ _%default154943%_))))
    (define __hash-ref
      (lambda _g163257_
        (let ((_g163258_ (let () (declare (not safe)) (##length _g163257_))))
          (cond ((let () (declare (not safe)) (##fx= _g163258_ 2))
                 (apply __hash-ref__0 _g163257_))
                ((let () (declare (not safe)) (##fx= _g163258_ 3))
                 (apply __hash-ref__% _g163257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g163257_))))))
    (define hash-ref__%
      (lambda (_%h154844%_ _%key154845%_ _%default154846%_)
        (let* ((_%h154852%_
                (let ((_%$obj154849%_ _%h154844%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154849%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154849%_)))
                           '#t)
                      _%$obj154849%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154849%_)))))
               (_%h154854%_ _%h154852%_))
          (__hash-ref__% _%h154854%_ _%key154845%_ _%default154846%_))))
    (define hash-ref__0
      (lambda (_%h154867%_ _%key154868%_)
        (let ((_%default154870%_ absent-obj))
          (hash-ref__% _%h154867%_ _%key154868%_ _%default154870%_))))
    (define hash-ref
      (lambda _g163259_
        (let ((_g163260_ (let () (declare (not safe)) (##length _g163259_))))
          (cond ((let () (declare (not safe)) (##fx= _g163260_ 2))
                 (apply hash-ref__0 _g163259_))
                ((let () (declare (not safe)) (##fx= _g163260_ 3))
                 (apply hash-ref__% _g163259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g163259_))))))
    (define __hash-get
      (lambda (_%h154786%_ _%key154787%_)
        (let* ((_%h154790%_ _%h154786%_)
               (_%self148017154799%_ _%h154790%_)
               (_%key154802%_ _%key154787%_)
               (_%default154805%_ '#f)
               (_%self148017154812%_
                (let ((_%$obj154809%_ _%self148017154799%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154809%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154809%_)))
                           '#t)
                      _%$obj154809%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154809%_)))))
               (_%self148017154814%_ _%self148017154812%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154828154833%_
                       (##unchecked-structure-ref
                        _%self148017154814%_
                        '1
                        '#f
                        'ref))
                      (_%method154829154834%_
                       (##unchecked-structure-ref
                        _%self148017154814%_
                        '7
                        '#f
                        'ref)))
                  (_%method154829154834%_
                   _%object154828154833%_
                   _%key154802%_
                   _%default154805%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154835154840%_
                       (##unchecked-structure-ref
                        _%self148017154814%_
                        '1
                        '#f
                        'ref))
                      (_%method154836154841%_
                       (##unchecked-structure-ref
                        _%self148017154814%_
                        '7
                        '#f
                        'ref)))
                  (_%method154836154841%_
                   _%object154835154840%_
                   _%key154802%_
                   _%default154805%_)))))))
    (define hash-get
      (lambda (_%h154767%_ _%key154768%_)
        (let* ((_%h154774%_
                (let ((_%$obj154771%_ _%h154767%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154771%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154771%_)))
                           '#t)
                      _%$obj154771%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154771%_)))))
               (_%h154776%_ _%h154774%_))
          (__hash-get _%h154776%_ _%key154768%_))))
    (define __hash-put!
      (lambda (_%h154709%_ _%key154710%_ _%value154711%_)
        (let* ((_%h154714%_ _%h154709%_)
               (_%self148261154723%_ _%h154714%_)
               (_%key154726%_ _%key154710%_)
               (_%value154729%_ _%value154711%_)
               (_%self148261154736%_
                (let ((_%$obj154733%_ _%self148261154723%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154733%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154733%_)))
                           '#t)
                      _%$obj154733%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154733%_)))))
               (_%self148261154738%_ _%self148261154736%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154752154757%_
                       (##unchecked-structure-ref
                        _%self148261154738%_
                        '1
                        '#f
                        'set!))
                      (_%method154753154758%_
                       (##unchecked-structure-ref
                        _%self148261154738%_
                        '8
                        '#f
                        'set!)))
                  (_%method154753154758%_
                   _%object154752154757%_
                   _%key154726%_
                   _%value154729%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154759154764%_
                       (##unchecked-structure-ref
                        _%self148261154738%_
                        '1
                        '#f
                        'set!))
                      (_%method154760154765%_
                       (##unchecked-structure-ref
                        _%self148261154738%_
                        '8
                        '#f
                        'set!)))
                  (_%method154760154765%_
                   _%object154759154764%_
                   _%key154726%_
                   _%value154729%_)))))))
    (define hash-put!
      (lambda (_%h154689%_ _%key154690%_ _%value154691%_)
        (let* ((_%h154697%_
                (let ((_%$obj154694%_ _%h154689%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154694%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154694%_)))
                           '#t)
                      _%$obj154694%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154694%_)))))
               (_%h154699%_ _%h154697%_))
          (__hash-put! _%h154699%_ _%key154690%_ _%value154691%_))))
    (define __hash-update!__%
      (lambda (_%h154602%_ _%key154603%_ _%update154604%_ _%default154605%_)
        (let* ((_%h154608%_ _%h154602%_)
               (_%self148505154617%_ _%h154608%_)
               (_%key154620%_ _%key154603%_)
               (_%proc154623%_ _%update154604%_)
               (_%default154626%_ _%default154605%_)
               (_%self148505154633%_
                (let ((_%$obj154630%_ _%self148505154617%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154630%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154630%_)))
                           '#t)
                      _%$obj154630%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154630%_)))))
               (_%self148505154635%_ _%self148505154633%_))
          (if (procedure? _%proc154623%_)
              (let ((_%proc154651%_ _%proc154623%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object154660154665%_
                             (##unchecked-structure-ref
                              _%self148505154635%_
                              '1
                              '#f
                              'update!))
                            (_%method154661154666%_
                             (##unchecked-structure-ref
                              _%self148505154635%_
                              '9
                              '#f
                              'update!)))
                        (_%method154661154666%_
                         _%object154660154665%_
                         _%key154620%_
                         _%proc154651%_
                         _%default154626%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object154667154672%_
                             (##unchecked-structure-ref
                              _%self148505154635%_
                              '1
                              '#f
                              'update!))
                            (_%method154668154673%_
                             (##unchecked-structure-ref
                              _%self148505154635%_
                              '9
                              '#f
                              'update!)))
                        (_%method154668154673%_
                         _%object154667154672%_
                         _%key154620%_
                         _%proc154651%_
                         _%default154626%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc154623%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h154678%_ _%key154679%_ _%update154680%_)
        (let ((_%default154682%_ '#!void))
          (__hash-update!__%
           _%h154678%_
           _%key154679%_
           _%update154680%_
           _%default154682%_))))
    (define __hash-update!
      (lambda _g163261_
        (let ((_g163262_ (let () (declare (not safe)) (##length _g163261_))))
          (cond ((let () (declare (not safe)) (##fx= _g163262_ 3))
                 (apply __hash-update!__0 _g163261_))
                ((let () (declare (not safe)) (##fx= _g163262_ 4))
                 (apply __hash-update!__% _g163261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g163261_))))))
    (define hash-update!__%
      (lambda (_%h154566%_ _%key154567%_ _%update154568%_ _%default154569%_)
        (let* ((_%h154575%_
                (let ((_%$obj154572%_ _%h154566%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154572%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154572%_)))
                           '#t)
                      _%$obj154572%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154572%_)))))
               (_%h154577%_ _%h154575%_))
          (__hash-update!__%
           _%h154577%_
           _%key154567%_
           _%update154568%_
           _%default154569%_))))
    (define hash-update!__0
      (lambda (_%h154590%_ _%key154591%_ _%update154592%_)
        (let ((_%default154594%_ '#!void))
          (hash-update!__%
           _%h154590%_
           _%key154591%_
           _%update154592%_
           _%default154594%_))))
    (define hash-update!
      (lambda _g163263_
        (let ((_g163264_ (let () (declare (not safe)) (##length _g163263_))))
          (cond ((let () (declare (not safe)) (##fx= _g163264_ 3))
                 (apply hash-update!__0 _g163263_))
                ((let () (declare (not safe)) (##fx= _g163264_ 4))
                 (apply hash-update!__% _g163263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g163263_))))))
    (define __hash-remove!
      (lambda (_%h154512%_ _%key154513%_)
        (let* ((_%h154516%_ _%h154512%_)
               (_%self147285154525%_ _%h154516%_)
               (_%key154528%_ _%key154513%_)
               (_%self147285154535%_
                (let ((_%$obj154532%_ _%self147285154525%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154532%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154532%_)))
                           '#t)
                      _%$obj154532%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154532%_)))))
               (_%self147285154537%_ _%self147285154535%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154550154555%_
                       (##unchecked-structure-ref
                        _%self147285154537%_
                        '1
                        '#f
                        'delete!))
                      (_%method154551154556%_
                       (##unchecked-structure-ref
                        _%self147285154537%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154551154556%_
                   _%object154550154555%_
                   _%key154528%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154557154562%_
                       (##unchecked-structure-ref
                        _%self147285154537%_
                        '1
                        '#f
                        'delete!))
                      (_%method154558154563%_
                       (##unchecked-structure-ref
                        _%self147285154537%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154558154563%_
                   _%object154557154562%_
                   _%key154528%_)))))))
    (define hash-remove!
      (lambda (_%h154493%_ _%key154494%_)
        (let* ((_%h154500%_
                (let ((_%$obj154497%_ _%h154493%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154497%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154497%_)))
                           '#t)
                      _%$obj154497%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154497%_)))))
               (_%h154502%_ _%h154500%_))
          (__hash-remove! _%h154502%_ _%key154494%_))))
    (define __hash-key?
      (lambda (_%h154436%_ _%k154437%_)
        (let ((_%h154440%_ _%h154436%_))
          (not (eq? (let* ((_%self148017154449%_ _%h154440%_)
                           (_%key154452%_ _%k154437%_)
                           (_%default154455%_ absent-value)
                           (_%self148017154462%_
                            (let ((_%$obj154459%_ _%self148017154449%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154459%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154459%_)))
                                       '#t)
                                  _%$obj154459%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154459%_)))))
                           (_%self148017154464%_ _%self148017154462%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object154478154483%_
                                   (##unchecked-structure-ref
                                    _%self148017154464%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154479154484%_
                                   (##unchecked-structure-ref
                                    _%self148017154464%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154479154484%_
                               _%object154478154483%_
                               _%key154452%_
                               _%default154455%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object154485154490%_
                                   (##unchecked-structure-ref
                                    _%self148017154464%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154486154491%_
                                   (##unchecked-structure-ref
                                    _%self148017154464%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154486154491%_
                               _%object154485154490%_
                               _%key154452%_
                               _%default154455%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h154417%_ _%k154418%_)
        (let* ((_%h154424%_
                (let ((_%$obj154421%_ _%h154417%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154421%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154421%_)))
                           '#t)
                      _%$obj154421%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154421%_)))))
               (_%h154426%_ _%h154424%_))
          (__hash-key? _%h154426%_ _%k154418%_))))
    (define __hash->list
      (lambda (_%h154349%_)
        (let* ((_%h154352%_ _%h154349%_) (_%lst154361%_ '()))
          (let* ((_%self147529154363%_ _%h154352%_)
                 (_%proc154369%_
                  (lambda (_%k154366%_ _%v154367%_)
                    (set! _%lst154361%_
                          (cons (cons _%k154366%_ _%v154367%_)
                                _%lst154361%_))))
                 (_%self147529154376%_
                  (let ((_%$obj154373%_ _%self147529154363%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154373%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154373%_)))
                             '#t)
                        _%$obj154373%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154373%_)))))
                 (_%self147529154378%_ _%self147529154376%_)
                 (_%proc154393%_ _%proc154369%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154402154407%_
                         (##unchecked-structure-ref
                          _%self147529154378%_
                          '1
                          '#f
                          'for-each))
                        (_%method154403154408%_
                         (##unchecked-structure-ref
                          _%self147529154378%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154403154408%_
                     _%object154402154407%_
                     _%proc154393%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154409154414%_
                         (##unchecked-structure-ref
                          _%self147529154378%_
                          '1
                          '#f
                          'for-each))
                        (_%method154410154415%_
                         (##unchecked-structure-ref
                          _%self147529154378%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154410154415%_
                     _%object154409154414%_
                     _%proc154393%_)))))
          _%lst154361%_)))
    (define hash->list
      (lambda (_%h154331%_)
        (let* ((_%h154337%_
                (let ((_%$obj154334%_ _%h154331%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154334%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154334%_)))
                           '#t)
                      _%$obj154334%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154334%_)))))
               (_%h154339%_ _%h154337%_))
          (__hash->list _%h154339%_))))
    (define __hash->plist
      (lambda (_%h154263%_)
        (let* ((_%h154266%_ _%h154263%_) (_%lst154275%_ '()))
          (let* ((_%self147529154277%_ _%h154266%_)
                 (_%proc154283%_
                  (lambda (_%k154280%_ _%v154281%_)
                    (set! _%lst154275%_
                          (cons _%k154280%_
                                (cons _%v154281%_ _%lst154275%_)))))
                 (_%self147529154290%_
                  (let ((_%$obj154287%_ _%self147529154277%_))
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
                 (_%self147529154292%_ _%self147529154290%_)
                 (_%proc154307%_ _%proc154283%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154316154321%_
                         (##unchecked-structure-ref
                          _%self147529154292%_
                          '1
                          '#f
                          'for-each))
                        (_%method154317154322%_
                         (##unchecked-structure-ref
                          _%self147529154292%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154317154322%_
                     _%object154316154321%_
                     _%proc154307%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154323154328%_
                         (##unchecked-structure-ref
                          _%self147529154292%_
                          '1
                          '#f
                          'for-each))
                        (_%method154324154329%_
                         (##unchecked-structure-ref
                          _%self147529154292%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154324154329%_
                     _%object154323154328%_
                     _%proc154307%_)))))
          _%lst154275%_)))
    (define hash->plist
      (lambda (_%h154245%_)
        (let* ((_%h154251%_
                (let ((_%$obj154248%_ _%h154245%_))
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
               (_%h154253%_ _%h154251%_))
          (__hash->plist _%h154253%_))))
    (define __hash-for-each
      (lambda (_%proc154174%_ _%h154175%_)
        (let* ((_%proc154178%_ _%proc154174%_)
               (_%h154186%_ _%h154175%_)
               (_%self147529154195%_ _%h154186%_)
               (_%proc154198%_ _%proc154178%_)
               (_%self147529154205%_
                (let ((_%$obj154202%_ _%self147529154195%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154202%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154202%_)))
                           '#t)
                      _%$obj154202%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154202%_)))))
               (_%self147529154207%_ _%self147529154205%_)
               (_%proc154221%_ _%proc154198%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154230154235%_
                       (##unchecked-structure-ref
                        _%self147529154207%_
                        '1
                        '#f
                        'for-each))
                      (_%method154231154236%_
                       (##unchecked-structure-ref
                        _%self147529154207%_
                        '5
                        '#f
                        'for-each)))
                  (_%method154231154236%_
                   _%object154230154235%_
                   _%proc154221%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154237154242%_
                       (##unchecked-structure-ref
                        _%self147529154207%_
                        '1
                        '#f
                        'for-each))
                      (_%method154238154243%_
                       (##unchecked-structure-ref
                        _%self147529154207%_
                        '5
                        '#f
                        'for-each)))
                  (_%method154238154243%_
                   _%object154237154242%_
                   _%proc154221%_)))))))
    (define hash-for-each
      (lambda (_%proc154145%_ _%h154146%_)
        (if (procedure? _%proc154145%_)
            (let* ((_%proc154150%_ _%proc154145%_)
                   (_%h154162%_
                    (let ((_%$obj154159%_ _%h154146%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj154159%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj154159%_)))
                               '#t)
                          _%$obj154159%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj154159%_)))))
                   (_%h154164%_ _%h154162%_))
              (__hash-for-each _%proc154150%_ _%h154164%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@584.22-584.26"
               'contract:
               'procedure?
               'value:
               _%proc154145%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc154068%_ _%h154069%_)
        (let* ((_%proc154072%_ _%proc154068%_)
               (_%h154080%_ _%h154069%_)
               (_%result154089%_ '()))
          (let* ((_%self147529154091%_ _%h154080%_)
                 (_%proc154097%_
                  (lambda (_%k154094%_ _%v154095%_)
                    (set! _%result154089%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc154072%_ _%k154094%_ _%v154095%_))
                                _%result154089%_))))
                 (_%self147529154104%_
                  (let ((_%$obj154101%_ _%self147529154091%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154101%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154101%_)))
                             '#t)
                        _%$obj154101%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154101%_)))))
                 (_%self147529154106%_ _%self147529154104%_)
                 (_%proc154121%_ _%proc154097%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154130154135%_
                         (##unchecked-structure-ref
                          _%self147529154106%_
                          '1
                          '#f
                          'for-each))
                        (_%method154131154136%_
                         (##unchecked-structure-ref
                          _%self147529154106%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154131154136%_
                     _%object154130154135%_
                     _%proc154121%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154137154142%_
                         (##unchecked-structure-ref
                          _%self147529154106%_
                          '1
                          '#f
                          'for-each))
                        (_%method154138154143%_
                         (##unchecked-structure-ref
                          _%self147529154106%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154138154143%_
                     _%object154137154142%_
                     _%proc154121%_)))))
          _%result154089%_)))
    (define hash-map
      (lambda (_%proc154039%_ _%h154040%_)
        (if (procedure? _%proc154039%_)
            (let* ((_%proc154044%_ _%proc154039%_)
                   (_%h154056%_
                    (let ((_%$obj154053%_ _%h154040%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj154053%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj154053%_)))
                               '#t)
                          _%$obj154053%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj154053%_)))))
                   (_%h154058%_ _%h154056%_))
              (__hash-map _%proc154044%_ _%h154058%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@587.17-587.21"
               'contract:
               'procedure?
               'value:
               _%proc154039%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc153961%_ _%iv153962%_ _%h153963%_)
        (let* ((_%proc153966%_ _%proc153961%_)
               (_%h153974%_ _%h153963%_)
               (_%result153983%_ _%iv153962%_))
          (let* ((_%self147529153985%_ _%h153974%_)
                 (_%proc153991%_
                  (lambda (_%k153988%_ _%v153989%_)
                    (set! _%result153983%_
                          (let ()
                            (declare (not safe))
                            (_%proc153966%_
                             _%k153988%_
                             _%v153989%_
                             _%result153983%_)))))
                 (_%self147529153998%_
                  (let ((_%$obj153995%_ _%self147529153985%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153995%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153995%_)))
                             '#t)
                        _%$obj153995%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153995%_)))))
                 (_%self147529154000%_ _%self147529153998%_)
                 (_%proc154015%_ _%proc153991%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154024154029%_
                         (##unchecked-structure-ref
                          _%self147529154000%_
                          '1
                          '#f
                          'for-each))
                        (_%method154025154030%_
                         (##unchecked-structure-ref
                          _%self147529154000%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154025154030%_
                     _%object154024154029%_
                     _%proc154015%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154031154036%_
                         (##unchecked-structure-ref
                          _%self147529154000%_
                          '1
                          '#f
                          'for-each))
                        (_%method154032154037%_
                         (##unchecked-structure-ref
                          _%self147529154000%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154032154037%_
                     _%object154031154036%_
                     _%proc154015%_)))))
          _%result153983%_)))
    (define hash-fold
      (lambda (_%proc153931%_ _%iv153932%_ _%h153933%_)
        (if (procedure? _%proc153931%_)
            (let* ((_%proc153937%_ _%proc153931%_)
                   (_%h153949%_
                    (let ((_%$obj153946%_ _%h153933%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj153946%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj153946%_)))
                               '#t)
                          _%$obj153946%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj153946%_)))))
                   (_%h153951%_ _%h153949%_))
              (__hash-fold _%proc153937%_ _%iv153932%_ _%h153951%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@593.18-593.22"
               'contract:
               'procedure?
               'value:
               _%proc153931%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc153838%_ _%h153839%_ _%default-value153840%_)
        (let* ((_%proc153843%_ _%proc153838%_)
               (_%h153851%_ _%h153839%_)
               (__tmp163265
                (lambda (_%return153860%_)
                  (let* ((_%self147529153862%_ _%h153851%_)
                         (_%proc153871%_
                          (lambda (_%k153865%_ _%v153866%_)
                            (let ((_%$e153868%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc153843%_
                                      _%k153865%_
                                      _%v153866%_))))
                              (if _%$e153868%_
                                  (_%return153860%_ _%$e153868%_)
                                  '#!void))))
                         (_%self147529153878%_
                          (let ((_%$obj153875%_ _%self147529153862%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj153875%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj153875%_)))
                                     '#t)
                                _%$obj153875%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj153875%_)))))
                         (_%self147529153880%_ _%self147529153878%_)
                         (_%proc153895%_ _%proc153871%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object153904153909%_
                                 (##unchecked-structure-ref
                                  _%self147529153880%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153905153910%_
                                 (##unchecked-structure-ref
                                  _%self147529153880%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153905153910%_
                             _%object153904153909%_
                             _%proc153895%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object153911153916%_
                                 (##unchecked-structure-ref
                                  _%self147529153880%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153912153917%_
                                 (##unchecked-structure-ref
                                  _%self147529153880%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153912153917%_
                             _%object153911153916%_
                             _%proc153895%_)))))
                  _%default-value153840%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp163265))))
    (define __hash-find__0
      (lambda (_%proc153922%_ _%h153923%_)
        (let ((_%default-value153925%_ '#f))
          (__hash-find__%
           _%proc153922%_
           _%h153923%_
           _%default-value153925%_))))
    (define __hash-find
      (lambda _g163266_
        (let ((_g163267_ (let () (declare (not safe)) (##length _g163266_))))
          (cond ((let () (declare (not safe)) (##fx= _g163267_ 2))
                 (apply __hash-find__0 _g163266_))
                ((let () (declare (not safe)) (##fx= _g163267_ 3))
                 (apply __hash-find__% _g163266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g163266_))))))
    (define hash-find__%
      (lambda (_%proc153795%_ _%h153796%_ _%default-value153797%_)
        (if (procedure? _%proc153795%_)
            (let* ((_%proc153801%_ _%proc153795%_)
                   (_%h153813%_
                    (let ((_%$obj153810%_ _%h153796%_))
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
                   (_%h153815%_ _%h153813%_))
              (__hash-find__%
               _%proc153801%_
               _%h153815%_
               _%default-value153797%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc153795%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc153828%_ _%h153829%_)
        (let ((_%default-value153831%_ '#f))
          (hash-find__% _%proc153828%_ _%h153829%_ _%default-value153831%_))))
    (define hash-find
      (lambda _g163268_
        (let ((_g163269_ (let () (declare (not safe)) (##length _g163268_))))
          (cond ((let () (declare (not safe)) (##fx= _g163269_ 2))
                 (apply hash-find__0 _g163268_))
                ((let () (declare (not safe)) (##fx= _g163269_ 3))
                 (apply hash-find__% _g163268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g163268_))))))
    (define __hash-keys
      (lambda (_%h153726%_)
        (let* ((_%h153729%_ _%h153726%_) (_%result153738%_ '()))
          (let* ((_%self147529153740%_ _%h153729%_)
                 (_%proc153746%_
                  (lambda (_%k153743%_ _%v153744%_)
                    (set! _%result153738%_
                          (cons _%k153743%_ _%result153738%_))))
                 (_%self147529153753%_
                  (let ((_%$obj153750%_ _%self147529153740%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153750%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153750%_)))
                             '#t)
                        _%$obj153750%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153750%_)))))
                 (_%self147529153755%_ _%self147529153753%_)
                 (_%proc153770%_ _%proc153746%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153779153784%_
                         (##unchecked-structure-ref
                          _%self147529153755%_
                          '1
                          '#f
                          'for-each))
                        (_%method153780153785%_
                         (##unchecked-structure-ref
                          _%self147529153755%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153780153785%_
                     _%object153779153784%_
                     _%proc153770%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153786153791%_
                         (##unchecked-structure-ref
                          _%self147529153755%_
                          '1
                          '#f
                          'for-each))
                        (_%method153787153792%_
                         (##unchecked-structure-ref
                          _%self147529153755%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153787153792%_
                     _%object153786153791%_
                     _%proc153770%_)))))
          _%result153738%_)))
    (define hash-keys
      (lambda (_%h153708%_)
        (let* ((_%h153714%_
                (let ((_%$obj153711%_ _%h153708%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153711%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153711%_)))
                           '#t)
                      _%$obj153711%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153711%_)))))
               (_%h153716%_ _%h153714%_))
          (__hash-keys _%h153716%_))))
    (define __hash-values
      (lambda (_%h153640%_)
        (let* ((_%h153643%_ _%h153640%_) (_%result153652%_ '()))
          (let* ((_%self147529153654%_ _%h153643%_)
                 (_%proc153660%_
                  (lambda (_%k153657%_ _%v153658%_)
                    (set! _%result153652%_
                          (cons _%v153658%_ _%result153652%_))))
                 (_%self147529153667%_
                  (let ((_%$obj153664%_ _%self147529153654%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153664%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153664%_)))
                             '#t)
                        _%$obj153664%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153664%_)))))
                 (_%self147529153669%_ _%self147529153667%_)
                 (_%proc153684%_ _%proc153660%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153693153698%_
                         (##unchecked-structure-ref
                          _%self147529153669%_
                          '1
                          '#f
                          'for-each))
                        (_%method153694153699%_
                         (##unchecked-structure-ref
                          _%self147529153669%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153694153699%_
                     _%object153693153698%_
                     _%proc153684%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153700153705%_
                         (##unchecked-structure-ref
                          _%self147529153669%_
                          '1
                          '#f
                          'for-each))
                        (_%method153701153706%_
                         (##unchecked-structure-ref
                          _%self147529153669%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153701153706%_
                     _%object153700153705%_
                     _%proc153684%_)))))
          _%result153652%_)))
    (define hash-values
      (lambda (_%h153622%_)
        (let* ((_%h153628%_
                (let ((_%$obj153625%_ _%h153622%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153625%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153625%_)))
                           '#t)
                      _%$obj153625%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153625%_)))))
               (_%h153630%_ _%h153628%_))
          (__hash-values _%h153630%_))))
    (define __hash-copy
      (lambda (_%h153571%_)
        (let* ((_%h153574%_ _%h153571%_)
               (_%self147041153583%_ _%h153574%_)
               (_%self147041153590%_
                (let ((_%$obj153587%_ _%self147041153583%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153587%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153587%_)))
                           '#t)
                      _%$obj153587%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153587%_)))))
               (_%self147041153592%_ _%self147041153590%_))
          (if __DEBUG
              (let ((_%$obj153612%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object153604153609%_
                              (##unchecked-structure-ref
                               _%self147041153592%_
                               '1
                               '#f
                               'copy))
                             (_%method153605153610%_
                              (##unchecked-structure-ref
                               _%self147041153592%_
                               '3
                               '#f
                               'copy)))
                         (_%method153605153610%_ _%object153604153609%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj153612%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj153612%_)))
                         '#t)
                    _%$obj153612%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj153612%_))))
              (let ()
                (declare (not safe))
                (let ((_%object153614153619%_
                       (##unchecked-structure-ref
                        _%self147041153592%_
                        '1
                        '#f
                        'copy))
                      (_%method153615153620%_
                       (##unchecked-structure-ref
                        _%self147041153592%_
                        '3
                        '#f
                        'copy)))
                  (_%method153615153620%_ _%object153614153619%_)))))))
    (define hash-copy
      (lambda (_%h153553%_)
        (let* ((_%h153559%_
                (let ((_%$obj153556%_ _%h153553%_))
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
               (_%h153561%_ _%h153559%_))
          (__hash-copy _%h153561%_))))
    (define __hash-clear!
      (lambda (_%h153505%_)
        (let* ((_%h153508%_ _%h153505%_)
               (_%self146796153517%_ _%h153508%_)
               (_%self146796153524%_
                (let ((_%$obj153521%_ _%self146796153517%_))
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
               (_%self146796153526%_ _%self146796153524%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153538153543%_
                       (##unchecked-structure-ref
                        _%self146796153526%_
                        '1
                        '#f
                        'clear!))
                      (_%method153539153544%_
                       (##unchecked-structure-ref
                        _%self146796153526%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153539153544%_ _%object153538153543%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153545153550%_
                       (##unchecked-structure-ref
                        _%self146796153526%_
                        '1
                        '#f
                        'clear!))
                      (_%method153546153551%_
                       (##unchecked-structure-ref
                        _%self146796153526%_
                        '2
                        '#f
                        'clear!)))
                  (_%method153546153551%_ _%object153545153550%_)))))))
    (define hash-clear!
      (lambda (_%h153487%_)
        (let* ((_%h153493%_
                (let ((_%$obj153490%_ _%h153487%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153490%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153490%_)))
                           '#t)
                      _%$obj153490%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153490%_)))))
               (_%h153495%_ _%h153493%_))
          (__hash-clear! _%h153495%_))))
    (define __hash-merge
      (lambda (_%h153433%_ . _%rest153434%_)
        (let* ((_%h153437%_ _%h153433%_)
               (_%copy153485%_
                (let* ((_%self147041153446%_ _%h153437%_)
                       (_%self147041153453%_
                        (let ((_%$obj153450%_ _%self147041153446%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153450%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153450%_)))
                                   '#t)
                              _%$obj153450%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153450%_)))))
                       (_%self147041153455%_ _%self147041153453%_))
                  (if __DEBUG
                      (let ((_%$obj153475%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object153467153472%_
                                      (##unchecked-structure-ref
                                       _%self147041153455%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method153468153473%_
                                      (##unchecked-structure-ref
                                       _%self147041153455%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method153468153473%_
                                  _%object153467153472%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj153475%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj153475%_)))
                                 '#t)
                            _%$obj153475%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj153475%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153477153482%_
                               (##unchecked-structure-ref
                                _%self147041153455%_
                                '1
                                '#f
                                'copy))
                              (_%method153478153483%_
                               (##unchecked-structure-ref
                                _%self147041153455%_
                                '3
                                '#f
                                'copy)))
                          (_%method153478153483%_ _%object153477153482%_)))))))
          (apply hash-merge! _%copy153485%_ _%rest153434%_)
          _%copy153485%_)))
    (define hash-merge
      (lambda (_%h153414%_ . _%rest153415%_)
        (let* ((_%h153421%_
                (let ((_%$obj153418%_ _%h153414%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153418%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153418%_)))
                           '#t)
                      _%$obj153418%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153418%_)))))
               (_%h153423%_ _%h153421%_))
          (declare (not safe))
          (##apply __hash-merge _%h153423%_ _%rest153415%_))))
    (define __hash-merge-right
      (lambda (_%h153360%_ . _%rest153361%_)
        (let* ((_%h153364%_ _%h153360%_)
               (_%copy153412%_
                (let* ((_%self147041153373%_ _%h153364%_)
                       (_%self147041153380%_
                        (let ((_%$obj153377%_ _%self147041153373%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153377%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153377%_)))
                                   '#t)
                              _%$obj153377%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153377%_)))))
                       (_%self147041153382%_ _%self147041153380%_))
                  (if __DEBUG
                      (let ((_%$obj153402%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object153394153399%_
                                      (##unchecked-structure-ref
                                       _%self147041153382%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method153395153400%_
                                      (##unchecked-structure-ref
                                       _%self147041153382%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method153395153400%_
                                  _%object153394153399%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj153402%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj153402%_)))
                                 '#t)
                            _%$obj153402%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj153402%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153404153409%_
                               (##unchecked-structure-ref
                                _%self147041153382%_
                                '1
                                '#f
                                'copy))
                              (_%method153405153410%_
                               (##unchecked-structure-ref
                                _%self147041153382%_
                                '3
                                '#f
                                'copy)))
                          (_%method153405153410%_ _%object153404153409%_)))))))
          (apply hash-merge-right! _%copy153412%_ _%rest153361%_)
          _%copy153412%_)))
    (define hash-merge-right
      (lambda (_%h153341%_ . _%rest153342%_)
        (let* ((_%h153348%_
                (let ((_%$obj153345%_ _%h153341%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153345%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153345%_)))
                           '#t)
                      _%$obj153345%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153345%_)))))
               (_%h153350%_ _%h153348%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h153350%_ _%rest153342%_))))
    (define __hash-merge!
      (lambda (_%h153189%_ . _%rest153190%_)
        (let ((_%h153193%_ _%h153189%_))
          (let ((__tmp163270
                 (lambda (_%hr153202%_)
                   (let* ((_%hr153208%_
                           (let ((_%$obj153205%_ _%hr153202%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153205%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153205%_)))
                                      '#t)
                                 _%$obj153205%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153205%_)))))
                          (_%hr153210%_ _%hr153208%_)
                          (_%self147529153223%_ _%hr153210%_)
                          (_%proc153298%_
                           (lambda (_%k153226%_ _%v153227%_)
                             (if (let* ((_%h153229%_ _%h153193%_)
                                        (_%k153232%_ _%k153226%_)
                                        (_%h153239%_
                                         (let ((_%$obj153236%_ _%h153229%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj153236%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj153236%_)))
                                                    '#t)
                                               _%$obj153236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj153236%_)))))
                                        (_%h153241%_ _%h153239%_))
                                   (__hash-key? _%h153241%_ _%k153232%_))
                                 '#!void
                                 (let* ((_%self148261153257%_ _%h153193%_)
                                        (_%key153260%_ _%k153226%_)
                                        (_%value153263%_ _%v153227%_)
                                        (_%self148261153270%_
                                         (let ((_%$obj153267%_
                                                _%self148261153257%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj153267%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj153267%_)))
                                                    '#t)
                                               _%$obj153267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj153267%_)))))
                                        (_%self148261153272%_
                                         _%self148261153270%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object153283153288%_
                                                (##unchecked-structure-ref
                                                 _%self148261153272%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method153284153289%_
                                                (##unchecked-structure-ref
                                                 _%self148261153272%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method153284153289%_
                                            _%object153283153288%_
                                            _%key153260%_
                                            _%value153263%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object153290153295%_
                                                (##unchecked-structure-ref
                                                 _%self148261153272%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method153291153296%_
                                                (##unchecked-structure-ref
                                                 _%self148261153272%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method153291153296%_
                                            _%object153290153295%_
                                            _%key153260%_
                                            _%value153263%_))))))))
                          (_%self147529153305%_
                           (let ((_%$obj153302%_ _%self147529153223%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153302%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153302%_)))
                                      '#t)
                                 _%$obj153302%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153302%_)))))
                          (_%self147529153307%_ _%self147529153305%_)
                          (_%proc153317%_ _%proc153298%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object153326153331%_
                                  (##unchecked-structure-ref
                                   _%self147529153307%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153327153332%_
                                  (##unchecked-structure-ref
                                   _%self147529153307%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153327153332%_
                              _%object153326153331%_
                              _%proc153317%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object153333153338%_
                                  (##unchecked-structure-ref
                                   _%self147529153307%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153334153339%_
                                  (##unchecked-structure-ref
                                   _%self147529153307%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153334153339%_
                              _%object153333153338%_
                              _%proc153317%_))))))))
            (declare (not safe))
            (##for-each __tmp163270 _%rest153190%_))
          _%h153193%_)))
    (define hash-merge!
      (lambda (_%h153170%_ . _%rest153171%_)
        (let* ((_%h153177%_
                (let ((_%$obj153174%_ _%h153170%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153174%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153174%_)))
                           '#t)
                      _%$obj153174%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153174%_)))))
               (_%h153179%_ _%h153177%_))
          (declare (not safe))
          (##apply __hash-merge! _%h153179%_ _%rest153171%_))))
    (define __hash-merge-right!
      (lambda (_%h153041%_ . _%rest153042%_)
        (let ((_%h153045%_ _%h153041%_))
          (let ((__tmp163271
                 (lambda (_%hr153054%_)
                   (let* ((_%hr153060%_
                           (let ((_%$obj153057%_ _%hr153054%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153057%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153057%_)))
                                      '#t)
                                 _%$obj153057%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153057%_)))))
                          (_%hr153062%_ _%hr153060%_)
                          (_%self147529153075%_ _%hr153062%_)
                          (_%proc153127%_
                           (lambda (_%k153078%_ _%v153079%_)
                             (let* ((_%self148261153081%_ _%h153045%_)
                                    (_%key153084%_ _%k153078%_)
                                    (_%value153087%_ _%v153079%_)
                                    (_%self148261153094%_
                                     (let ((_%$obj153091%_
                                            _%self148261153081%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj153091%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj153091%_)))
                                                '#t)
                                           _%$obj153091%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj153091%_)))))
                                    (_%self148261153096%_
                                     _%self148261153094%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153112153117%_
                                            (##unchecked-structure-ref
                                             _%self148261153096%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153113153118%_
                                            (##unchecked-structure-ref
                                             _%self148261153096%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153113153118%_
                                        _%object153112153117%_
                                        _%key153084%_
                                        _%value153087%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153119153124%_
                                            (##unchecked-structure-ref
                                             _%self148261153096%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153120153125%_
                                            (##unchecked-structure-ref
                                             _%self148261153096%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153120153125%_
                                        _%object153119153124%_
                                        _%key153084%_
                                        _%value153087%_)))))))
                          (_%self147529153134%_
                           (let ((_%$obj153131%_ _%self147529153075%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153131%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153131%_)))
                                      '#t)
                                 _%$obj153131%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153131%_)))))
                          (_%self147529153136%_ _%self147529153134%_)
                          (_%proc153146%_ _%proc153127%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object153155153160%_
                                  (##unchecked-structure-ref
                                   _%self147529153136%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153156153161%_
                                  (##unchecked-structure-ref
                                   _%self147529153136%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153156153161%_
                              _%object153155153160%_
                              _%proc153146%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object153162153167%_
                                  (##unchecked-structure-ref
                                   _%self147529153136%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153163153168%_
                                  (##unchecked-structure-ref
                                   _%self147529153136%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153163153168%_
                              _%object153162153167%_
                              _%proc153146%_))))))))
            (declare (not safe))
            (##for-each __tmp163271 _%rest153042%_))
          _%h153045%_)))
    (define hash-merge-right!
      (lambda (_%h153022%_ . _%rest153023%_)
        (let* ((_%h153029%_
                (let ((_%$obj153026%_ _%h153022%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153026%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153026%_)))
                           '#t)
                      _%$obj153026%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153026%_)))))
               (_%h153031%_ _%h153029%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h153031%_ _%rest153023%_))))))
