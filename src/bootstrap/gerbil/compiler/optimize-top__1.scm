(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx229932_)
      (let* ((_g229936229965_
              (lambda (_g229937229961_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g229937229961_))))
             (_g229935230066_
              (lambda (_g229937229969_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g229937229969_))
                    (let ((_e229942229972_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g229937229969_))))
                      (let ((_hd229941229976_
                             (let ()
                               (declare (not safe))
                               (##car _e229942229972_)))
                            (_tl229940229979_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229942229972_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl229940229979_))
                            (let ((_g245443_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl229940229979_
                                      '0))))
                              (begin
                                (let ((_g245444_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g245443_)
                                             (##vector-length _g245443_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g245444_ 2)))
                                      (error "Context expects 2 values"
                                             _g245444_)))
                                (let ((_target229943229982_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245443_ 0)))
                                      (_tl229945229985_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245443_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229945229985_))
                                      (letrec ((_loop229946229988_
                                                (lambda (_hd229944229992_
                                                         _type-e229950229995_
                                                         _id229951229997_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229944229992_))
                                                      (let ((_e229947230000_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd229944229992_))))
                (let ((_lp-hd229948230004_
                       (let () (declare (not safe)) (##car _e229947230000_)))
                      (_lp-tl229949230007_
                       (let () (declare (not safe)) (##cdr _e229947230000_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd229948230004_))
                      (let ((_e229956230010_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd229948230004_))))
                        (let ((_hd229955230014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229956230010_)))
                              (_tl229954230017_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229956230010_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229954230017_))
                              (let ((_e229959230020_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl229954230017_))))
                                (let ((_hd229958230024_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229959230020_)))
                                      (_tl229957230027_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229959230020_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229957230027_))
                                      (_loop229946229988_
                                       _lp-tl229949230007_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd229958230024_
                                               _type-e229950229995_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd229955230014_
                                               _id229951229997_)))
                                      (_g229936229965_ _g229937229969_))))
                              (_g229936229965_ _g229937229969_))))
                      (_g229936229965_ _g229937229969_))))
              (let ((_type-e229952230030_ (reverse _type-e229950229995_))
                    (_id229953230033_ (reverse _id229951229997_)))
                ((lambda (_L230036_ _L230038_)
                   (let ((__tmp245456
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp245445
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L230036_
                               _L230038_))
                            (let ((__tmp245446
                                   (lambda (_g230054230058_
                                            _g230055230061_
                                            _g230056230063_)
                                     (let ((__tmp245447
                                            (let ((__tmp245455
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp245448
                                                   (let ((__tmp245454
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp245449
                                                          (let ((__tmp245451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245453
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp245452
                                (let ()
                                  (declare (not safe))
                                  (cons _g230055230061_ '()))))
                           (declare (not safe))
                           (cons __tmp245453 __tmp245452)))
                        (__tmp245450
                         (let ()
                           (declare (not safe))
                           (cons _g230054230058_ '()))))
                    (declare (not safe))
                    (cons __tmp245451 __tmp245450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245454
                                                           __tmp245449))))
                                              (declare (not safe))
                                              (cons __tmp245455 __tmp245448))))
                                       (declare (not safe))
                                       (cons __tmp245447 _g230056230063_)))))
                              (declare (not safe))
                              (foldr2 __tmp245446 '() _L230036_ _L230038_)))))
                     (declare (not safe))
                     (cons __tmp245456 __tmp245445)))
                 _type-e229952230030_
                 _id229953230033_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop229946229988_
                                         _target229943229982_
                                         '()
                                         '()))
                                      (_g229936229965_ _g229937229969_)))))
                            (_g229936229965_ _g229937229969_))))
                    (_g229936229965_ _g229937229969_)))))
        (_g229935230066_ _$stx229932_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx230071_)
      (let* ((_g230075230104_
              (lambda (_g230076230100_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g230076230100_))))
             (_g230074230204_
              (lambda (_g230076230108_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g230076230108_))
                    (let ((_e230081230111_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g230076230108_))))
                      (let ((_hd230080230115_
                             (let ()
                               (declare (not safe))
                               (##car _e230081230111_)))
                            (_tl230079230118_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230081230111_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl230079230118_))
                            (let ((_g245457_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl230079230118_
                                      '0))))
                              (begin
                                (let ((_g245458_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g245457_)
                                             (##vector-length _g245457_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g245458_ 2)))
                                      (error "Context expects 2 values"
                                             _g245458_)))
                                (let ((_target230082230121_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245457_ 0)))
                                      (_tl230084230124_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g245457_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230084230124_))
                                      (letrec ((_loop230085230127_
                                                (lambda (_hd230083230131_
                                                         _type-e230089230134_
                                                         _id230090230136_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230083230131_))
                                                      (let ((_e230086230139_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd230083230131_))))
                (let ((_lp-hd230087230143_
                       (let () (declare (not safe)) (##car _e230086230139_)))
                      (_lp-tl230088230146_
                       (let () (declare (not safe)) (##cdr _e230086230139_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd230087230143_))
                      (let ((_e230095230149_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd230087230143_))))
                        (let ((_hd230094230153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230095230149_)))
                              (_tl230093230156_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230095230149_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230093230156_))
                              (let ((_e230098230159_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl230093230156_))))
                                (let ((_hd230097230163_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230098230159_)))
                                      (_tl230096230166_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230098230159_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230096230166_))
                                      (_loop230085230127_
                                       _lp-tl230088230146_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd230097230163_
                                               _type-e230089230134_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd230094230153_
                                               _id230090230136_)))
                                      (_g230075230104_ _g230076230108_))))
                              (_g230075230104_ _g230076230108_))))
                      (_g230075230104_ _g230076230108_))))
              (let ((_type-e230091230169_ (reverse _type-e230089230134_))
                    (_id230092230172_ (reverse _id230090230136_)))
                ((lambda (_L230175_ _L230177_)
                   (let ((__tmp245470
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp245459
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L230175_
                               _L230177_))
                            (let ((__tmp245460
                                   (lambda (_g230192230196_
                                            _g230193230199_
                                            _g230194230201_)
                                     (let ((__tmp245461
                                            (let ((__tmp245469
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp245462
                                                   (let ((__tmp245468
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp245463
                                                          (let ((__tmp245465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245467
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp245466
                                (let ()
                                  (declare (not safe))
                                  (cons _g230193230199_ '()))))
                           (declare (not safe))
                           (cons __tmp245467 __tmp245466)))
                        (__tmp245464
                         (let ()
                           (declare (not safe))
                           (cons _g230192230196_ '()))))
                    (declare (not safe))
                    (cons __tmp245465 __tmp245464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245468
                                                           __tmp245463))))
                                              (declare (not safe))
                                              (cons __tmp245469 __tmp245462))))
                                       (declare (not safe))
                                       (cons __tmp245461 _g230194230201_)))))
                              (declare (not safe))
                              (foldr2 __tmp245460 '() _L230175_ _L230177_)))))
                     (declare (not safe))
                     (cons __tmp245470 __tmp245459)))
                 _type-e230091230169_
                 _id230092230172_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop230085230127_
                                         _target230082230121_
                                         '()
                                         '()))
                                      (_g230075230104_ _g230076230108_)))))
                            (_g230075230104_ _g230076230108_))))
                    (_g230075230104_ _g230076230108_)))))
        (_g230074230204_ _$stx230071_)))))
