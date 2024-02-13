(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx229937_)
      (let* ((_g229941229970_
              (lambda (_g229942229966_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g229942229966_))))
             (_g229940230071_
              (lambda (_g229942229974_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g229942229974_))
                    (let ((_e229947229977_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g229942229974_))))
                      (let ((_hd229946229981_
                             (let ()
                               (declare (not safe))
                               (##car _e229947229977_)))
                            (_tl229945229984_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229947229977_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl229945229984_))
                            (let ((_g245448_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl229945229984_
                                      '0))))
                              (begin
                                (let ((_g245449_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g245448_)
                                             (##vector-length _g245448_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g245449_ 2)))
                                      (error "Context expects 2 values"
                                             _g245449_)))
                                (let ((_target229948229987_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245448_ 0)))
                                      (_tl229950229990_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245448_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229950229990_))
                                      (letrec ((_loop229951229993_
                                                (lambda (_hd229949229997_
                                                         _type-e229955230000_
                                                         _id229956230002_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229949229997_))
                                                      (let ((_e229952230005_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd229949229997_))))
                (let ((_lp-hd229953230009_
                       (let () (declare (not safe)) (##car _e229952230005_)))
                      (_lp-tl229954230012_
                       (let () (declare (not safe)) (##cdr _e229952230005_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd229953230009_))
                      (let ((_e229961230015_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd229953230009_))))
                        (let ((_hd229960230019_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229961230015_)))
                              (_tl229959230022_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229961230015_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229959230022_))
                              (let ((_e229964230025_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl229959230022_))))
                                (let ((_hd229963230029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229964230025_)))
                                      (_tl229962230032_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229964230025_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229962230032_))
                                      (_loop229951229993_
                                       _lp-tl229954230012_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd229963230029_
                                               _type-e229955230000_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd229960230019_
                                               _id229956230002_)))
                                      (_g229941229970_ _g229942229974_))))
                              (_g229941229970_ _g229942229974_))))
                      (_g229941229970_ _g229942229974_))))
              (let ((_type-e229957230035_ (reverse _type-e229955230000_))
                    (_id229958230038_ (reverse _id229956230002_)))
                ((lambda (_L230041_ _L230043_)
                   (let ((__tmp245461
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp245450
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L230041_
                               _L230043_))
                            (let ((__tmp245451
                                   (lambda (_g230059230063_
                                            _g230060230066_
                                            _g230061230068_)
                                     (let ((__tmp245452
                                            (let ((__tmp245460
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp245453
                                                   (let ((__tmp245459
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp245454
                                                          (let ((__tmp245456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245458
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp245457
                                (let ()
                                  (declare (not safe))
                                  (cons _g230060230066_ '()))))
                           (declare (not safe))
                           (cons __tmp245458 __tmp245457)))
                        (__tmp245455
                         (let ()
                           (declare (not safe))
                           (cons _g230059230063_ '()))))
                    (declare (not safe))
                    (cons __tmp245456 __tmp245455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245459
                                                           __tmp245454))))
                                              (declare (not safe))
                                              (cons __tmp245460 __tmp245453))))
                                       (declare (not safe))
                                       (cons __tmp245452 _g230061230068_)))))
                              (declare (not safe))
                              (foldr2 __tmp245451 '() _L230041_ _L230043_)))))
                     (declare (not safe))
                     (cons __tmp245461 __tmp245450)))
                 _type-e229957230035_
                 _id229958230038_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop229951229993_
                                         _target229948229987_
                                         '()
                                         '()))
                                      (_g229941229970_ _g229942229974_)))))
                            (_g229941229970_ _g229942229974_))))
                    (_g229941229970_ _g229942229974_)))))
        (_g229940230071_ _$stx229937_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx230076_)
      (let* ((_g230080230109_
              (lambda (_g230081230105_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g230081230105_))))
             (_g230079230209_
              (lambda (_g230081230113_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g230081230113_))
                    (let ((_e230086230116_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g230081230113_))))
                      (let ((_hd230085230120_
                             (let ()
                               (declare (not safe))
                               (##car _e230086230116_)))
                            (_tl230084230123_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230086230116_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl230084230123_))
                            (let ((_g245462_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl230084230123_
                                      '0))))
                              (begin
                                (let ((_g245463_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g245462_)
                                             (##vector-length _g245462_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g245463_ 2)))
                                      (error "Context expects 2 values"
                                             _g245463_)))
                                (let ((_target230087230126_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245462_ 0)))
                                      (_tl230089230129_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245462_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230089230129_))
                                      (letrec ((_loop230090230132_
                                                (lambda (_hd230088230136_
                                                         _type-e230094230139_
                                                         _id230095230141_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230088230136_))
                                                      (let ((_e230091230144_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd230088230136_))))
                (let ((_lp-hd230092230148_
                       (let () (declare (not safe)) (##car _e230091230144_)))
                      (_lp-tl230093230151_
                       (let () (declare (not safe)) (##cdr _e230091230144_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd230092230148_))
                      (let ((_e230100230154_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd230092230148_))))
                        (let ((_hd230099230158_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230100230154_)))
                              (_tl230098230161_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230100230154_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230098230161_))
                              (let ((_e230103230164_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl230098230161_))))
                                (let ((_hd230102230168_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230103230164_)))
                                      (_tl230101230171_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230103230164_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230101230171_))
                                      (_loop230090230132_
                                       _lp-tl230093230151_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd230102230168_
                                               _type-e230094230139_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd230099230158_
                                               _id230095230141_)))
                                      (_g230080230109_ _g230081230113_))))
                              (_g230080230109_ _g230081230113_))))
                      (_g230080230109_ _g230081230113_))))
              (let ((_type-e230096230174_ (reverse _type-e230094230139_))
                    (_id230097230177_ (reverse _id230095230141_)))
                ((lambda (_L230180_ _L230182_)
                   (let ((__tmp245475
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp245464
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L230180_
                               _L230182_))
                            (let ((__tmp245465
                                   (lambda (_g230197230201_
                                            _g230198230204_
                                            _g230199230206_)
                                     (let ((__tmp245466
                                            (let ((__tmp245474
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp245467
                                                   (let ((__tmp245473
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp245468
                                                          (let ((__tmp245470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245472
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp245471
                                (let ()
                                  (declare (not safe))
                                  (cons _g230198230204_ '()))))
                           (declare (not safe))
                           (cons __tmp245472 __tmp245471)))
                        (__tmp245469
                         (let ()
                           (declare (not safe))
                           (cons _g230197230201_ '()))))
                    (declare (not safe))
                    (cons __tmp245470 __tmp245469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245473
                                                           __tmp245468))))
                                              (declare (not safe))
                                              (cons __tmp245474 __tmp245467))))
                                       (declare (not safe))
                                       (cons __tmp245466 _g230199230206_)))))
                              (declare (not safe))
                              (foldr2 __tmp245465 '() _L230180_ _L230182_)))))
                     (declare (not safe))
                     (cons __tmp245475 __tmp245464)))
                 _type-e230096230174_
                 _id230097230177_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop230090230132_
                                         _target230087230126_
                                         '()
                                         '()))
                                      (_g230080230109_ _g230081230113_)))))
                            (_g230080230109_ _g230081230113_))))
                    (_g230080230109_ _g230081230113_)))))
        (_g230079230209_ _$stx230076_)))))
