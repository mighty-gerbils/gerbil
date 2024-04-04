(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712262512)
  (begin
    (define CastError::t
      (let ((__tmp101944 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101944
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101937%_
        (apply make-instance CastError::t _%$args101937%_)))
    (define CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'message)))
    (define CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'irritants)))
    (define CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'where)))
    (define CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'continuation)))
    (define CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'message)))
    (define CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'irritants)))
    (define CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'where)))
    (define CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'continuation)))
    (define &CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'message)))
    (define &CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'irritants)))
    (define &CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'where)))
    (define &CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'continuation)))
    (define &CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'message)))
    (define &CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'irritants)))
    (define &CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'where)))
    (define &CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'continuation)))
    (define CastError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method! CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_%where101811%_ _%message101812%_ . _%irritants101813%_)
        (let ((__tmp101945
               (let ((__obj101940
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101940
                  _%message101812%_
                  'where:
                  _%where101811%_
                  'irritants:
                  _%irritants101813%_)
                 __obj101940)))
          (declare (not safe))
          (raise __tmp101945))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101947 (list)) (__tmp101946 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101947
         '(__object)
         __tmp101946
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-instance::t '__object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-instance::t '__object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-instance::t
         '__object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-instance::t '__object)))
    (define interface-descriptor::t
      (let ((__tmp101949 (list))
            (__tmp101948
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101949
         '(type methods)
         __tmp101948
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101808%_
        (apply make-instance interface-descriptor::t _%$args101808%_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'methods)))
    (define &interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'type)))
    (define &interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-descriptor::t
         'methods)))
    (define &interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'type)))
    (define &interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         interface-descriptor::t
         'methods)))
    (define __interface-hash-key
      (lambda (_%key101806%_)
        (let ((__tmp101951
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101806%_))))
              (__tmp101950
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101806%_)))))
          (declare (not safe))
          (##fxxor __tmp101951 __tmp101950))))
    (define __interface-test-key
      (lambda (_%a101803%_ _%b101804%_)
        (if (let ((__tmp101953
                   (let () (declare (not safe)) (##car _%a101803%_)))
                  (__tmp101952
                   (let () (declare (not safe)) (##car _%b101804%_))))
              (declare (not safe))
              (##eq? __tmp101953 __tmp101952))
            (let ((__tmp101955
                   (let () (declare (not safe)) (##cdr _%a101803%_)))
                  (__tmp101954
                   (let () (declare (not safe)) (##cdr _%b101804%_))))
              (declare (not safe))
              (##eq? __tmp101955 __tmp101954))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101784%_ _%seed101786%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101784%_
           __interface-hash-key
           __interface-test-key
           _%seed101786%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101792%_ '#f) (_%seed101794%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101792%_ _%seed101794%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101796%_)
        (let ((_%seed101798%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101796%_ _%seed101798%_))))
    (define make-prototype-table
      (lambda _g101957_
        (let ((_g101956_ (let () (declare (not safe)) (##length _g101957_))))
          (cond ((let () (declare (not safe)) (##fx= _g101956_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101957_))
                ((let () (declare (not safe)) (##fx= _g101956_ 1))
                 (apply (lambda (_%size-hint101796%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _%size-hint101796%_)))
                        _g101957_))
                ((let () (declare (not safe)) (##fx= _g101956_ 2))
                 (apply (lambda (_%size-hint101800%_ _%seed101801%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _%size-hint101800%_
                             _%seed101801%_)))
                        _g101957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101957_))))))
    (define prototype-table-ref
      (lambda (_%tab101737%_ _%key101738%_ _%default101739%_)
        (let ((_%table101741%_
               (let () (declare (not safe)) (&raw-table-table _%tab101737%_)))
              (_%seed101742%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101737%_))))
          (let* ((_%h101744%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101738%_))
                         _%seed101742%_))
                 (_%size101747%_ (vector-length _%table101741%_))
                 (_%entries101750%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101747%_ '2)))
                 (_%start101753%_
                  (let ((__tmp101958
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101744%_ _%entries101750%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101958 '1))))
            (let _%loop101757%_ ((_%probe101760%_ _%start101753%_)
                                 (_%i101762%_ '1)
                                 (_%deleted101764%_ '#f))
              (let ((_%k101767%_ (vector-ref _%table101741%_ _%probe101760%_)))
                (if (eq? _%k101767%_ (macro-unused-obj))
                    (let () _%default101739%_)
                    (if (eq? _%k101767%_ (macro-deleted-obj))
                        (let ((__tmp101961
                               (let ((_%next-probe101772%_
                                      (fx+ _%start101753%_
                                           _%i101762%_
                                           (fx* _%i101762%_ _%i101762%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101772%_
                                  _%size101747%_)))
                              (__tmp101960
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101762%_ '1)))
                              (__tmp101959
                               (let ((_%$e101775%_ _%deleted101764%_))
                                 (if _%$e101775%_
                                     _%$e101775%_
                                     _%probe101760%_))))
                          (declare (not safe))
                          (_%loop101757%_ __tmp101961 __tmp101960 __tmp101959))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101738%_ _%k101767%_))
                            (let ()
                              (vector-ref
                               _%table101741%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101760%_ '1))))
                            (let ((__tmp101963
                                   (let ((_%next-probe101780%_
                                          (fx+ _%start101753%_
                                               _%i101762%_
                                               (fx* _%i101762%_ _%i101762%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101780%_
                                      _%size101747%_)))
                                  (__tmp101962
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101762%_ '1))))
                              (declare (not safe))
                              (_%loop101757%_
                               __tmp101963
                               __tmp101962
                               _%deleted101764%_)))))))))))
    (define prototype-table-set!
      (lambda (_%tab101733%_ _%key101734%_ _%value101735%_)
        (if (let ((__tmp101966
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101733%_)))
                  (__tmp101964
                   (let ((__tmp101965
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101733%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101965 '4))))
              (declare (not safe))
              (##fx< __tmp101966 __tmp101964))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101733%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set!
           _%tab101733%_
           _%key101734%_
           _%value101735%_))))
    (define __prototype-table-set!
      (lambda (_%tab101684%_ _%key101685%_ _%value101686%_)
        (let ((_%table101689%_
               (let () (declare (not safe)) (&raw-table-table _%tab101684%_)))
              (_%seed101690%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101684%_))))
          (let* ((_%h101692%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101685%_))
                         _%seed101690%_))
                 (_%size101695%_ (vector-length _%table101689%_))
                 (_%entries101698%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101695%_ '2)))
                 (_%start101701%_
                  (let ((__tmp101967
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101692%_ _%entries101698%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101967 '1))))
            (let _%loop101705%_ ((_%probe101708%_ _%start101701%_)
                                 (_%i101710%_ '1)
                                 (_%deleted101712%_ '#f))
              (let ((_%k101715%_ (vector-ref _%table101689%_ _%probe101708%_)))
                (if (eq? _%k101715%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101712%_
                          (begin
                            (vector-set!
                             _%table101689%_
                             _%deleted101712%_
                             _%key101685%_)
                            (vector-set!
                             _%table101689%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101712%_ '1))
                             _%value101686%_)
                            ((lambda ()
                               (let ((__tmp101968
                                      (let ((__tmp101969
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101684%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101969 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101684%_
                                  __tmp101968)))))
                          (begin
                            (vector-set!
                             _%table101689%_
                             _%probe101708%_
                             _%key101685%_)
                            (vector-set!
                             _%table101689%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101708%_ '1))
                             _%value101686%_)
                            ((lambda ()
                               (let ((__tmp101970
                                      (let ((__tmp101971
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101684%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101971 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101684%_
                                  __tmp101970))
                               (let ((__tmp101972
                                      (let ((__tmp101973
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101684%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101973 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101684%_
                                  __tmp101972)))))))
                    (if (eq? _%k101715%_ (macro-deleted-obj))
                        (let ((__tmp101976
                               (let ((_%next-probe101722%_
                                      (fx+ _%start101701%_
                                           _%i101710%_
                                           (fx* _%i101710%_ _%i101710%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101722%_
                                  _%size101695%_)))
                              (__tmp101975
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101710%_ '1)))
                              (__tmp101974
                               (let ((_%$e101725%_ _%deleted101712%_))
                                 (if _%$e101725%_
                                     _%$e101725%_
                                     _%probe101708%_))))
                          (declare (not safe))
                          (_%loop101705%_ __tmp101976 __tmp101975 __tmp101974))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101685%_ _%k101715%_))
                            (let ()
                              (vector-set!
                               _%table101689%_
                               _%probe101708%_
                               _%key101685%_)
                              (vector-set!
                               _%table101689%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101708%_ '1))
                               _%value101686%_))
                            (let ((__tmp101978
                                   (let ((_%next-probe101730%_
                                          (fx+ _%start101701%_
                                               _%i101710%_
                                               (fx* _%i101710%_ _%i101710%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101730%_
                                      _%size101695%_)))
                                  (__tmp101977
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101710%_ '1))))
                              (declare (not safe))
                              (_%loop101705%_
                               __tmp101978
                               __tmp101977
                               _%deleted101712%_)))))))))))
    (define prototype-table-update!
      (lambda (_%tab101679%_
               _%key101680%_
               _%prototype-table-update!101681%_
               _%default101682%_)
        (if (let ((__tmp101981
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101679%_)))
                  (__tmp101979
                   (let ((__tmp101980
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101679%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101980 '4))))
              (declare (not safe))
              (##fx< __tmp101981 __tmp101979))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101679%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _%tab101679%_
           _%key101680%_
           _%prototype-table-update!101681%_
           _%default101682%_))))
    (define __prototype-table-update!
      (lambda (_%tab101629%_
               _%key101630%_
               _%prototype-table-update!101631%_
               _%default101632%_)
        (let ((_%table101635%_
               (let () (declare (not safe)) (&raw-table-table _%tab101629%_)))
              (_%seed101636%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101629%_))))
          (let* ((_%h101638%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101630%_))
                         _%seed101636%_))
                 (_%size101641%_ (vector-length _%table101635%_))
                 (_%entries101644%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101641%_ '2)))
                 (_%start101647%_
                  (let ((__tmp101982
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101638%_ _%entries101644%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101982 '1))))
            (let _%loop101651%_ ((_%probe101654%_ _%start101647%_)
                                 (_%i101656%_ '1)
                                 (_%deleted101658%_ '#f))
              (let ((_%k101661%_ (vector-ref _%table101635%_ _%probe101654%_)))
                (if (eq? _%k101661%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101658%_
                          (begin
                            (vector-set!
                             _%table101635%_
                             _%deleted101658%_
                             _%key101630%_)
                            (vector-set!
                             _%table101635%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101658%_ '1))
                             (_%prototype-table-update!101631%_
                              _%default101632%_))
                            ((lambda ()
                               (let ((__tmp101983
                                      (let ((__tmp101984
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101629%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101984 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101629%_
                                  __tmp101983)))))
                          (begin
                            (vector-set!
                             _%table101635%_
                             _%probe101654%_
                             _%key101630%_)
                            (vector-set!
                             _%table101635%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101654%_ '1))
                             (_%prototype-table-update!101631%_
                              _%default101632%_))
                            ((lambda ()
                               (let ((__tmp101985
                                      (let ((__tmp101986
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101629%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101986 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101629%_
                                  __tmp101985))
                               (let ((__tmp101987
                                      (let ((__tmp101988
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101629%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101988 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101629%_
                                  __tmp101987)))))))
                    (if (eq? _%k101661%_ (macro-deleted-obj))
                        (let ((__tmp101991
                               (let ((_%next-probe101668%_
                                      (fx+ _%start101647%_
                                           _%i101656%_
                                           (fx* _%i101656%_ _%i101656%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101668%_
                                  _%size101641%_)))
                              (__tmp101990
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101656%_ '1)))
                              (__tmp101989
                               (let ((_%$e101671%_ _%deleted101658%_))
                                 (if _%$e101671%_
                                     _%$e101671%_
                                     _%probe101654%_))))
                          (declare (not safe))
                          (_%loop101651%_ __tmp101991 __tmp101990 __tmp101989))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101630%_ _%k101661%_))
                            (let ()
                              (vector-set!
                               _%table101635%_
                               _%probe101654%_
                               _%key101630%_)
                              (vector-set!
                               _%table101635%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101654%_ '1))
                               (_%prototype-table-update!101631%_
                                (vector-ref
                                 _%table101635%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101654%_ '1))))))
                            (let ((__tmp101993
                                   (let ((_%next-probe101676%_
                                          (fx+ _%start101647%_
                                               _%i101656%_
                                               (fx* _%i101656%_ _%i101656%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101676%_
                                      _%size101641%_)))
                                  (__tmp101992
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101656%_ '1))))
                              (declare (not safe))
                              (_%loop101651%_
                               __tmp101993
                               __tmp101992
                               _%deleted101658%_)))))))))))
    (define prototype-trable-delete!
      (lambda (_%tab101584%_ _%key101586%_)
        (let ((_%table101589%_
               (let () (declare (not safe)) (&raw-table-table _%tab101584%_)))
              (_%seed101591%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101584%_))))
          (let* ((_%h101594%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101586%_))
                         _%seed101591%_))
                 (_%size101597%_ (vector-length _%table101589%_))
                 (_%entries101600%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101597%_ '2)))
                 (_%start101603%_
                  (let ((__tmp101994
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101594%_ _%entries101600%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101994 '1))))
            (let _%loop101607%_ ((_%probe101610%_ _%start101603%_)
                                 (_%i101612%_ '1))
              (let ((_%k101615%_ (vector-ref _%table101589%_ _%probe101610%_)))
                (if (eq? _%k101615%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k101615%_ (macro-deleted-obj))
                        (let ((__tmp101996
                               (let ((_%next-probe101620%_
                                      (fx+ _%start101603%_
                                           _%i101612%_
                                           (fx* _%i101612%_ _%i101612%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101620%_
                                  _%size101597%_)))
                              (__tmp101995
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101612%_ '1))))
                          (declare (not safe))
                          (_%loop101607%_ __tmp101996 __tmp101995))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101586%_ _%k101615%_))
                            (let ()
                              (vector-set!
                               _%table101589%_
                               _%probe101610%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101589%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101610%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101997
                                        (let ((__tmp101998
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab101584%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101998 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab101584%_
                                    __tmp101997)))))
                            (let ((__tmp102000
                                   (let ((_%next-probe101626%_
                                          (fx+ _%start101603%_
                                               _%i101612%_
                                               (fx* _%i101612%_ _%i101612%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101626%_
                                      _%size101597%_)))
                                  (__tmp101999
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101612%_ '1))))
                              (declare (not safe))
                              (_%loop101607%_
                               __tmp102000
                               __tmp101999)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass101576%_)
        (let ((_%super101577101579%_
               (let () (declare (not safe)) (##type-super _%klass101576%_))))
          (if _%super101577101579%_
              (let ((_%super101582%_ _%super101577101579%_))
                (eq? (let () (declare (not safe)) (##type-id _%super101582%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor101461%_ _%klass101462%_ _%obj-klass101463%_)
        (let ((_%method-table101465%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101463%_))))
          (let _%loop101468%_ ((_%rest101471%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101461%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101473%_ '0)
                               (_%methods101475%_ '()))
            (let* ((_%rest101477101485%_ _%rest101471%_)
                   (_%else101479101547%_
                    (lambda ()
                      (let ((_%prototype101493%_
                             (let ((__obj101942
                                    (let ((__tmp102001
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101473%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101462%_
                                       __tmp102001))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101942 '#f))
                               __obj101942)))
                        (let _%loop101496%_ ((_%rest101498%_ _%methods101475%_)
                                             (_%off101499%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101473%_ '1))))
                          (let* ((_%rest101501101509%_ _%rest101498%_)
                                 (_%else101503101528%_
                                  (lambda ()
                                    (let ((_%prototype-key101517%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101462%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101463%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101522%_ ()
                                          (if (let ((__tmp102002
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp102002 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again101522%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key101517%_
                                         _%prototype101493%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101526%_)
                                         _%prototype101526%_)
                                       _%prototype101493%_))))
                                 (_%K101505101535%_
                                  (lambda (_%rest101531%_ _%method101532%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101493%_
                                       _%method101532%_
                                       _%off101499%_
                                       _%klass101462%_
                                       '#f))
                                    (let ((__tmp102003
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off101499%_ '1))))
                                      (declare (not safe))
                                      (_%loop101496%_
                                       _%rest101531%_
                                       __tmp102003)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101501101509%_))
                                (let ((_%hd101506101538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101501101509%_)))
                                      (_%tl101507101540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101501101509%_))))
                                  (let* ((_%method101543%_ _%hd101506101538%_)
                                         (_%rest101545%_ _%tl101507101540%_))
                                    (declare (not safe))
                                    (_%K101505101535%_
                                     _%rest101545%_
                                     _%method101543%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else101503101528%_))))))))
                   (_%K101481101564%_
                    (lambda (_%rest101550%_ _%method-name101551%_)
                      (let ((_%$e101554%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101465%_
                                _%method-name101551%_
                                '#f))))
                        (if _%$e101554%_
                            ((lambda (_%method101557%_)
                               (let ((__tmp102005
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count101473%_ '1)))
                                     (__tmp102004
                                      (cons _%method101557%_
                                            _%methods101475%_)))
                                 (declare (not safe))
                                 (_%loop101468%_
                                  _%rest101550%_
                                  __tmp102005
                                  __tmp102004)))
                             _%$e101554%_)
                            (let ()
                              ((lambda (_%klass101560%_
                                        _%obj-klass101561%_
                                        _%method-name101562%_)
                                 (let ((__tmp102007
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%klass101560%_)))
                                       (__tmp102006
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%obj-klass101561%_))))
                                   (declare (not safe))
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass101560%_
                                    'interface-id:
                                    __tmp102007
                                    'class:
                                    _%obj-klass101561%_
                                    'class-id:
                                    __tmp102006
                                    'method:
                                    _%method-name101562%_))
                                 '#!void)
                               _%klass101462%_
                               _%obj-klass101463%_
                               _%method-name101551%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest101477101485%_))
                  (let ((_%hd101482101567%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101477101485%_)))
                        (_%tl101483101569%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101477101485%_))))
                    (let* ((_%method-name101572%_ _%hd101482101567%_)
                           (_%rest101574%_ _%tl101483101569%_))
                      (declare (not safe))
                      (_%K101481101564%_
                       _%rest101574%_
                       _%method-name101572%_)))
                  (let () (declare (not safe)) (_%else101479101547%_))))))))
    (define try-create-prototype
      (lambda (_%descriptor101346%_ _%klass101347%_ _%obj-klass101348%_)
        (let ((_%method-table101350%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101348%_))))
          (let _%loop101353%_ ((_%rest101356%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101346%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101358%_ '0)
                               (_%methods101360%_ '()))
            (let* ((_%rest101362101370%_ _%rest101356%_)
                   (_%else101364101432%_
                    (lambda ()
                      (let ((_%prototype101378%_
                             (let ((__obj101943
                                    (let ((__tmp102008
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101358%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101347%_
                                       __tmp102008))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101943 '#f))
                               __obj101943)))
                        (let _%loop101381%_ ((_%rest101383%_ _%methods101360%_)
                                             (_%off101384%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101358%_ '1))))
                          (let* ((_%rest101386101394%_ _%rest101383%_)
                                 (_%else101388101413%_
                                  (lambda ()
                                    (let ((_%prototype-key101402%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101347%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101348%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101407%_ ()
                                          (if (let ((__tmp102009
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp102009 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again101407%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key101402%_
                                         _%prototype101378%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101411%_)
                                         _%prototype101411%_)
                                       _%prototype101378%_))))
                                 (_%K101390101420%_
                                  (lambda (_%rest101416%_ _%method101417%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101378%_
                                       _%method101417%_
                                       _%off101384%_
                                       _%klass101347%_
                                       '#f))
                                    (let ((__tmp102010
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off101384%_ '1))))
                                      (declare (not safe))
                                      (_%loop101381%_
                                       _%rest101416%_
                                       __tmp102010)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101386101394%_))
                                (let ((_%hd101391101423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101386101394%_)))
                                      (_%tl101392101425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101386101394%_))))
                                  (let* ((_%method101428%_ _%hd101391101423%_)
                                         (_%rest101430%_ _%tl101392101425%_))
                                    (declare (not safe))
                                    (_%K101390101420%_
                                     _%rest101430%_
                                     _%method101428%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else101388101413%_))))))))
                   (_%K101366101449%_
                    (lambda (_%rest101435%_ _%method-name101436%_)
                      (let ((_%$e101439%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101350%_
                                _%method-name101436%_
                                '#f))))
                        (if _%$e101439%_
                            ((lambda (_%method101442%_)
                               (let ((__tmp102012
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count101358%_ '1)))
                                     (__tmp102011
                                      (cons _%method101442%_
                                            _%methods101360%_)))
                                 (declare (not safe))
                                 (_%loop101353%_
                                  _%rest101435%_
                                  __tmp102012
                                  __tmp102011)))
                             _%$e101439%_)
                            (let ()
                              ((lambda (_%klass101445%_
                                        _%obj-klass101446%_
                                        _%method-name101447%_)
                                 '#f)
                               _%klass101347%_
                               _%obj-klass101348%_
                               _%method-name101436%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest101362101370%_))
                  (let ((_%hd101367101452%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101362101370%_)))
                        (_%tl101368101454%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101362101370%_))))
                    (let* ((_%method-name101457%_ _%hd101367101452%_)
                           (_%rest101459%_ _%tl101368101454%_))
                      (declare (not safe))
                      (_%K101366101449%_
                       _%rest101459%_
                       _%method-name101457%_)))
                  (let () (declare (not safe)) (_%else101364101432%_))))))))
    (define cast
      (lambda (_%descriptor101304%_ _%obj101306%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101310%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101304%_ '1 '#f '#f)))
               (_%klass-id101313%_
                (let () (declare (not safe)) (##type-id _%klass101310%_)))
               (_%obj-klass101316%_
                (let () (declare (not safe)) (class-of _%obj101306%_)))
               (_%obj-klass-id101319%_
                (let () (declare (not safe)) (##type-id _%obj-klass101316%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101313%_ _%obj-klass-id101319%_))
              (let () _%obj101306%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101316%_))
                  (let ((__tmp102013
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101306%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (cast _%descriptor101304%_ __tmp102013))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101328%_ ()
                        (if (let ((__tmp102014
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102014 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101328%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101313%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101319%_))
                    (let ((_%prototype101339%_
                           (let ((_%$e101332%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101332%_
                                 ((lambda (_%prototype101335%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101335%_)
                                  _%$e101332%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (let ()
                                     (declare (not safe))
                                     (create-prototype
                                      _%descriptor101304%_
                                      _%klass101310%_
                                      _%obj-klass101316%_)))))))
                      ((lambda (_%prototype101341%_ _%obj101342%_)
                         (let ((_%instance101344%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype101341%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance101344%_
                              _%obj101342%_
                              '1
                              '#f
                              'cast))
                           _%instance101344%_))
                       _%prototype101339%_
                       _%obj101306%_))))))))
    (define try-cast
      (lambda (_%descriptor101262%_ _%obj101264%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101268%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101262%_ '1 '#f '#f)))
               (_%klass-id101271%_
                (let () (declare (not safe)) (##type-id _%klass101268%_)))
               (_%obj-klass101274%_
                (let () (declare (not safe)) (class-of _%obj101264%_)))
               (_%obj-klass-id101277%_
                (let () (declare (not safe)) (##type-id _%obj-klass101274%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101271%_ _%obj-klass-id101277%_))
              (let () _%obj101264%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101274%_))
                  (let ((__tmp102015
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101264%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (try-cast _%descriptor101262%_ __tmp102015))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101286%_ ()
                        (if (let ((__tmp102016
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102016 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101286%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101271%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101277%_))
                    (let ((_%prototype101297%_
                           (let ((_%$e101290%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101290%_
                                 ((lambda (_%prototype101293%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101293%_)
                                  _%$e101290%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (let ()
                                     (declare (not safe))
                                     (try-create-prototype
                                      _%descriptor101262%_
                                      _%klass101268%_
                                      _%obj-klass101274%_)))))))
                      ((lambda (_%prototype101299%_ _%obj101300%_)
                         (if _%prototype101299%_
                             (let ((_%instance101302%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype101299%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance101302%_
                                  _%obj101300%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance101302%_)
                             '#f))
                       _%prototype101297%_
                       _%obj101264%_))))))))
    (define satisfies?
      (lambda (_%descriptor101222%_ _%obj101224%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101228%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101222%_ '1 '#f '#f)))
               (_%klass-id101231%_
                (let () (declare (not safe)) (##type-id _%klass101228%_)))
               (_%obj-klass101234%_
                (let () (declare (not safe)) (class-of _%obj101224%_)))
               (_%obj-klass-id101237%_
                (let () (declare (not safe)) (##type-id _%obj-klass101234%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101231%_ _%obj-klass-id101237%_))
              (let () _%obj101224%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101234%_))
                  (let ((__tmp102017
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101224%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (satisfies? _%descriptor101222%_ __tmp102017))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101246%_ ()
                        (if (let ((__tmp102018
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102018 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101246%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101231%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101237%_))
                    (let ((_%prototype101257%_
                           (let ((_%$e101250%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101250%_
                                 ((lambda (_%prototype101253%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101253%_)
                                  _%$e101250%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (let ()
                                     (declare (not safe))
                                     (try-create-prototype
                                      _%descriptor101222%_
                                      _%klass101228%_
                                      _%obj-klass101234%_)))))))
                      ((lambda (_%prototype101259%_ _%obj101260%_)
                         (if _%prototype101259%_ '#t '#f))
                       _%prototype101257%_
                       _%obj101224%_))))))))))
