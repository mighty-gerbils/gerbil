(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g27149_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g27150_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g27233_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g27234_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_$stx8333_)
        (let* ((_g83378365_
                (lambda (_g83388361_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g83388361_)))
               (_g83368466_
                (lambda (_g83388369_)
                  (if (gx#stx-pair? _g83388369_)
                      (let ((_e83448372_ (gx#syntax-e _g83388369_)))
                        (let ((_hd83438376_
                               (let ()
                                 (declare (not safe))
                                 (##car _e83448372_)))
                              (_tl83428379_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e83448372_))))
                          (if (gx#stx-pair? _tl83428379_)
                              (let ((_e83478382_ (gx#syntax-e _tl83428379_)))
                                (let ((_hd83468386_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e83478382_)))
                                      (_tl83458389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e83478382_))))
                                  (if (gx#stx-pair? _tl83458389_)
                                      (let ((_e83508392_
                                             (gx#syntax-e _tl83458389_)))
                                        (let ((_hd83498396_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e83508392_)))
                                              (_tl83488399_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e83508392_))))
                                          (if (gx#stx-pair/null? _tl83488399_)
                                              (let ((_g27056_
                                                     (gx#syntax-split-splice
                                                      _tl83488399_
                                                      '0)))
                                                (begin
                                                  (let ((_g27057_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g27056_)
                                                               (##vector-length
                                                                _g27056_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g27057_ 2)))
                (error "Context expects 2 values" _g27057_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target83518402_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g27056_
                                                            0)))
                                                        (_tl83538405_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g27056_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl83538405_)
                                                        (letrec ((_loop83548408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd83528412_ _clauses83588415_)
                            (if (gx#stx-pair? _hd83528412_)
                                (let ((_e83558418_ (gx#syntax-e _hd83528412_)))
                                  (let ((_lp-hd83568422_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e83558418_)))
                                        (_lp-tl83578425_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e83558418_))))
                                    (_loop83548408_
                                     _lp-tl83578425_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd83568422_
                                             _clauses83588415_)))))
                                (let ((_clauses83598428_
                                       (reverse _clauses83588415_)))
                                  ((lambda (_L8432_ _L8434_ _L8435_)
                                     (if (gx#identifier? _L8435_)
                                         (let ((__tmp27065
                                                (gx#datum->syntax
                                                 '#f
                                                 'define-syntax))
                                               (__tmp27058
                                                (let ((__tmp27059
                                                       (let ((__tmp27060
                                                              (let ((__tmp27064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'syntax-rules))
                            (__tmp27061
                             (let ((__tmp27062
                                    (let ((__tmp27063
                                           (lambda (_g84578460_ _g84588463_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g84578460_
                                                     _g84588463_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp27063 '() _L8432_))))
                               (declare (not safe))
                               (cons _L8434_ __tmp27062))))
                        (declare (not safe))
                        (cons __tmp27064 __tmp27061))))
                 (declare (not safe))
                 (cons __tmp27060 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L8435_ __tmp27059))))
                                           (declare (not safe))
                                           (cons __tmp27065 __tmp27058))
                                         (_g83378365_ _g83388369_)))
                                   _clauses83598428_
                                   _hd83498396_
                                   _hd83468386_))))))
                  (_loop83548408_ _target83518402_ '()))
                (_g83378365_ _g83388369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g83378365_ _g83388369_))))
                                      (_g83378365_ _g83388369_))))
                              (_g83378365_ _g83388369_))))
                      (_g83378365_ _g83388369_)))))
          (_g83368466_ _$stx8333_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_$stx8471_)
        (let* ((___stx2470524706_ _$stx8471_)
               (_g84768515_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2470524706_))))
          (let ((___kont2470824709_
                 (lambda (_L8637_ _L8639_ _L8640_)
                   (let ((__tmp27073 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp27066
                          (let ((__tmp27067
                                 (let ((__tmp27068
                                        (let ((__tmp27072
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp27069
                                               (let ((__tmp27070
                                                      (let ((__tmp27071
                                                             (lambda (_g86598662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g86608665_)
                       (let ()
                         (declare (not safe))
                         (cons _g86598662_ _g86608665_)))))
                (declare (not safe))
                (foldr1 __tmp27071 '() _L8637_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L8639_ __tmp27070))))
                                          (declare (not safe))
                                          (cons __tmp27072 __tmp27069))))
                                   (declare (not safe))
                                   (cons __tmp27068 '()))))
                            (declare (not safe))
                            (cons _L8640_ __tmp27067))))
                     (declare (not safe))
                     (cons __tmp27073 __tmp27066))))
                (___kont2471224713_
                 (lambda (_L8552_ _L8554_)
                   (let ((__tmp27076 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp27074
                          (let ((__tmp27075
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8552_ '()))))
                            (declare (not safe))
                            (cons _L8554_ __tmp27075))))
                     (declare (not safe))
                     (cons __tmp27076 __tmp27074)))))
            (let* ((___match2476024761_
                    (lambda (_e85038522_
                             _hd85028526_
                             _tl85018529_
                             _e85068532_
                             _hd85058536_
                             _tl85048539_
                             _e85098542_
                             _hd85088546_
                             _tl85078549_)
                      (let ((_L8552_ _hd85088546_) (_L8554_ _hd85058536_))
                        (if (gx#identifier? _L8554_)
                            (___kont2471224713_ _L8552_ _L8554_)
                            (let () (declare (not safe)) (_g84768515_))))))
                   (___match2475224753_
                    (lambda (_e85038522_
                             _hd85028526_
                             _tl85018529_
                             _e85068532_
                             _hd85058536_
                             _tl85048539_)
                      (if (gx#stx-pair? _tl85048539_)
                          (let ((_e85098542_ (gx#syntax-e _tl85048539_)))
                            (let ((_tl85078549_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e85098542_)))
                                  (_hd85088546_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e85098542_))))
                              (if (gx#stx-null? _tl85078549_)
                                  (___match2476024761_
                                   _e85038522_
                                   _hd85028526_
                                   _tl85018529_
                                   _e85068532_
                                   _hd85058536_
                                   _tl85048539_
                                   _e85098542_
                                   _hd85088546_
                                   _tl85078549_)
                                  (let ()
                                    (declare (not safe))
                                    (_g84768515_)))))
                          (let () (declare (not safe)) (_g84768515_)))))
                   (___match2474024741_
                    (lambda (_e84838577_
                             _hd84828581_
                             _tl84818584_
                             _e84868587_
                             _hd84858591_
                             _tl84848594_
                             _e84898597_
                             _hd84888601_
                             _tl84878604_
                             ___splice2471024711_
                             _target84908607_
                             _tl84928610_)
                      (letrec ((_loop84938613_
                                (lambda (_hd84918617_ _body84978620_)
                                  (if (gx#stx-pair? _hd84918617_)
                                      (let ((_e84948623_
                                             (gx#syntax-e _hd84918617_)))
                                        (let ((_lp-tl84968630_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e84948623_)))
                                              (_lp-hd84958627_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e84948623_))))
                                          (_loop84938613_
                                           _lp-tl84968630_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd84958627_
                                                   _body84978620_)))))
                                      (let ((_body84988633_
                                             (reverse _body84978620_)))
                                        (let ((_L8637_ _body84988633_)
                                              (_L8639_ _tl84878604_)
                                              (_L8640_ _hd84888601_))
                                          (if (gx#identifier? _L8640_)
                                              (___kont2470824709_
                                               _L8637_
                                               _L8639_
                                               _L8640_)
                                              (___match2475224753_
                                               _e84838577_
                                               _hd84828581_
                                               _tl84818584_
                                               _e84868587_
                                               _hd84858591_
                                               _tl84848594_))))))))
                        (_loop84938613_ _target84908607_ '())))))
              (if (gx#stx-pair? ___stx2470524706_)
                  (let ((_e84838577_ (gx#syntax-e ___stx2470524706_)))
                    (let ((_tl84818584_
                           (let () (declare (not safe)) (##cdr _e84838577_)))
                          (_hd84828581_
                           (let () (declare (not safe)) (##car _e84838577_))))
                      (if (gx#stx-pair? _tl84818584_)
                          (let ((_e84868587_ (gx#syntax-e _tl84818584_)))
                            (let ((_tl84848594_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e84868587_)))
                                  (_hd84858591_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e84868587_))))
                              (if (gx#stx-pair? _hd84858591_)
                                  (let ((_e84898597_
                                         (gx#syntax-e _hd84858591_)))
                                    (let ((_tl84878604_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e84898597_)))
                                          (_hd84888601_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e84898597_))))
                                      (if (gx#stx-pair/null? _tl84848594_)
                                          (let ((___splice2471024711_
                                                 (gx#syntax-split-splice
                                                  _tl84848594_
                                                  '0)))
                                            (let ((_tl84928610_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2471024711_
                                                      '1)))
                                                  (_target84908607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2471024711_
                                                      '0))))
                                              (if (gx#stx-null? _tl84928610_)
                                                  (___match2474024741_
                                                   _e84838577_
                                                   _hd84828581_
                                                   _tl84818584_
                                                   _e84868587_
                                                   _hd84858591_
                                                   _tl84848594_
                                                   _e84898597_
                                                   _hd84888601_
                                                   _tl84878604_
                                                   ___splice2471024711_
                                                   _target84908607_
                                                   _tl84928610_)
                                                  (if (gx#stx-pair?
                                                       _tl84848594_)
                                                      (let ((_e85098542_
                                                             (gx#syntax-e
                                                              _tl84848594_)))
                                                        (let ((_tl85078549_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e85098542_)))
                      (_hd85088546_
                       (let () (declare (not safe)) (##car _e85098542_))))
                  (if (gx#stx-null? _tl85078549_)
                      (___match2476024761_
                       _e84838577_
                       _hd84828581_
                       _tl84818584_
                       _e84868587_
                       _hd84858591_
                       _tl84848594_
                       _e85098542_
                       _hd85088546_
                       _tl85078549_)
                      (let () (declare (not safe)) (_g84768515_)))))
              (let () (declare (not safe)) (_g84768515_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl84848594_)
                                              (let ((_e85098542_
                                                     (gx#syntax-e
                                                      _tl84848594_)))
                                                (let ((_tl85078549_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e85098542_)))
                                                      (_hd85088546_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e85098542_))))
                                                  (if (gx#stx-null?
                                                       _tl85078549_)
                                                      (___match2476024761_
                                                       _e84838577_
                                                       _hd84828581_
                                                       _tl84818584_
                                                       _e84868587_
                                                       _hd84858591_
                                                       _tl84848594_
                                                       _e85098542_
                                                       _hd85088546_
                                                       _tl85078549_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g84768515_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g84768515_))))))
                                  (if (gx#stx-pair? _tl84848594_)
                                      (let ((_e85098542_
                                             (gx#syntax-e _tl84848594_)))
                                        (let ((_tl85078549_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e85098542_)))
                                              (_hd85088546_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e85098542_))))
                                          (if (gx#stx-null? _tl85078549_)
                                              (___match2476024761_
                                               _e84838577_
                                               _hd84828581_
                                               _tl84818584_
                                               _e84868587_
                                               _hd84858591_
                                               _tl84848594_
                                               _e85098542_
                                               _hd85088546_
                                               _tl85078549_)
                                              (let ()
                                                (declare (not safe))
                                                (_g84768515_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g84768515_))))))
                          (let () (declare (not safe)) (_g84768515_)))))
                  (let () (declare (not safe)) (_g84768515_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_$stx8673_)
        (let* ((___stx2476324764_ _$stx8673_)
               (_g86788717_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2476324764_))))
          (let ((___kont2476624767_
                 (lambda (_L8839_ _L8841_ _L8842_)
                   (let ((__tmp27085 (gx#datum->syntax '#f 'define-values))
                         (__tmp27077
                          (let ((__tmp27084
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8842_ '())))
                                (__tmp27078
                                 (let ((__tmp27079
                                        (let ((__tmp27083
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp27080
                                               (let ((__tmp27081
                                                      (let ((__tmp27082
                                                             (lambda (_g88618864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g88628867_)
                       (let ()
                         (declare (not safe))
                         (cons _g88618864_ _g88628867_)))))
                (declare (not safe))
                (foldr1 __tmp27082 '() _L8839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L8841_ __tmp27081))))
                                          (declare (not safe))
                                          (cons __tmp27083 __tmp27080))))
                                   (declare (not safe))
                                   (cons __tmp27079 '()))))
                            (declare (not safe))
                            (cons __tmp27084 __tmp27078))))
                     (declare (not safe))
                     (cons __tmp27085 __tmp27077))))
                (___kont2477024771_
                 (lambda (_L8754_ _L8756_)
                   (let ((__tmp27089 (gx#datum->syntax '#f 'define-values))
                         (__tmp27086
                          (let ((__tmp27088
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8756_ '())))
                                (__tmp27087
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8754_ '()))))
                            (declare (not safe))
                            (cons __tmp27088 __tmp27087))))
                     (declare (not safe))
                     (cons __tmp27089 __tmp27086)))))
            (let* ((___match2481824819_
                    (lambda (_e87058724_
                             _hd87048728_
                             _tl87038731_
                             _e87088734_
                             _hd87078738_
                             _tl87068741_
                             _e87118744_
                             _hd87108748_
                             _tl87098751_)
                      (let ((_L8754_ _hd87108748_) (_L8756_ _hd87078738_))
                        (if (gx#identifier? _L8756_)
                            (___kont2477024771_ _L8754_ _L8756_)
                            (let () (declare (not safe)) (_g86788717_))))))
                   (___match2481024811_
                    (lambda (_e87058724_
                             _hd87048728_
                             _tl87038731_
                             _e87088734_
                             _hd87078738_
                             _tl87068741_)
                      (if (gx#stx-pair? _tl87068741_)
                          (let ((_e87118744_ (gx#syntax-e _tl87068741_)))
                            (let ((_tl87098751_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e87118744_)))
                                  (_hd87108748_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e87118744_))))
                              (if (gx#stx-null? _tl87098751_)
                                  (___match2481824819_
                                   _e87058724_
                                   _hd87048728_
                                   _tl87038731_
                                   _e87088734_
                                   _hd87078738_
                                   _tl87068741_
                                   _e87118744_
                                   _hd87108748_
                                   _tl87098751_)
                                  (let ()
                                    (declare (not safe))
                                    (_g86788717_)))))
                          (let () (declare (not safe)) (_g86788717_)))))
                   (___match2479824799_
                    (lambda (_e86858779_
                             _hd86848783_
                             _tl86838786_
                             _e86888789_
                             _hd86878793_
                             _tl86868796_
                             _e86918799_
                             _hd86908803_
                             _tl86898806_
                             ___splice2476824769_
                             _target86928809_
                             _tl86948812_)
                      (letrec ((_loop86958815_
                                (lambda (_hd86938819_ _body86998822_)
                                  (if (gx#stx-pair? _hd86938819_)
                                      (let ((_e86968825_
                                             (gx#syntax-e _hd86938819_)))
                                        (let ((_lp-tl86988832_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e86968825_)))
                                              (_lp-hd86978829_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e86968825_))))
                                          (_loop86958815_
                                           _lp-tl86988832_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd86978829_
                                                   _body86998822_)))))
                                      (let ((_body87008835_
                                             (reverse _body86998822_)))
                                        (let ((_L8839_ _body87008835_)
                                              (_L8841_ _tl86898806_)
                                              (_L8842_ _hd86908803_))
                                          (if (gx#identifier? _L8842_)
                                              (___kont2476624767_
                                               _L8839_
                                               _L8841_
                                               _L8842_)
                                              (___match2481024811_
                                               _e86858779_
                                               _hd86848783_
                                               _tl86838786_
                                               _e86888789_
                                               _hd86878793_
                                               _tl86868796_))))))))
                        (_loop86958815_ _target86928809_ '())))))
              (if (gx#stx-pair? ___stx2476324764_)
                  (let ((_e86858779_ (gx#syntax-e ___stx2476324764_)))
                    (let ((_tl86838786_
                           (let () (declare (not safe)) (##cdr _e86858779_)))
                          (_hd86848783_
                           (let () (declare (not safe)) (##car _e86858779_))))
                      (if (gx#stx-pair? _tl86838786_)
                          (let ((_e86888789_ (gx#syntax-e _tl86838786_)))
                            (let ((_tl86868796_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e86888789_)))
                                  (_hd86878793_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e86888789_))))
                              (if (gx#stx-pair? _hd86878793_)
                                  (let ((_e86918799_
                                         (gx#syntax-e _hd86878793_)))
                                    (let ((_tl86898806_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e86918799_)))
                                          (_hd86908803_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e86918799_))))
                                      (if (gx#stx-pair/null? _tl86868796_)
                                          (let ((___splice2476824769_
                                                 (gx#syntax-split-splice
                                                  _tl86868796_
                                                  '0)))
                                            (let ((_tl86948812_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2476824769_
                                                      '1)))
                                                  (_target86928809_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2476824769_
                                                      '0))))
                                              (if (gx#stx-null? _tl86948812_)
                                                  (___match2479824799_
                                                   _e86858779_
                                                   _hd86848783_
                                                   _tl86838786_
                                                   _e86888789_
                                                   _hd86878793_
                                                   _tl86868796_
                                                   _e86918799_
                                                   _hd86908803_
                                                   _tl86898806_
                                                   ___splice2476824769_
                                                   _target86928809_
                                                   _tl86948812_)
                                                  (if (gx#stx-pair?
                                                       _tl86868796_)
                                                      (let ((_e87118744_
                                                             (gx#syntax-e
                                                              _tl86868796_)))
                                                        (let ((_tl87098751_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e87118744_)))
                      (_hd87108748_
                       (let () (declare (not safe)) (##car _e87118744_))))
                  (if (gx#stx-null? _tl87098751_)
                      (___match2481824819_
                       _e86858779_
                       _hd86848783_
                       _tl86838786_
                       _e86888789_
                       _hd86878793_
                       _tl86868796_
                       _e87118744_
                       _hd87108748_
                       _tl87098751_)
                      (let () (declare (not safe)) (_g86788717_)))))
              (let () (declare (not safe)) (_g86788717_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl86868796_)
                                              (let ((_e87118744_
                                                     (gx#syntax-e
                                                      _tl86868796_)))
                                                (let ((_tl87098751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e87118744_)))
                                                      (_hd87108748_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e87118744_))))
                                                  (if (gx#stx-null?
                                                       _tl87098751_)
                                                      (___match2481824819_
                                                       _e86858779_
                                                       _hd86848783_
                                                       _tl86838786_
                                                       _e86888789_
                                                       _hd86878793_
                                                       _tl86868796_
                                                       _e87118744_
                                                       _hd87108748_
                                                       _tl87098751_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g86788717_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g86788717_))))))
                                  (if (gx#stx-pair? _tl86868796_)
                                      (let ((_e87118744_
                                             (gx#syntax-e _tl86868796_)))
                                        (let ((_tl87098751_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e87118744_)))
                                              (_hd87108748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e87118744_))))
                                          (if (gx#stx-null? _tl87098751_)
                                              (___match2481824819_
                                               _e86858779_
                                               _hd86848783_
                                               _tl86838786_
                                               _e86888789_
                                               _hd86878793_
                                               _tl86868796_
                                               _e87118744_
                                               _hd87108748_
                                               _tl87098751_)
                                              (let ()
                                                (declare (not safe))
                                                (_g86788717_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g86788717_))))))
                          (let () (declare (not safe)) (_g86788717_)))))
                  (let () (declare (not safe)) (_g86788717_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_$stx8875_)
        (let* ((___stx2482124822_ _$stx8875_)
               (_g88808925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2482124822_))))
          (let ((___kont2482424825_
                 (lambda (_L9083_)
                   (let ((__tmp27093 (gx#datum->syntax '#f 'let-values))
                         (__tmp27090
                          (let ((__tmp27091
                                 (let ((__tmp27092
                                        (lambda (_g90999102_ _g91009105_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g90999102_ _g91009105_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp27092 '() _L9083_))))
                            (declare (not safe))
                            (cons '() __tmp27091))))
                     (declare (not safe))
                     (cons __tmp27093 __tmp27090))))
                (___kont2482824829_
                 (lambda (_L8992_ _L8994_ _L8995_ _L8996_)
                   (let ((__tmp27101 (gx#datum->syntax '#f 'let-values))
                         (__tmp27094
                          (let ((__tmp27100
                                 (let ()
                                   (declare (not safe))
                                   (cons _L8995_ '())))
                                (__tmp27095
                                 (let ((__tmp27096
                                        (let ((__tmp27097
                                               (let ((__tmp27098
                                                      (let ((__tmp27099
                                                             (lambda (_g90179020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g90189023_)
                       (let ()
                         (declare (not safe))
                         (cons _g90179020_ _g90189023_)))))
                (declare (not safe))
                (foldr1 __tmp27099 '() _L8992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L8994_ __tmp27098))))
                                          (declare (not safe))
                                          (cons _L8996_ __tmp27097))))
                                   (declare (not safe))
                                   (cons __tmp27096 '()))))
                            (declare (not safe))
                            (cons __tmp27100 __tmp27095))))
                     (declare (not safe))
                     (cons __tmp27101 __tmp27094)))))
            (let* ((___match2488024881_
                    (lambda (_e89048932_
                             _hd89038936_
                             _tl89028939_
                             _e89078942_
                             _hd89068946_
                             _tl89058949_
                             _e89108952_
                             _hd89098956_
                             _tl89088959_
                             ___splice2483024831_
                             _target89118962_
                             _tl89138965_)
                      (letrec ((_loop89148968_
                                (lambda (_hd89128972_ _body89188975_)
                                  (if (gx#stx-pair? _hd89128972_)
                                      (let ((_e89158978_
                                             (gx#syntax-e _hd89128972_)))
                                        (let ((_lp-tl89178985_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e89158978_)))
                                              (_lp-hd89168982_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e89158978_))))
                                          (_loop89148968_
                                           _lp-tl89178985_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd89168982_
                                                   _body89188975_)))))
                                      (let ((_body89198988_
                                             (reverse _body89188975_)))
                                        (___kont2482824829_
                                         _body89198988_
                                         _tl89088959_
                                         _hd89098956_
                                         _hd89038936_))))))
                        (_loop89148968_ _target89118962_ '()))))
                   (___match2485424855_
                    (lambda (_e88859033_
                             _hd88849037_
                             _tl88839040_
                             _e88889043_
                             _hd88879047_
                             _tl88869050_
                             ___splice2482624827_
                             _target88899053_
                             _tl88919056_)
                      (letrec ((_loop88929059_
                                (lambda (_hd88909063_ _body88969066_)
                                  (if (gx#stx-pair? _hd88909063_)
                                      (let ((_e88939069_
                                             (gx#syntax-e _hd88909063_)))
                                        (let ((_lp-tl88959076_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e88939069_)))
                                              (_lp-hd88949073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e88939069_))))
                                          (_loop88929059_
                                           _lp-tl88959076_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd88949073_
                                                   _body88969066_)))))
                                      (let ((_body88979079_
                                             (reverse _body88969066_)))
                                        (___kont2482424825_
                                         _body88979079_))))))
                        (_loop88929059_ _target88899053_ '())))))
              (if (gx#stx-pair? ___stx2482124822_)
                  (let ((_e88859033_ (gx#syntax-e ___stx2482124822_)))
                    (let ((_tl88839040_
                           (let () (declare (not safe)) (##cdr _e88859033_)))
                          (_hd88849037_
                           (let () (declare (not safe)) (##car _e88859033_))))
                      (if (gx#stx-pair? _tl88839040_)
                          (let ((_e88889043_ (gx#syntax-e _tl88839040_)))
                            (let ((_tl88869050_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e88889043_)))
                                  (_hd88879047_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e88889043_))))
                              (if (gx#stx-null? _hd88879047_)
                                  (if (gx#stx-pair/null? _tl88869050_)
                                      (let ((___splice2482624827_
                                             (gx#syntax-split-splice
                                              _tl88869050_
                                              '0)))
                                        (let ((_tl88919056_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2482624827_
                                                  '1)))
                                              (_target88899053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2482624827_
                                                  '0))))
                                          (if (gx#stx-null? _tl88919056_)
                                              (___match2485424855_
                                               _e88859033_
                                               _hd88849037_
                                               _tl88839040_
                                               _e88889043_
                                               _hd88879047_
                                               _tl88869050_
                                               ___splice2482624827_
                                               _target88899053_
                                               _tl88919056_)
                                              (let ()
                                                (declare (not safe))
                                                (_g88808925_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g88808925_)))
                                  (if (gx#stx-pair? _hd88879047_)
                                      (let ((_e89108952_
                                             (gx#syntax-e _hd88879047_)))
                                        (let ((_tl89088959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e89108952_)))
                                              (_hd89098956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e89108952_))))
                                          (if (gx#stx-pair/null? _tl88869050_)
                                              (let ((___splice2483024831_
                                                     (gx#syntax-split-splice
                                                      _tl88869050_
                                                      '0)))
                                                (let ((_tl89138965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2483024831_
                                                          '1)))
                                                      (_target89118962_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2483024831_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl89138965_)
                                                      (___match2488024881_
                                                       _e88859033_
                                                       _hd88849037_
                                                       _tl88839040_
                                                       _e88889043_
                                                       _hd88879047_
                                                       _tl88869050_
                                                       _e89108952_
                                                       _hd89098956_
                                                       _tl89088959_
                                                       ___splice2483024831_
                                                       _target89118962_
                                                       _tl89138965_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g88808925_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g88808925_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g88808925_))))))
                          (let () (declare (not safe)) (_g88808925_)))))
                  (let () (declare (not safe)) (_g88808925_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_$stx9114_)
        (let* ((___stx2488324884_ _$stx9114_)
               (_g91199183_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2488324884_))))
          (let ((___kont2488624887_
                 (lambda (_L9389_ _L9391_ _L9392_ _L9393_ _L9394_)
                   (let ((__tmp27104
                          (let ((__tmp27118
                                 (gx#datum->syntax '#f 'letrec-values))
                                (__tmp27105
                                 (let ((__tmp27107
                                        (let ((__tmp27108
                                               (let ((__tmp27117
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L9394_ '())))
                                                     (__tmp27109
                                                      (let ((__tmp27110
                                                             (let ((__tmp27116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda%))
                           (__tmp27111
                            (let ((__tmp27114
                                   (let ((__tmp27115
                                          (lambda (_g94239426_ _g94249429_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g94239426_
                                                    _g94249429_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp27115 _L9391_ _L9393_)))
                                  (__tmp27112
                                   (let ((__tmp27113
                                          (lambda (_g94219432_ _g94229435_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g94219432_
                                                    _g94229435_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp27113 '() _L9389_))))
                              (declare (not safe))
                              (cons __tmp27114 __tmp27112))))
                       (declare (not safe))
                       (cons __tmp27116 __tmp27111))))
                (declare (not safe))
                (cons __tmp27110 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27117
                                                       __tmp27109))))
                                          (declare (not safe))
                                          (cons __tmp27108 '())))
                                       (__tmp27106
                                        (let ()
                                          (declare (not safe))
                                          (cons _L9394_ '()))))
                                   (declare (not safe))
                                   (cons __tmp27107 __tmp27106))))
                            (declare (not safe))
                            (cons __tmp27118 __tmp27105)))
                         (__tmp27102
                          (let ((__tmp27103
                                 (lambda (_g94199438_ _g94209441_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g94199438_ _g94209441_)))))
                            (declare (not safe))
                            (foldr1 __tmp27103 '() _L9392_))))
                     (declare (not safe))
                     (cons __tmp27104 __tmp27102))))
                (___kont2489224893_
                 (lambda (_L9240_ _L9242_)
                   (let ((__tmp27124 (gx#datum->syntax '#f '~let))
                         (__tmp27119
                          (let ((__tmp27123 (gx#datum->syntax '#f 'let-values))
                                (__tmp27120
                                 (let ((__tmp27121
                                        (let ((__tmp27122
                                               (lambda (_g92599262_
                                                        _g92609265_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g92599262_
                                                         _g92609265_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp27122 '() _L9240_))))
                                   (declare (not safe))
                                   (cons _L9242_ __tmp27121))))
                            (declare (not safe))
                            (cons __tmp27123 __tmp27120))))
                     (declare (not safe))
                     (cons __tmp27124 __tmp27119)))))
            (let* ((___match2494024941_
                    (lambda (_e91659190_
                             _hd91649194_
                             _tl91639197_
                             _e91689200_
                             _hd91679204_
                             _tl91669207_
                             ___splice2489424895_
                             _target91699210_
                             _tl91719213_)
                      (letrec ((_loop91729216_
                                (lambda (_hd91709220_ _body91769223_)
                                  (if (gx#stx-pair? _hd91709220_)
                                      (let ((_e91739226_
                                             (gx#syntax-e _hd91709220_)))
                                        (let ((_lp-tl91759233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e91739226_)))
                                              (_lp-hd91749230_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e91739226_))))
                                          (_loop91729216_
                                           _lp-tl91759233_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd91749230_
                                                   _body91769223_)))))
                                      (let ((_body91779236_
                                             (reverse _body91769223_)))
                                        (___kont2489224893_
                                         _body91779236_
                                         _hd91679204_))))))
                        (_loop91729216_ _target91699210_ '()))))
                   (___match2493224933_
                    (lambda (_e91659190_
                             _hd91649194_
                             _tl91639197_
                             _e91689200_
                             _hd91679204_
                             _tl91669207_)
                      (if (gx#stx-pair/null? _tl91669207_)
                          (let ((___splice2489424895_
                                 (gx#syntax-split-splice _tl91669207_ '0)))
                            (let ((_tl91719213_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2489424895_ '1)))
                                  (_target91699210_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2489424895_ '0))))
                              (if (gx#stx-null? _tl91719213_)
                                  (___match2494024941_
                                   _e91659190_
                                   _hd91649194_
                                   _tl91639197_
                                   _e91689200_
                                   _hd91679204_
                                   _tl91669207_
                                   ___splice2489424895_
                                   _target91699210_
                                   _tl91719213_)
                                  (let ()
                                    (declare (not safe))
                                    (_g91199183_)))))
                          (let () (declare (not safe)) (_g91199183_)))))
                   (___match2492024921_
                    (lambda (_e91289275_
                             _hd91279279_
                             _tl91269282_
                             _e91319285_
                             _hd91309289_
                             _tl91299292_
                             _e91349295_
                             _hd91339299_
                             _tl91329302_
                             ___splice2488824889_
                             _target91359305_
                             _tl91379308_)
                      (letrec ((_loop91389311_
                                (lambda (_hd91369315_
                                         _arg91429318_
                                         _var91439320_)
                                  (if (gx#stx-pair? _hd91369315_)
                                      (let ((_e91399323_
                                             (gx#syntax-e _hd91369315_)))
                                        (let ((_lp-tl91419330_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e91399323_)))
                                              (_lp-hd91409327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e91399323_))))
                                          (if (gx#stx-pair? _lp-hd91409327_)
                                              (let ((_e91489333_
                                                     (gx#syntax-e
                                                      _lp-hd91409327_)))
                                                (let ((_tl91469340_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e91489333_)))
                                                      (_hd91479337_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e91489333_))))
                                                  (if (gx#stx-pair?
                                                       _tl91469340_)
                                                      (let ((_e91519343_
                                                             (gx#syntax-e
                                                              _tl91469340_)))
                                                        (let ((_tl91499350_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e91519343_)))
                      (_hd91509347_
                       (let () (declare (not safe)) (##car _e91519343_))))
                  (if (gx#stx-null? _tl91499350_)
                      (_loop91389311_
                       _lp-tl91419330_
                       (let ()
                         (declare (not safe))
                         (cons _hd91509347_ _arg91429318_))
                       (let ()
                         (declare (not safe))
                         (cons _hd91479337_ _var91439320_)))
                      (___match2493224933_
                       _e91289275_
                       _hd91279279_
                       _tl91269282_
                       _e91319285_
                       _hd91309289_
                       _tl91299292_))))
              (___match2493224933_
               _e91289275_
               _hd91279279_
               _tl91269282_
               _e91319285_
               _hd91309289_
               _tl91299292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2493224933_
                                               _e91289275_
                                               _hd91279279_
                                               _tl91269282_
                                               _e91319285_
                                               _hd91309289_
                                               _tl91299292_))))
                                      (let ((_var91459356_
                                             (reverse _var91439320_))
                                            (_arg91449353_
                                             (reverse _arg91429318_)))
                                        (if (gx#stx-pair/null? _tl91329302_)
                                            (let ((___splice2489024891_
                                                   (gx#syntax-split-splice
                                                    _tl91329302_
                                                    '0)))
                                              (let ((_tl91549362_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2489024891_
                                                        '1)))
                                                    (_target91529359_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2489024891_
                                                        '0))))
                                                (if (gx#stx-null? _tl91549362_)
                                                    (letrec ((_loop91559365_
                                                              (lambda (_hd91539369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body91599372_)
                        (if (gx#stx-pair? _hd91539369_)
                            (let ((_e91569375_ (gx#syntax-e _hd91539369_)))
                              (let ((_lp-tl91589382_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e91569375_)))
                                    (_lp-hd91579379_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e91569375_))))
                                (_loop91559365_
                                 _lp-tl91589382_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd91579379_ _body91599372_)))))
                            (let ((_body91609385_ (reverse _body91599372_)))
                              (let ((_L9389_ _body91609385_)
                                    (_L9391_ _tl91379308_)
                                    (_L9392_ _arg91449353_)
                                    (_L9393_ _var91459356_)
                                    (_L9394_ _hd91309289_))
                                (if (gx#identifier? _L9394_)
                                    (___kont2488624887_
                                     _L9389_
                                     _L9391_
                                     _L9392_
                                     _L9393_
                                     _L9394_)
                                    (___match2493224933_
                                     _e91289275_
                                     _hd91279279_
                                     _tl91269282_
                                     _e91319285_
                                     _hd91309289_
                                     _tl91299292_))))))))
              (_loop91559365_ _target91529359_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2493224933_
                                                     _e91289275_
                                                     _hd91279279_
                                                     _tl91269282_
                                                     _e91319285_
                                                     _hd91309289_
                                                     _tl91299292_))))
                                            (___match2493224933_
                                             _e91289275_
                                             _hd91279279_
                                             _tl91269282_
                                             _e91319285_
                                             _hd91309289_
                                             _tl91299292_)))))))
                        (_loop91389311_ _target91359305_ '() '())))))
              (if (gx#stx-pair? ___stx2488324884_)
                  (let ((_e91289275_ (gx#syntax-e ___stx2488324884_)))
                    (let ((_tl91269282_
                           (let () (declare (not safe)) (##cdr _e91289275_)))
                          (_hd91279279_
                           (let () (declare (not safe)) (##car _e91289275_))))
                      (if (gx#stx-pair? _tl91269282_)
                          (let ((_e91319285_ (gx#syntax-e _tl91269282_)))
                            (let ((_tl91299292_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e91319285_)))
                                  (_hd91309289_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e91319285_))))
                              (if (gx#stx-pair? _tl91299292_)
                                  (let ((_e91349295_
                                         (gx#syntax-e _tl91299292_)))
                                    (let ((_tl91329302_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e91349295_)))
                                          (_hd91339299_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e91349295_))))
                                      (if (gx#stx-pair/null? _hd91339299_)
                                          (let ((___splice2488824889_
                                                 (gx#syntax-split-splice
                                                  _hd91339299_
                                                  '0)))
                                            (let ((_tl91379308_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2488824889_
                                                      '1)))
                                                  (_target91359305_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2488824889_
                                                      '0))))
                                              (___match2492024921_
                                               _e91289275_
                                               _hd91279279_
                                               _tl91269282_
                                               _e91319285_
                                               _hd91309289_
                                               _tl91299292_
                                               _e91349295_
                                               _hd91339299_
                                               _tl91329302_
                                               ___splice2488824889_
                                               _target91359305_
                                               _tl91379308_)))
                                          (if (gx#stx-pair/null? _tl91299292_)
                                              (let ((___splice2489424895_
                                                     (gx#syntax-split-splice
                                                      _tl91299292_
                                                      '0)))
                                                (let ((_tl91719213_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2489424895_
                                                          '1)))
                                                      (_target91699210_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2489424895_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl91719213_)
                                                      (___match2494024941_
                                                       _e91289275_
                                                       _hd91279279_
                                                       _tl91269282_
                                                       _e91319285_
                                                       _hd91309289_
                                                       _tl91299292_
                                                       ___splice2489424895_
                                                       _target91699210_
                                                       _tl91719213_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g91199183_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g91199183_))))))
                                  (if (gx#stx-pair/null? _tl91299292_)
                                      (let ((___splice2489424895_
                                             (gx#syntax-split-splice
                                              _tl91299292_
                                              '0)))
                                        (let ((_tl91719213_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2489424895_
                                                  '1)))
                                              (_target91699210_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2489424895_
                                                  '0))))
                                          (if (gx#stx-null? _tl91719213_)
                                              (___match2494024941_
                                               _e91289275_
                                               _hd91279279_
                                               _tl91269282_
                                               _e91319285_
                                               _hd91309289_
                                               _tl91299292_
                                               ___splice2489424895_
                                               _target91699210_
                                               _tl91719213_)
                                              (let ()
                                                (declare (not safe))
                                                (_g91199183_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g91199183_))))))
                          (let () (declare (not safe)) (_g91199183_)))))
                  (let () (declare (not safe)) (_g91199183_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_$stx9451_)
        (let* ((_g94559479_
                (lambda (_g94569475_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g94569475_)))
               (_g94549564_
                (lambda (_g94569483_)
                  (if (gx#stx-pair? _g94569483_)
                      (let ((_e94619486_ (gx#syntax-e _g94569483_)))
                        (let ((_hd94609490_
                               (let ()
                                 (declare (not safe))
                                 (##car _e94619486_)))
                              (_tl94599493_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e94619486_))))
                          (if (gx#stx-pair? _tl94599493_)
                              (let ((_e94649496_ (gx#syntax-e _tl94599493_)))
                                (let ((_hd94639500_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e94649496_)))
                                      (_tl94629503_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e94649496_))))
                                  (if (gx#stx-pair/null? _tl94629503_)
                                      (let ((_g27125_
                                             (gx#syntax-split-splice
                                              _tl94629503_
                                              '0)))
                                        (begin
                                          (let ((_g27126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g27125_)
                                                       (##vector-length
                                                        _g27125_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g27126_ 2)))
                                                (error "Context expects 2 values"
                                                       _g27126_)))
                                          (let ((_target94659506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27125_ 0)))
                                                (_tl94679509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27125_ 1))))
                                            (if (gx#stx-null? _tl94679509_)
                                                (letrec ((_loop94689512_
                                                          (lambda (_hd94669516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body94729519_)
                    (if (gx#stx-pair? _hd94669516_)
                        (let ((_e94699522_ (gx#syntax-e _hd94669516_)))
                          (let ((_lp-hd94709526_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e94699522_)))
                                (_lp-tl94719529_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e94699522_))))
                            (_loop94689512_
                             _lp-tl94719529_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd94709526_ _body94729519_)))))
                        (let ((_body94739532_ (reverse _body94729519_)))
                          ((lambda (_L9536_ _L9538_)
                             (let ((__tmp27132 (gx#datum->syntax '#f '~let))
                                   (__tmp27127
                                    (let ((__tmp27131
                                           (gx#datum->syntax '#f 'let*-values))
                                          (__tmp27128
                                           (let ((__tmp27129
                                                  (let ((__tmp27130
                                                         (lambda (_g95559558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g95569561_)
                   (let ()
                     (declare (not safe))
                     (cons _g95559558_ _g95569561_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp27130
                                                            '()
                                                            _L9536_))))
                                             (declare (not safe))
                                             (cons _L9538_ __tmp27129))))
                                      (declare (not safe))
                                      (cons __tmp27131 __tmp27128))))
                               (declare (not safe))
                               (cons __tmp27132 __tmp27127)))
                           _body94739532_
                           _hd94639500_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop94689512_
                                                   _target94659506_
                                                   '()))
                                                (_g94559479_ _g94569483_)))))
                                      (_g94559479_ _g94569483_))))
                              (_g94559479_ _g94569483_))))
                      (_g94559479_ _g94569483_)))))
          (_g94549564_ _$stx9451_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_$stx9569_)
        (let* ((_g95739597_
                (lambda (_g95749593_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g95749593_)))
               (_g95729682_
                (lambda (_g95749601_)
                  (if (gx#stx-pair? _g95749601_)
                      (let ((_e95799604_ (gx#syntax-e _g95749601_)))
                        (let ((_hd95789608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e95799604_)))
                              (_tl95779611_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e95799604_))))
                          (if (gx#stx-pair? _tl95779611_)
                              (let ((_e95829614_ (gx#syntax-e _tl95779611_)))
                                (let ((_hd95819618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e95829614_)))
                                      (_tl95809621_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e95829614_))))
                                  (if (gx#stx-pair/null? _tl95809621_)
                                      (let ((_g27133_
                                             (gx#syntax-split-splice
                                              _tl95809621_
                                              '0)))
                                        (begin
                                          (let ((_g27134_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g27133_)
                                                       (##vector-length
                                                        _g27133_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g27134_ 2)))
                                                (error "Context expects 2 values"
                                                       _g27134_)))
                                          (let ((_target95839624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27133_ 0)))
                                                (_tl95859627_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27133_ 1))))
                                            (if (gx#stx-null? _tl95859627_)
                                                (letrec ((_loop95869630_
                                                          (lambda (_hd95849634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body95909637_)
                    (if (gx#stx-pair? _hd95849634_)
                        (let ((_e95879640_ (gx#syntax-e _hd95849634_)))
                          (let ((_lp-hd95889644_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e95879640_)))
                                (_lp-tl95899647_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e95879640_))))
                            (_loop95869630_
                             _lp-tl95899647_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd95889644_ _body95909637_)))))
                        (let ((_body95919650_ (reverse _body95909637_)))
                          ((lambda (_L9654_ _L9656_)
                             (let ((__tmp27140 (gx#datum->syntax '#f '~let))
                                   (__tmp27135
                                    (let ((__tmp27139
                                           (gx#datum->syntax
                                            '#f
                                            'letrec-values))
                                          (__tmp27136
                                           (let ((__tmp27137
                                                  (let ((__tmp27138
                                                         (lambda (_g96739676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g96749679_)
                   (let ()
                     (declare (not safe))
                     (cons _g96739676_ _g96749679_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp27138
                                                            '()
                                                            _L9654_))))
                                             (declare (not safe))
                                             (cons _L9656_ __tmp27137))))
                                      (declare (not safe))
                                      (cons __tmp27139 __tmp27136))))
                               (declare (not safe))
                               (cons __tmp27140 __tmp27135)))
                           _body95919650_
                           _hd95819618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop95869630_
                                                   _target95839624_
                                                   '()))
                                                (_g95739597_ _g95749601_)))))
                                      (_g95739597_ _g95749601_))))
                              (_g95739597_ _g95749601_))))
                      (_g95739597_ _g95749601_)))))
          (_g95729682_ _$stx9569_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_$stx9687_)
        (let* ((_g96919715_
                (lambda (_g96929711_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g96929711_)))
               (_g96909800_
                (lambda (_g96929719_)
                  (if (gx#stx-pair? _g96929719_)
                      (let ((_e96979722_ (gx#syntax-e _g96929719_)))
                        (let ((_hd96969726_
                               (let ()
                                 (declare (not safe))
                                 (##car _e96979722_)))
                              (_tl96959729_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e96979722_))))
                          (if (gx#stx-pair? _tl96959729_)
                              (let ((_e97009732_ (gx#syntax-e _tl96959729_)))
                                (let ((_hd96999736_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e97009732_)))
                                      (_tl96989739_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e97009732_))))
                                  (if (gx#stx-pair/null? _tl96989739_)
                                      (let ((_g27141_
                                             (gx#syntax-split-splice
                                              _tl96989739_
                                              '0)))
                                        (begin
                                          (let ((_g27142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g27141_)
                                                       (##vector-length
                                                        _g27141_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g27142_ 2)))
                                                (error "Context expects 2 values"
                                                       _g27142_)))
                                          (let ((_target97019742_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27141_ 0)))
                                                (_tl97039745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27141_ 1))))
                                            (if (gx#stx-null? _tl97039745_)
                                                (letrec ((_loop97049748_
                                                          (lambda (_hd97029752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body97089755_)
                    (if (gx#stx-pair? _hd97029752_)
                        (let ((_e97059758_ (gx#syntax-e _hd97029752_)))
                          (let ((_lp-hd97069762_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e97059758_)))
                                (_lp-tl97079765_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e97059758_))))
                            (_loop97049748_
                             _lp-tl97079765_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd97069762_ _body97089755_)))))
                        (let ((_body97099768_ (reverse _body97089755_)))
                          ((lambda (_L9772_ _L9774_)
                             (let ((__tmp27148 (gx#datum->syntax '#f '~let))
                                   (__tmp27143
                                    (let ((__tmp27147
                                           (gx#datum->syntax
                                            '#f
                                            'letrec*-values))
                                          (__tmp27144
                                           (let ((__tmp27145
                                                  (let ((__tmp27146
                                                         (lambda (_g97919794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g97929797_)
                   (let ()
                     (declare (not safe))
                     (cons _g97919794_ _g97929797_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp27146
                                                            '()
                                                            _L9772_))))
                                             (declare (not safe))
                                             (cons _L9774_ __tmp27145))))
                                      (declare (not safe))
                                      (cons __tmp27147 __tmp27144))))
                               (declare (not safe))
                               (cons __tmp27148 __tmp27143)))
                           _body97099768_
                           _hd96999736_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop97049748_
                                                   _target97019742_
                                                   '()))
                                                (_g96919715_ _g96929719_)))))
                                      (_g96919715_ _g96929719_))))
                              (_g96919715_ _g96929719_))))
                      (_g96919715_ _g96929719_)))))
          (_g96909800_ _$stx9687_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_stx9805_)
        (letrec ((_let-head?9808_
                  (lambda (_x10288_)
                    (let* ((___stx2494324944_ _x10288_)
                           (_g1029210303_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2494324944_))))
                      (let ((___kont2494624947_
                             (lambda (_L10331_)
                               (gx#stx-andmap gx#identifier? _L10331_)))
                            (___kont2494824949_
                             (lambda () (gx#identifier? _x10288_))))
                        (if (gx#stx-pair? ___stx2494324944_)
                            (let ((_e1029710321_
                                   (gx#syntax-e ___stx2494324944_)))
                              (let ((_tl1029510328_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1029710321_)))
                                    (_hd1029610325_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1029710321_))))
                                (if (gx#identifier? _hd1029610325_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g27149_|
                                         _hd1029610325_)
                                        (___kont2494624947_ _tl1029510328_)
                                        (___kont2494824949_))
                                    (___kont2494824949_))))
                            (___kont2494824949_))))))
                 (_let-head9810_
                  (lambda (_x10228_)
                    (let* ((___stx2496324964_ _x10228_)
                           (_g1023210243_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2496324964_))))
                      (let ((___kont2496624967_ (lambda (_L10271_) _L10271_))
                            (___kont2496824969_ (lambda () (list _x10228_))))
                        (if (gx#stx-pair? ___stx2496324964_)
                            (let ((_e1023710261_
                                   (gx#syntax-e ___stx2496324964_)))
                              (let ((_tl1023510268_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1023710261_)))
                                    (_hd1023610265_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1023710261_))))
                                (if (gx#identifier? _hd1023610265_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g27150_|
                                         _hd1023610265_)
                                        (___kont2496624967_ _tl1023510268_)
                                        (___kont2496824969_))
                                    (___kont2496824969_))))
                            (___kont2496824969_)))))))
          (let* ((___stx2498324984_ _stx9805_)
                 (_g98139879_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2498324984_))))
            (let ((___kont2498624987_
                   (lambda (_L10197_ _L10199_ _L10200_ _L10201_ _L10202_)
                     (let ((__tmp27151
                            (let ((__tmp27152
                                   (let ((__tmp27153
                                          (let ((__tmp27154
                                                 (let ((__tmp27155
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L10199_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _L10200_
                                                         __tmp27155))))
                                            (declare (not safe))
                                            (cons __tmp27154 '()))))
                                     (declare (not safe))
                                     (cons __tmp27153 _L10197_))))
                              (declare (not safe))
                              (cons _L10201_ __tmp27152))))
                       (declare (not safe))
                       (cons _L10202_ __tmp27151))))
                  (___kont2498824989_
                   (lambda (_L10000_ _L10002_ _L10003_ _L10004_)
                     (let* ((_g1003910056_
                             (lambda (_g1004010052_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1004010052_)))
                            (_g1003810128_
                             (lambda (_g1004010060_)
                               (if (gx#stx-pair/null? _g1004010060_)
                                   (let ((_g27156_
                                          (gx#syntax-split-splice
                                           _g1004010060_
                                           '0)))
                                     (begin
                                       (let ((_g27157_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g27156_)
                                                    (##vector-length _g27156_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g27157_ 2)))
                                             (error "Context expects 2 values"
                                                    _g27157_)))
                                       (let ((_target1004210063_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g27156_ 0)))
                                             (_tl1004410066_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g27156_ 1))))
                                         (if (gx#stx-null? _tl1004410066_)
                                             (letrec ((_loop1004510069_
                                                       (lambda (_hd1004310073_
                                                                _hd-bind1004910076_)
                                                         (if (gx#stx-pair?
                                                              _hd1004310073_)
                                                             (let ((_e1004610079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1004310073_)))
                       (let ((_lp-hd1004710083_
                              (let ()
                                (declare (not safe))
                                (##car _e1004610079_)))
                             (_lp-tl1004810086_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1004610079_))))
                         (_loop1004510069_
                          _lp-tl1004810086_
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd1004710083_ _hd-bind1004910076_)))))
                     (let ((_hd-bind1005010089_ (reverse _hd-bind1004910076_)))
                       ((lambda (_L10093_)
                          (let ()
                            (let ((__tmp27158
                                   (let ((__tmp27161
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L10002_
                                             _L10093_)
                                            (let ((__tmp27162
                                                   (lambda (_g1011010114_
                                                            _g1011110117_
                                                            _g1011210119_)
                                                     (let ((__tmp27163
                                                            (let ((__tmp27164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _g1011010114_ '()))))
                      (declare (not safe))
                      (cons _g1011110117_ __tmp27164))))
               (declare (not safe))
               (cons __tmp27163 _g1011210119_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldr2 __tmp27162
                                                      '()
                                                      _L10002_
                                                      _L10093_))))
                                         (__tmp27159
                                          (let ((__tmp27160
                                                 (lambda (_g1010810122_
                                                          _g1010910125_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1010810122_
                                                           _g1010910125_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp27160 '() _L10000_))))
                                     (declare (not safe))
                                     (cons __tmp27161 __tmp27159))))
                              (declare (not safe))
                              (cons _L10004_ __tmp27158))))
                        _hd-bind1005010089_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1004510069_
                                                _target1004210063_
                                                '()))
                                             (_g1003910056_ _g1004010060_)))))
                                   (_g1003910056_ _g1004010060_)))))
                       (_g1003810128_
                        (gx#stx-map
                         _let-head9810_
                         (let ((__tmp27165
                                (lambda (_g1013110134_ _g1013210137_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1013110134_ _g1013210137_)))))
                           (declare (not safe))
                           (foldr1 __tmp27165 '() _L10003_))))))))
              (let* ((___match2505225053_
                      (lambda (_e98419886_
                               _hd98409890_
                               _tl98399893_
                               _e98449896_
                               _hd98439900_
                               _tl98429903_
                               _e98479906_
                               _hd98469910_
                               _tl98459913_
                               ___splice2499024991_
                               _target98489916_
                               _tl98509919_)
                        (letrec ((_loop98519922_
                                  (lambda (_hd98499926_
                                           _e98559929_
                                           _hd98569931_)
                                    (if (gx#stx-pair? _hd98499926_)
                                        (let ((_e98529934_
                                               (gx#syntax-e _hd98499926_)))
                                          (let ((_lp-tl98549941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e98529934_)))
                                                (_lp-hd98539938_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e98529934_))))
                                            (if (gx#stx-pair? _lp-hd98539938_)
                                                (let ((_e98619944_
                                                       (gx#syntax-e
                                                        _lp-hd98539938_)))
                                                  (let ((_tl98599951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e98619944_)))
                                                        (_hd98609948_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e98619944_))))
                                                    (if (gx#stx-pair?
                                                         _tl98599951_)
                                                        (let ((_e98649954_
                                                               (gx#syntax-e
                                                                _tl98599951_)))
                                                          (let ((_tl98629961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e98649954_)))
                        (_hd98639958_
                         (let () (declare (not safe)) (##car _e98649954_))))
                    (if (gx#stx-null? _tl98629961_)
                        (_loop98519922_
                         _lp-tl98549941_
                         (let ()
                           (declare (not safe))
                           (cons _hd98639958_ _e98559929_))
                         (let ()
                           (declare (not safe))
                           (cons _hd98609948_ _hd98569931_)))
                        (let () (declare (not safe)) (_g98139879_)))))
                (let () (declare (not safe)) (_g98139879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g98139879_)))))
                                        (let ((_hd98589967_
                                               (reverse _hd98569931_))
                                              (_e98579964_
                                               (reverse _e98559929_)))
                                          (if (gx#stx-pair/null? _tl98459913_)
                                              (let ((___splice2499224993_
                                                     (gx#syntax-split-splice
                                                      _tl98459913_
                                                      '0)))
                                                (let ((_tl98679973_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2499224993_
                                                          '1)))
                                                      (_target98659970_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2499224993_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl98679973_)
                                                      (letrec ((_loop98689976_
                                                                (lambda (_hd98669980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body98729983_)
                          (if (gx#stx-pair? _hd98669980_)
                              (let ((_e98699986_ (gx#syntax-e _hd98669980_)))
                                (let ((_lp-tl98719993_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e98699986_)))
                                      (_lp-hd98709990_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e98699986_))))
                                  (_loop98689976_
                                   _lp-tl98719993_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd98709990_ _body98729983_)))))
                              (let ((_body98739996_ (reverse _body98729983_)))
                                (let ((_L10000_ _body98739996_)
                                      (_L10002_ _e98579964_)
                                      (_L10003_ _hd98589967_)
                                      (_L10004_ _hd98439900_))
                                  (if (gx#stx-andmap
                                       _let-head?9808_
                                       (let ((__tmp27166
                                              (lambda (_g1003010033_
                                                       _g1003110036_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1003010033_
                                                        _g1003110036_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp27166 '() _L10003_)))
                                      (___kont2498824989_
                                       _L10000_
                                       _L10002_
                                       _L10003_
                                       _L10004_)
                                      (let ()
                                        (declare (not safe))
                                        (_g98139879_)))))))))
                (_loop98689976_ _target98659970_ '()))
              (let () (declare (not safe)) (_g98139879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g98139879_))))))))
                          (_loop98519922_ _target98489916_ '() '()))))
                     (___match2502625027_
                      (lambda (_e982210147_
                               _hd982110151_
                               _tl982010154_
                               _e982510157_
                               _hd982410161_
                               _tl982310164_
                               _e982810167_
                               _hd982710171_
                               _tl982610174_
                               _e983110177_
                               _hd983010181_
                               _tl982910184_
                               _e983410187_
                               _hd983310191_
                               _tl983210194_)
                        (let ((_L10197_ _tl982610174_)
                              (_L10199_ _hd983310191_)
                              (_L10200_ _hd983010181_)
                              (_L10201_ _hd982410161_)
                              (_L10202_ _hd982110151_))
                          (if (_let-head?9808_ _L10200_)
                              (___kont2498624987_
                               _L10197_
                               _L10199_
                               _L10200_
                               _L10201_
                               _L10202_)
                              (if (gx#stx-pair/null? _hd982710171_)
                                  (let ((___splice2499024991_
                                         (gx#syntax-split-splice
                                          _hd982710171_
                                          '0)))
                                    (let ((_tl98509919_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2499024991_
                                              '1)))
                                          (_target98489916_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2499024991_
                                              '0))))
                                      (if (gx#stx-null? _tl98509919_)
                                          (___match2505225053_
                                           _e982210147_
                                           _hd982110151_
                                           _tl982010154_
                                           _e982510157_
                                           _hd982410161_
                                           _tl982310164_
                                           _e982810167_
                                           _hd982710171_
                                           _tl982610174_
                                           ___splice2499024991_
                                           _target98489916_
                                           _tl98509919_)
                                          (let ()
                                            (declare (not safe))
                                            (_g98139879_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g98139879_))))))))
                (if (gx#stx-pair? ___stx2498324984_)
                    (let ((_e982210147_ (gx#syntax-e ___stx2498324984_)))
                      (let ((_tl982010154_
                             (let ()
                               (declare (not safe))
                               (##cdr _e982210147_)))
                            (_hd982110151_
                             (let ()
                               (declare (not safe))
                               (##car _e982210147_))))
                        (if (gx#stx-pair? _tl982010154_)
                            (let ((_e982510157_ (gx#syntax-e _tl982010154_)))
                              (let ((_tl982310164_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e982510157_)))
                                    (_hd982410161_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e982510157_))))
                                (if (gx#stx-pair? _tl982310164_)
                                    (let ((_e982810167_
                                           (gx#syntax-e _tl982310164_)))
                                      (let ((_tl982610174_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e982810167_)))
                                            (_hd982710171_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e982810167_))))
                                        (if (gx#stx-pair? _hd982710171_)
                                            (let ((_e983110177_
                                                   (gx#syntax-e
                                                    _hd982710171_)))
                                              (let ((_tl982910184_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e983110177_)))
                                                    (_hd983010181_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e983110177_))))
                                                (if (gx#stx-pair?
                                                     _tl982910184_)
                                                    (let ((_e983410187_
                                                           (gx#syntax-e
                                                            _tl982910184_)))
                                                      (let ((_tl983210194_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e983410187_)))
                    (_hd983310191_
                     (let () (declare (not safe)) (##car _e983410187_))))
                (if (gx#stx-null? _tl983210194_)
                    (___match2502625027_
                     _e982210147_
                     _hd982110151_
                     _tl982010154_
                     _e982510157_
                     _hd982410161_
                     _tl982310164_
                     _e982810167_
                     _hd982710171_
                     _tl982610174_
                     _e983110177_
                     _hd983010181_
                     _tl982910184_
                     _e983410187_
                     _hd983310191_
                     _tl983210194_)
                    (if (gx#stx-pair/null? _hd982710171_)
                        (let ((___splice2499024991_
                               (gx#syntax-split-splice _hd982710171_ '0)))
                          (let ((_tl98509919_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2499024991_ '1)))
                                (_target98489916_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2499024991_ '0))))
                            (if (gx#stx-null? _tl98509919_)
                                (___match2505225053_
                                 _e982210147_
                                 _hd982110151_
                                 _tl982010154_
                                 _e982510157_
                                 _hd982410161_
                                 _tl982310164_
                                 _e982810167_
                                 _hd982710171_
                                 _tl982610174_
                                 ___splice2499024991_
                                 _target98489916_
                                 _tl98509919_)
                                (let () (declare (not safe)) (_g98139879_)))))
                        (let () (declare (not safe)) (_g98139879_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd982710171_)
                                                        (let ((___splice2499024991_
                                                               (gx#syntax-split-splice
                                                                _hd982710171_
                                                                '0)))
                                                          (let ((_tl98509919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2499024991_ '1)))
                        (_target98489916_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2499024991_ '0))))
                    (if (gx#stx-null? _tl98509919_)
                        (___match2505225053_
                         _e982210147_
                         _hd982110151_
                         _tl982010154_
                         _e982510157_
                         _hd982410161_
                         _tl982310164_
                         _e982810167_
                         _hd982710171_
                         _tl982610174_
                         ___splice2499024991_
                         _target98489916_
                         _tl98509919_)
                        (let () (declare (not safe)) (_g98139879_)))))
                (let () (declare (not safe)) (_g98139879_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd982710171_)
                                                (let ((___splice2499024991_
                                                       (gx#syntax-split-splice
                                                        _hd982710171_
                                                        '0)))
                                                  (let ((_tl98509919_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2499024991_
                                                            '1)))
                                                        (_target98489916_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2499024991_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl98509919_)
                                                        (___match2505225053_
                                                         _e982210147_
                                                         _hd982110151_
                                                         _tl982010154_
                                                         _e982510157_
                                                         _hd982410161_
                                                         _tl982310164_
                                                         _e982810167_
                                                         _hd982710171_
                                                         _tl982610174_
                                                         ___splice2499024991_
                                                         _target98489916_
                                                         _tl98509919_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g98139879_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g98139879_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g98139879_)))))
                            (let () (declare (not safe)) (_g98139879_)))))
                    (let () (declare (not safe)) (_g98139879_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_$stx10351_)
        (let* ((___stx2505525056_ _$stx10351_)
               (_g1035710383_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2505525056_))))
          (let ((___kont2505825059_ (lambda () '#t))
                (___kont2506025061_ (lambda (_L10455_) _L10455_))
                (___kont2506225063_
                 (lambda (_L10410_ _L10412_ _L10413_)
                   (let ((__tmp27171 (gx#datum->syntax '#f 'if))
                         (__tmp27167
                          (let ((__tmp27168
                                 (let ((__tmp27170
                                        (let ()
                                          (declare (not safe))
                                          (cons _L10413_ _L10410_)))
                                       (__tmp27169
                                        (let ()
                                          (declare (not safe))
                                          (cons '#f '()))))
                                   (declare (not safe))
                                   (cons __tmp27170 __tmp27169))))
                            (declare (not safe))
                            (cons _L10412_ __tmp27168))))
                     (declare (not safe))
                     (cons __tmp27171 __tmp27167)))))
            (if (gx#stx-pair? ___stx2505525056_)
                (let ((_e1036110475_ (gx#syntax-e ___stx2505525056_)))
                  (let ((_tl1035910482_
                         (let () (declare (not safe)) (##cdr _e1036110475_)))
                        (_hd1036010479_
                         (let () (declare (not safe)) (##car _e1036110475_))))
                    (if (gx#stx-null? _tl1035910482_)
                        (___kont2505825059_)
                        (if (gx#stx-pair? _tl1035910482_)
                            (let ((_e1036810445_ (gx#syntax-e _tl1035910482_)))
                              (let ((_tl1036610452_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1036810445_)))
                                    (_hd1036710449_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1036810445_))))
                                (if (gx#stx-null? _tl1036610452_)
                                    (___kont2506025061_ _hd1036710449_)
                                    (___kont2506225063_
                                     _tl1036610452_
                                     _hd1036710449_
                                     _hd1036010479_))))
                            (let () (declare (not safe)) (_g1035710383_))))))
                (let () (declare (not safe)) (_g1035710383_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_$stx10493_)
        (let* ((___stx2510125102_ _$stx10493_)
               (_g1049910525_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2510125102_))))
          (let ((___kont2510425105_ (lambda () '#f))
                (___kont2510625107_ (lambda (_L10597_) _L10597_))
                (___kont2510825109_
                 (lambda (_L10552_ _L10554_ _L10555_)
                   (let ((__tmp27185 (gx#datum->syntax '#f 'let))
                         (__tmp27172
                          (let ((__tmp27182
                                 (let ((__tmp27184 (gx#datum->syntax '#f '$e))
                                       (__tmp27183
                                        (let ()
                                          (declare (not safe))
                                          (cons _L10554_ '()))))
                                   (declare (not safe))
                                   (cons __tmp27184 __tmp27183)))
                                (__tmp27173
                                 (let ((__tmp27174
                                        (let ((__tmp27181
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp27175
                                               (let ((__tmp27180
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp27176
                                                      (let ((__tmp27179
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp27177
                                                             (let ((__tmp27178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L10555_ _L10552_))))
                       (declare (not safe))
                       (cons __tmp27178 '()))))
                (declare (not safe))
                (cons __tmp27179 __tmp27177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27180
                                                       __tmp27176))))
                                          (declare (not safe))
                                          (cons __tmp27181 __tmp27175))))
                                   (declare (not safe))
                                   (cons __tmp27174 '()))))
                            (declare (not safe))
                            (cons __tmp27182 __tmp27173))))
                     (declare (not safe))
                     (cons __tmp27185 __tmp27172)))))
            (if (gx#stx-pair? ___stx2510125102_)
                (let ((_e1050310617_ (gx#syntax-e ___stx2510125102_)))
                  (let ((_tl1050110624_
                         (let () (declare (not safe)) (##cdr _e1050310617_)))
                        (_hd1050210621_
                         (let () (declare (not safe)) (##car _e1050310617_))))
                    (if (gx#stx-null? _tl1050110624_)
                        (___kont2510425105_)
                        (if (gx#stx-pair? _tl1050110624_)
                            (let ((_e1051010587_ (gx#syntax-e _tl1050110624_)))
                              (let ((_tl1050810594_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1051010587_)))
                                    (_hd1050910591_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1051010587_))))
                                (if (gx#stx-null? _tl1050810594_)
                                    (___kont2510625107_ _hd1050910591_)
                                    (___kont2510825109_
                                     _tl1050810594_
                                     _hd1050910591_
                                     _hd1050210621_))))
                            (let () (declare (not safe)) (_g1049910525_))))))
                (let () (declare (not safe)) (_g1049910525_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_$stx10635_)
        (let* ((___stx2514725148_ _$stx10635_)
               (_g1064410735_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2514725148_))))
          (let ((___kont2515025151_ (lambda () '#!void))
                (___kont2515225153_
                 (lambda (_L11082_)
                   (let ((__tmp27191 (gx#datum->syntax '#f '%#expression))
                         (__tmp27186
                          (let ((__tmp27187
                                 (let ((__tmp27190
                                        (gx#datum->syntax '#f 'begin))
                                       (__tmp27188
                                        (let ((__tmp27189
                                               (lambda (_g1110111104_
                                                        _g1110211107_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1110111104_
                                                         _g1110211107_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp27189 '() _L11082_))))
                                   (declare (not safe))
                                   (cons __tmp27190 __tmp27188))))
                            (declare (not safe))
                            (cons __tmp27187 '()))))
                     (declare (not safe))
                     (cons __tmp27191 __tmp27186))))
                (___kont2515625157_
                 (lambda ()
                   (let ((__tmp27193 (gx#datum->syntax '#f 'syntax-error))
                         (__tmp27192
                          (let ()
                            (declare (not safe))
                            (cons '"bad syntax; misplaced else" '()))))
                     (declare (not safe))
                     (cons __tmp27193 __tmp27192))))
                (___kont2515825159_
                 (lambda (_L10955_ _L10957_ _L10958_)
                   (let ((__tmp27207 (gx#datum->syntax '#f 'let))
                         (__tmp27194
                          (let ((__tmp27204
                                 (let ((__tmp27206 (gx#datum->syntax '#f '$e))
                                       (__tmp27205
                                        (let ()
                                          (declare (not safe))
                                          (cons _L10957_ '()))))
                                   (declare (not safe))
                                   (cons __tmp27206 __tmp27205)))
                                (__tmp27195
                                 (let ((__tmp27196
                                        (let ((__tmp27203
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp27197
                                               (let ((__tmp27202
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp27198
                                                      (let ((__tmp27201
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp27199
                                                             (let ((__tmp27200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L10958_ _L10955_))))
                       (declare (not safe))
                       (cons __tmp27200 '()))))
                (declare (not safe))
                (cons __tmp27201 __tmp27199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27202
                                                       __tmp27198))))
                                          (declare (not safe))
                                          (cons __tmp27203 __tmp27197))))
                                   (declare (not safe))
                                   (cons __tmp27196 '()))))
                            (declare (not safe))
                            (cons __tmp27204 __tmp27195))))
                     (declare (not safe))
                     (cons __tmp27207 __tmp27194))))
                (___kont2516025161_
                 (lambda (_L10893_ _L10895_ _L10896_ _L10897_)
                   (let ((__tmp27223 (gx#datum->syntax '#f 'let))
                         (__tmp27208
                          (let ((__tmp27220
                                 (let ((__tmp27222 (gx#datum->syntax '#f '$e))
                                       (__tmp27221
                                        (let ()
                                          (declare (not safe))
                                          (cons _L10896_ '()))))
                                   (declare (not safe))
                                   (cons __tmp27222 __tmp27221)))
                                (__tmp27209
                                 (let ((__tmp27210
                                        (let ((__tmp27219
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp27211
                                               (let ((__tmp27218
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp27212
                                                      (let ((__tmp27215
                                                             (let ((__tmp27216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp27217 (gx#datum->syntax '#f '$e)))
                              (declare (not safe))
                              (cons __tmp27217 '()))))
                       (declare (not safe))
                       (cons _L10895_ __tmp27216)))
                    (__tmp27213
                     (let ((__tmp27214
                            (let ()
                              (declare (not safe))
                              (cons _L10897_ _L10893_))))
                       (declare (not safe))
                       (cons __tmp27214 '()))))
                (declare (not safe))
                (cons __tmp27215 __tmp27213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27218
                                                       __tmp27212))))
                                          (declare (not safe))
                                          (cons __tmp27219 __tmp27211))))
                                   (declare (not safe))
                                   (cons __tmp27210 '()))))
                            (declare (not safe))
                            (cons __tmp27220 __tmp27209))))
                     (declare (not safe))
                     (cons __tmp27223 __tmp27208))))
                (___kont2516225163_
                 (lambda (_L10802_ _L10804_ _L10805_ _L10806_)
                   (let ((__tmp27232 (gx#datum->syntax '#f 'if))
                         (__tmp27224
                          (let ((__tmp27225
                                 (let ((__tmp27228
                                        (let ((__tmp27231
                                               (gx#datum->syntax '#f 'begin))
                                              (__tmp27229
                                               (let ((__tmp27230
                                                      (lambda (_g1082710830_
                                                               _g1082810833_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g1082710830_
                                                                _g1082810833_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp27230
                                                         '()
                                                         _L10804_))))
                                          (declare (not safe))
                                          (cons __tmp27231 __tmp27229)))
                                       (__tmp27226
                                        (let ((__tmp27227
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L10806_ _L10802_))))
                                          (declare (not safe))
                                          (cons __tmp27227 '()))))
                                   (declare (not safe))
                                   (cons __tmp27228 __tmp27226))))
                            (declare (not safe))
                            (cons _L10805_ __tmp27225))))
                     (declare (not safe))
                     (cons __tmp27232 __tmp27224)))))
            (let* ((___match2530825309_
                    (lambda (_e1071410742_
                             _hd1071310746_
                             _tl1071210749_
                             _e1071710752_
                             _hd1071610756_
                             _tl1071510759_
                             _e1072010762_
                             _hd1071910766_
                             _tl1071810769_
                             ___splice2516425165_
                             _target1072110772_
                             _tl1072310775_)
                      (letrec ((_loop1072410778_
                                (lambda (_hd1072210782_ _body1072810785_)
                                  (if (gx#stx-pair? _hd1072210782_)
                                      (let ((_e1072510788_
                                             (gx#syntax-e _hd1072210782_)))
                                        (let ((_lp-tl1072710795_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1072510788_)))
                                              (_lp-hd1072610792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1072510788_))))
                                          (_loop1072410778_
                                           _lp-tl1072710795_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1072610792_
                                                   _body1072810785_)))))
                                      (let ((_body1072910798_
                                             (reverse _body1072810785_)))
                                        (___kont2516225163_
                                         _tl1071510759_
                                         _body1072910798_
                                         _hd1071910766_
                                         _hd1071310746_))))))
                        (_loop1072410778_ _target1072110772_ '()))))
                   (___match2520425205_
                    (lambda (_e1065211022_
                             _hd1065111026_
                             _tl1065011029_
                             _e1065511032_
                             _hd1065411036_
                             _tl1065311039_
                             _e1065811042_
                             _hd1065711046_
                             _tl1065611049_
                             ___splice2515425155_
                             _target1065911052_
                             _tl1066111055_)
                      (letrec ((_loop1066211058_
                                (lambda (_hd1066011062_ _body1066611065_)
                                  (if (gx#stx-pair? _hd1066011062_)
                                      (let ((_e1066311068_
                                             (gx#syntax-e _hd1066011062_)))
                                        (let ((_lp-tl1066511075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1066311068_)))
                                              (_lp-hd1066411072_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1066311068_))))
                                          (_loop1066211058_
                                           _lp-tl1066511075_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1066411072_
                                                   _body1066611065_)))))
                                      (let ((_body1066711078_
                                             (reverse _body1066611065_)))
                                        (if (gx#stx-null? _tl1065311039_)
                                            (___kont2515225153_
                                             _body1066711078_)
                                            (___kont2515625157_)))))))
                        (_loop1066211058_ _target1065911052_ '())))))
              (if (gx#stx-pair? ___stx2514725148_)
                  (let ((_e1064811117_ (gx#syntax-e ___stx2514725148_)))
                    (let ((_tl1064611124_
                           (let () (declare (not safe)) (##cdr _e1064811117_)))
                          (_hd1064711121_
                           (let ()
                             (declare (not safe))
                             (##car _e1064811117_))))
                      (if (gx#stx-null? _tl1064611124_)
                          (___kont2515025151_)
                          (if (gx#stx-pair? _tl1064611124_)
                              (let ((_e1065511032_
                                     (gx#syntax-e _tl1064611124_)))
                                (let ((_tl1065311039_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1065511032_)))
                                      (_hd1065411036_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1065511032_))))
                                  (if (gx#stx-pair? _hd1065411036_)
                                      (let ((_e1065811042_
                                             (gx#syntax-e _hd1065411036_)))
                                        (let ((_tl1065611049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1065811042_)))
                                              (_hd1065711046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1065811042_))))
                                          (if (gx#identifier? _hd1065711046_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g27234_|
                                                   _hd1065711046_)
                                                  (if (gx#stx-pair/null?
                                                       _tl1065611049_)
                                                      (let ((___splice2515425155_
                                                             (gx#syntax-split-splice
                                                              _tl1065611049_
                                                              '0)))
                                                        (let ((_tl1066111055_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2515425155_ '1)))
                      (_target1065911052_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2515425155_ '0))))
                  (if (gx#stx-null? _tl1066111055_)
                      (___match2520425205_
                       _e1064811117_
                       _hd1064711121_
                       _tl1064611124_
                       _e1065511032_
                       _hd1065411036_
                       _tl1065311039_
                       _e1065811042_
                       _hd1065711046_
                       _tl1065611049_
                       ___splice2515425155_
                       _target1065911052_
                       _tl1066111055_)
                      (___kont2515625157_))))
              (___kont2515625157_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl1065611049_)
                                                      (___kont2515825159_
                                                       _tl1065311039_
                                                       _hd1065711046_
                                                       _hd1064711121_)
                                                      (if (gx#stx-pair?
                                                           _tl1065611049_)
                                                          (let ((_e1070410873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1065611049_)))
                    (let ((_tl1070210880_
                           (let () (declare (not safe)) (##cdr _e1070410873_)))
                          (_hd1070310877_
                           (let ()
                             (declare (not safe))
                             (##car _e1070410873_))))
                      (if (gx#identifier? _hd1070310877_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g27233_|
                               _hd1070310877_)
                              (if (gx#stx-pair? _tl1070210880_)
                                  (let ((_e1070710883_
                                         (gx#syntax-e _tl1070210880_)))
                                    (let ((_tl1070510890_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1070710883_)))
                                          (_hd1070610887_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1070710883_))))
                                      (if (gx#stx-null? _tl1070510890_)
                                          (___kont2516025161_
                                           _tl1065311039_
                                           _hd1070610887_
                                           _hd1065711046_
                                           _hd1064711121_)
                                          (if (gx#stx-pair/null?
                                               _tl1065611049_)
                                              (let ((___splice2516425165_
                                                     (gx#syntax-split-splice
                                                      _tl1065611049_
                                                      '0)))
                                                (let ((_tl1072310775_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2516425165_
                                                          '1)))
                                                      (_target1072110772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2516425165_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1072310775_)
                                                      (___match2530825309_
                                                       _e1064811117_
                                                       _hd1064711121_
                                                       _tl1064611124_
                                                       _e1065511032_
                                                       _hd1065411036_
                                                       _tl1065311039_
                                                       _e1065811042_
                                                       _hd1065711046_
                                                       _tl1065611049_
                                                       ___splice2516425165_
                                                       _target1072110772_
                                                       _tl1072310775_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1064410735_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1064410735_))))))
                                  (if (gx#stx-pair/null? _tl1065611049_)
                                      (let ((___splice2516425165_
                                             (gx#syntax-split-splice
                                              _tl1065611049_
                                              '0)))
                                        (let ((_tl1072310775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2516425165_
                                                  '1)))
                                              (_target1072110772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2516425165_
                                                  '0))))
                                          (if (gx#stx-null? _tl1072310775_)
                                              (___match2530825309_
                                               _e1064811117_
                                               _hd1064711121_
                                               _tl1064611124_
                                               _e1065511032_
                                               _hd1065411036_
                                               _tl1065311039_
                                               _e1065811042_
                                               _hd1065711046_
                                               _tl1065611049_
                                               ___splice2516425165_
                                               _target1072110772_
                                               _tl1072310775_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1064410735_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1064410735_))))
                              (if (gx#stx-pair/null? _tl1065611049_)
                                  (let ((___splice2516425165_
                                         (gx#syntax-split-splice
                                          _tl1065611049_
                                          '0)))
                                    (let ((_tl1072310775_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2516425165_
                                              '1)))
                                          (_target1072110772_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2516425165_
                                              '0))))
                                      (if (gx#stx-null? _tl1072310775_)
                                          (___match2530825309_
                                           _e1064811117_
                                           _hd1064711121_
                                           _tl1064611124_
                                           _e1065511032_
                                           _hd1065411036_
                                           _tl1065311039_
                                           _e1065811042_
                                           _hd1065711046_
                                           _tl1065611049_
                                           ___splice2516425165_
                                           _target1072110772_
                                           _tl1072310775_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1064410735_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1064410735_))))
                          (if (gx#stx-pair/null? _tl1065611049_)
                              (let ((___splice2516425165_
                                     (gx#syntax-split-splice
                                      _tl1065611049_
                                      '0)))
                                (let ((_tl1072310775_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2516425165_
                                          '1)))
                                      (_target1072110772_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2516425165_
                                          '0))))
                                  (if (gx#stx-null? _tl1072310775_)
                                      (___match2530825309_
                                       _e1064811117_
                                       _hd1064711121_
                                       _tl1064611124_
                                       _e1065511032_
                                       _hd1065411036_
                                       _tl1065311039_
                                       _e1065811042_
                                       _hd1065711046_
                                       _tl1065611049_
                                       ___splice2516425165_
                                       _target1072110772_
                                       _tl1072310775_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1064410735_)))))
                              (let () (declare (not safe)) (_g1064410735_))))))
                  (if (gx#stx-pair/null? _tl1065611049_)
                      (let ((___splice2516425165_
                             (gx#syntax-split-splice _tl1065611049_ '0)))
                        (let ((_tl1072310775_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2516425165_ '1)))
                              (_target1072110772_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2516425165_ '0))))
                          (if (gx#stx-null? _tl1072310775_)
                              (___match2530825309_
                               _e1064811117_
                               _hd1064711121_
                               _tl1064611124_
                               _e1065511032_
                               _hd1065411036_
                               _tl1065311039_
                               _e1065811042_
                               _hd1065711046_
                               _tl1065611049_
                               ___splice2516425165_
                               _target1072110772_
                               _tl1072310775_)
                              (let () (declare (not safe)) (_g1064410735_)))))
                      (let () (declare (not safe)) (_g1064410735_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl1065611049_)
                                                  (___kont2515825159_
                                                   _tl1065311039_
                                                   _hd1065711046_
                                                   _hd1064711121_)
                                                  (if (gx#stx-pair?
                                                       _tl1065611049_)
                                                      (let ((_e1070410873_
                                                             (gx#syntax-e
                                                              _tl1065611049_)))
                                                        (let ((_tl1070210880_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1070410873_)))
                      (_hd1070310877_
                       (let () (declare (not safe)) (##car _e1070410873_))))
                  (if (gx#identifier? _hd1070310877_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g27233_|
                           _hd1070310877_)
                          (if (gx#stx-pair? _tl1070210880_)
                              (let ((_e1070710883_
                                     (gx#syntax-e _tl1070210880_)))
                                (let ((_tl1070510890_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1070710883_)))
                                      (_hd1070610887_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1070710883_))))
                                  (if (gx#stx-null? _tl1070510890_)
                                      (___kont2516025161_
                                       _tl1065311039_
                                       _hd1070610887_
                                       _hd1065711046_
                                       _hd1064711121_)
                                      (if (gx#stx-pair/null? _tl1065611049_)
                                          (let ((___splice2516425165_
                                                 (gx#syntax-split-splice
                                                  _tl1065611049_
                                                  '0)))
                                            (let ((_tl1072310775_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2516425165_
                                                      '1)))
                                                  (_target1072110772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2516425165_
                                                      '0))))
                                              (if (gx#stx-null? _tl1072310775_)
                                                  (___match2530825309_
                                                   _e1064811117_
                                                   _hd1064711121_
                                                   _tl1064611124_
                                                   _e1065511032_
                                                   _hd1065411036_
                                                   _tl1065311039_
                                                   _e1065811042_
                                                   _hd1065711046_
                                                   _tl1065611049_
                                                   ___splice2516425165_
                                                   _target1072110772_
                                                   _tl1072310775_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1064410735_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1064410735_))))))
                              (if (gx#stx-pair/null? _tl1065611049_)
                                  (let ((___splice2516425165_
                                         (gx#syntax-split-splice
                                          _tl1065611049_
                                          '0)))
                                    (let ((_tl1072310775_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2516425165_
                                              '1)))
                                          (_target1072110772_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2516425165_
                                              '0))))
                                      (if (gx#stx-null? _tl1072310775_)
                                          (___match2530825309_
                                           _e1064811117_
                                           _hd1064711121_
                                           _tl1064611124_
                                           _e1065511032_
                                           _hd1065411036_
                                           _tl1065311039_
                                           _e1065811042_
                                           _hd1065711046_
                                           _tl1065611049_
                                           ___splice2516425165_
                                           _target1072110772_
                                           _tl1072310775_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1064410735_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1064410735_))))
                          (if (gx#stx-pair/null? _tl1065611049_)
                              (let ((___splice2516425165_
                                     (gx#syntax-split-splice
                                      _tl1065611049_
                                      '0)))
                                (let ((_tl1072310775_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2516425165_
                                          '1)))
                                      (_target1072110772_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2516425165_
                                          '0))))
                                  (if (gx#stx-null? _tl1072310775_)
                                      (___match2530825309_
                                       _e1064811117_
                                       _hd1064711121_
                                       _tl1064611124_
                                       _e1065511032_
                                       _hd1065411036_
                                       _tl1065311039_
                                       _e1065811042_
                                       _hd1065711046_
                                       _tl1065611049_
                                       ___splice2516425165_
                                       _target1072110772_
                                       _tl1072310775_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1064410735_)))))
                              (let () (declare (not safe)) (_g1064410735_))))
                      (if (gx#stx-pair/null? _tl1065611049_)
                          (let ((___splice2516425165_
                                 (gx#syntax-split-splice _tl1065611049_ '0)))
                            (let ((_tl1072310775_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2516425165_ '1)))
                                  (_target1072110772_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2516425165_ '0))))
                              (if (gx#stx-null? _tl1072310775_)
                                  (___match2530825309_
                                   _e1064811117_
                                   _hd1064711121_
                                   _tl1064611124_
                                   _e1065511032_
                                   _hd1065411036_
                                   _tl1065311039_
                                   _e1065811042_
                                   _hd1065711046_
                                   _tl1065611049_
                                   ___splice2516425165_
                                   _target1072110772_
                                   _tl1072310775_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1064410735_)))))
                          (let () (declare (not safe)) (_g1064410735_))))))
              (if (gx#stx-pair/null? _tl1065611049_)
                  (let ((___splice2516425165_
                         (gx#syntax-split-splice _tl1065611049_ '0)))
                    (let ((_tl1072310775_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2516425165_ '1)))
                          (_target1072110772_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2516425165_ '0))))
                      (if (gx#stx-null? _tl1072310775_)
                          (___match2530825309_
                           _e1064811117_
                           _hd1064711121_
                           _tl1064611124_
                           _e1065511032_
                           _hd1065411036_
                           _tl1065311039_
                           _e1065811042_
                           _hd1065711046_
                           _tl1065611049_
                           ___splice2516425165_
                           _target1072110772_
                           _tl1072310775_)
                          (let () (declare (not safe)) (_g1064410735_)))))
                  (let () (declare (not safe)) (_g1064410735_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_g1064410735_)))))
                              (let () (declare (not safe)) (_g1064410735_))))))
                  (let () (declare (not safe)) (_g1064410735_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_$stx11137_)
        (let* ((_g1114111165_
                (lambda (_g1114211161_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1114211161_)))
               (_g1114011250_
                (lambda (_g1114211169_)
                  (if (gx#stx-pair? _g1114211169_)
                      (let ((_e1114711172_ (gx#syntax-e _g1114211169_)))
                        (let ((_hd1114611176_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1114711172_)))
                              (_tl1114511179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1114711172_))))
                          (if (gx#stx-pair? _tl1114511179_)
                              (let ((_e1115011182_
                                     (gx#syntax-e _tl1114511179_)))
                                (let ((_hd1114911186_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1115011182_)))
                                      (_tl1114811189_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1115011182_))))
                                  (if (gx#stx-pair/null? _tl1114811189_)
                                      (let ((_g27235_
                                             (gx#syntax-split-splice
                                              _tl1114811189_
                                              '0)))
                                        (begin
                                          (let ((_g27236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g27235_)
                                                       (##vector-length
                                                        _g27235_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g27236_ 2)))
                                                (error "Context expects 2 values"
                                                       _g27236_)))
                                          (let ((_target1115111192_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27235_ 0)))
                                                (_tl1115311195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27235_ 1))))
                                            (if (gx#stx-null? _tl1115311195_)
                                                (letrec ((_loop1115411198_
                                                          (lambda (_hd1115211202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1115811205_)
                    (if (gx#stx-pair? _hd1115211202_)
                        (let ((_e1115511208_ (gx#syntax-e _hd1115211202_)))
                          (let ((_lp-hd1115611212_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1115511208_)))
                                (_lp-tl1115711215_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1115511208_))))
                            (_loop1115411198_
                             _lp-tl1115711215_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1115611212_ _expr1115811205_)))))
                        (let ((_expr1115911218_ (reverse _expr1115811205_)))
                          ((lambda (_L11222_ _L11224_)
                             (let ((__tmp27244 (gx#datum->syntax '#f 'if))
                                   (__tmp27237
                                    (let ((__tmp27238
                                           (let ((__tmp27240
                                                  (let ((__tmp27243
                                                         (gx#datum->syntax
                                                          '#f
                                                          'begin))
                                                        (__tmp27241
                                                         (let ((__tmp27242
                                                                (lambda (_g1124111244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1124211247_)
                          (let ()
                            (declare (not safe))
                            (cons _g1124111244_ _g1124211247_)))))
                   (declare (not safe))
                   (foldr1 __tmp27242 '() _L11222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp27243
                                                          __tmp27241)))
                                                 (__tmp27239
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons '#!void '()))))
                                             (declare (not safe))
                                             (cons __tmp27240 __tmp27239))))
                                      (declare (not safe))
                                      (cons _L11224_ __tmp27238))))
                               (declare (not safe))
                               (cons __tmp27244 __tmp27237)))
                           _expr1115911218_
                           _hd1114911186_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1115411198_
                                                   _target1115111192_
                                                   '()))
                                                (_g1114111165_
                                                 _g1114211169_)))))
                                      (_g1114111165_ _g1114211169_))))
                              (_g1114111165_ _g1114211169_))))
                      (_g1114111165_ _g1114211169_)))))
          (_g1114011250_ _$stx11137_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_$stx11255_)
        (let* ((_g1125911283_
                (lambda (_g1126011279_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1126011279_)))
               (_g1125811368_
                (lambda (_g1126011287_)
                  (if (gx#stx-pair? _g1126011287_)
                      (let ((_e1126511290_ (gx#syntax-e _g1126011287_)))
                        (let ((_hd1126411294_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1126511290_)))
                              (_tl1126311297_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1126511290_))))
                          (if (gx#stx-pair? _tl1126311297_)
                              (let ((_e1126811300_
                                     (gx#syntax-e _tl1126311297_)))
                                (let ((_hd1126711304_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1126811300_)))
                                      (_tl1126611307_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1126811300_))))
                                  (if (gx#stx-pair/null? _tl1126611307_)
                                      (let ((_g27245_
                                             (gx#syntax-split-splice
                                              _tl1126611307_
                                              '0)))
                                        (begin
                                          (let ((_g27246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g27245_)
                                                       (##vector-length
                                                        _g27245_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g27246_ 2)))
                                                (error "Context expects 2 values"
                                                       _g27246_)))
                                          (let ((_target1126911310_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27245_ 0)))
                                                (_tl1127111313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27245_ 1))))
                                            (if (gx#stx-null? _tl1127111313_)
                                                (letrec ((_loop1127211316_
                                                          (lambda (_hd1127011320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1127611323_)
                    (if (gx#stx-pair? _hd1127011320_)
                        (let ((_e1127311326_ (gx#syntax-e _hd1127011320_)))
                          (let ((_lp-hd1127411330_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1127311326_)))
                                (_lp-tl1127511333_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1127311326_))))
                            (_loop1127211316_
                             _lp-tl1127511333_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1127411330_ _expr1127611323_)))))
                        (let ((_expr1127711336_ (reverse _expr1127611323_)))
                          ((lambda (_L11340_ _L11342_)
                             (let ((__tmp27254 (gx#datum->syntax '#f 'if))
                                   (__tmp27247
                                    (let ((__tmp27248
                                           (let ((__tmp27249
                                                  (let ((__tmp27250
                                                         (let ((__tmp27253
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin))
                       (__tmp27251
                        (let ((__tmp27252
                               (lambda (_g1135911362_ _g1136011365_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1135911362_ _g1136011365_)))))
                          (declare (not safe))
                          (foldr1 __tmp27252 '() _L11340_))))
                   (declare (not safe))
                   (cons __tmp27253 __tmp27251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp27250 '()))))
                                             (declare (not safe))
                                             (cons '#!void __tmp27249))))
                                      (declare (not safe))
                                      (cons _L11342_ __tmp27248))))
                               (declare (not safe))
                               (cons __tmp27254 __tmp27247)))
                           _expr1127711336_
                           _hd1126711304_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1127211316_
                                                   _target1126911310_
                                                   '()))
                                                (_g1125911283_
                                                 _g1126011287_)))))
                                      (_g1125911283_ _g1126011287_))))
                              (_g1125911283_ _g1126011287_))))
                      (_g1125911283_ _g1126011287_)))))
          (_g1125811368_ _$stx11255_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_stx11373_)
        (let* ((_g1137611400_
                (lambda (_g1137711396_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1137711396_)))
               (_g1137511485_
                (lambda (_g1137711404_)
                  (if (gx#stx-pair? _g1137711404_)
                      (let ((_e1138211407_ (gx#syntax-e _g1137711404_)))
                        (let ((_hd1138111411_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1138211407_)))
                              (_tl1138011414_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1138211407_))))
                          (if (gx#stx-pair? _tl1138011414_)
                              (let ((_e1138511417_
                                     (gx#syntax-e _tl1138011414_)))
                                (let ((_hd1138411421_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1138511417_)))
                                      (_tl1138311424_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1138511417_))))
                                  (if (gx#stx-pair/null? _tl1138311424_)
                                      (let ((_g27255_
                                             (gx#syntax-split-splice
                                              _tl1138311424_
                                              '0)))
                                        (begin
                                          (let ((_g27256_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g27255_)
                                                       (##vector-length
                                                        _g27255_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g27256_ 2)))
                                                (error "Context expects 2 values"
                                                       _g27256_)))
                                          (let ((_target1138611427_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27255_ 0)))
                                                (_tl1138811430_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27255_ 1))))
                                            (if (gx#stx-null? _tl1138811430_)
                                                (letrec ((_loop1138911433_
                                                          (lambda (_hd1138711437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _detail1139311440_)
                    (if (gx#stx-pair? _hd1138711437_)
                        (let ((_e1139011443_ (gx#syntax-e _hd1138711437_)))
                          (let ((_lp-hd1139111447_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1139011443_)))
                                (_lp-tl1139211450_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1139011443_))))
                            (_loop1138911433_
                             _lp-tl1139211450_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1139111447_ _detail1139311440_)))))
                        (let ((_detail1139411453_
                               (reverse _detail1139311440_)))
                          ((lambda (_L11457_ _L11459_)
                             (if (gx#stx-string? _L11459_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _L11459_)
                                        _stx11373_
                                        (gx#syntax->list
                                         (let ((__tmp27257
                                                (lambda (_g1147611479_
                                                         _g1147711482_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g1147611479_
                                                          _g1147711482_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp27257 '() _L11457_))))
                                 (_g1137611400_ _g1137711404_)))
                           _detail1139411453_
                           _hd1138411421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1138911433_
                                                   _target1138611427_
                                                   '()))
                                                (_g1137611400_
                                                 _g1137711404_)))))
                                      (_g1137611400_ _g1137711404_))))
                              (_g1137611400_ _g1137711404_))))
                      (_g1137611400_ _g1137711404_)))))
          (_g1137511485_ _stx11373_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defmutable|
      (lambda (_$stx11490_)
        (let* ((_g1149411512_
                (lambda (_g1149511508_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1149511508_)))
               (_g1149311567_
                (lambda (_g1149511516_)
                  (if (gx#stx-pair? _g1149511516_)
                      (let ((_e1150011519_ (gx#syntax-e _g1149511516_)))
                        (let ((_hd1149911523_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1150011519_)))
                              (_tl1149811526_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1150011519_))))
                          (if (gx#stx-pair? _tl1149811526_)
                              (let ((_e1150311529_
                                     (gx#syntax-e _tl1149811526_)))
                                (let ((_hd1150211533_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1150311529_)))
                                      (_tl1150111536_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1150311529_))))
                                  (if (gx#stx-pair? _tl1150111536_)
                                      (let ((_e1150611539_
                                             (gx#syntax-e _tl1150111536_)))
                                        (let ((_hd1150511543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1150611539_)))
                                              (_tl1150411546_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1150611539_))))
                                          (if (gx#stx-null? _tl1150411546_)
                                              ((lambda (_L11549_ _L11551_)
                                                 (let ((__tmp27271
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp27258
                                                        (let ((__tmp27267
                                                               (let ((__tmp27270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'def))
                             (__tmp27268
                              (let ((__tmp27269
                                     (let ()
                                       (declare (not safe))
                                       (cons _L11549_ '()))))
                                (declare (not safe))
                                (cons _L11551_ __tmp27269))))
                         (declare (not safe))
                         (cons __tmp27270 __tmp27268)))
                      (__tmp27259
                       (let ((__tmp27263
                              (let ((__tmp27266 (gx#datum->syntax '#f '%#set!))
                                    (__tmp27264
                                     (let ((__tmp27265
                                            (let ()
                                              (declare (not safe))
                                              (cons _L11551_ '()))))
                                       (declare (not safe))
                                       (cons _L11551_ __tmp27265))))
                                (declare (not safe))
                                (cons __tmp27266 __tmp27264)))
                             (__tmp27260
                              (let ((__tmp27261
                                     (let ((__tmp27262
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp27262 '()))))
                                (declare (not safe))
                                (cons __tmp27261 '()))))
                         (declare (not safe))
                         (cons __tmp27263 __tmp27260))))
                  (declare (not safe))
                  (cons __tmp27267 __tmp27259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27271
                                                         __tmp27258)))
                                               _hd1150511543_
                                               _hd1150211533_)
                                              (_g1149411512_ _g1149511516_))))
                                      (_g1149411512_ _g1149511516_))))
                              (_g1149411512_ _g1149511516_))))
                      (_g1149411512_ _g1149511516_)))))
          (_g1149311567_ _$stx11490_))))))
