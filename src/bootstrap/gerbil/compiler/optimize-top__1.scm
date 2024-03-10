(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx115143_)
      (let* ((_g115147115176_
              (lambda (_g115148115172_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g115148115172_))))
             (_g115146115277_
              (lambda (_g115148115180_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g115148115180_))
                    (let ((_e115151115183_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g115148115180_))))
                      (let ((_hd115152115187_
                             (let ()
                               (declare (not safe))
                               (##car _e115151115183_)))
                            (_tl115153115190_
                             (let ()
                               (declare (not safe))
                               (##cdr _e115151115183_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl115153115190_))
                            (let ((_g126085_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl115153115190_
                                      '0))))
                              (begin
                                (let ((_g126086_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g126085_)
                                             (##vector-length _g126085_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g126086_ 2)))
                                      (error "Context expects 2 values"
                                             _g126086_)))
                                (let ((_target115154115193_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g126085_ 0)))
                                      (_tl115156115196_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g126085_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115156115196_))
                                      (letrec ((_loop115157115199_
                                                (lambda (_hd115155115203_
                                                         _type-e115161115206_
                                                         _id115162115208_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd115155115203_))
                                                      (let ((_e115158115211_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd115155115203_))))
                (let ((_lp-hd115159115215_
                       (let () (declare (not safe)) (##car _e115158115211_)))
                      (_lp-tl115160115218_
                       (let () (declare (not safe)) (##cdr _e115158115211_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd115159115215_))
                      (let ((_e115165115221_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd115159115215_))))
                        (let ((_hd115166115225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115165115221_)))
                              (_tl115167115228_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115165115221_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115167115228_))
                              (let ((_e115168115231_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl115167115228_))))
                                (let ((_hd115169115235_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115168115231_)))
                                      (_tl115170115238_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115168115231_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115170115238_))
                                      (_loop115157115199_
                                       _lp-tl115160115218_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd115169115235_
                                               _type-e115161115206_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd115166115225_
                                               _id115162115208_)))
                                      (_g115147115176_ _g115148115180_))))
                              (_g115147115176_ _g115148115180_))))
                      (_g115147115176_ _g115148115180_))))
              (let ((_type-e115163115241_ (reverse _type-e115161115206_))
                    (_id115164115244_ (reverse _id115162115208_)))
                ((lambda (_L115247_ _L115249_)
                   (let ((__tmp126098
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp126087
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L115247_
                               _L115249_))
                            (let ((__tmp126088
                                   (lambda (_g115265115269_
                                            _g115266115272_
                                            _g115267115274_)
                                     (let ((__tmp126089
                                            (let ((__tmp126097
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp126090
                                                   (let ((__tmp126096
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp126091
                                                          (let ((__tmp126093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp126095
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp126094
                                (let ()
                                  (declare (not safe))
                                  (cons _g115266115272_ '()))))
                           (declare (not safe))
                           (cons __tmp126095 __tmp126094)))
                        (__tmp126092
                         (let ()
                           (declare (not safe))
                           (cons _g115265115269_ '()))))
                    (declare (not safe))
                    (cons __tmp126093 __tmp126092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp126096
                                                           __tmp126091))))
                                              (declare (not safe))
                                              (cons __tmp126097 __tmp126090))))
                                       (declare (not safe))
                                       (cons __tmp126089 _g115267115274_)))))
                              (declare (not safe))
                              (foldr2 __tmp126088 '() _L115247_ _L115249_)))))
                     (declare (not safe))
                     (cons __tmp126098 __tmp126087)))
                 _type-e115163115241_
                 _id115164115244_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop115157115199_
                                         _target115154115193_
                                         '()
                                         '()))
                                      (_g115147115176_ _g115148115180_)))))
                            (_g115147115176_ _g115148115180_))))
                    (_g115147115176_ _g115148115180_)))))
        (_g115146115277_ _$stx115143_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx115282_)
      (let* ((_g115286115315_
              (lambda (_g115287115311_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g115287115311_))))
             (_g115285115415_
              (lambda (_g115287115319_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g115287115319_))
                    (let ((_e115290115322_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g115287115319_))))
                      (let ((_hd115291115326_
                             (let ()
                               (declare (not safe))
                               (##car _e115290115322_)))
                            (_tl115292115329_
                             (let ()
                               (declare (not safe))
                               (##cdr _e115290115322_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl115292115329_))
                            (let ((_g126099_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl115292115329_
                                      '0))))
                              (begin
                                (let ((_g126100_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g126099_)
                                             (##vector-length _g126099_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g126100_ 2)))
                                      (error "Context expects 2 values"
                                             _g126100_)))
                                (let ((_target115293115332_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g126099_ 0)))
                                      (_tl115295115335_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g126099_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115295115335_))
                                      (letrec ((_loop115296115338_
                                                (lambda (_hd115294115342_
                                                         _type-e115300115345_
                                                         _id115301115347_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd115294115342_))
                                                      (let ((_e115297115350_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd115294115342_))))
                (let ((_lp-hd115298115354_
                       (let () (declare (not safe)) (##car _e115297115350_)))
                      (_lp-tl115299115357_
                       (let () (declare (not safe)) (##cdr _e115297115350_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd115298115354_))
                      (let ((_e115304115360_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd115298115354_))))
                        (let ((_hd115305115364_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115304115360_)))
                              (_tl115306115367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115304115360_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115306115367_))
                              (let ((_e115307115370_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl115306115367_))))
                                (let ((_hd115308115374_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115307115370_)))
                                      (_tl115309115377_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115307115370_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115309115377_))
                                      (_loop115296115338_
                                       _lp-tl115299115357_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd115308115374_
                                               _type-e115300115345_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd115305115364_
                                               _id115301115347_)))
                                      (_g115286115315_ _g115287115319_))))
                              (_g115286115315_ _g115287115319_))))
                      (_g115286115315_ _g115287115319_))))
              (let ((_type-e115302115380_ (reverse _type-e115300115345_))
                    (_id115303115383_ (reverse _id115301115347_)))
                ((lambda (_L115386_ _L115388_)
                   (let ((__tmp126112
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp126101
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L115386_
                               _L115388_))
                            (let ((__tmp126102
                                   (lambda (_g115403115407_
                                            _g115404115410_
                                            _g115405115412_)
                                     (let ((__tmp126103
                                            (let ((__tmp126111
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp126104
                                                   (let ((__tmp126110
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp126105
                                                          (let ((__tmp126107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp126109
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp126108
                                (let ()
                                  (declare (not safe))
                                  (cons _g115404115410_ '()))))
                           (declare (not safe))
                           (cons __tmp126109 __tmp126108)))
                        (__tmp126106
                         (let ()
                           (declare (not safe))
                           (cons _g115403115407_ '()))))
                    (declare (not safe))
                    (cons __tmp126107 __tmp126106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp126110
                                                           __tmp126105))))
                                              (declare (not safe))
                                              (cons __tmp126111 __tmp126104))))
                                       (declare (not safe))
                                       (cons __tmp126103 _g115405115412_)))))
                              (declare (not safe))
                              (foldr2 __tmp126102 '() _L115386_ _L115388_)))))
                     (declare (not safe))
                     (cons __tmp126112 __tmp126101)))
                 _type-e115302115380_
                 _id115303115383_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop115296115338_
                                         _target115293115332_
                                         '()
                                         '()))
                                      (_g115286115315_ _g115287115319_)))))
                            (_g115286115315_ _g115287115319_))))
                    (_g115286115315_ _g115287115319_)))))
        (_g115285115415_ _$stx115282_)))))
