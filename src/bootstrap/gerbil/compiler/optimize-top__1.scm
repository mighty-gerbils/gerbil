(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx229936_)
      (let* ((_g229940229969_
              (lambda (_g229941229965_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g229941229965_))))
             (_g229939230070_
              (lambda (_g229941229973_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g229941229973_))
                    (let ((_e229946229976_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g229941229973_))))
                      (let ((_hd229945229980_
                             (let ()
                               (declare (not safe))
                               (##car _e229946229976_)))
                            (_tl229944229983_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229946229976_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl229944229983_))
                            (let ((_g245447_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl229944229983_
                                      '0))))
                              (begin
                                (let ((_g245448_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g245447_)
                                             (##vector-length _g245447_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g245448_ 2)))
                                      (error "Context expects 2 values"
                                             _g245448_)))
                                (let ((_target229947229986_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245447_ 0)))
                                      (_tl229949229989_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245447_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229949229989_))
                                      (letrec ((_loop229950229992_
                                                (lambda (_hd229948229996_
                                                         _type-e229954229999_
                                                         _id229955230001_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229948229996_))
                                                      (let ((_e229951230004_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd229948229996_))))
                (let ((_lp-hd229952230008_
                       (let () (declare (not safe)) (##car _e229951230004_)))
                      (_lp-tl229953230011_
                       (let () (declare (not safe)) (##cdr _e229951230004_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd229952230008_))
                      (let ((_e229960230014_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd229952230008_))))
                        (let ((_hd229959230018_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229960230014_)))
                              (_tl229958230021_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229960230014_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229958230021_))
                              (let ((_e229963230024_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl229958230021_))))
                                (let ((_hd229962230028_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229963230024_)))
                                      (_tl229961230031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229963230024_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229961230031_))
                                      (_loop229950229992_
                                       _lp-tl229953230011_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd229962230028_
                                               _type-e229954229999_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd229959230018_
                                               _id229955230001_)))
                                      (_g229940229969_ _g229941229973_))))
                              (_g229940229969_ _g229941229973_))))
                      (_g229940229969_ _g229941229973_))))
              (let ((_type-e229956230034_ (reverse _type-e229954229999_))
                    (_id229957230037_ (reverse _id229955230001_)))
                ((lambda (_L230040_ _L230042_)
                   (let ((__tmp245460
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp245449
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L230040_
                               _L230042_))
                            (let ((__tmp245450
                                   (lambda (_g230058230062_
                                            _g230059230065_
                                            _g230060230067_)
                                     (let ((__tmp245451
                                            (let ((__tmp245459
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp245452
                                                   (let ((__tmp245458
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp245453
                                                          (let ((__tmp245455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245457
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp245456
                                (let ()
                                  (declare (not safe))
                                  (cons _g230059230065_ '()))))
                           (declare (not safe))
                           (cons __tmp245457 __tmp245456)))
                        (__tmp245454
                         (let ()
                           (declare (not safe))
                           (cons _g230058230062_ '()))))
                    (declare (not safe))
                    (cons __tmp245455 __tmp245454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245458
                                                           __tmp245453))))
                                              (declare (not safe))
                                              (cons __tmp245459 __tmp245452))))
                                       (declare (not safe))
                                       (cons __tmp245451 _g230060230067_)))))
                              (declare (not safe))
                              (foldr2 __tmp245450 '() _L230040_ _L230042_)))))
                     (declare (not safe))
                     (cons __tmp245460 __tmp245449)))
                 _type-e229956230034_
                 _id229957230037_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop229950229992_
                                         _target229947229986_
                                         '()
                                         '()))
                                      (_g229940229969_ _g229941229973_)))))
                            (_g229940229969_ _g229941229973_))))
                    (_g229940229969_ _g229941229973_)))))
        (_g229939230070_ _$stx229936_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx230075_)
      (let* ((_g230079230108_
              (lambda (_g230080230104_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g230080230104_))))
             (_g230078230208_
              (lambda (_g230080230112_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g230080230112_))
                    (let ((_e230085230115_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g230080230112_))))
                      (let ((_hd230084230119_
                             (let ()
                               (declare (not safe))
                               (##car _e230085230115_)))
                            (_tl230083230122_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230085230115_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl230083230122_))
                            (let ((_g245461_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl230083230122_
                                      '0))))
                              (begin
                                (let ((_g245462_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g245461_)
                                             (##vector-length _g245461_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g245462_ 2)))
                                      (error "Context expects 2 values"
                                             _g245462_)))
                                (let ((_target230086230125_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245461_ 0)))
                                      (_tl230088230128_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245461_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230088230128_))
                                      (letrec ((_loop230089230131_
                                                (lambda (_hd230087230135_
                                                         _type-e230093230138_
                                                         _id230094230140_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230087230135_))
                                                      (let ((_e230090230143_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd230087230135_))))
                (let ((_lp-hd230091230147_
                       (let () (declare (not safe)) (##car _e230090230143_)))
                      (_lp-tl230092230150_
                       (let () (declare (not safe)) (##cdr _e230090230143_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd230091230147_))
                      (let ((_e230099230153_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd230091230147_))))
                        (let ((_hd230098230157_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230099230153_)))
                              (_tl230097230160_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230099230153_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230097230160_))
                              (let ((_e230102230163_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl230097230160_))))
                                (let ((_hd230101230167_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230102230163_)))
                                      (_tl230100230170_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230102230163_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230100230170_))
                                      (_loop230089230131_
                                       _lp-tl230092230150_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd230101230167_
                                               _type-e230093230138_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd230098230157_
                                               _id230094230140_)))
                                      (_g230079230108_ _g230080230112_))))
                              (_g230079230108_ _g230080230112_))))
                      (_g230079230108_ _g230080230112_))))
              (let ((_type-e230095230173_ (reverse _type-e230093230138_))
                    (_id230096230176_ (reverse _id230094230140_)))
                ((lambda (_L230179_ _L230181_)
                   (let ((__tmp245474
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp245463
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L230179_
                               _L230181_))
                            (let ((__tmp245464
                                   (lambda (_g230196230200_
                                            _g230197230203_
                                            _g230198230205_)
                                     (let ((__tmp245465
                                            (let ((__tmp245473
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp245466
                                                   (let ((__tmp245472
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp245467
                                                          (let ((__tmp245469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245471
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp245470
                                (let ()
                                  (declare (not safe))
                                  (cons _g230197230203_ '()))))
                           (declare (not safe))
                           (cons __tmp245471 __tmp245470)))
                        (__tmp245468
                         (let ()
                           (declare (not safe))
                           (cons _g230196230200_ '()))))
                    (declare (not safe))
                    (cons __tmp245469 __tmp245468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245472
                                                           __tmp245467))))
                                              (declare (not safe))
                                              (cons __tmp245473 __tmp245466))))
                                       (declare (not safe))
                                       (cons __tmp245465 _g230198230205_)))))
                              (declare (not safe))
                              (foldr2 __tmp245464 '() _L230179_ _L230181_)))))
                     (declare (not safe))
                     (cons __tmp245474 __tmp245463)))
                 _type-e230095230173_
                 _id230096230176_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop230089230131_
                                         _target230086230125_
                                         '()
                                         '()))
                                      (_g230079230108_ _g230080230112_)))))
                            (_g230079230108_ _g230080230112_))))
                    (_g230079230108_ _g230080230112_)))))
        (_g230078230208_ _$stx230075_)))))
