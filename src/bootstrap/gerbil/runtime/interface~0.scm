(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712246554)
  (begin
    (define CastError::t
      (let ((__tmp101961 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101961
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101954%_
        (apply make-instance CastError::t _%$args101954%_)))
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
      (lambda (_%where101828%_ _%message101829%_ . _%irritants101830%_)
        (let ((__tmp101962
               (let ((__obj101957
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101957
                  _%message101829%_
                  'where:
                  _%where101828%_
                  'irritants:
                  _%irritants101830%_)
                 __obj101957)))
          (declare (not safe))
          (raise __tmp101962))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101964 (list)) (__tmp101963 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101964
         '(__object)
         __tmp101963
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
      (let ((__tmp101966 (list))
            (__tmp101965
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101966
         '(type methods)
         __tmp101965
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101825%_
        (apply make-instance interface-descriptor::t _%$args101825%_)))
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
      (lambda (_%key101823%_)
        (let ((__tmp101968
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101823%_))))
              (__tmp101967
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101823%_)))))
          (declare (not safe))
          (##fxxor __tmp101968 __tmp101967))))
    (define __interface-test-key
      (lambda (_%a101820%_ _%b101821%_)
        (if (let ((__tmp101970
                   (let () (declare (not safe)) (##car _%a101820%_)))
                  (__tmp101969
                   (let () (declare (not safe)) (##car _%b101821%_))))
              (declare (not safe))
              (##eq? __tmp101970 __tmp101969))
            (let ((__tmp101972
                   (let () (declare (not safe)) (##cdr _%a101820%_)))
                  (__tmp101971
                   (let () (declare (not safe)) (##cdr _%b101821%_))))
              (declare (not safe))
              (##eq? __tmp101972 __tmp101971))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101801%_ _%seed101803%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101801%_
           __interface-hash-key
           __interface-test-key
           _%seed101803%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101809%_ '#f) (_%seed101811%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101809%_ _%seed101811%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101813%_)
        (let ((_%seed101815%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101813%_ _%seed101815%_))))
    (define make-prototype-table
      (lambda _g101974_
        (let ((_g101973_ (let () (declare (not safe)) (##length _g101974_))))
          (cond ((let () (declare (not safe)) (##fx= _g101973_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101974_))
                ((let () (declare (not safe)) (##fx= _g101973_ 1))
                 (apply (lambda (_%size-hint101813%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _%size-hint101813%_)))
                        _g101974_))
                ((let () (declare (not safe)) (##fx= _g101973_ 2))
                 (apply (lambda (_%size-hint101817%_ _%seed101818%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _%size-hint101817%_
                             _%seed101818%_)))
                        _g101974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101974_))))))
    (define prototype-table-ref
      (lambda (_%tab101754%_ _%key101755%_ _%default101756%_)
        (let ((_%table101758%_
               (let () (declare (not safe)) (&raw-table-table _%tab101754%_)))
              (_%seed101759%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101754%_))))
          (let* ((_%h101761%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101755%_))
                         _%seed101759%_))
                 (_%size101764%_ (vector-length _%table101758%_))
                 (_%entries101767%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101764%_ '2)))
                 (_%start101770%_
                  (let ((__tmp101975
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101761%_ _%entries101767%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101975 '1))))
            (let _%loop101774%_ ((_%probe101777%_ _%start101770%_)
                                 (_%i101779%_ '1)
                                 (_%deleted101781%_ '#f))
              (let ((_%k101784%_ (vector-ref _%table101758%_ _%probe101777%_)))
                (if (eq? _%k101784%_ (macro-unused-obj))
                    (let () _%default101756%_)
                    (if (eq? _%k101784%_ (macro-deleted-obj))
                        (let ((__tmp101978
                               (let ((_%next-probe101789%_
                                      (fx+ _%start101770%_
                                           _%i101779%_
                                           (fx* _%i101779%_ _%i101779%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101789%_
                                  _%size101764%_)))
                              (__tmp101977
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101779%_ '1)))
                              (__tmp101976
                               (let ((_%$e101792%_ _%deleted101781%_))
                                 (if _%$e101792%_
                                     _%$e101792%_
                                     _%probe101777%_))))
                          (declare (not safe))
                          (_%loop101774%_ __tmp101978 __tmp101977 __tmp101976))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101755%_ _%k101784%_))
                            (let ()
                              (vector-ref
                               _%table101758%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101777%_ '1))))
                            (let ((__tmp101980
                                   (let ((_%next-probe101797%_
                                          (fx+ _%start101770%_
                                               _%i101779%_
                                               (fx* _%i101779%_ _%i101779%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101797%_
                                      _%size101764%_)))
                                  (__tmp101979
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101779%_ '1))))
                              (declare (not safe))
                              (_%loop101774%_
                               __tmp101980
                               __tmp101979
                               _%deleted101781%_)))))))))))
    (define prototype-table-set!
      (lambda (_%tab101750%_ _%key101751%_ _%value101752%_)
        (if (let ((__tmp101983
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101750%_)))
                  (__tmp101981
                   (let ((__tmp101982
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101750%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101982 '4))))
              (declare (not safe))
              (##fx< __tmp101983 __tmp101981))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101750%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set!
           _%tab101750%_
           _%key101751%_
           _%value101752%_))))
    (define __prototype-table-set!
      (lambda (_%tab101701%_ _%key101702%_ _%value101703%_)
        (let ((_%table101706%_
               (let () (declare (not safe)) (&raw-table-table _%tab101701%_)))
              (_%seed101707%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101701%_))))
          (let* ((_%h101709%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101702%_))
                         _%seed101707%_))
                 (_%size101712%_ (vector-length _%table101706%_))
                 (_%entries101715%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101712%_ '2)))
                 (_%start101718%_
                  (let ((__tmp101984
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101709%_ _%entries101715%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101984 '1))))
            (let _%loop101722%_ ((_%probe101725%_ _%start101718%_)
                                 (_%i101727%_ '1)
                                 (_%deleted101729%_ '#f))
              (let ((_%k101732%_ (vector-ref _%table101706%_ _%probe101725%_)))
                (if (eq? _%k101732%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101729%_
                          (begin
                            (vector-set!
                             _%table101706%_
                             _%deleted101729%_
                             _%key101702%_)
                            (vector-set!
                             _%table101706%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101729%_ '1))
                             _%value101703%_)
                            ((lambda ()
                               (let ((__tmp101985
                                      (let ((__tmp101986
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101701%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101986 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101701%_
                                  __tmp101985)))))
                          (begin
                            (vector-set!
                             _%table101706%_
                             _%probe101725%_
                             _%key101702%_)
                            (vector-set!
                             _%table101706%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101725%_ '1))
                             _%value101703%_)
                            ((lambda ()
                               (let ((__tmp101987
                                      (let ((__tmp101988
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101701%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101988 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101701%_
                                  __tmp101987))
                               (let ((__tmp101989
                                      (let ((__tmp101990
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101701%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101990 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101701%_
                                  __tmp101989)))))))
                    (if (eq? _%k101732%_ (macro-deleted-obj))
                        (let ((__tmp101993
                               (let ((_%next-probe101739%_
                                      (fx+ _%start101718%_
                                           _%i101727%_
                                           (fx* _%i101727%_ _%i101727%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101739%_
                                  _%size101712%_)))
                              (__tmp101992
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101727%_ '1)))
                              (__tmp101991
                               (let ((_%$e101742%_ _%deleted101729%_))
                                 (if _%$e101742%_
                                     _%$e101742%_
                                     _%probe101725%_))))
                          (declare (not safe))
                          (_%loop101722%_ __tmp101993 __tmp101992 __tmp101991))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101702%_ _%k101732%_))
                            (let ()
                              (vector-set!
                               _%table101706%_
                               _%probe101725%_
                               _%key101702%_)
                              (vector-set!
                               _%table101706%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101725%_ '1))
                               _%value101703%_))
                            (let ((__tmp101995
                                   (let ((_%next-probe101747%_
                                          (fx+ _%start101718%_
                                               _%i101727%_
                                               (fx* _%i101727%_ _%i101727%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101747%_
                                      _%size101712%_)))
                                  (__tmp101994
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101727%_ '1))))
                              (declare (not safe))
                              (_%loop101722%_
                               __tmp101995
                               __tmp101994
                               _%deleted101729%_)))))))))))
    (define prototype-table-update!
      (lambda (_%tab101696%_
               _%key101697%_
               _%prototype-table-update!101698%_
               _%default101699%_)
        (if (let ((__tmp101998
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101696%_)))
                  (__tmp101996
                   (let ((__tmp101997
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101696%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101997 '4))))
              (declare (not safe))
              (##fx< __tmp101998 __tmp101996))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101696%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _%tab101696%_
           _%key101697%_
           _%prototype-table-update!101698%_
           _%default101699%_))))
    (define __prototype-table-update!
      (lambda (_%tab101646%_
               _%key101647%_
               _%prototype-table-update!101648%_
               _%default101649%_)
        (let ((_%table101652%_
               (let () (declare (not safe)) (&raw-table-table _%tab101646%_)))
              (_%seed101653%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101646%_))))
          (let* ((_%h101655%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101647%_))
                         _%seed101653%_))
                 (_%size101658%_ (vector-length _%table101652%_))
                 (_%entries101661%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101658%_ '2)))
                 (_%start101664%_
                  (let ((__tmp101999
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101655%_ _%entries101661%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101999 '1))))
            (let _%loop101668%_ ((_%probe101671%_ _%start101664%_)
                                 (_%i101673%_ '1)
                                 (_%deleted101675%_ '#f))
              (let ((_%k101678%_ (vector-ref _%table101652%_ _%probe101671%_)))
                (if (eq? _%k101678%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101675%_
                          (begin
                            (vector-set!
                             _%table101652%_
                             _%deleted101675%_
                             _%key101647%_)
                            (vector-set!
                             _%table101652%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101675%_ '1))
                             (_%prototype-table-update!101648%_
                              _%default101649%_))
                            ((lambda ()
                               (let ((__tmp102000
                                      (let ((__tmp102001
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101646%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp102001 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101646%_
                                  __tmp102000)))))
                          (begin
                            (vector-set!
                             _%table101652%_
                             _%probe101671%_
                             _%key101647%_)
                            (vector-set!
                             _%table101652%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101671%_ '1))
                             (_%prototype-table-update!101648%_
                              _%default101649%_))
                            ((lambda ()
                               (let ((__tmp102002
                                      (let ((__tmp102003
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101646%_))))
                                        (declare (not safe))
                                        (##fx- __tmp102003 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101646%_
                                  __tmp102002))
                               (let ((__tmp102004
                                      (let ((__tmp102005
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101646%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp102005 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101646%_
                                  __tmp102004)))))))
                    (if (eq? _%k101678%_ (macro-deleted-obj))
                        (let ((__tmp102008
                               (let ((_%next-probe101685%_
                                      (fx+ _%start101664%_
                                           _%i101673%_
                                           (fx* _%i101673%_ _%i101673%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101685%_
                                  _%size101658%_)))
                              (__tmp102007
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101673%_ '1)))
                              (__tmp102006
                               (let ((_%$e101688%_ _%deleted101675%_))
                                 (if _%$e101688%_
                                     _%$e101688%_
                                     _%probe101671%_))))
                          (declare (not safe))
                          (_%loop101668%_ __tmp102008 __tmp102007 __tmp102006))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101647%_ _%k101678%_))
                            (let ()
                              (vector-set!
                               _%table101652%_
                               _%probe101671%_
                               _%key101647%_)
                              (vector-set!
                               _%table101652%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101671%_ '1))
                               (_%prototype-table-update!101648%_
                                (vector-ref
                                 _%table101652%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101671%_ '1))))))
                            (let ((__tmp102010
                                   (let ((_%next-probe101693%_
                                          (fx+ _%start101664%_
                                               _%i101673%_
                                               (fx* _%i101673%_ _%i101673%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101693%_
                                      _%size101658%_)))
                                  (__tmp102009
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101673%_ '1))))
                              (declare (not safe))
                              (_%loop101668%_
                               __tmp102010
                               __tmp102009
                               _%deleted101675%_)))))))))))
    (define prototype-trable-delete!
      (lambda (_%tab101601%_ _%key101603%_)
        (let ((_%table101606%_
               (let () (declare (not safe)) (&raw-table-table _%tab101601%_)))
              (_%seed101608%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101601%_))))
          (let* ((_%h101611%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101603%_))
                         _%seed101608%_))
                 (_%size101614%_ (vector-length _%table101606%_))
                 (_%entries101617%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101614%_ '2)))
                 (_%start101620%_
                  (let ((__tmp102011
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101611%_ _%entries101617%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102011 '1))))
            (let _%loop101624%_ ((_%probe101627%_ _%start101620%_)
                                 (_%i101629%_ '1))
              (let ((_%k101632%_ (vector-ref _%table101606%_ _%probe101627%_)))
                (if (eq? _%k101632%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k101632%_ (macro-deleted-obj))
                        (let ((__tmp102013
                               (let ((_%next-probe101637%_
                                      (fx+ _%start101620%_
                                           _%i101629%_
                                           (fx* _%i101629%_ _%i101629%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101637%_
                                  _%size101614%_)))
                              (__tmp102012
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101629%_ '1))))
                          (declare (not safe))
                          (_%loop101624%_ __tmp102013 __tmp102012))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101603%_ _%k101632%_))
                            (let ()
                              (vector-set!
                               _%table101606%_
                               _%probe101627%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101606%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101627%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102014
                                        (let ((__tmp102015
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab101601%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102015 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab101601%_
                                    __tmp102014)))))
                            (let ((__tmp102017
                                   (let ((_%next-probe101643%_
                                          (fx+ _%start101620%_
                                               _%i101629%_
                                               (fx* _%i101629%_ _%i101629%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101643%_
                                      _%size101614%_)))
                                  (__tmp102016
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101629%_ '1))))
                              (declare (not safe))
                              (_%loop101624%_
                               __tmp102017
                               __tmp102016)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass101593%_)
        (let ((_%super101594101596%_
               (let () (declare (not safe)) (##type-super _%klass101593%_))))
          (if _%super101594101596%_
              (let ((_%super101599%_ _%super101594101596%_))
                (eq? (let () (declare (not safe)) (##type-id _%super101599%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor101478%_ _%klass101479%_ _%obj-klass101480%_)
        (let ((_%method-table101482%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101480%_))))
          (let _%loop101485%_ ((_%rest101488%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101478%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101490%_ '0)
                               (_%methods101492%_ '()))
            (let* ((_%rest101494101502%_ _%rest101488%_)
                   (_%else101496101564%_
                    (lambda ()
                      (let ((_%prototype101510%_
                             (let ((__obj101959
                                    (let ((__tmp102018
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101490%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101479%_
                                       __tmp102018))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101959 '#f))
                               __obj101959)))
                        (let _%loop101513%_ ((_%rest101515%_ _%methods101492%_)
                                             (_%off101516%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101490%_ '1))))
                          (let* ((_%rest101518101526%_ _%rest101515%_)
                                 (_%else101520101545%_
                                  (lambda ()
                                    (let ((_%prototype-key101534%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101479%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101480%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101539%_ ()
                                          (if (let ((__tmp102019
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp102019 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again101539%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key101534%_
                                         _%prototype101510%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101543%_)
                                         _%prototype101543%_)
                                       _%prototype101510%_))))
                                 (_%K101522101552%_
                                  (lambda (_%rest101548%_ _%method101549%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101510%_
                                       _%method101549%_
                                       _%off101516%_
                                       _%klass101479%_
                                       '#f))
                                    (let ((__tmp102020
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off101516%_ '1))))
                                      (declare (not safe))
                                      (_%loop101513%_
                                       _%rest101548%_
                                       __tmp102020)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101518101526%_))
                                (let ((_%hd101523101555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101518101526%_)))
                                      (_%tl101524101557%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101518101526%_))))
                                  (let* ((_%method101560%_ _%hd101523101555%_)
                                         (_%rest101562%_ _%tl101524101557%_))
                                    (declare (not safe))
                                    (_%K101522101552%_
                                     _%rest101562%_
                                     _%method101560%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else101520101545%_))))))))
                   (_%K101498101581%_
                    (lambda (_%rest101567%_ _%method-name101568%_)
                      (let ((_%$e101571%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101482%_
                                _%method-name101568%_
                                '#f))))
                        (if _%$e101571%_
                            ((lambda (_%method101574%_)
                               (let ((__tmp102022
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count101490%_ '1)))
                                     (__tmp102021
                                      (cons _%method101574%_
                                            _%methods101492%_)))
                                 (declare (not safe))
                                 (_%loop101485%_
                                  _%rest101567%_
                                  __tmp102022
                                  __tmp102021)))
                             _%$e101571%_)
                            (let ()
                              ((lambda (_%klass101577%_
                                        _%obj-klass101578%_
                                        _%method-name101579%_)
                                 (let ((__tmp102024
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%klass101577%_)))
                                       (__tmp102023
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%obj-klass101578%_))))
                                   (declare (not safe))
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass101577%_
                                    'interface-id:
                                    __tmp102024
                                    'class:
                                    _%obj-klass101578%_
                                    'class-id:
                                    __tmp102023
                                    'method:
                                    _%method-name101579%_))
                                 '#!void)
                               _%klass101479%_
                               _%obj-klass101480%_
                               _%method-name101568%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest101494101502%_))
                  (let ((_%hd101499101584%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101494101502%_)))
                        (_%tl101500101586%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101494101502%_))))
                    (let* ((_%method-name101589%_ _%hd101499101584%_)
                           (_%rest101591%_ _%tl101500101586%_))
                      (declare (not safe))
                      (_%K101498101581%_
                       _%rest101591%_
                       _%method-name101589%_)))
                  (let () (declare (not safe)) (_%else101496101564%_))))))))
    (define try-create-prototype
      (lambda (_%descriptor101363%_ _%klass101364%_ _%obj-klass101365%_)
        (let ((_%method-table101367%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101365%_))))
          (let _%loop101370%_ ((_%rest101373%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101363%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101375%_ '0)
                               (_%methods101377%_ '()))
            (let* ((_%rest101379101387%_ _%rest101373%_)
                   (_%else101381101449%_
                    (lambda ()
                      (let ((_%prototype101395%_
                             (let ((__obj101960
                                    (let ((__tmp102025
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101375%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101364%_
                                       __tmp102025))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101960 '#f))
                               __obj101960)))
                        (let _%loop101398%_ ((_%rest101400%_ _%methods101377%_)
                                             (_%off101401%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101375%_ '1))))
                          (let* ((_%rest101403101411%_ _%rest101400%_)
                                 (_%else101405101430%_
                                  (lambda ()
                                    (let ((_%prototype-key101419%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101364%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101365%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101424%_ ()
                                          (if (let ((__tmp102026
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp102026 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again101424%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key101419%_
                                         _%prototype101395%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101428%_)
                                         _%prototype101428%_)
                                       _%prototype101395%_))))
                                 (_%K101407101437%_
                                  (lambda (_%rest101433%_ _%method101434%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101395%_
                                       _%method101434%_
                                       _%off101401%_
                                       _%klass101364%_
                                       '#f))
                                    (let ((__tmp102027
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off101401%_ '1))))
                                      (declare (not safe))
                                      (_%loop101398%_
                                       _%rest101433%_
                                       __tmp102027)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101403101411%_))
                                (let ((_%hd101408101440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101403101411%_)))
                                      (_%tl101409101442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101403101411%_))))
                                  (let* ((_%method101445%_ _%hd101408101440%_)
                                         (_%rest101447%_ _%tl101409101442%_))
                                    (declare (not safe))
                                    (_%K101407101437%_
                                     _%rest101447%_
                                     _%method101445%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else101405101430%_))))))))
                   (_%K101383101466%_
                    (lambda (_%rest101452%_ _%method-name101453%_)
                      (let ((_%$e101456%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101367%_
                                _%method-name101453%_
                                '#f))))
                        (if _%$e101456%_
                            ((lambda (_%method101459%_)
                               (let ((__tmp102029
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count101375%_ '1)))
                                     (__tmp102028
                                      (cons _%method101459%_
                                            _%methods101377%_)))
                                 (declare (not safe))
                                 (_%loop101370%_
                                  _%rest101452%_
                                  __tmp102029
                                  __tmp102028)))
                             _%$e101456%_)
                            (let ()
                              ((lambda (_%klass101462%_
                                        _%obj-klass101463%_
                                        _%method-name101464%_)
                                 '#f)
                               _%klass101364%_
                               _%obj-klass101365%_
                               _%method-name101453%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest101379101387%_))
                  (let ((_%hd101384101469%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101379101387%_)))
                        (_%tl101385101471%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101379101387%_))))
                    (let* ((_%method-name101474%_ _%hd101384101469%_)
                           (_%rest101476%_ _%tl101385101471%_))
                      (declare (not safe))
                      (_%K101383101466%_
                       _%rest101476%_
                       _%method-name101474%_)))
                  (let () (declare (not safe)) (_%else101381101449%_))))))))
    (define cast
      (lambda (_%descriptor101321%_ _%obj101323%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101327%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101321%_ '1 '#f '#f)))
               (_%klass-id101330%_
                (let () (declare (not safe)) (##type-id _%klass101327%_)))
               (_%obj-klass101333%_
                (let () (declare (not safe)) (class-of _%obj101323%_)))
               (_%obj-klass-id101336%_
                (let () (declare (not safe)) (##type-id _%obj-klass101333%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101330%_ _%obj-klass-id101336%_))
              (let () _%obj101323%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101333%_))
                  (let ((__tmp102030
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101323%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (cast _%descriptor101321%_ __tmp102030))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101345%_ ()
                        (if (let ((__tmp102031
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102031 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101345%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101330%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101336%_))
                    (let ((_%prototype101356%_
                           (let ((_%$e101349%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101349%_
                                 ((lambda (_%prototype101352%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101352%_)
                                  _%$e101349%_)
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
                                      _%descriptor101321%_
                                      _%klass101327%_
                                      _%obj-klass101333%_)))))))
                      ((lambda (_%prototype101358%_ _%obj101359%_)
                         (let ((_%instance101361%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype101358%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance101361%_
                              _%obj101359%_
                              '1
                              '#f
                              'cast))
                           _%instance101361%_))
                       _%prototype101356%_
                       _%obj101323%_))))))))
    (define try-cast
      (lambda (_%descriptor101279%_ _%obj101281%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101285%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101279%_ '1 '#f '#f)))
               (_%klass-id101288%_
                (let () (declare (not safe)) (##type-id _%klass101285%_)))
               (_%obj-klass101291%_
                (let () (declare (not safe)) (class-of _%obj101281%_)))
               (_%obj-klass-id101294%_
                (let () (declare (not safe)) (##type-id _%obj-klass101291%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101288%_ _%obj-klass-id101294%_))
              (let () _%obj101281%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101291%_))
                  (let ((__tmp102032
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101281%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (try-cast _%descriptor101279%_ __tmp102032))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101303%_ ()
                        (if (let ((__tmp102033
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102033 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101303%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101288%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101294%_))
                    (let ((_%prototype101314%_
                           (let ((_%$e101307%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101307%_
                                 ((lambda (_%prototype101310%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101310%_)
                                  _%$e101307%_)
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
                                      _%descriptor101279%_
                                      _%klass101285%_
                                      _%obj-klass101291%_)))))))
                      ((lambda (_%prototype101316%_ _%obj101317%_)
                         (if _%prototype101316%_
                             (let ((_%instance101319%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype101316%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance101319%_
                                  _%obj101317%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance101319%_)
                             '#f))
                       _%prototype101314%_
                       _%obj101281%_))))))))
    (define satisfies?
      (lambda (_%descriptor101239%_ _%obj101241%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101245%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101239%_ '1 '#f '#f)))
               (_%klass-id101248%_
                (let () (declare (not safe)) (##type-id _%klass101245%_)))
               (_%obj-klass101251%_
                (let () (declare (not safe)) (class-of _%obj101241%_)))
               (_%obj-klass-id101254%_
                (let () (declare (not safe)) (##type-id _%obj-klass101251%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101248%_ _%obj-klass-id101254%_))
              (let () _%obj101241%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101251%_))
                  (let ((__tmp102034
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101241%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (satisfies? _%descriptor101239%_ __tmp102034))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101263%_ ()
                        (if (let ((__tmp102035
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102035 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101263%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101248%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101254%_))
                    (let ((_%prototype101274%_
                           (let ((_%$e101267%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101267%_
                                 ((lambda (_%prototype101270%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101270%_)
                                  _%$e101267%_)
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
                                      _%descriptor101239%_
                                      _%klass101245%_
                                      _%obj-klass101251%_)))))))
                      ((lambda (_%prototype101276%_ _%obj101277%_)
                         (if _%prototype101276%_ '#t '#f))
                       _%prototype101274%_
                       _%obj101241%_))))))))))
