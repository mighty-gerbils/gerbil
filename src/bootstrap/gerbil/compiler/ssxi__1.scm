(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx284214_)
      (let* ((_g284218284236_
              (lambda (_g284219284232_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284219284232_))))
             (_g284217284291_
              (lambda (_g284219284240_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284219284240_))
                    (let ((_e284224284243_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284219284240_))))
                      (let ((_hd284223284247_
                             (let ()
                               (declare (not safe))
                               (##car _e284224284243_)))
                            (_tl284222284250_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284224284243_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284222284250_))
                            (let ((_e284227284253_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl284222284250_))))
                              (let ((_hd284226284257_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284227284253_)))
                                    (_tl284225284260_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284227284253_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl284225284260_))
                                    (let ((_e284230284263_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl284225284260_))))
                                      (let ((_hd284229284267_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e284230284263_)))
                                            (_tl284228284270_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e284230284263_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl284228284270_))
                                            ((lambda (_L284273_ _L284275_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L284275_))
                                                   (let ((__tmp291931
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp291926
                                                          (let ((__tmp291928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp291930
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp291929
                                (let ()
                                  (declare (not safe))
                                  (cons _L284275_ '()))))
                           (declare (not safe))
                           (cons __tmp291930 __tmp291929)))
                        (__tmp291927
                         (let () (declare (not safe)) (cons _L284273_ '()))))
                    (declare (not safe))
                    (cons __tmp291928 __tmp291927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp291931
                                                           __tmp291926))
                                                   (_g284218284236_
                                                    _g284219284240_)))
                                             _hd284229284267_
                                             _hd284226284257_)
                                            (_g284218284236_
                                             _g284219284240_))))
                                    (_g284218284236_ _g284219284240_))))
                            (_g284218284236_ _g284219284240_))))
                    (_g284218284236_ _g284219284240_)))))
        (_g284217284291_ _$stx284214_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx284295_)
      (let* ((_g284299284328_
              (lambda (_g284300284324_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284300284324_))))
             (_g284298284428_
              (lambda (_g284300284332_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284300284332_))
                    (let ((_e284305284335_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284300284332_))))
                      (let ((_hd284304284339_
                             (let ()
                               (declare (not safe))
                               (##car _e284305284335_)))
                            (_tl284303284342_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284305284335_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl284303284342_))
                            (let ((_g291932_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl284303284342_
                                      '0))))
                              (begin
                                (let ((_g291933_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g291932_)
                                             (##vector-length _g291932_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g291933_ 2)))
                                      (error "Context expects 2 values"
                                             _g291933_)))
                                (let ((_target284306284345_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g291932_ 0)))
                                      (_tl284308284348_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g291932_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl284308284348_))
                                      (letrec ((_loop284309284351_
                                                (lambda (_hd284307284355_
                                                         _type284313284358_
                                                         _symbol284314284360_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd284307284355_))
                                                      (let ((_e284310284363_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd284307284355_))))
                (let ((_lp-hd284311284367_
                       (let () (declare (not safe)) (##car _e284310284363_)))
                      (_lp-tl284312284370_
                       (let () (declare (not safe)) (##cdr _e284310284363_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd284311284367_))
                      (let ((_e284319284373_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd284311284367_))))
                        (let ((_hd284318284377_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284319284373_)))
                              (_tl284317284380_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284319284373_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl284317284380_))
                              (let ((_e284322284383_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl284317284380_))))
                                (let ((_hd284321284387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284322284383_)))
                                      (_tl284320284390_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284322284383_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl284320284390_))
                                      (_loop284309284351_
                                       _lp-tl284312284370_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd284321284387_
                                               _type284313284358_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd284318284377_
                                               _symbol284314284360_)))
                                      (_g284299284328_ _g284300284332_))))
                              (_g284299284328_ _g284300284332_))))
                      (_g284299284328_ _g284300284332_))))
              (let ((_type284315284393_ (reverse _type284313284358_))
                    (_symbol284316284396_ (reverse _symbol284314284360_)))
                ((lambda (_L284399_ _L284401_)
                   (let ((__tmp291940
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp291934
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L284399_
                               _L284401_))
                            (let ((__tmp291935
                                   (lambda (_g284416284420_
                                            _g284417284423_
                                            _g284418284425_)
                                     (let ((__tmp291936
                                            (let ((__tmp291939
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp291937
                                                   (let ((__tmp291938
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g284416284420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g284417284423_
                                                           __tmp291938))))
                                              (declare (not safe))
                                              (cons __tmp291939 __tmp291937))))
                                       (declare (not safe))
                                       (cons __tmp291936 _g284418284425_)))))
                              (declare (not safe))
                              (foldr2 __tmp291935 '() _L284399_ _L284401_)))))
                     (declare (not safe))
                     (cons __tmp291940 __tmp291934)))
                 _type284315284393_
                 _symbol284316284396_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop284309284351_
                                         _target284306284345_
                                         '()
                                         '()))
                                      (_g284299284328_ _g284300284332_)))))
                            (_g284299284328_ _g284300284332_))))
                    (_g284299284328_ _g284300284332_)))))
        (_g284298284428_ _$stx284295_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx284433_)
      (let* ((___stx291491291492_ _$stx284433_)
             (_g284438284480_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291491291492_)))))
        (let ((___kont291494291495_
               (lambda (_L284608_ _L284610_ _L284611_ _L284612_)
                 (let ((__tmp291954
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp291941
                        (let ((__tmp291951
                               (let ((__tmp291953
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp291952
                                      (let ()
                                        (declare (not safe))
                                        (cons _L284612_ '()))))
                                 (declare (not safe))
                                 (cons __tmp291953 __tmp291952)))
                              (__tmp291942
                               (let ((__tmp291948
                                      (let ((__tmp291950
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp291949
                                             (let ()
                                               (declare (not safe))
                                               (cons _L284611_ '()))))
                                        (declare (not safe))
                                        (cons __tmp291950 __tmp291949)))
                                     (__tmp291943
                                      (let ((__tmp291945
                                             (let ((__tmp291947
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp291946
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L284610_ '()))))
                                               (declare (not safe))
                                               (cons __tmp291947 __tmp291946)))
                                            (__tmp291944
                                             (let ()
                                               (declare (not safe))
                                               (cons _L284608_ '()))))
                                        (declare (not safe))
                                        (cons __tmp291945 __tmp291944))))
                                 (declare (not safe))
                                 (cons __tmp291948 __tmp291943))))
                          (declare (not safe))
                          (cons __tmp291951 __tmp291942))))
                   (declare (not safe))
                   (cons __tmp291954 __tmp291941))))
              (___kont291496291497_
               (lambda (_L284527_ _L284529_ _L284530_ _L284531_)
                 (let ((__tmp291955
                        (let ((__tmp291956
                               (let ((__tmp291957
                                      (let ((__tmp291958
                                             (let ((__tmp291959
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp291959 '()))))
                                        (declare (not safe))
                                        (cons _L284527_ __tmp291958))))
                                 (declare (not safe))
                                 (cons _L284529_ __tmp291957))))
                          (declare (not safe))
                          (cons _L284530_ __tmp291956))))
                   (declare (not safe))
                   (cons _L284531_ __tmp291955)))))
          (let ((___match291530291531_
                 (lambda (_e284446284558_
                          _hd284445284562_
                          _tl284444284565_
                          _e284449284568_
                          _hd284448284572_
                          _tl284447284575_
                          _e284452284578_
                          _hd284451284582_
                          _tl284450284585_
                          _e284455284588_
                          _hd284454284592_
                          _tl284453284595_
                          _e284458284598_
                          _hd284457284602_
                          _tl284456284605_)
                   (let ((_L284608_ _hd284457284602_)
                         (_L284610_ _hd284454284592_)
                         (_L284611_ _hd284451284582_)
                         (_L284612_ _hd284448284572_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L284612_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L284611_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L284610_)))
                         (___kont291494291495_
                          _L284608_
                          _L284610_
                          _L284611_
                          _L284612_)
                         (let () (declare (not safe)) (_g284438284480_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291491291492_))
                (let ((_e284446284558_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291491291492_))))
                  (let ((_tl284444284565_
                         (let () (declare (not safe)) (##cdr _e284446284558_)))
                        (_hd284445284562_
                         (let ()
                           (declare (not safe))
                           (##car _e284446284558_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl284444284565_))
                        (let ((_e284449284568_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl284444284565_))))
                          (let ((_tl284447284575_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e284449284568_)))
                                (_hd284448284572_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e284449284568_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl284447284575_))
                                (let ((_e284452284578_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl284447284575_))))
                                  (let ((_tl284450284585_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e284452284578_)))
                                        (_hd284451284582_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e284452284578_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl284450284585_))
                                        (let ((_e284455284588_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl284450284585_))))
                                          (let ((_tl284453284595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e284455284588_)))
                                                (_hd284454284592_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e284455284588_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl284453284595_))
                                                (let ((_e284458284598_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl284453284595_))))
                                                  (let ((_tl284456284605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e284458284598_)))
                                                        (_hd284457284602_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e284458284598_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284456284605_))
                                                        (___match291530291531_
                                                         _e284446284558_
                                                         _hd284445284562_
                                                         _tl284444284565_
                                                         _e284449284568_
                                                         _hd284448284572_
                                                         _tl284447284575_
                                                         _e284452284578_
                                                         _hd284451284582_
                                                         _tl284450284585_
                                                         _e284455284588_
                                                         _hd284454284592_
                                                         _tl284453284595_
                                                         _e284458284598_
                                                         _hd284457284602_
                                                         _tl284456284605_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g284438284480_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl284453284595_))
                                                    (___kont291496291497_
                                                     _hd284454284592_
                                                     _hd284451284582_
                                                     _hd284448284572_
                                                     _hd284445284562_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g284438284480_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g284438284480_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g284438284480_)))))
                        (let () (declare (not safe)) (_g284438284480_)))))
                (let () (declare (not safe)) (_g284438284480_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx284637_)
      (let* ((_g284641284676_
              (lambda (_g284642284672_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284642284672_))))
             (_g284640284795_
              (lambda (_g284642284680_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284642284680_))
                    (let ((_e284648284683_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284642284680_))))
                      (let ((_hd284647284687_
                             (let ()
                               (declare (not safe))
                               (##car _e284648284683_)))
                            (_tl284646284690_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284648284683_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl284646284690_))
                            (let ((_g291960_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl284646284690_
                                      '0))))
                              (begin
                                (let ((_g291961_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g291960_)
                                             (##vector-length _g291960_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g291961_ 2)))
                                      (error "Context expects 2 values"
                                             _g291961_)))
                                (let ((_target284649284693_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g291960_ 0)))
                                      (_tl284651284696_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g291960_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl284651284696_))
                                      (letrec ((_loop284652284699_
                                                (lambda (_hd284650284703_
                                                         _symbol284656284706_
                                                         _method284657284708_
                                                         _type-t284658284710_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd284650284703_))
                                                      (let ((_e284653284713_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd284650284703_))))
                (let ((_lp-hd284654284717_
                       (let () (declare (not safe)) (##car _e284653284713_)))
                      (_lp-tl284655284720_
                       (let () (declare (not safe)) (##cdr _e284653284713_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd284654284717_))
                      (let ((_e284664284723_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd284654284717_))))
                        (let ((_hd284663284727_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284664284723_)))
                              (_tl284662284730_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284664284723_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl284662284730_))
                              (let ((_e284667284733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl284662284730_))))
                                (let ((_hd284666284737_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284667284733_)))
                                      (_tl284665284740_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284667284733_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284665284740_))
                                      (let ((_e284670284743_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl284665284740_))))
                                        (let ((_hd284669284747_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284670284743_)))
                                              (_tl284668284750_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284670284743_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284668284750_))
                                              (_loop284652284699_
                                               _lp-tl284655284720_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284669284747_
                                                       _symbol284656284706_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284666284737_
                                                       _method284657284708_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284663284727_
                                                       _type-t284658284710_)))
                                              (_g284641284676_
                                               _g284642284680_))))
                                      (_g284641284676_ _g284642284680_))))
                              (_g284641284676_ _g284642284680_))))
                      (_g284641284676_ _g284642284680_))))
              (let ((_symbol284659284753_ (reverse _symbol284656284706_))
                    (_method284660284756_ (reverse _method284657284708_))
                    (_type-t284661284758_ (reverse _type-t284658284710_)))
                ((lambda (_L284761_ _L284763_ _L284764_)
                   (let ((__tmp291969
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp291962
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L284761_
                               _L284763_
                               _L284764_))
                            (let ((__tmp291963
                                   (lambda (_g284780284785_
                                            _g284781284788_
                                            _g284782284790_
                                            _g284783284792_)
                                     (let ((__tmp291964
                                            (let ((__tmp291968
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp291965
                                                   (let ((__tmp291966
                                                          (let ((__tmp291967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g284780284785_ '()))))
                    (declare (not safe))
                    (cons _g284781284788_ __tmp291967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g284782284790_
                                                           __tmp291966))))
                                              (declare (not safe))
                                              (cons __tmp291968 __tmp291965))))
                                       (declare (not safe))
                                       (cons __tmp291964 _g284783284792_)))))
                              (declare (not safe))
                              (foldr* __tmp291963
                                      '()
                                      _L284761_
                                      _L284763_
                                      _L284764_)))))
                     (declare (not safe))
                     (cons __tmp291969 __tmp291962)))
                 _symbol284659284753_
                 _method284660284756_
                 _type-t284661284758_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop284652284699_
                                         _target284649284693_
                                         '()
                                         '()
                                         '()))
                                      (_g284641284676_ _g284642284680_)))))
                            (_g284641284676_ _g284642284680_))))
                    (_g284641284676_ _g284642284680_)))))
        (_g284640284795_ _$stx284637_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx284800_)
      (let* ((_g284804284837_
              (lambda (_g284805284833_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284805284833_))))
             (_g284803284951_
              (lambda (_g284805284841_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284805284841_))
                    (let ((_e284811284844_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284805284841_))))
                      (let ((_hd284810284848_
                             (let ()
                               (declare (not safe))
                               (##car _e284811284844_)))
                            (_tl284809284851_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284811284844_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284809284851_))
                            (let ((_e284814284854_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl284809284851_))))
                              (let ((_hd284813284858_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284814284854_)))
                                    (_tl284812284861_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284814284854_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl284812284861_))
                                    (let ((_g291970_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl284812284861_
                                              '0))))
                                      (begin
                                        (let ((_g291971_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g291970_)
                                                     (##vector-length
                                                      _g291970_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g291971_ 2)))
                                              (error "Context expects 2 values"
                                                     _g291971_)))
                                        (let ((_target284815284864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g291970_ 0)))
                                              (_tl284817284867_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g291970_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284817284867_))
                                              (letrec ((_loop284818284870_
                                                        (lambda (_hd284816284874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol284822284877_
                         _method284823284879_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd284816284874_))
                      (let ((_e284819284882_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd284816284874_))))
                        (let ((_lp-hd284820284886_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284819284882_)))
                              (_lp-tl284821284889_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284819284882_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd284820284886_))
                              (let ((_e284828284892_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd284820284886_))))
                                (let ((_hd284827284896_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284828284892_)))
                                      (_tl284826284899_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284828284892_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284826284899_))
                                      (let ((_e284831284902_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl284826284899_))))
                                        (let ((_hd284830284906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284831284902_)))
                                              (_tl284829284909_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284831284902_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284829284909_))
                                              (_loop284818284870_
                                               _lp-tl284821284889_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284830284906_
                                                       _symbol284822284877_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284827284896_
                                                       _method284823284879_)))
                                              (_g284804284837_
                                               _g284805284841_))))
                                      (_g284804284837_ _g284805284841_))))
                              (_g284804284837_ _g284805284841_))))
                      (let ((_symbol284824284912_
                             (reverse _symbol284822284877_))
                            (_method284825284915_
                             (reverse _method284823284879_)))
                        ((lambda (_L284918_ _L284920_ _L284921_)
                           (let ((__tmp291979
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp291972
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L284918_
                                       _L284920_))
                                    (let ((__tmp291973
                                           (lambda (_g284939284943_
                                                    _g284940284946_
                                                    _g284941284948_)
                                             (let ((__tmp291974
                                                    (let ((__tmp291978
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp291975
                                                           (let ((__tmp291976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp291977
                                 (let ()
                                   (declare (not safe))
                                   (cons _g284939284943_ '()))))
                            (declare (not safe))
                            (cons _g284940284946_ __tmp291977))))
                     (declare (not safe))
                     (cons _L284921_ __tmp291976))))
              (declare (not safe))
              (cons __tmp291978 __tmp291975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp291974
                                                     _g284941284948_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp291973
                                              '()
                                              _L284918_
                                              _L284920_)))))
                             (declare (not safe))
                             (cons __tmp291979 __tmp291972)))
                         _symbol284824284912_
                         _method284825284915_
                         _hd284813284858_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop284818284870_
                                                 _target284815284864_
                                                 '()
                                                 '()))
                                              (_g284804284837_
                                               _g284805284841_)))))
                                    (_g284804284837_ _g284805284841_))))
                            (_g284804284837_ _g284805284841_))))
                    (_g284804284837_ _g284805284841_)))))
        (_g284803284951_ _$stx284800_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx284956_)
      (let* ((_g284960284974_
              (lambda (_g284961284970_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284961284970_))))
             (_g284959285015_
              (lambda (_g284961284978_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284961284978_))
                    (let ((_e284965284981_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284961284978_))))
                      (let ((_hd284964284985_
                             (let ()
                               (declare (not safe))
                               (##car _e284965284981_)))
                            (_tl284963284988_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284965284981_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284963284988_))
                            (let ((_e284968284991_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl284963284988_))))
                              (let ((_hd284967284995_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284968284991_)))
                                    (_tl284966284998_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284968284991_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl284966284998_))
                                    ((lambda (_L285001_)
                                       (let ((__tmp291984
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp291980
                                              (let ((__tmp291981
                                                     (let ((__tmp291983
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp291982
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp291983 __tmp291982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp291981 '()))))
                                         (declare (not safe))
                                         (cons __tmp291984 __tmp291980)))
                                     _hd284967284995_)
                                    (_g284960284974_ _g284961284978_))))
                            (_g284960284974_ _g284961284978_))))
                    (_g284960284974_ _g284961284978_)))))
        (_g284959285015_ _$stx284956_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx285019_)
      (let* ((_g285023285069_
              (lambda (_g285024285065_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285024285065_))))
             (_g285022285222_
              (lambda (_g285024285073_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285024285073_))
                    (let ((_e285036285076_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285024285073_))))
                      (let ((_hd285035285080_
                             (let ()
                               (declare (not safe))
                               (##car _e285036285076_)))
                            (_tl285034285083_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285036285076_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285034285083_))
                            (let ((_e285039285086_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285034285083_))))
                              (let ((_hd285038285090_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285039285086_)))
                                    (_tl285037285093_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285039285086_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285037285093_))
                                    (let ((_e285042285096_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285037285093_))))
                                      (let ((_hd285041285100_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285042285096_)))
                                            (_tl285040285103_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285042285096_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285040285103_))
                                            (let ((_e285045285106_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285040285103_))))
                                              (let ((_hd285044285110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285045285106_)))
                                                    (_tl285043285113_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285045285106_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl285043285113_))
                                                    (let ((_e285048285116_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl285043285113_))))
                                                      (let ((_hd285047285120_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e285048285116_)))
                    (_tl285046285123_
                     (let () (declare (not safe)) (##cdr _e285048285116_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl285046285123_))
                    (let ((_e285051285126_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl285046285123_))))
                      (let ((_hd285050285130_
                             (let ()
                               (declare (not safe))
                               (##car _e285051285126_)))
                            (_tl285049285133_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285051285126_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285049285133_))
                            (let ((_e285054285136_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285049285133_))))
                              (let ((_hd285053285140_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285054285136_)))
                                    (_tl285052285143_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285054285136_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285052285143_))
                                    (let ((_e285057285146_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285052285143_))))
                                      (let ((_hd285056285150_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285057285146_)))
                                            (_tl285055285153_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285057285146_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285055285153_))
                                            (let ((_e285060285156_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285055285153_))))
                                              (let ((_hd285059285160_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285060285156_)))
                                                    (_tl285058285163_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285060285156_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl285058285163_))
                                                    (let ((_e285063285166_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl285058285163_))))
                                                      (let ((_hd285062285170_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e285063285166_)))
                    (_tl285061285173_
                     (let () (declare (not safe)) (##cdr _e285063285166_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl285061285173_))
                    ((lambda (_L285176_
                              _L285178_
                              _L285179_
                              _L285180_
                              _L285181_
                              _L285182_
                              _L285183_
                              _L285184_
                              _L285185_)
                       (let ((__tmp292021
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp291985
                              (let ((__tmp292018
                                     (let ((__tmp292020
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp292019
                                            (let ()
                                              (declare (not safe))
                                              (cons _L285185_ '()))))
                                       (declare (not safe))
                                       (cons __tmp292020 __tmp292019)))
                                    (__tmp291986
                                     (let ((__tmp292015
                                            (let ((__tmp292017
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp292016
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L285184_ '()))))
                                              (declare (not safe))
                                              (cons __tmp292017 __tmp292016)))
                                           (__tmp291987
                                            (let ((__tmp292012
                                                   (let ((__tmp292014
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp292013
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L285183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp292014
                                                           __tmp292013)))
                                                  (__tmp291988
                                                   (let ((__tmp292009
                                                          (let ((__tmp292011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp292010
                         (let () (declare (not safe)) (cons _L285182_ '()))))
                    (declare (not safe))
                    (cons __tmp292011 __tmp292010)))
                 (__tmp291989
                  (let ((__tmp292006
                         (let ((__tmp292008
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp292007
                                (let ()
                                  (declare (not safe))
                                  (cons _L285181_ '()))))
                           (declare (not safe))
                           (cons __tmp292008 __tmp292007)))
                        (__tmp291990
                         (let ((__tmp292003
                                (let ((__tmp292005
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp292004
                                       (let ()
                                         (declare (not safe))
                                         (cons _L285180_ '()))))
                                  (declare (not safe))
                                  (cons __tmp292005 __tmp292004)))
                               (__tmp291991
                                (let ((__tmp292000
                                       (let ((__tmp292002
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp292001
                                              (let ()
                                                (declare (not safe))
                                                (cons _L285179_ '()))))
                                         (declare (not safe))
                                         (cons __tmp292002 __tmp292001)))
                                      (__tmp291992
                                       (let ((__tmp291997
                                              (let ((__tmp291999
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp291998
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L285178_ '()))))
                                                (declare (not safe))
                                                (cons __tmp291999
                                                      __tmp291998)))
                                             (__tmp291993
                                              (let ((__tmp291994
                                                     (let ((__tmp291996
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp291995
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp291996 __tmp291995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp291994 '()))))
                                         (declare (not safe))
                                         (cons __tmp291997 __tmp291993))))
                                  (declare (not safe))
                                  (cons __tmp292000 __tmp291992))))
                           (declare (not safe))
                           (cons __tmp292003 __tmp291991))))
                    (declare (not safe))
                    (cons __tmp292006 __tmp291990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp292009
                                                           __tmp291989))))
                                              (declare (not safe))
                                              (cons __tmp292012 __tmp291988))))
                                       (declare (not safe))
                                       (cons __tmp292015 __tmp291987))))
                                (declare (not safe))
                                (cons __tmp292018 __tmp291986))))
                         (declare (not safe))
                         (cons __tmp292021 __tmp291985)))
                     _hd285062285170_
                     _hd285059285160_
                     _hd285056285150_
                     _hd285053285140_
                     _hd285050285130_
                     _hd285047285120_
                     _hd285044285110_
                     _hd285041285100_
                     _hd285038285090_)
                    (_g285023285069_ _g285024285073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g285023285069_
                                                     _g285024285073_))))
                                            (_g285023285069_
                                             _g285024285073_))))
                                    (_g285023285069_ _g285024285073_))))
                            (_g285023285069_ _g285024285073_))))
                    (_g285023285069_ _g285024285073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g285023285069_
                                                     _g285024285073_))))
                                            (_g285023285069_
                                             _g285024285073_))))
                                    (_g285023285069_ _g285024285073_))))
                            (_g285023285069_ _g285024285073_))))
                    (_g285023285069_ _g285024285073_)))))
        (_g285022285222_ _$stx285019_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx285226_)
      (let* ((_g285230285244_
              (lambda (_g285231285240_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285231285240_))))
             (_g285229285285_
              (lambda (_g285231285248_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285231285248_))
                    (let ((_e285235285251_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285231285248_))))
                      (let ((_hd285234285255_
                             (let ()
                               (declare (not safe))
                               (##car _e285235285251_)))
                            (_tl285233285258_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285235285251_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285233285258_))
                            (let ((_e285238285261_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285233285258_))))
                              (let ((_hd285237285265_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285238285261_)))
                                    (_tl285236285268_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285238285261_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl285236285268_))
                                    ((lambda (_L285271_)
                                       (let ((__tmp292026
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp292022
                                              (let ((__tmp292023
                                                     (let ((__tmp292025
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp292024
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp292025 __tmp292024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp292023 '()))))
                                         (declare (not safe))
                                         (cons __tmp292026 __tmp292022)))
                                     _hd285237285265_)
                                    (_g285230285244_ _g285231285248_))))
                            (_g285230285244_ _g285231285248_))))
                    (_g285230285244_ _g285231285248_)))))
        (_g285229285285_ _$stx285226_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx285289_)
      (let* ((_g285293285307_
              (lambda (_g285294285303_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285294285303_))))
             (_g285292285348_
              (lambda (_g285294285311_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285294285311_))
                    (let ((_e285298285314_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285294285311_))))
                      (let ((_hd285297285318_
                             (let ()
                               (declare (not safe))
                               (##car _e285298285314_)))
                            (_tl285296285321_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285298285314_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285296285321_))
                            (let ((_e285301285324_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285296285321_))))
                              (let ((_hd285300285328_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285301285324_)))
                                    (_tl285299285331_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285301285324_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl285299285331_))
                                    ((lambda (_L285334_)
                                       (let ((__tmp292031
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp292027
                                              (let ((__tmp292028
                                                     (let ((__tmp292030
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp292029
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp292030 __tmp292029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp292028 '()))))
                                         (declare (not safe))
                                         (cons __tmp292031 __tmp292027)))
                                     _hd285300285328_)
                                    (_g285293285307_ _g285294285311_))))
                            (_g285293285307_ _g285294285311_))))
                    (_g285293285307_ _g285294285311_)))))
        (_g285292285348_ _$stx285289_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx285352_)
      (let* ((_g285356285378_
              (lambda (_g285357285374_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285357285374_))))
             (_g285355285447_
              (lambda (_g285357285382_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285357285382_))
                    (let ((_e285363285385_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285357285382_))))
                      (let ((_hd285362285389_
                             (let ()
                               (declare (not safe))
                               (##car _e285363285385_)))
                            (_tl285361285392_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285363285385_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285361285392_))
                            (let ((_e285366285395_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285361285392_))))
                              (let ((_hd285365285399_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285366285395_)))
                                    (_tl285364285402_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285366285395_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285364285402_))
                                    (let ((_e285369285405_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285364285402_))))
                                      (let ((_hd285368285409_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285369285405_)))
                                            (_tl285367285412_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285369285405_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285367285412_))
                                            (let ((_e285372285415_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285367285412_))))
                                              (let ((_hd285371285419_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285372285415_)))
                                                    (_tl285370285422_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285372285415_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285370285422_))
                                                    ((lambda (_L285425_
                                                              _L285427_
                                                              _L285428_)
                                                       (let ((__tmp292041
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp292032
                      (let ((__tmp292038
                             (let ((__tmp292040
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp292039
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285428_ '()))))
                               (declare (not safe))
                               (cons __tmp292040 __tmp292039)))
                            (__tmp292033
                             (let ((__tmp292035
                                    (let ((__tmp292037
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp292036
                                           (let ()
                                             (declare (not safe))
                                             (cons _L285427_ '()))))
                                      (declare (not safe))
                                      (cons __tmp292037 __tmp292036)))
                                   (__tmp292034
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285425_ '()))))
                               (declare (not safe))
                               (cons __tmp292035 __tmp292034))))
                        (declare (not safe))
                        (cons __tmp292038 __tmp292033))))
                 (declare (not safe))
                 (cons __tmp292041 __tmp292032)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd285371285419_
                                                     _hd285368285409_
                                                     _hd285365285399_)
                                                    (_g285356285378_
                                                     _g285357285382_))))
                                            (_g285356285378_
                                             _g285357285382_))))
                                    (_g285356285378_ _g285357285382_))))
                            (_g285356285378_ _g285357285382_))))
                    (_g285356285378_ _g285357285382_)))))
        (_g285355285447_ _$stx285352_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx285451_)
      (let* ((_g285455285477_
              (lambda (_g285456285473_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285456285473_))))
             (_g285454285546_
              (lambda (_g285456285481_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285456285481_))
                    (let ((_e285462285484_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285456285481_))))
                      (let ((_hd285461285488_
                             (let ()
                               (declare (not safe))
                               (##car _e285462285484_)))
                            (_tl285460285491_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285462285484_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285460285491_))
                            (let ((_e285465285494_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285460285491_))))
                              (let ((_hd285464285498_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285465285494_)))
                                    (_tl285463285501_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285465285494_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285463285501_))
                                    (let ((_e285468285504_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285463285501_))))
                                      (let ((_hd285467285508_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285468285504_)))
                                            (_tl285466285511_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285468285504_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285466285511_))
                                            (let ((_e285471285514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285466285511_))))
                                              (let ((_hd285470285518_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285471285514_)))
                                                    (_tl285469285521_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285471285514_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285469285521_))
                                                    ((lambda (_L285524_
                                                              _L285526_
                                                              _L285527_)
                                                       (let ((__tmp292051
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp292042
                      (let ((__tmp292048
                             (let ((__tmp292050
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp292049
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285527_ '()))))
                               (declare (not safe))
                               (cons __tmp292050 __tmp292049)))
                            (__tmp292043
                             (let ((__tmp292045
                                    (let ((__tmp292047
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp292046
                                           (let ()
                                             (declare (not safe))
                                             (cons _L285526_ '()))))
                                      (declare (not safe))
                                      (cons __tmp292047 __tmp292046)))
                                   (__tmp292044
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285524_ '()))))
                               (declare (not safe))
                               (cons __tmp292045 __tmp292044))))
                        (declare (not safe))
                        (cons __tmp292048 __tmp292043))))
                 (declare (not safe))
                 (cons __tmp292051 __tmp292042)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd285470285518_
                                                     _hd285467285508_
                                                     _hd285464285498_)
                                                    (_g285455285477_
                                                     _g285456285481_))))
                                            (_g285455285477_
                                             _g285456285481_))))
                                    (_g285455285477_ _g285456285481_))))
                            (_g285455285477_ _g285456285481_))))
                    (_g285455285477_ _g285456285481_)))))
        (_g285454285546_ _$stx285451_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx285550_)
      (let* ((___stx291559291560_ _$stx285550_)
             (_g285558285626_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291559291560_)))))
        (let ((___kont291562291563_
               (lambda (_L285904_ _L285906_)
                 (let ((__tmp292067
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp292052
                        (let ((__tmp292063
                               (let ((__tmp292066
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292064
                                      (let ((__tmp292065
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp292065 '()))))
                                 (declare (not safe))
                                 (cons __tmp292066 __tmp292064)))
                              (__tmp292053
                               (let ((__tmp292060
                                      (let ((__tmp292062
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp292061
                                             (let ()
                                               (declare (not safe))
                                               (cons _L285906_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292062 __tmp292061)))
                                     (__tmp292054
                                      (let ((__tmp292055
                                             (let ((__tmp292056
                                                    (let ((__tmp292057
                                                           (let ((__tmp292059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp292058
                          (let () (declare (not safe)) (cons _L285904_ '()))))
                     (declare (not safe))
                     (cons __tmp292059 __tmp292058))))
              (declare (not safe))
              (cons __tmp292057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L285904_ __tmp292056))))
                                        (declare (not safe))
                                        (cons '#f __tmp292055))))
                                 (declare (not safe))
                                 (cons __tmp292060 __tmp292054))))
                          (declare (not safe))
                          (cons __tmp292063 __tmp292053))))
                   (declare (not safe))
                   (cons __tmp292067 __tmp292052))))
              (___kont291564291565_
               (lambda (_L285835_ _L285837_)
                 (let ((__tmp292068
                        (let ((__tmp292069
                               (let ((__tmp292070
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L285835_ __tmp292070))))
                          (declare (not safe))
                          (cons 'primitive: __tmp292069))))
                   (declare (not safe))
                   (cons _L285837_ __tmp292068))))
              (___kont291566291567_
               (lambda (_L285774_ _L285776_)
                 (let ((__tmp292084
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp292071
                        (let ((__tmp292080
                               (let ((__tmp292083
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292081
                                      (let ((__tmp292082
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp292082 '()))))
                                 (declare (not safe))
                                 (cons __tmp292083 __tmp292081)))
                              (__tmp292072
                               (let ((__tmp292077
                                      (let ((__tmp292079
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp292078
                                             (let ()
                                               (declare (not safe))
                                               (cons _L285776_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292079 __tmp292078)))
                                     (__tmp292073
                                      (let ((__tmp292074
                                             (let ((__tmp292076
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp292075
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L285774_ '()))))
                                               (declare (not safe))
                                               (cons __tmp292076
                                                     __tmp292075))))
                                        (declare (not safe))
                                        (cons __tmp292074 '()))))
                                 (declare (not safe))
                                 (cons __tmp292077 __tmp292073))))
                          (declare (not safe))
                          (cons __tmp292080 __tmp292072))))
                   (declare (not safe))
                   (cons __tmp292084 __tmp292071))))
              (___kont291568291569_
               (lambda (_L285706_ _L285708_)
                 (let ((__tmp292098
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp292085
                        (let ((__tmp292094
                               (let ((__tmp292097
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292095
                                      (let ((__tmp292096
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp292096 '()))))
                                 (declare (not safe))
                                 (cons __tmp292097 __tmp292095)))
                              (__tmp292086
                               (let ((__tmp292091
                                      (let ((__tmp292093
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp292092
                                             (let ()
                                               (declare (not safe))
                                               (cons _L285708_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292093 __tmp292092)))
                                     (__tmp292087
                                      (let ((__tmp292088
                                             (let ((__tmp292090
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp292089
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L285706_ '()))))
                                               (declare (not safe))
                                               (cons __tmp292090
                                                     __tmp292089))))
                                        (declare (not safe))
                                        (cons __tmp292088 '()))))
                                 (declare (not safe))
                                 (cons __tmp292091 __tmp292087))))
                          (declare (not safe))
                          (cons __tmp292094 __tmp292086))))
                   (declare (not safe))
                   (cons __tmp292098 __tmp292085))))
              (___kont291570291571_
               (lambda (_L285653_ _L285655_)
                 (let ((__tmp292099
                        (let ((__tmp292100
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L285653_ __tmp292100))))
                   (declare (not safe))
                   (cons _L285655_ __tmp292099)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx291559291560_))
              (let ((_e285564285860_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx291559291560_))))
                (let ((_tl285562285867_
                       (let () (declare (not safe)) (##cdr _e285564285860_)))
                      (_hd285563285864_
                       (let () (declare (not safe)) (##car _e285564285860_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl285562285867_))
                      (let ((_e285567285870_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl285562285867_))))
                        (let ((_tl285565285877_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285567285870_)))
                              (_hd285566285874_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285567285870_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl285565285877_))
                              (let ((_e285570285880_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl285565285877_))))
                                (let ((_tl285568285887_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285570285880_)))
                                      (_hd285569285884_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285570285880_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd285569285884_))
                                      (let ((_e285571285890_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd285569285884_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e285571285890_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl285568285887_))
                                                (let ((_e285574285894_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl285568285887_))))
                                                  (let ((_tl285572285901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e285574285894_)))
                                                        (_hd285573285898_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e285574285894_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl285572285901_))
                                                        (___kont291562291563_
                                                         _hd285573285898_
                                                         _hd285566285874_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd285566285874_))
                                                            (let ((_e285583285821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd285566285874_))))
                      (declare (not safe))
                      (_g285558285626_))
                    (let () (declare (not safe)) (_g285558285626_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd285566285874_))
                                                    (let ((_e285583285821_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd285566285874_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e285583285821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl285568285887_))
                      (___kont291564291565_ _hd285569285884_ _hd285563285864_)
                      (let () (declare (not safe)) (_g285558285626_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl285568285887_))
                      (___kont291568291569_ _hd285569285884_ _hd285566285874_)
                      (let () (declare (not safe)) (_g285558285626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl285568285887_))
                                                        (___kont291568291569_
                                                         _hd285569285884_
                                                         _hd285566285874_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g285558285626_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd285566285874_))
                                                (let ((_e285583285821_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd285566285874_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e285583285821_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl285568285887_))
                                                          (___kont291564291565_
                                                           _hd285569285884_
                                                           _hd285563285864_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl285568285887_))
                      (let ((_e285601285764_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl285568285887_))))
                        (let ((_tl285599285771_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285601285764_)))
                              (_hd285600285768_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285601285764_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl285599285771_))
                              (___kont291566291567_
                               _hd285600285768_
                               _hd285569285884_)
                              (let ()
                                (declare (not safe))
                                (_g285558285626_)))))
                      (let () (declare (not safe)) (_g285558285626_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl285568285887_))
                  (___kont291568291569_ _hd285569285884_ _hd285566285874_)
                  (let () (declare (not safe)) (_g285558285626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285568285887_))
                                                    (___kont291568291569_
                                                     _hd285569285884_
                                                     _hd285566285874_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g285558285626_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd285566285874_))
                                          (let ((_e285583285821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd285566285874_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e285583285821_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285568285887_))
                                                    (___kont291564291565_
                                                     _hd285569285884_
                                                     _hd285563285864_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl285568285887_))
                                                        (let ((_e285601285764_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl285568285887_))))
                  (let ((_tl285599285771_
                         (let () (declare (not safe)) (##cdr _e285601285764_)))
                        (_hd285600285768_
                         (let ()
                           (declare (not safe))
                           (##car _e285601285764_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl285599285771_))
                        (___kont291566291567_
                         _hd285600285768_
                         _hd285569285884_)
                        (let () (declare (not safe)) (_g285558285626_)))))
                (let () (declare (not safe)) (_g285558285626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285568285887_))
                                                    (___kont291568291569_
                                                     _hd285569285884_
                                                     _hd285566285874_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g285558285626_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl285568285887_))
                                              (___kont291568291569_
                                               _hd285569285884_
                                               _hd285566285874_)
                                              (let ()
                                                (declare (not safe))
                                                (_g285558285626_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd285566285874_))
                                  (let ((_e285583285821_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd285566285874_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl285565285877_))
                                        (___kont291570291571_
                                         _hd285566285874_
                                         _hd285563285864_)
                                        (let ()
                                          (declare (not safe))
                                          (_g285558285626_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl285565285877_))
                                      (___kont291570291571_
                                       _hd285566285874_
                                       _hd285563285864_)
                                      (let ()
                                        (declare (not safe))
                                        (_g285558285626_)))))))
                      (let () (declare (not safe)) (_g285558285626_)))))
              (let () (declare (not safe)) (_g285558285626_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx285928_)
      (let* ((___stx291699291700_ _$stx285928_)
             (_g285933285988_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291699291700_)))))
        (let ((___kont291702291703_
               (lambda (_L286173_ _L286175_)
                 (let ((__tmp292116
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp292101
                        (let ((__tmp292112
                               (let ((__tmp292115
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292113
                                      (let ((__tmp292114
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp292114 '()))))
                                 (declare (not safe))
                                 (cons __tmp292115 __tmp292113)))
                              (__tmp292102
                               (let ((__tmp292103
                                      (let ((__tmp292111
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp292104
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L286173_
                                                  _L286175_))
                                               (let ((__tmp292105
                                                      (lambda (_g286192286196_
                                                               _g286193286199_
                                                               _g286194286201_)
                                                        (let ((__tmp292106
                                                               (let ((__tmp292110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp292107
                              (let ((__tmp292108
                                     (let ((__tmp292109
                                            (let ()
                                              (declare (not safe))
                                              (cons _g286192286196_ '()))))
                                       (declare (not safe))
                                       (cons _g286193286199_ __tmp292109))))
                                (declare (not safe))
                                (cons 'primitive: __tmp292108))))
                         (declare (not safe))
                         (cons __tmp292110 __tmp292107))))
                  (declare (not safe))
                  (cons __tmp292106 _g286194286201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp292105
                                                         '()
                                                         _L286173_
                                                         _L286175_)))))
                                        (declare (not safe))
                                        (cons __tmp292111 __tmp292104))))
                                 (declare (not safe))
                                 (cons __tmp292103 '()))))
                          (declare (not safe))
                          (cons __tmp292112 __tmp292102))))
                   (declare (not safe))
                   (cons __tmp292116 __tmp292101))))
              (___kont291706291707_
               (lambda (_L286059_ _L286061_)
                 (let ((__tmp292131
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp292117
                        (let ((__tmp292127
                               (let ((__tmp292130
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292128
                                      (let ((__tmp292129
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp292129 '()))))
                                 (declare (not safe))
                                 (cons __tmp292130 __tmp292128)))
                              (__tmp292118
                               (let ((__tmp292119
                                      (let ((__tmp292126
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp292120
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L286059_
                                                  _L286061_))
                                               (let ((__tmp292121
                                                      (lambda (_g286076286080_
                                                               _g286077286083_
                                                               _g286078286085_)
                                                        (let ((__tmp292122
                                                               (let ((__tmp292125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp292123
                              (let ((__tmp292124
                                     (let ()
                                       (declare (not safe))
                                       (cons _g286076286080_ '()))))
                                (declare (not safe))
                                (cons _g286077286083_ __tmp292124))))
                         (declare (not safe))
                         (cons __tmp292125 __tmp292123))))
                  (declare (not safe))
                  (cons __tmp292122 _g286078286085_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp292121
                                                         '()
                                                         _L286059_
                                                         _L286061_)))))
                                        (declare (not safe))
                                        (cons __tmp292126 __tmp292120))))
                                 (declare (not safe))
                                 (cons __tmp292119 '()))))
                          (declare (not safe))
                          (cons __tmp292127 __tmp292118))))
                   (declare (not safe))
                   (cons __tmp292131 __tmp292117)))))
          (let* ((___match291750291751_
                  (lambda (_e285965285995_
                           _hd285964285999_
                           _tl285963286002_
                           ___splice291708291709_
                           _target285966286005_
                           _tl285968286008_)
                    (letrec ((_loop285969286011_
                              (lambda (_hd285967286015_
                                       _dispatch285973286018_
                                       _arity285974286020_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd285967286015_))
                                    (let ((_e285970286023_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd285967286015_))))
                                      (let ((_lp-tl285972286030_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285970286023_)))
                                            (_lp-hd285971286027_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285970286023_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd285971286027_))
                                            (let ((_e285979286033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd285971286027_))))
                                              (let ((_tl285977286040_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285979286033_)))
                                                    (_hd285978286037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285979286033_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl285977286040_))
                                                    (let ((_e285982286043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl285977286040_))))
                                                      (let ((_tl285980286050_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e285982286043_)))
                    (_hd285981286047_
                     (let () (declare (not safe)) (##car _e285982286043_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl285980286050_))
                    (_loop285969286011_
                     _lp-tl285972286030_
                     (let ()
                       (declare (not safe))
                       (cons _hd285981286047_ _dispatch285973286018_))
                     (let ()
                       (declare (not safe))
                       (cons _hd285978286037_ _arity285974286020_)))
                    (let () (declare (not safe)) (_g285933285988_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g285933285988_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g285933285988_)))))
                                    (let ((_arity285976286056_
                                           (reverse _arity285974286020_))
                                          (_dispatch285975286053_
                                           (reverse _dispatch285973286018_)))
                                      (___kont291706291707_
                                       _dispatch285975286053_
                                       _arity285976286056_))))))
                      (_loop285969286011_ _target285966286005_ '() '()))))
                 (___match291742291743_
                  (lambda (_e285965285995_ _hd285964285999_ _tl285963286002_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl285963286002_))
                        (let ((___splice291708291709_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl285963286002_
                                  '0))))
                          (let ((_tl285968286008_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice291708291709_ '1)))
                                (_target285966286005_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice291708291709_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl285968286008_))
                                (___match291750291751_
                                 _e285965285995_
                                 _hd285964285999_
                                 _tl285963286002_
                                 ___splice291708291709_
                                 _target285966286005_
                                 _tl285968286008_)
                                (let ()
                                  (declare (not safe))
                                  (_g285933285988_)))))
                        (let () (declare (not safe)) (_g285933285988_)))))
                 (___match291736291737_
                  (lambda (_e285939286095_
                           _hd285938286099_
                           _tl285937286102_
                           _e285942286105_
                           _hd285941286109_
                           _tl285940286112_
                           _e285943286115_
                           ___splice291704291705_
                           _target285944286119_
                           _tl285946286122_)
                    (letrec ((_loop285947286125_
                              (lambda (_hd285945286129_
                                       _dispatch285951286132_
                                       _arity285952286134_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd285945286129_))
                                    (let ((_e285948286137_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd285945286129_))))
                                      (let ((_lp-tl285950286144_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285948286137_)))
                                            (_lp-hd285949286141_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285948286137_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd285949286141_))
                                            (let ((_e285957286147_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd285949286141_))))
                                              (let ((_tl285955286154_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285957286147_)))
                                                    (_hd285956286151_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285957286147_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl285955286154_))
                                                    (let ((_e285960286157_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl285955286154_))))
                                                      (let ((_tl285958286164_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e285960286157_)))
                    (_hd285959286161_
                     (let () (declare (not safe)) (##car _e285960286157_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl285958286164_))
                    (_loop285947286125_
                     _lp-tl285950286144_
                     (let ()
                       (declare (not safe))
                       (cons _hd285959286161_ _dispatch285951286132_))
                     (let ()
                       (declare (not safe))
                       (cons _hd285956286151_ _arity285952286134_)))
                    (___match291742291743_
                     _e285939286095_
                     _hd285938286099_
                     _tl285937286102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match291742291743_
                                                     _e285939286095_
                                                     _hd285938286099_
                                                     _tl285937286102_))))
                                            (___match291742291743_
                                             _e285939286095_
                                             _hd285938286099_
                                             _tl285937286102_))))
                                    (let ((_arity285954286170_
                                           (reverse _arity285952286134_))
                                          (_dispatch285953286167_
                                           (reverse _dispatch285951286132_)))
                                      (___kont291702291703_
                                       _dispatch285953286167_
                                       _arity285954286170_))))))
                      (_loop285947286125_ _target285944286119_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291699291700_))
                (let ((_e285939286095_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291699291700_))))
                  (let ((_tl285937286102_
                         (let () (declare (not safe)) (##cdr _e285939286095_)))
                        (_hd285938286099_
                         (let ()
                           (declare (not safe))
                           (##car _e285939286095_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl285937286102_))
                        (let ((_e285942286105_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl285937286102_))))
                          (let ((_tl285940286112_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e285942286105_)))
                                (_hd285941286109_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e285942286105_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd285941286109_))
                                (let ((_e285943286115_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd285941286109_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e285943286115_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl285940286112_))
                                          (let ((___splice291704291705_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl285940286112_
                                                    '0))))
                                            (let ((_tl285946286122_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291704291705_
                                                      '1)))
                                                  (_target285944286119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291704291705_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl285946286122_))
                                                  (___match291736291737_
                                                   _e285939286095_
                                                   _hd285938286099_
                                                   _tl285937286102_
                                                   _e285942286105_
                                                   _hd285941286109_
                                                   _tl285940286112_
                                                   _e285943286115_
                                                   ___splice291704291705_
                                                   _target285944286119_
                                                   _tl285946286122_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl285937286102_))
                                                      (let ((___splice291708291709_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl285937286102_ '0))))
                (let ((_tl285968286008_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291708291709_ '1)))
                      (_target285966286005_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291708291709_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl285968286008_))
                      (___match291750291751_
                       _e285939286095_
                       _hd285938286099_
                       _tl285937286102_
                       ___splice291708291709_
                       _target285966286005_
                       _tl285968286008_)
                      (let () (declare (not safe)) (_g285933285988_)))))
              (let () (declare (not safe)) (_g285933285988_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl285937286102_))
                                              (let ((___splice291708291709_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl285937286102_
                                                        '0))))
                                                (let ((_tl285968286008_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice291708291709_
                                                          '1)))
                                                      (_target285966286005_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice291708291709_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl285968286008_))
                                                      (___match291750291751_
                                                       _e285939286095_
                                                       _hd285938286099_
                                                       _tl285937286102_
                                                       ___splice291708291709_
                                                       _target285966286005_
                                                       _tl285968286008_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g285933285988_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g285933285988_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl285937286102_))
                                          (let ((___splice291708291709_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl285937286102_
                                                    '0))))
                                            (let ((_tl285968286008_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291708291709_
                                                      '1)))
                                                  (_target285966286005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291708291709_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl285968286008_))
                                                  (___match291750291751_
                                                   _e285939286095_
                                                   _hd285938286099_
                                                   _tl285937286102_
                                                   ___splice291708291709_
                                                   _target285966286005_
                                                   _tl285968286008_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g285933285988_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g285933285988_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl285937286102_))
                                    (let ((___splice291708291709_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl285937286102_
                                              '0))))
                                      (let ((_tl285968286008_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291708291709_
                                                '1)))
                                            (_target285966286005_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291708291709_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl285968286008_))
                                            (___match291750291751_
                                             _e285939286095_
                                             _hd285938286099_
                                             _tl285937286102_
                                             ___splice291708291709_
                                             _target285966286005_
                                             _tl285968286008_)
                                            (let ()
                                              (declare (not safe))
                                              (_g285933285988_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g285933285988_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl285937286102_))
                            (let ((___splice291708291709_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl285937286102_
                                      '0))))
                              (let ((_tl285968286008_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice291708291709_
                                        '1)))
                                    (_target285966286005_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice291708291709_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl285968286008_))
                                    (___match291750291751_
                                     _e285939286095_
                                     _hd285938286099_
                                     _tl285937286102_
                                     ___splice291708291709_
                                     _target285966286005_
                                     _tl285968286008_)
                                    (let ()
                                      (declare (not safe))
                                      (_g285933285988_)))))
                            (let () (declare (not safe)) (_g285933285988_))))))
                (let () (declare (not safe)) (_g285933285988_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx286210_)
      (let* ((_g286214286232_
              (lambda (_g286215286228_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g286215286228_))))
             (_g286213286287_
              (lambda (_g286215286236_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g286215286236_))
                    (let ((_e286220286239_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g286215286236_))))
                      (let ((_hd286219286243_
                             (let ()
                               (declare (not safe))
                               (##car _e286220286239_)))
                            (_tl286218286246_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286220286239_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286218286246_))
                            (let ((_e286223286249_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl286218286246_))))
                              (let ((_hd286222286253_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286223286249_)))
                                    (_tl286221286256_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286223286249_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl286221286256_))
                                    (let ((_e286226286259_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl286221286256_))))
                                      (let ((_hd286225286263_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286226286259_)))
                                            (_tl286224286266_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286226286259_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286224286266_))
                                            ((lambda (_L286269_ _L286271_)
                                               (let ((__tmp292145
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp292132
                                                      (let ((__tmp292141
                                                             (let ((__tmp292144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp292142
                            (let ((__tmp292143
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp292143 '()))))
                       (declare (not safe))
                       (cons __tmp292144 __tmp292142)))
                    (__tmp292133
                     (let ((__tmp292138
                            (let ((__tmp292140
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp292139
                                   (let ()
                                     (declare (not safe))
                                     (cons _L286271_ '()))))
                              (declare (not safe))
                              (cons __tmp292140 __tmp292139)))
                           (__tmp292134
                            (let ((__tmp292135
                                   (let ((__tmp292137
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp292136
                                          (let ()
                                            (declare (not safe))
                                            (cons _L286269_ '()))))
                                     (declare (not safe))
                                     (cons __tmp292137 __tmp292136))))
                              (declare (not safe))
                              (cons __tmp292135 '()))))
                       (declare (not safe))
                       (cons __tmp292138 __tmp292134))))
                (declare (not safe))
                (cons __tmp292141 __tmp292133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp292145
                                                       __tmp292132)))
                                             _hd286225286263_
                                             _hd286222286253_)
                                            (_g286214286232_
                                             _g286215286236_))))
                                    (_g286214286232_ _g286215286236_))))
                            (_g286214286232_ _g286215286236_))))
                    (_g286214286232_ _g286215286236_)))))
        (_g286213286287_ _$stx286210_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx286291_)
      (let* ((_g286295286313_
              (lambda (_g286296286309_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g286296286309_))))
             (_g286294286368_
              (lambda (_g286296286317_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g286296286317_))
                    (let ((_e286301286320_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g286296286317_))))
                      (let ((_hd286300286324_
                             (let ()
                               (declare (not safe))
                               (##car _e286301286320_)))
                            (_tl286299286327_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286301286320_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286299286327_))
                            (let ((_e286304286330_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl286299286327_))))
                              (let ((_hd286303286334_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286304286330_)))
                                    (_tl286302286337_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286304286330_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl286302286337_))
                                    (let ((_e286307286340_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl286302286337_))))
                                      (let ((_hd286306286344_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286307286340_)))
                                            (_tl286305286347_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286307286340_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286305286347_))
                                            ((lambda (_L286350_ _L286352_)
                                               (let ((__tmp292159
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp292146
                                                      (let ((__tmp292155
                                                             (let ((__tmp292158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp292156
                            (let ((__tmp292157
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp292157 '()))))
                       (declare (not safe))
                       (cons __tmp292158 __tmp292156)))
                    (__tmp292147
                     (let ((__tmp292152
                            (let ((__tmp292154
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp292153
                                   (let ()
                                     (declare (not safe))
                                     (cons _L286352_ '()))))
                              (declare (not safe))
                              (cons __tmp292154 __tmp292153)))
                           (__tmp292148
                            (let ((__tmp292149
                                   (let ((__tmp292151
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp292150
                                          (let ()
                                            (declare (not safe))
                                            (cons _L286350_ '()))))
                                     (declare (not safe))
                                     (cons __tmp292151 __tmp292150))))
                              (declare (not safe))
                              (cons __tmp292149 '()))))
                       (declare (not safe))
                       (cons __tmp292152 __tmp292148))))
                (declare (not safe))
                (cons __tmp292155 __tmp292147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp292159
                                                       __tmp292146)))
                                             _hd286306286344_
                                             _hd286303286334_)
                                            (_g286295286313_
                                             _g286296286317_))))
                                    (_g286295286313_ _g286296286317_))))
                            (_g286295286313_ _g286296286317_))))
                    (_g286295286313_ _g286296286317_)))))
        (_g286294286368_ _$stx286291_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx286372_)
      (let* ((___stx291753291754_ _$stx286372_)
             (_g286379286450_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291753291754_)))))
        (let ((___kont291756291757_
               (lambda (_L286741_ _L286743_)
                 (let ((__tmp292165
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292160
                        (let ((__tmp292161
                               (let ((__tmp292162
                                      (let ((__tmp292164
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp292163
                                             (let ()
                                               (declare (not safe))
                                               (cons _L286741_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292164 __tmp292163))))
                                 (declare (not safe))
                                 (cons __tmp292162 '()))))
                          (declare (not safe))
                          (cons _L286743_ __tmp292161))))
                   (declare (not safe))
                   (cons __tmp292165 __tmp292160))))
              (___kont291758291759_
               (lambda (_L286660_ _L286662_)
                 (let ((__tmp292174
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292166
                        (let ((__tmp292167
                               (let ((__tmp292168
                                      (let ((__tmp292173
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp292169
                                             (let ((__tmp292170
                                                    (lambda (_g286681286684_
                                                             _g286682286687_)
                                                      (let ((__tmp292171
                                                             (let ((__tmp292172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g286681286684_ __tmp292172))))
                (declare (not safe))
                (cons __tmp292171 _g286682286687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp292170
                                                       '()
                                                       _L286660_))))
                                        (declare (not safe))
                                        (cons __tmp292173 __tmp292169))))
                                 (declare (not safe))
                                 (cons __tmp292168 '()))))
                          (declare (not safe))
                          (cons _L286662_ __tmp292167))))
                   (declare (not safe))
                   (cons __tmp292174 __tmp292166))))
              (___kont291762291763_
               (lambda (_L286572_ _L286574_)
                 (let ((__tmp292181
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292175
                        (let ((__tmp292176
                               (let ((__tmp292177
                                      (let ((__tmp292180
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp292178
                                             (let ((__tmp292179
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L286572_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp292179))))
                                        (declare (not safe))
                                        (cons __tmp292180 __tmp292178))))
                                 (declare (not safe))
                                 (cons __tmp292177 '()))))
                          (declare (not safe))
                          (cons _L286574_ __tmp292176))))
                   (declare (not safe))
                   (cons __tmp292181 __tmp292175))))
              (___kont291764291765_
               (lambda (_L286507_ _L286509_)
                 (let ((__tmp292191
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292182
                        (let ((__tmp292183
                               (let ((__tmp292184
                                      (let ((__tmp292190
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp292185
                                             (let ((__tmp292186
                                                    (let ((__tmp292187
                                                           (lambda (_g286526286529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g286527286532_)
                     (let ((__tmp292188
                            (let ((__tmp292189
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g286526286529_ __tmp292189))))
                       (declare (not safe))
                       (cons __tmp292188 _g286527286532_)))))
              (declare (not safe))
              (foldr1 __tmp292187 '() _L286507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp292186))))
                                        (declare (not safe))
                                        (cons __tmp292190 __tmp292185))))
                                 (declare (not safe))
                                 (cons __tmp292184 '()))))
                          (declare (not safe))
                          (cons _L286509_ __tmp292183))))
                   (declare (not safe))
                   (cons __tmp292191 __tmp292182)))))
          (let* ((___match291872291873_
                  (lambda (_e286432286457_
                           _hd286431286461_
                           _tl286430286464_
                           _e286435286467_
                           _hd286434286471_
                           _tl286433286474_
                           ___splice291766291767_
                           _target286436286477_
                           _tl286438286480_)
                    (letrec ((_loop286439286483_
                              (lambda (_hd286437286487_ _arity286443286490_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286437286487_))
                                    (let ((_e286440286493_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd286437286487_))))
                                      (let ((_lp-tl286442286500_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286440286493_)))
                                            (_lp-hd286441286497_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286440286493_))))
                                        (_loop286439286483_
                                         _lp-tl286442286500_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd286441286497_
                                                 _arity286443286490_)))))
                                    (let ((_arity286444286503_
                                           (reverse _arity286443286490_)))
                                      (___kont291764291765_
                                       _arity286444286503_
                                       _hd286434286471_))))))
                      (_loop286439286483_ _target286436286477_ '()))))
                 (___match291832291833_
                  (lambda (_e286400286596_
                           _hd286399286600_
                           _tl286398286603_
                           _e286403286606_
                           _hd286402286610_
                           _tl286401286613_
                           _e286406286616_
                           _hd286405286620_
                           _tl286404286623_
                           _e286407286626_
                           ___splice291760291761_
                           _target286408286630_
                           _tl286410286633_)
                    (letrec ((_loop286411286636_
                              (lambda (_hd286409286640_ _arity286415286643_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286409286640_))
                                    (let ((_e286412286646_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd286409286640_))))
                                      (let ((_lp-tl286414286653_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286412286646_)))
                                            (_lp-hd286413286650_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286412286646_))))
                                        (_loop286411286636_
                                         _lp-tl286414286653_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd286413286650_
                                                 _arity286415286643_)))))
                                    (let ((_arity286416286656_
                                           (reverse _arity286415286643_)))
                                      (___kont291758291759_
                                       _arity286416286656_
                                       _hd286402286610_))))))
                      (_loop286411286636_ _target286408286630_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291753291754_))
                (let ((_e286385286697_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291753291754_))))
                  (let ((_tl286383286704_
                         (let () (declare (not safe)) (##cdr _e286385286697_)))
                        (_hd286384286701_
                         (let ()
                           (declare (not safe))
                           (##car _e286385286697_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl286383286704_))
                        (let ((_e286388286707_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl286383286704_))))
                          (let ((_tl286386286714_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e286388286707_)))
                                (_hd286387286711_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e286388286707_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl286386286714_))
                                (let ((_e286391286717_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl286386286714_))))
                                  (let ((_tl286389286724_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e286391286717_)))
                                        (_hd286390286721_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e286391286717_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd286390286721_))
                                        (let ((_e286392286727_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd286390286721_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e286392286727_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl286389286724_))
                                                  (let ((_e286395286731_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl286389286724_))))
                                                    (let ((_tl286393286738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e286395286731_)))
                                                          (_hd286394286735_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e286395286731_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl286393286738_))
                                                          (___kont291756291757_
                                                           _hd286394286735_
                                                           _hd286387286711_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl286389286724_))
                      (let ((___splice291760291761_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl286389286724_ '0))))
                        (let ((_tl286410286633_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291760291761_ '1)))
                              (_target286408286630_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291760291761_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl286410286633_))
                              (___match291832291833_
                               _e286385286697_
                               _hd286384286701_
                               _tl286383286704_
                               _e286388286707_
                               _hd286387286711_
                               _tl286386286714_
                               _e286391286717_
                               _hd286390286721_
                               _tl286389286724_
                               _e286392286727_
                               ___splice291760291761_
                               _target286408286630_
                               _tl286410286633_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl286386286714_))
                                  (let ((___splice291766291767_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl286386286714_
                                            '0))))
                                    (let ((_tl286438286480_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice291766291767_
                                              '1)))
                                          (_target286436286477_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice291766291767_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl286438286480_))
                                          (___match291872291873_
                                           _e286385286697_
                                           _hd286384286701_
                                           _tl286383286704_
                                           _e286388286707_
                                           _hd286387286711_
                                           _tl286386286714_
                                           ___splice291766291767_
                                           _target286436286477_
                                           _tl286438286480_)
                                          (let ()
                                            (declare (not safe))
                                            (_g286379286450_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g286379286450_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl286386286714_))
                          (let ((___splice291766291767_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl286386286714_
                                    '0))))
                            (let ((_tl286438286480_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice291766291767_ '1)))
                                  (_target286436286477_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice291766291767_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl286438286480_))
                                  (___match291872291873_
                                   _e286385286697_
                                   _hd286384286701_
                                   _tl286383286704_
                                   _e286388286707_
                                   _hd286387286711_
                                   _tl286386286714_
                                   ___splice291766291767_
                                   _target286436286477_
                                   _tl286438286480_)
                                  (let ()
                                    (declare (not safe))
                                    (_g286379286450_)))))
                          (let () (declare (not safe)) (_g286379286450_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl286389286724_))
                                                      (let ((___splice291760291761_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl286389286724_ '0))))
                (let ((_tl286410286633_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291760291761_ '1)))
                      (_target286408286630_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291760291761_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl286410286633_))
                      (___match291832291833_
                       _e286385286697_
                       _hd286384286701_
                       _tl286383286704_
                       _e286388286707_
                       _hd286387286711_
                       _tl286386286714_
                       _e286391286717_
                       _hd286390286721_
                       _tl286389286724_
                       _e286392286727_
                       ___splice291760291761_
                       _target286408286630_
                       _tl286410286633_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl286389286724_))
                          (___kont291762291763_
                           _hd286390286721_
                           _hd286387286711_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl286386286714_))
                              (let ((___splice291766291767_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl286386286714_
                                        '0))))
                                (let ((_tl286438286480_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice291766291767_
                                          '1)))
                                      (_target286436286477_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice291766291767_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl286438286480_))
                                      (___match291872291873_
                                       _e286385286697_
                                       _hd286384286701_
                                       _tl286383286704_
                                       _e286388286707_
                                       _hd286387286711_
                                       _tl286386286714_
                                       ___splice291766291767_
                                       _target286436286477_
                                       _tl286438286480_)
                                      (let ()
                                        (declare (not safe))
                                        (_g286379286450_)))))
                              (let ()
                                (declare (not safe))
                                (_g286379286450_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl286389286724_))
                  (___kont291762291763_ _hd286390286721_ _hd286387286711_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl286386286714_))
                      (let ((___splice291766291767_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl286386286714_ '0))))
                        (let ((_tl286438286480_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291766291767_ '1)))
                              (_target286436286477_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291766291767_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl286438286480_))
                              (___match291872291873_
                               _e286385286697_
                               _hd286384286701_
                               _tl286383286704_
                               _e286388286707_
                               _hd286387286711_
                               _tl286386286714_
                               ___splice291766291767_
                               _target286436286477_
                               _tl286438286480_)
                              (let ()
                                (declare (not safe))
                                (_g286379286450_)))))
                      (let () (declare (not safe)) (_g286379286450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl286389286724_))
                                                  (___kont291762291763_
                                                   _hd286390286721_
                                                   _hd286387286711_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl286386286714_))
                                                      (let ((___splice291766291767_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl286386286714_ '0))))
                (let ((_tl286438286480_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291766291767_ '1)))
                      (_target286436286477_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291766291767_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl286438286480_))
                      (___match291872291873_
                       _e286385286697_
                       _hd286384286701_
                       _tl286383286704_
                       _e286388286707_
                       _hd286387286711_
                       _tl286386286714_
                       ___splice291766291767_
                       _target286436286477_
                       _tl286438286480_)
                      (let () (declare (not safe)) (_g286379286450_)))))
              (let () (declare (not safe)) (_g286379286450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286389286724_))
                                            (___kont291762291763_
                                             _hd286390286721_
                                             _hd286387286711_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl286386286714_))
                                                (let ((___splice291766291767_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl286386286714_
                                                          '0))))
                                                  (let ((_tl286438286480_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291766291767_
                                                            '1)))
                                                        (_target286436286477_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291766291767_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl286438286480_))
                                                        (___match291872291873_
                                                         _e286385286697_
                                                         _hd286384286701_
                                                         _tl286383286704_
                                                         _e286388286707_
                                                         _hd286387286711_
                                                         _tl286386286714_
                                                         ___splice291766291767_
                                                         _target286436286477_
                                                         _tl286438286480_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g286379286450_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g286379286450_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl286386286714_))
                                    (let ((___splice291766291767_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl286386286714_
                                              '0))))
                                      (let ((_tl286438286480_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291766291767_
                                                '1)))
                                            (_target286436286477_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291766291767_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286438286480_))
                                            (___match291872291873_
                                             _e286385286697_
                                             _hd286384286701_
                                             _tl286383286704_
                                             _e286388286707_
                                             _hd286387286711_
                                             _tl286386286714_
                                             ___splice291766291767_
                                             _target286436286477_
                                             _tl286438286480_)
                                            (let ()
                                              (declare (not safe))
                                              (_g286379286450_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g286379286450_))))))
                        (let () (declare (not safe)) (_g286379286450_)))))
                (let () (declare (not safe)) (_g286379286450_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx286767_)
      (let* ((___stx291875291876_ _$stx286767_)
             (_g286772286807_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291875291876_)))))
        (let ((___kont291878291879_
               (lambda (_L286929_ _L286931_)
                 (let ((__tmp292197
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292192
                        (let ((__tmp292193
                               (let ((__tmp292194
                                      (let ((__tmp292196
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp292195
                                             (let ()
                                               (declare (not safe))
                                               (cons _L286929_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292196 __tmp292195))))
                                 (declare (not safe))
                                 (cons __tmp292194 '()))))
                          (declare (not safe))
                          (cons _L286931_ __tmp292193))))
                   (declare (not safe))
                   (cons __tmp292197 __tmp292192))))
              (___kont291880291881_
               (lambda (_L286864_ _L286866_)
                 (let ((__tmp292206
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292198
                        (let ((__tmp292199
                               (let ((__tmp292200
                                      (let ((__tmp292205
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp292201
                                             (let ((__tmp292202
                                                    (lambda (_g286883286886_
                                                             _g286884286889_)
                                                      (let ((__tmp292203
                                                             (let ((__tmp292204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g286883286886_ __tmp292204))))
                (declare (not safe))
                (cons __tmp292203 _g286884286889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp292202
                                                       '()
                                                       _L286864_))))
                                        (declare (not safe))
                                        (cons __tmp292205 __tmp292201))))
                                 (declare (not safe))
                                 (cons __tmp292200 '()))))
                          (declare (not safe))
                          (cons _L286866_ __tmp292199))))
                   (declare (not safe))
                   (cons __tmp292206 __tmp292198)))))
          (let ((___match291924291925_
                 (lambda (_e286789286814_
                          _hd286788286818_
                          _tl286787286821_
                          _e286792286824_
                          _hd286791286828_
                          _tl286790286831_
                          ___splice291882291883_
                          _target286793286834_
                          _tl286795286837_)
                   (letrec ((_loop286796286840_
                             (lambda (_hd286794286844_ _arity286800286847_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd286794286844_))
                                   (let ((_e286797286850_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd286794286844_))))
                                     (let ((_lp-tl286799286857_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e286797286850_)))
                                           (_lp-hd286798286854_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e286797286850_))))
                                       (_loop286796286840_
                                        _lp-tl286799286857_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd286798286854_
                                                _arity286800286847_)))))
                                   (let ((_arity286801286860_
                                          (reverse _arity286800286847_)))
                                     (___kont291880291881_
                                      _arity286801286860_
                                      _hd286791286828_))))))
                     (_loop286796286840_ _target286793286834_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291875291876_))
                (let ((_e286778286899_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291875291876_))))
                  (let ((_tl286776286906_
                         (let () (declare (not safe)) (##cdr _e286778286899_)))
                        (_hd286777286903_
                         (let ()
                           (declare (not safe))
                           (##car _e286778286899_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl286776286906_))
                        (let ((_e286781286909_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl286776286906_))))
                          (let ((_tl286779286916_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e286781286909_)))
                                (_hd286780286913_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e286781286909_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl286779286916_))
                                (let ((_e286784286919_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl286779286916_))))
                                  (let ((_tl286782286926_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e286784286919_)))
                                        (_hd286783286923_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e286784286919_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl286782286926_))
                                        (___kont291878291879_
                                         _hd286783286923_
                                         _hd286780286913_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl286779286916_))
                                            (let ((___splice291882291883_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl286779286916_
                                                      '0))))
                                              (let ((_tl286795286837_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice291882291883_
                                                        '1)))
                                                    (_target286793286834_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice291882291883_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl286795286837_))
                                                    (___match291924291925_
                                                     _e286778286899_
                                                     _hd286777286903_
                                                     _tl286776286906_
                                                     _e286781286909_
                                                     _hd286780286913_
                                                     _tl286779286916_
                                                     ___splice291882291883_
                                                     _target286793286834_
                                                     _tl286795286837_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g286772286807_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g286772286807_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl286779286916_))
                                    (let ((___splice291882291883_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl286779286916_
                                              '0))))
                                      (let ((_tl286795286837_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291882291883_
                                                '1)))
                                            (_target286793286834_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291882291883_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286795286837_))
                                            (___match291924291925_
                                             _e286778286899_
                                             _hd286777286903_
                                             _tl286776286906_
                                             _e286781286909_
                                             _hd286780286913_
                                             _tl286779286916_
                                             ___splice291882291883_
                                             _target286793286834_
                                             _tl286795286837_)
                                            (let ()
                                              (declare (not safe))
                                              (_g286772286807_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g286772286807_))))))
                        (let () (declare (not safe)) (_g286772286807_)))))
                (let () (declare (not safe)) (_g286772286807_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx286951_)
      (let* ((_g286955286990_
              (lambda (_g286956286986_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g286956286986_))))
             (_g286954287118_
              (lambda (_g286956286994_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g286956286994_))
                    (let ((_e286961286997_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g286956286994_))))
                      (let ((_hd286960287001_
                             (let ()
                               (declare (not safe))
                               (##car _e286961286997_)))
                            (_tl286959287004_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286961286997_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl286959287004_))
                            (let ((_g292207_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl286959287004_
                                      '0))))
                              (begin
                                (let ((_g292208_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g292207_)
                                             (##vector-length _g292207_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g292208_ 2)))
                                      (error "Context expects 2 values"
                                             _g292208_)))
                                (let ((_target286962287007_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292207_ 0)))
                                      (_tl286964287010_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292207_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl286964287010_))
                                      (letrec ((_loop286965287013_
                                                (lambda (_hd286963287017_
                                                         _arity286969287020_
                                                         _prim286970287022_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd286963287017_))
                                                      (let ((_e286966287025_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd286963287017_))))
                (let ((_lp-hd286967287029_
                       (let () (declare (not safe)) (##car _e286966287025_)))
                      (_lp-tl286968287032_
                       (let () (declare (not safe)) (##cdr _e286966287025_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd286967287029_))
                      (let ((_e286975287035_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd286967287029_))))
                        (let ((_hd286974287039_
                               (let ()
                                 (declare (not safe))
                                 (##car _e286975287035_)))
                              (_tl286973287042_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e286975287035_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl286973287042_))
                              (let ((_g292217_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl286973287042_
                                        '0))))
                                (begin
                                  (let ((_g292218_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g292217_)
                                               (##vector-length _g292217_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g292218_ 2)))
                                        (error "Context expects 2 values"
                                               _g292218_)))
                                  (let ((_target286976287045_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292217_ 0)))
                                        (_tl286978287048_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292217_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl286978287048_))
                                        (letrec ((_loop286979287051_
                                                  (lambda (_hd286977287055_
                                                           _arity286983287058_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd286977287055_))
                                                        (let ((_e286980287061_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd286977287055_))))
                  (let ((_lp-hd286981287065_
                         (let () (declare (not safe)) (##car _e286980287061_)))
                        (_lp-tl286982287068_
                         (let ()
                           (declare (not safe))
                           (##cdr _e286980287061_))))
                    (_loop286979287051_
                     _lp-tl286982287068_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd286981287065_ _arity286983287058_)))))
                (let ((_arity286984287071_ (reverse _arity286983287058_)))
                  (_loop286965287013_
                   _lp-tl286968287032_
                   (let ()
                     (declare (not safe))
                     (cons _arity286984287071_ _arity286969287020_))
                   (let ()
                     (declare (not safe))
                     (cons _hd286974287039_ _prim286970287022_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop286979287051_
                                           _target286976287045_
                                           '()))
                                        (_g286955286990_ _g286956286994_)))))
                              (_g286955286990_ _g286956286994_))))
                      (_g286955286990_ _g286956286994_))))
              (let ((_arity286971287075_ (reverse _arity286969287020_))
                    (_prim286972287078_ (reverse _prim286970287022_)))
                ((lambda (_L287081_ _L287083_)
                   (let ((__tmp292216
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp292209
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287081_
                               _L287083_))
                            (let ((__tmp292210
                                   (lambda (_g287098287104_
                                            _g287099287107_
                                            _g287100287109_)
                                     (let ((__tmp292211
                                            (let ((__tmp292215
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp292212
                                                   (let ((__tmp292213
                                                          (let ((__tmp292214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g287101287112_ _g287102287115_)
                           (let ()
                             (declare (not safe))
                             (cons _g287101287112_ _g287102287115_)))))
                    (declare (not safe))
                    (foldr1 __tmp292214 '() _g287098287104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287099287107_
                                                           __tmp292213))))
                                              (declare (not safe))
                                              (cons __tmp292215 __tmp292212))))
                                       (declare (not safe))
                                       (cons __tmp292211 _g287100287109_)))))
                              (declare (not safe))
                              (foldr2 __tmp292210 '() _L287081_ _L287083_)))))
                     (declare (not safe))
                     (cons __tmp292216 __tmp292209)))
                 _arity286971287075_
                 _prim286972287078_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop286965287013_
                                         _target286962287007_
                                         '()
                                         '()))
                                      (_g286955286990_ _g286956286994_)))))
                            (_g286955286990_ _g286956286994_))))
                    (_g286955286990_ _g286956286994_)))))
        (_g286954287118_ _$stx286951_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx287124_)
      (let* ((_g287128287163_
              (lambda (_g287129287159_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287129287159_))))
             (_g287127287291_
              (lambda (_g287129287167_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287129287167_))
                    (let ((_e287134287170_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287129287167_))))
                      (let ((_hd287133287174_
                             (let ()
                               (declare (not safe))
                               (##car _e287134287170_)))
                            (_tl287132287177_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287134287170_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287132287177_))
                            (let ((_g292219_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287132287177_
                                      '0))))
                              (begin
                                (let ((_g292220_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g292219_)
                                             (##vector-length _g292219_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g292220_ 2)))
                                      (error "Context expects 2 values"
                                             _g292220_)))
                                (let ((_target287135287180_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292219_ 0)))
                                      (_tl287137287183_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292219_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287137287183_))
                                      (letrec ((_loop287138287186_
                                                (lambda (_hd287136287190_
                                                         _arity287142287193_
                                                         _prim287143287195_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287136287190_))
                                                      (let ((_e287139287198_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287136287190_))))
                (let ((_lp-hd287140287202_
                       (let () (declare (not safe)) (##car _e287139287198_)))
                      (_lp-tl287141287205_
                       (let () (declare (not safe)) (##cdr _e287139287198_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287140287202_))
                      (let ((_e287148287208_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287140287202_))))
                        (let ((_hd287147287212_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287148287208_)))
                              (_tl287146287215_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287148287208_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl287146287215_))
                              (let ((_g292229_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl287146287215_
                                        '0))))
                                (begin
                                  (let ((_g292230_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g292229_)
                                               (##vector-length _g292229_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g292230_ 2)))
                                        (error "Context expects 2 values"
                                               _g292230_)))
                                  (let ((_target287149287218_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292229_ 0)))
                                        (_tl287151287221_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292229_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl287151287221_))
                                        (letrec ((_loop287152287224_
                                                  (lambda (_hd287150287228_
                                                           _arity287156287231_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd287150287228_))
                                                        (let ((_e287153287234_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd287150287228_))))
                  (let ((_lp-hd287154287238_
                         (let () (declare (not safe)) (##car _e287153287234_)))
                        (_lp-tl287155287241_
                         (let ()
                           (declare (not safe))
                           (##cdr _e287153287234_))))
                    (_loop287152287224_
                     _lp-tl287155287241_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd287154287238_ _arity287156287231_)))))
                (let ((_arity287157287244_ (reverse _arity287156287231_)))
                  (_loop287138287186_
                   _lp-tl287141287205_
                   (let ()
                     (declare (not safe))
                     (cons _arity287157287244_ _arity287142287193_))
                   (let ()
                     (declare (not safe))
                     (cons _hd287147287212_ _prim287143287195_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop287152287224_
                                           _target287149287218_
                                           '()))
                                        (_g287128287163_ _g287129287167_)))))
                              (_g287128287163_ _g287129287167_))))
                      (_g287128287163_ _g287129287167_))))
              (let ((_arity287144287248_ (reverse _arity287142287193_))
                    (_prim287145287251_ (reverse _prim287143287195_)))
                ((lambda (_L287254_ _L287256_)
                   (let ((__tmp292228
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp292221
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287254_
                               _L287256_))
                            (let ((__tmp292222
                                   (lambda (_g287271287277_
                                            _g287272287280_
                                            _g287273287282_)
                                     (let ((__tmp292223
                                            (let ((__tmp292227
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp292224
                                                   (let ((__tmp292225
                                                          (let ((__tmp292226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g287274287285_ _g287275287288_)
                           (let ()
                             (declare (not safe))
                             (cons _g287274287285_ _g287275287288_)))))
                    (declare (not safe))
                    (foldr1 __tmp292226 '() _g287271287277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287272287280_
                                                           __tmp292225))))
                                              (declare (not safe))
                                              (cons __tmp292227 __tmp292224))))
                                       (declare (not safe))
                                       (cons __tmp292223 _g287273287282_)))))
                              (declare (not safe))
                              (foldr2 __tmp292222 '() _L287254_ _L287256_)))))
                     (declare (not safe))
                     (cons __tmp292228 __tmp292221)))
                 _arity287144287248_
                 _prim287145287251_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287138287186_
                                         _target287135287180_
                                         '()
                                         '()))
                                      (_g287128287163_ _g287129287167_)))))
                            (_g287128287163_ _g287129287167_))))
                    (_g287128287163_ _g287129287167_)))))
        (_g287127287291_ _$stx287124_)))))
