(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx293027_)
      (let* ((_g293031293049_
              (lambda (_g293032293045_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293032293045_))))
             (_g293030293104_
              (lambda (_g293032293053_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293032293053_))
                    (let ((_e293037293056_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293032293053_))))
                      (let ((_hd293036293060_
                             (let ()
                               (declare (not safe))
                               (##car _e293037293056_)))
                            (_tl293035293063_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293037293056_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293035293063_))
                            (let ((_e293040293066_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293035293063_))))
                              (let ((_hd293039293070_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293040293066_)))
                                    (_tl293038293073_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293040293066_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl293038293073_))
                                    (let ((_e293043293076_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl293038293073_))))
                                      (let ((_hd293042293080_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e293043293076_)))
                                            (_tl293041293083_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e293043293076_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl293041293083_))
                                            ((lambda (_L293086_ _L293088_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L293088_))
                                                   (let ((__tmp300635
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp300630
                                                          (let ((__tmp300632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp300634
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp300633
                                (let ()
                                  (declare (not safe))
                                  (cons _L293088_ '()))))
                           (declare (not safe))
                           (cons __tmp300634 __tmp300633)))
                        (__tmp300631
                         (let () (declare (not safe)) (cons _L293086_ '()))))
                    (declare (not safe))
                    (cons __tmp300632 __tmp300631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp300635
                                                           __tmp300630))
                                                   (_g293031293049_
                                                    _g293032293053_)))
                                             _hd293042293080_
                                             _hd293039293070_)
                                            (_g293031293049_
                                             _g293032293053_))))
                                    (_g293031293049_ _g293032293053_))))
                            (_g293031293049_ _g293032293053_))))
                    (_g293031293049_ _g293032293053_)))))
        (_g293030293104_ _$stx293027_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx293108_)
      (let* ((_g293112293141_
              (lambda (_g293113293137_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293113293137_))))
             (_g293111293241_
              (lambda (_g293113293145_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293113293145_))
                    (let ((_e293118293148_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293113293145_))))
                      (let ((_hd293117293152_
                             (let ()
                               (declare (not safe))
                               (##car _e293118293148_)))
                            (_tl293116293155_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293118293148_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293116293155_))
                            (let ((_g300636_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293116293155_
                                      '0))))
                              (begin
                                (let ((_g300637_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g300636_)
                                             (##vector-length _g300636_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g300637_ 2)))
                                      (error "Context expects 2 values"
                                             _g300637_)))
                                (let ((_target293119293158_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g300636_ 0)))
                                      (_tl293121293161_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g300636_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293121293161_))
                                      (letrec ((_loop293122293164_
                                                (lambda (_hd293120293168_
                                                         _type293126293171_
                                                         _symbol293127293173_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293120293168_))
                                                      (let ((_e293123293176_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293120293168_))))
                (let ((_lp-hd293124293180_
                       (let () (declare (not safe)) (##car _e293123293176_)))
                      (_lp-tl293125293183_
                       (let () (declare (not safe)) (##cdr _e293123293176_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293124293180_))
                      (let ((_e293132293186_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293124293180_))))
                        (let ((_hd293131293190_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293132293186_)))
                              (_tl293130293193_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293132293186_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293130293193_))
                              (let ((_e293135293196_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293130293193_))))
                                (let ((_hd293134293200_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293135293196_)))
                                      (_tl293133293203_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293135293196_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293133293203_))
                                      (_loop293122293164_
                                       _lp-tl293125293183_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293134293200_
                                               _type293126293171_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293131293190_
                                               _symbol293127293173_)))
                                      (_g293112293141_ _g293113293145_))))
                              (_g293112293141_ _g293113293145_))))
                      (_g293112293141_ _g293113293145_))))
              (let ((_type293128293206_ (reverse _type293126293171_))
                    (_symbol293129293209_ (reverse _symbol293127293173_)))
                ((lambda (_L293212_ _L293214_)
                   (let ((__tmp300644
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp300638
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L293212_
                               _L293214_))
                            (let ((__tmp300639
                                   (lambda (_g293229293233_
                                            _g293230293236_
                                            _g293231293238_)
                                     (let ((__tmp300640
                                            (let ((__tmp300643
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp300641
                                                   (let ((__tmp300642
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g293229293233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g293230293236_
                                                           __tmp300642))))
                                              (declare (not safe))
                                              (cons __tmp300643 __tmp300641))))
                                       (declare (not safe))
                                       (cons __tmp300640 _g293231293238_)))))
                              (declare (not safe))
                              (foldr2 __tmp300639 '() _L293212_ _L293214_)))))
                     (declare (not safe))
                     (cons __tmp300644 __tmp300638)))
                 _type293128293206_
                 _symbol293129293209_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293122293164_
                                         _target293119293158_
                                         '()
                                         '()))
                                      (_g293112293141_ _g293113293145_)))))
                            (_g293112293141_ _g293113293145_))))
                    (_g293112293141_ _g293113293145_)))))
        (_g293111293241_ _$stx293108_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx293246_)
      (let* ((___stx300195300196_ _$stx293246_)
             (_g293251293293_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx300195300196_)))))
        (let ((___kont300198300199_
               (lambda (_L293421_ _L293423_ _L293424_ _L293425_)
                 (let ((__tmp300658
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp300645
                        (let ((__tmp300655
                               (let ((__tmp300657
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp300656
                                      (let ()
                                        (declare (not safe))
                                        (cons _L293425_ '()))))
                                 (declare (not safe))
                                 (cons __tmp300657 __tmp300656)))
                              (__tmp300646
                               (let ((__tmp300652
                                      (let ((__tmp300654
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp300653
                                             (let ()
                                               (declare (not safe))
                                               (cons _L293424_ '()))))
                                        (declare (not safe))
                                        (cons __tmp300654 __tmp300653)))
                                     (__tmp300647
                                      (let ((__tmp300649
                                             (let ((__tmp300651
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp300650
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L293423_ '()))))
                                               (declare (not safe))
                                               (cons __tmp300651 __tmp300650)))
                                            (__tmp300648
                                             (let ()
                                               (declare (not safe))
                                               (cons _L293421_ '()))))
                                        (declare (not safe))
                                        (cons __tmp300649 __tmp300648))))
                                 (declare (not safe))
                                 (cons __tmp300652 __tmp300647))))
                          (declare (not safe))
                          (cons __tmp300655 __tmp300646))))
                   (declare (not safe))
                   (cons __tmp300658 __tmp300645))))
              (___kont300200300201_
               (lambda (_L293340_ _L293342_ _L293343_ _L293344_)
                 (let ((__tmp300659
                        (let ((__tmp300660
                               (let ((__tmp300661
                                      (let ((__tmp300662
                                             (let ((__tmp300663
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp300663 '()))))
                                        (declare (not safe))
                                        (cons _L293340_ __tmp300662))))
                                 (declare (not safe))
                                 (cons _L293342_ __tmp300661))))
                          (declare (not safe))
                          (cons _L293343_ __tmp300660))))
                   (declare (not safe))
                   (cons _L293344_ __tmp300659)))))
          (let ((___match300234300235_
                 (lambda (_e293259293371_
                          _hd293258293375_
                          _tl293257293378_
                          _e293262293381_
                          _hd293261293385_
                          _tl293260293388_
                          _e293265293391_
                          _hd293264293395_
                          _tl293263293398_
                          _e293268293401_
                          _hd293267293405_
                          _tl293266293408_
                          _e293271293411_
                          _hd293270293415_
                          _tl293269293418_)
                   (let ((_L293421_ _hd293270293415_)
                         (_L293423_ _hd293267293405_)
                         (_L293424_ _hd293264293395_)
                         (_L293425_ _hd293261293385_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L293425_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L293424_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L293423_)))
                         (___kont300198300199_
                          _L293421_
                          _L293423_
                          _L293424_
                          _L293425_)
                         (let () (declare (not safe)) (_g293251293293_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx300195300196_))
                (let ((_e293259293371_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx300195300196_))))
                  (let ((_tl293257293378_
                         (let () (declare (not safe)) (##cdr _e293259293371_)))
                        (_hd293258293375_
                         (let ()
                           (declare (not safe))
                           (##car _e293259293371_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl293257293378_))
                        (let ((_e293262293381_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl293257293378_))))
                          (let ((_tl293260293388_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e293262293381_)))
                                (_hd293261293385_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e293262293381_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl293260293388_))
                                (let ((_e293265293391_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl293260293388_))))
                                  (let ((_tl293263293398_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e293265293391_)))
                                        (_hd293264293395_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e293265293391_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl293263293398_))
                                        (let ((_e293268293401_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl293263293398_))))
                                          (let ((_tl293266293408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e293268293401_)))
                                                (_hd293267293405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e293268293401_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl293266293408_))
                                                (let ((_e293271293411_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl293266293408_))))
                                                  (let ((_tl293269293418_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e293271293411_)))
                                                        (_hd293270293415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e293271293411_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl293269293418_))
                                                        (___match300234300235_
                                                         _e293259293371_
                                                         _hd293258293375_
                                                         _tl293257293378_
                                                         _e293262293381_
                                                         _hd293261293385_
                                                         _tl293260293388_
                                                         _e293265293391_
                                                         _hd293264293395_
                                                         _tl293263293398_
                                                         _e293268293401_
                                                         _hd293267293405_
                                                         _tl293266293408_
                                                         _e293271293411_
                                                         _hd293270293415_
                                                         _tl293269293418_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g293251293293_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl293266293408_))
                                                    (___kont300200300201_
                                                     _hd293267293405_
                                                     _hd293264293395_
                                                     _hd293261293385_
                                                     _hd293258293375_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g293251293293_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g293251293293_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g293251293293_)))))
                        (let () (declare (not safe)) (_g293251293293_)))))
                (let () (declare (not safe)) (_g293251293293_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx293450_)
      (let* ((_g293454293489_
              (lambda (_g293455293485_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293455293485_))))
             (_g293453293608_
              (lambda (_g293455293493_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293455293493_))
                    (let ((_e293461293496_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293455293493_))))
                      (let ((_hd293460293500_
                             (let ()
                               (declare (not safe))
                               (##car _e293461293496_)))
                            (_tl293459293503_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293461293496_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293459293503_))
                            (let ((_g300664_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293459293503_
                                      '0))))
                              (begin
                                (let ((_g300665_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g300664_)
                                             (##vector-length _g300664_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g300665_ 2)))
                                      (error "Context expects 2 values"
                                             _g300665_)))
                                (let ((_target293462293506_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g300664_ 0)))
                                      (_tl293464293509_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g300664_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293464293509_))
                                      (letrec ((_loop293465293512_
                                                (lambda (_hd293463293516_
                                                         _symbol293469293519_
                                                         _method293470293521_
                                                         _type-t293471293523_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293463293516_))
                                                      (let ((_e293466293526_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293463293516_))))
                (let ((_lp-hd293467293530_
                       (let () (declare (not safe)) (##car _e293466293526_)))
                      (_lp-tl293468293533_
                       (let () (declare (not safe)) (##cdr _e293466293526_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293467293530_))
                      (let ((_e293477293536_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293467293530_))))
                        (let ((_hd293476293540_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293477293536_)))
                              (_tl293475293543_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293477293536_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293475293543_))
                              (let ((_e293480293546_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293475293543_))))
                                (let ((_hd293479293550_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293480293546_)))
                                      (_tl293478293553_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293480293546_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl293478293553_))
                                      (let ((_e293483293556_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl293478293553_))))
                                        (let ((_hd293482293560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e293483293556_)))
                                              (_tl293481293563_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e293483293556_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl293481293563_))
                                              (_loop293465293512_
                                               _lp-tl293468293533_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293482293560_
                                                       _symbol293469293519_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293479293550_
                                                       _method293470293521_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293476293540_
                                                       _type-t293471293523_)))
                                              (_g293454293489_
                                               _g293455293493_))))
                                      (_g293454293489_ _g293455293493_))))
                              (_g293454293489_ _g293455293493_))))
                      (_g293454293489_ _g293455293493_))))
              (let ((_symbol293472293566_ (reverse _symbol293469293519_))
                    (_method293473293569_ (reverse _method293470293521_))
                    (_type-t293474293571_ (reverse _type-t293471293523_)))
                ((lambda (_L293574_ _L293576_ _L293577_)
                   (let ((__tmp300673
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp300666
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L293574_
                               _L293576_
                               _L293577_))
                            (let ((__tmp300667
                                   (lambda (_g293593293598_
                                            _g293594293601_
                                            _g293595293603_
                                            _g293596293605_)
                                     (let ((__tmp300668
                                            (let ((__tmp300672
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp300669
                                                   (let ((__tmp300670
                                                          (let ((__tmp300671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g293593293598_ '()))))
                    (declare (not safe))
                    (cons _g293594293601_ __tmp300671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g293595293603_
                                                           __tmp300670))))
                                              (declare (not safe))
                                              (cons __tmp300672 __tmp300669))))
                                       (declare (not safe))
                                       (cons __tmp300668 _g293596293605_)))))
                              (declare (not safe))
                              (foldr* __tmp300667
                                      '()
                                      _L293574_
                                      _L293576_
                                      _L293577_)))))
                     (declare (not safe))
                     (cons __tmp300673 __tmp300666)))
                 _symbol293472293566_
                 _method293473293569_
                 _type-t293474293571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293465293512_
                                         _target293462293506_
                                         '()
                                         '()
                                         '()))
                                      (_g293454293489_ _g293455293493_)))))
                            (_g293454293489_ _g293455293493_))))
                    (_g293454293489_ _g293455293493_)))))
        (_g293453293608_ _$stx293450_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx293613_)
      (let* ((_g293617293650_
              (lambda (_g293618293646_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293618293646_))))
             (_g293616293764_
              (lambda (_g293618293654_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293618293654_))
                    (let ((_e293624293657_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293618293654_))))
                      (let ((_hd293623293661_
                             (let ()
                               (declare (not safe))
                               (##car _e293624293657_)))
                            (_tl293622293664_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293624293657_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293622293664_))
                            (let ((_e293627293667_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293622293664_))))
                              (let ((_hd293626293671_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293627293667_)))
                                    (_tl293625293674_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293627293667_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl293625293674_))
                                    (let ((_g300674_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl293625293674_
                                              '0))))
                                      (begin
                                        (let ((_g300675_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g300674_)
                                                     (##vector-length
                                                      _g300674_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g300675_ 2)))
                                              (error "Context expects 2 values"
                                                     _g300675_)))
                                        (let ((_target293628293677_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g300674_ 0)))
                                              (_tl293630293680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g300674_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl293630293680_))
                                              (letrec ((_loop293631293683_
                                                        (lambda (_hd293629293687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol293635293690_
                         _method293636293692_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd293629293687_))
                      (let ((_e293632293695_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd293629293687_))))
                        (let ((_lp-hd293633293699_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293632293695_)))
                              (_lp-tl293634293702_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293632293695_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd293633293699_))
                              (let ((_e293641293705_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd293633293699_))))
                                (let ((_hd293640293709_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293641293705_)))
                                      (_tl293639293712_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293641293705_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl293639293712_))
                                      (let ((_e293644293715_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl293639293712_))))
                                        (let ((_hd293643293719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e293644293715_)))
                                              (_tl293642293722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e293644293715_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl293642293722_))
                                              (_loop293631293683_
                                               _lp-tl293634293702_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293643293719_
                                                       _symbol293635293690_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293640293709_
                                                       _method293636293692_)))
                                              (_g293617293650_
                                               _g293618293654_))))
                                      (_g293617293650_ _g293618293654_))))
                              (_g293617293650_ _g293618293654_))))
                      (let ((_symbol293637293725_
                             (reverse _symbol293635293690_))
                            (_method293638293728_
                             (reverse _method293636293692_)))
                        ((lambda (_L293731_ _L293733_ _L293734_)
                           (let ((__tmp300683
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp300676
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L293731_
                                       _L293733_))
                                    (let ((__tmp300677
                                           (lambda (_g293752293756_
                                                    _g293753293759_
                                                    _g293754293761_)
                                             (let ((__tmp300678
                                                    (let ((__tmp300682
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp300679
                                                           (let ((__tmp300680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp300681
                                 (let ()
                                   (declare (not safe))
                                   (cons _g293752293756_ '()))))
                            (declare (not safe))
                            (cons _g293753293759_ __tmp300681))))
                     (declare (not safe))
                     (cons _L293734_ __tmp300680))))
              (declare (not safe))
              (cons __tmp300682 __tmp300679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp300678
                                                     _g293754293761_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp300677
                                              '()
                                              _L293731_
                                              _L293733_)))))
                             (declare (not safe))
                             (cons __tmp300683 __tmp300676)))
                         _symbol293637293725_
                         _method293638293728_
                         _hd293626293671_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop293631293683_
                                                 _target293628293677_
                                                 '()
                                                 '()))
                                              (_g293617293650_
                                               _g293618293654_)))))
                                    (_g293617293650_ _g293618293654_))))
                            (_g293617293650_ _g293618293654_))))
                    (_g293617293650_ _g293618293654_)))))
        (_g293616293764_ _$stx293613_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx293769_)
      (let* ((_g293773293787_
              (lambda (_g293774293783_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293774293783_))))
             (_g293772293828_
              (lambda (_g293774293791_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293774293791_))
                    (let ((_e293778293794_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293774293791_))))
                      (let ((_hd293777293798_
                             (let ()
                               (declare (not safe))
                               (##car _e293778293794_)))
                            (_tl293776293801_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293778293794_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293776293801_))
                            (let ((_e293781293804_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293776293801_))))
                              (let ((_hd293780293808_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293781293804_)))
                                    (_tl293779293811_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293781293804_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl293779293811_))
                                    ((lambda (_L293814_)
                                       (let ((__tmp300688
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp300684
                                              (let ((__tmp300685
                                                     (let ((__tmp300687
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp300686
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L293814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp300687 __tmp300686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp300685 '()))))
                                         (declare (not safe))
                                         (cons __tmp300688 __tmp300684)))
                                     _hd293780293808_)
                                    (_g293773293787_ _g293774293791_))))
                            (_g293773293787_ _g293774293791_))))
                    (_g293773293787_ _g293774293791_)))))
        (_g293772293828_ _$stx293769_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx293832_)
      (let* ((_g293836293886_
              (lambda (_g293837293882_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293837293882_))))
             (_g293835294053_
              (lambda (_g293837293890_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293837293890_))
                    (let ((_e293850293893_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293837293890_))))
                      (let ((_hd293849293897_
                             (let ()
                               (declare (not safe))
                               (##car _e293850293893_)))
                            (_tl293848293900_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293850293893_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293848293900_))
                            (let ((_e293853293903_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293848293900_))))
                              (let ((_hd293852293907_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293853293903_)))
                                    (_tl293851293910_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293853293903_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl293851293910_))
                                    (let ((_e293856293913_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl293851293910_))))
                                      (let ((_hd293855293917_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e293856293913_)))
                                            (_tl293854293920_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e293856293913_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl293854293920_))
                                            (let ((_e293859293923_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl293854293920_))))
                                              (let ((_hd293858293927_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e293859293923_)))
                                                    (_tl293857293930_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e293859293923_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl293857293930_))
                                                    (let ((_e293862293933_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl293857293930_))))
                                                      (let ((_hd293861293937_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e293862293933_)))
                    (_tl293860293940_
                     (let () (declare (not safe)) (##cdr _e293862293933_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl293860293940_))
                    (let ((_e293865293943_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl293860293940_))))
                      (let ((_hd293864293947_
                             (let ()
                               (declare (not safe))
                               (##car _e293865293943_)))
                            (_tl293863293950_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293865293943_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293863293950_))
                            (let ((_e293868293953_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293863293950_))))
                              (let ((_hd293867293957_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293868293953_)))
                                    (_tl293866293960_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293868293953_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl293866293960_))
                                    (let ((_e293871293963_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl293866293960_))))
                                      (let ((_hd293870293967_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e293871293963_)))
                                            (_tl293869293970_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e293871293963_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl293869293970_))
                                            (let ((_e293874293973_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl293869293970_))))
                                              (let ((_hd293873293977_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e293874293973_)))
                                                    (_tl293872293980_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e293874293973_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl293872293980_))
                                                    (let ((_e293877293983_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl293872293980_))))
                                                      (let ((_hd293876293987_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e293877293983_)))
                    (_tl293875293990_
                     (let () (declare (not safe)) (##cdr _e293877293983_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl293875293990_))
                    (let ((_e293880293993_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl293875293990_))))
                      (let ((_hd293879293997_
                             (let ()
                               (declare (not safe))
                               (##car _e293880293993_)))
                            (_tl293878294000_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293880293993_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl293878294000_))
                            ((lambda (_L294003_
                                      _L294005_
                                      _L294006_
                                      _L294007_
                                      _L294008_
                                      _L294009_
                                      _L294010_
                                      _L294011_
                                      _L294012_
                                      _L294013_)
                               (let ((__tmp300723
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp300689
                                      (let ((__tmp300720
                                             (let ((__tmp300722
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp300721
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L294013_ '()))))
                                               (declare (not safe))
                                               (cons __tmp300722 __tmp300721)))
                                            (__tmp300690
                                             (let ((__tmp300717
                                                    (let ((__tmp300719
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp300718
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L294012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp300719 __tmp300718)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp300691
                                                    (let ((__tmp300714
                                                           (let ((__tmp300716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp300715
                          (let () (declare (not safe)) (cons _L294011_ '()))))
                     (declare (not safe))
                     (cons __tmp300716 __tmp300715)))
                  (__tmp300692
                   (let ((__tmp300711
                          (let ((__tmp300713
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp300712
                                 (let ()
                                   (declare (not safe))
                                   (cons _L294010_ '()))))
                            (declare (not safe))
                            (cons __tmp300713 __tmp300712)))
                         (__tmp300693
                          (let ((__tmp300708
                                 (let ((__tmp300710
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp300709
                                        (let ()
                                          (declare (not safe))
                                          (cons _L294009_ '()))))
                                   (declare (not safe))
                                   (cons __tmp300710 __tmp300709)))
                                (__tmp300694
                                 (let ((__tmp300705
                                        (let ((__tmp300707
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp300706
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L294008_ '()))))
                                          (declare (not safe))
                                          (cons __tmp300707 __tmp300706)))
                                       (__tmp300695
                                        (let ((__tmp300696
                                               (let ((__tmp300697
                                                      (let ((__tmp300702
                                                             (let ((__tmp300704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp300703
                            (let ()
                              (declare (not safe))
                              (cons _L294005_ '()))))
                       (declare (not safe))
                       (cons __tmp300704 __tmp300703)))
                    (__tmp300698
                     (let ((__tmp300699
                            (let ((__tmp300701
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp300700
                                   (let ()
                                     (declare (not safe))
                                     (cons _L294003_ '()))))
                              (declare (not safe))
                              (cons __tmp300701 __tmp300700))))
                       (declare (not safe))
                       (cons __tmp300699 '()))))
                (declare (not safe))
                (cons __tmp300702 __tmp300698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L294006_
                                                       __tmp300697))))
                                          (declare (not safe))
                                          (cons _L294007_ __tmp300696))))
                                   (declare (not safe))
                                   (cons __tmp300705 __tmp300695))))
                            (declare (not safe))
                            (cons __tmp300708 __tmp300694))))
                     (declare (not safe))
                     (cons __tmp300711 __tmp300693))))
              (declare (not safe))
              (cons __tmp300714 __tmp300692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp300717
                                                     __tmp300691))))
                                        (declare (not safe))
                                        (cons __tmp300720 __tmp300690))))
                                 (declare (not safe))
                                 (cons __tmp300723 __tmp300689)))
                             _hd293879293997_
                             _hd293876293987_
                             _hd293873293977_
                             _hd293870293967_
                             _hd293867293957_
                             _hd293864293947_
                             _hd293861293937_
                             _hd293858293927_
                             _hd293855293917_
                             _hd293852293907_)
                            (_g293836293886_ _g293837293890_))))
                    (_g293836293886_ _g293837293890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g293836293886_
                                                     _g293837293890_))))
                                            (_g293836293886_
                                             _g293837293890_))))
                                    (_g293836293886_ _g293837293890_))))
                            (_g293836293886_ _g293837293890_))))
                    (_g293836293886_ _g293837293890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g293836293886_
                                                     _g293837293890_))))
                                            (_g293836293886_
                                             _g293837293890_))))
                                    (_g293836293886_ _g293837293890_))))
                            (_g293836293886_ _g293837293890_))))
                    (_g293836293886_ _g293837293890_)))))
        (_g293835294053_ _$stx293832_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx294057_)
      (let* ((_g294061294075_
              (lambda (_g294062294071_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294062294071_))))
             (_g294060294116_
              (lambda (_g294062294079_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294062294079_))
                    (let ((_e294066294082_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294062294079_))))
                      (let ((_hd294065294086_
                             (let ()
                               (declare (not safe))
                               (##car _e294066294082_)))
                            (_tl294064294089_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294066294082_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294064294089_))
                            (let ((_e294069294092_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294064294089_))))
                              (let ((_hd294068294096_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294069294092_)))
                                    (_tl294067294099_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294069294092_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294067294099_))
                                    ((lambda (_L294102_)
                                       (let ((__tmp300728
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp300724
                                              (let ((__tmp300725
                                                     (let ((__tmp300727
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp300726
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp300727 __tmp300726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp300725 '()))))
                                         (declare (not safe))
                                         (cons __tmp300728 __tmp300724)))
                                     _hd294068294096_)
                                    (_g294061294075_ _g294062294079_))))
                            (_g294061294075_ _g294062294079_))))
                    (_g294061294075_ _g294062294079_)))))
        (_g294060294116_ _$stx294057_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx294120_)
      (let* ((_g294124294138_
              (lambda (_g294125294134_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294125294134_))))
             (_g294123294179_
              (lambda (_g294125294142_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294125294142_))
                    (let ((_e294129294145_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294125294142_))))
                      (let ((_hd294128294149_
                             (let ()
                               (declare (not safe))
                               (##car _e294129294145_)))
                            (_tl294127294152_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294129294145_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294127294152_))
                            (let ((_e294132294155_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294127294152_))))
                              (let ((_hd294131294159_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294132294155_)))
                                    (_tl294130294162_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294132294155_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294130294162_))
                                    ((lambda (_L294165_)
                                       (let ((__tmp300733
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp300729
                                              (let ((__tmp300730
                                                     (let ((__tmp300732
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp300731
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp300732 __tmp300731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp300730 '()))))
                                         (declare (not safe))
                                         (cons __tmp300733 __tmp300729)))
                                     _hd294131294159_)
                                    (_g294124294138_ _g294125294142_))))
                            (_g294124294138_ _g294125294142_))))
                    (_g294124294138_ _g294125294142_)))))
        (_g294123294179_ _$stx294120_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx294183_)
      (let* ((_g294187294209_
              (lambda (_g294188294205_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294188294205_))))
             (_g294186294278_
              (lambda (_g294188294213_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294188294213_))
                    (let ((_e294194294216_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294188294213_))))
                      (let ((_hd294193294220_
                             (let ()
                               (declare (not safe))
                               (##car _e294194294216_)))
                            (_tl294192294223_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294194294216_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294192294223_))
                            (let ((_e294197294226_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294192294223_))))
                              (let ((_hd294196294230_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294197294226_)))
                                    (_tl294195294233_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294197294226_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294195294233_))
                                    (let ((_e294200294236_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294195294233_))))
                                      (let ((_hd294199294240_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294200294236_)))
                                            (_tl294198294243_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294200294236_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294198294243_))
                                            (let ((_e294203294246_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294198294243_))))
                                              (let ((_hd294202294250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294203294246_)))
                                                    (_tl294201294253_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294203294246_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294201294253_))
                                                    ((lambda (_L294256_
                                                              _L294258_
                                                              _L294259_)
                                                       (let ((__tmp300743
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp300734
                      (let ((__tmp300740
                             (let ((__tmp300742
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp300741
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294259_ '()))))
                               (declare (not safe))
                               (cons __tmp300742 __tmp300741)))
                            (__tmp300735
                             (let ((__tmp300737
                                    (let ((__tmp300739
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp300738
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294258_ '()))))
                                      (declare (not safe))
                                      (cons __tmp300739 __tmp300738)))
                                   (__tmp300736
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294256_ '()))))
                               (declare (not safe))
                               (cons __tmp300737 __tmp300736))))
                        (declare (not safe))
                        (cons __tmp300740 __tmp300735))))
                 (declare (not safe))
                 (cons __tmp300743 __tmp300734)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294202294250_
                                                     _hd294199294240_
                                                     _hd294196294230_)
                                                    (_g294187294209_
                                                     _g294188294213_))))
                                            (_g294187294209_
                                             _g294188294213_))))
                                    (_g294187294209_ _g294188294213_))))
                            (_g294187294209_ _g294188294213_))))
                    (_g294187294209_ _g294188294213_)))))
        (_g294186294278_ _$stx294183_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx294282_)
      (let* ((_g294286294308_
              (lambda (_g294287294304_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294287294304_))))
             (_g294285294377_
              (lambda (_g294287294312_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294287294312_))
                    (let ((_e294293294315_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294287294312_))))
                      (let ((_hd294292294319_
                             (let ()
                               (declare (not safe))
                               (##car _e294293294315_)))
                            (_tl294291294322_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294293294315_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294291294322_))
                            (let ((_e294296294325_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294291294322_))))
                              (let ((_hd294295294329_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294296294325_)))
                                    (_tl294294294332_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294296294325_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294294294332_))
                                    (let ((_e294299294335_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294294294332_))))
                                      (let ((_hd294298294339_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294299294335_)))
                                            (_tl294297294342_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294299294335_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294297294342_))
                                            (let ((_e294302294345_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294297294342_))))
                                              (let ((_hd294301294349_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294302294345_)))
                                                    (_tl294300294352_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294302294345_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294300294352_))
                                                    ((lambda (_L294355_
                                                              _L294357_
                                                              _L294358_)
                                                       (let ((__tmp300753
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp300744
                      (let ((__tmp300750
                             (let ((__tmp300752
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp300751
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294358_ '()))))
                               (declare (not safe))
                               (cons __tmp300752 __tmp300751)))
                            (__tmp300745
                             (let ((__tmp300747
                                    (let ((__tmp300749
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp300748
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294357_ '()))))
                                      (declare (not safe))
                                      (cons __tmp300749 __tmp300748)))
                                   (__tmp300746
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294355_ '()))))
                               (declare (not safe))
                               (cons __tmp300747 __tmp300746))))
                        (declare (not safe))
                        (cons __tmp300750 __tmp300745))))
                 (declare (not safe))
                 (cons __tmp300753 __tmp300744)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294301294349_
                                                     _hd294298294339_
                                                     _hd294295294329_)
                                                    (_g294286294308_
                                                     _g294287294312_))))
                                            (_g294286294308_
                                             _g294287294312_))))
                                    (_g294286294308_ _g294287294312_))))
                            (_g294286294308_ _g294287294312_))))
                    (_g294286294308_ _g294287294312_)))))
        (_g294285294377_ _$stx294282_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx294381_)
      (let* ((___stx300263300264_ _$stx294381_)
             (_g294389294457_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx300263300264_)))))
        (let ((___kont300266300267_
               (lambda (_L294735_ _L294737_)
                 (let ((__tmp300769
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp300754
                        (let ((__tmp300765
                               (let ((__tmp300768
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp300766
                                      (let ((__tmp300767
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp300767 '()))))
                                 (declare (not safe))
                                 (cons __tmp300768 __tmp300766)))
                              (__tmp300755
                               (let ((__tmp300762
                                      (let ((__tmp300764
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp300763
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294737_ '()))))
                                        (declare (not safe))
                                        (cons __tmp300764 __tmp300763)))
                                     (__tmp300756
                                      (let ((__tmp300757
                                             (let ((__tmp300758
                                                    (let ((__tmp300759
                                                           (let ((__tmp300761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp300760
                          (let () (declare (not safe)) (cons _L294735_ '()))))
                     (declare (not safe))
                     (cons __tmp300761 __tmp300760))))
              (declare (not safe))
              (cons __tmp300759 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L294735_ __tmp300758))))
                                        (declare (not safe))
                                        (cons '#f __tmp300757))))
                                 (declare (not safe))
                                 (cons __tmp300762 __tmp300756))))
                          (declare (not safe))
                          (cons __tmp300765 __tmp300755))))
                   (declare (not safe))
                   (cons __tmp300769 __tmp300754))))
              (___kont300268300269_
               (lambda (_L294666_ _L294668_)
                 (let ((__tmp300770
                        (let ((__tmp300771
                               (let ((__tmp300772
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L294666_ __tmp300772))))
                          (declare (not safe))
                          (cons 'primitive: __tmp300771))))
                   (declare (not safe))
                   (cons _L294668_ __tmp300770))))
              (___kont300270300271_
               (lambda (_L294605_ _L294607_)
                 (let ((__tmp300786
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp300773
                        (let ((__tmp300782
                               (let ((__tmp300785
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp300783
                                      (let ((__tmp300784
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp300784 '()))))
                                 (declare (not safe))
                                 (cons __tmp300785 __tmp300783)))
                              (__tmp300774
                               (let ((__tmp300779
                                      (let ((__tmp300781
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp300780
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294607_ '()))))
                                        (declare (not safe))
                                        (cons __tmp300781 __tmp300780)))
                                     (__tmp300775
                                      (let ((__tmp300776
                                             (let ((__tmp300778
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp300777
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L294605_ '()))))
                                               (declare (not safe))
                                               (cons __tmp300778
                                                     __tmp300777))))
                                        (declare (not safe))
                                        (cons __tmp300776 '()))))
                                 (declare (not safe))
                                 (cons __tmp300779 __tmp300775))))
                          (declare (not safe))
                          (cons __tmp300782 __tmp300774))))
                   (declare (not safe))
                   (cons __tmp300786 __tmp300773))))
              (___kont300272300273_
               (lambda (_L294537_ _L294539_)
                 (let ((__tmp300800
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp300787
                        (let ((__tmp300796
                               (let ((__tmp300799
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp300797
                                      (let ((__tmp300798
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp300798 '()))))
                                 (declare (not safe))
                                 (cons __tmp300799 __tmp300797)))
                              (__tmp300788
                               (let ((__tmp300793
                                      (let ((__tmp300795
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp300794
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294539_ '()))))
                                        (declare (not safe))
                                        (cons __tmp300795 __tmp300794)))
                                     (__tmp300789
                                      (let ((__tmp300790
                                             (let ((__tmp300792
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp300791
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L294537_ '()))))
                                               (declare (not safe))
                                               (cons __tmp300792
                                                     __tmp300791))))
                                        (declare (not safe))
                                        (cons __tmp300790 '()))))
                                 (declare (not safe))
                                 (cons __tmp300793 __tmp300789))))
                          (declare (not safe))
                          (cons __tmp300796 __tmp300788))))
                   (declare (not safe))
                   (cons __tmp300800 __tmp300787))))
              (___kont300274300275_
               (lambda (_L294484_ _L294486_)
                 (let ((__tmp300801
                        (let ((__tmp300802
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L294484_ __tmp300802))))
                   (declare (not safe))
                   (cons _L294486_ __tmp300801)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx300263300264_))
              (let ((_e294395294691_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx300263300264_))))
                (let ((_tl294393294698_
                       (let () (declare (not safe)) (##cdr _e294395294691_)))
                      (_hd294394294695_
                       (let () (declare (not safe)) (##car _e294395294691_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl294393294698_))
                      (let ((_e294398294701_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl294393294698_))))
                        (let ((_tl294396294708_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294398294701_)))
                              (_hd294397294705_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294398294701_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl294396294708_))
                              (let ((_e294401294711_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl294396294708_))))
                                (let ((_tl294399294718_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294401294711_)))
                                      (_hd294400294715_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294401294711_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd294400294715_))
                                      (let ((_e294402294721_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd294400294715_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e294402294721_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl294399294718_))
                                                (let ((_e294405294725_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl294399294718_))))
                                                  (let ((_tl294403294732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e294405294725_)))
                                                        (_hd294404294729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e294405294725_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl294403294732_))
                                                        (___kont300266300267_
                                                         _hd294404294729_
                                                         _hd294397294705_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd294397294705_))
                                                            (let ((_e294414294652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd294397294705_))))
                      (declare (not safe))
                      (_g294389294457_))
                    (let () (declare (not safe)) (_g294389294457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd294397294705_))
                                                    (let ((_e294414294652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd294397294705_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e294414294652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294399294718_))
                      (___kont300268300269_ _hd294400294715_ _hd294394294695_)
                      (let () (declare (not safe)) (_g294389294457_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294399294718_))
                      (___kont300272300273_ _hd294400294715_ _hd294397294705_)
                      (let () (declare (not safe)) (_g294389294457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl294399294718_))
                                                        (___kont300272300273_
                                                         _hd294400294715_
                                                         _hd294397294705_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g294389294457_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd294397294705_))
                                                (let ((_e294414294652_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd294397294705_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e294414294652_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl294399294718_))
                                                          (___kont300268300269_
                                                           _hd294400294715_
                                                           _hd294394294695_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl294399294718_))
                      (let ((_e294432294595_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl294399294718_))))
                        (let ((_tl294430294602_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294432294595_)))
                              (_hd294431294599_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294432294595_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl294430294602_))
                              (___kont300270300271_
                               _hd294431294599_
                               _hd294400294715_)
                              (let ()
                                (declare (not safe))
                                (_g294389294457_)))))
                      (let () (declare (not safe)) (_g294389294457_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl294399294718_))
                  (___kont300272300273_ _hd294400294715_ _hd294397294705_)
                  (let () (declare (not safe)) (_g294389294457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294399294718_))
                                                    (___kont300272300273_
                                                     _hd294400294715_
                                                     _hd294397294705_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294389294457_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd294397294705_))
                                          (let ((_e294414294652_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd294397294705_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e294414294652_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294399294718_))
                                                    (___kont300268300269_
                                                     _hd294400294715_
                                                     _hd294394294695_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl294399294718_))
                                                        (let ((_e294432294595_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl294399294718_))))
                  (let ((_tl294430294602_
                         (let () (declare (not safe)) (##cdr _e294432294595_)))
                        (_hd294431294599_
                         (let ()
                           (declare (not safe))
                           (##car _e294432294595_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl294430294602_))
                        (___kont300270300271_
                         _hd294431294599_
                         _hd294400294715_)
                        (let () (declare (not safe)) (_g294389294457_)))))
                (let () (declare (not safe)) (_g294389294457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294399294718_))
                                                    (___kont300272300273_
                                                     _hd294400294715_
                                                     _hd294397294705_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294389294457_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294399294718_))
                                              (___kont300272300273_
                                               _hd294400294715_
                                               _hd294397294705_)
                                              (let ()
                                                (declare (not safe))
                                                (_g294389294457_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd294397294705_))
                                  (let ((_e294414294652_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd294397294705_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl294396294708_))
                                        (___kont300274300275_
                                         _hd294397294705_
                                         _hd294394294695_)
                                        (let ()
                                          (declare (not safe))
                                          (_g294389294457_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl294396294708_))
                                      (___kont300274300275_
                                       _hd294397294705_
                                       _hd294394294695_)
                                      (let ()
                                        (declare (not safe))
                                        (_g294389294457_)))))))
                      (let () (declare (not safe)) (_g294389294457_)))))
              (let () (declare (not safe)) (_g294389294457_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx294759_)
      (let* ((___stx300403300404_ _$stx294759_)
             (_g294764294819_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx300403300404_)))))
        (let ((___kont300406300407_
               (lambda (_L295004_ _L295006_)
                 (let ((__tmp300818
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp300803
                        (let ((__tmp300814
                               (let ((__tmp300817
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp300815
                                      (let ((__tmp300816
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp300816 '()))))
                                 (declare (not safe))
                                 (cons __tmp300817 __tmp300815)))
                              (__tmp300804
                               (let ((__tmp300805
                                      (let ((__tmp300813
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp300806
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295004_
                                                  _L295006_))
                                               (let ((__tmp300807
                                                      (lambda (_g295023295027_
                                                               _g295024295030_
                                                               _g295025295032_)
                                                        (let ((__tmp300808
                                                               (let ((__tmp300812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp300809
                              (let ((__tmp300810
                                     (let ((__tmp300811
                                            (let ()
                                              (declare (not safe))
                                              (cons _g295023295027_ '()))))
                                       (declare (not safe))
                                       (cons _g295024295030_ __tmp300811))))
                                (declare (not safe))
                                (cons 'primitive: __tmp300810))))
                         (declare (not safe))
                         (cons __tmp300812 __tmp300809))))
                  (declare (not safe))
                  (cons __tmp300808 _g295025295032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp300807
                                                         '()
                                                         _L295004_
                                                         _L295006_)))))
                                        (declare (not safe))
                                        (cons __tmp300813 __tmp300806))))
                                 (declare (not safe))
                                 (cons __tmp300805 '()))))
                          (declare (not safe))
                          (cons __tmp300814 __tmp300804))))
                   (declare (not safe))
                   (cons __tmp300818 __tmp300803))))
              (___kont300410300411_
               (lambda (_L294890_ _L294892_)
                 (let ((__tmp300833
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp300819
                        (let ((__tmp300829
                               (let ((__tmp300832
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp300830
                                      (let ((__tmp300831
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp300831 '()))))
                                 (declare (not safe))
                                 (cons __tmp300832 __tmp300830)))
                              (__tmp300820
                               (let ((__tmp300821
                                      (let ((__tmp300828
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp300822
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L294890_
                                                  _L294892_))
                                               (let ((__tmp300823
                                                      (lambda (_g294907294911_
                                                               _g294908294914_
                                                               _g294909294916_)
                                                        (let ((__tmp300824
                                                               (let ((__tmp300827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp300825
                              (let ((__tmp300826
                                     (let ()
                                       (declare (not safe))
                                       (cons _g294907294911_ '()))))
                                (declare (not safe))
                                (cons _g294908294914_ __tmp300826))))
                         (declare (not safe))
                         (cons __tmp300827 __tmp300825))))
                  (declare (not safe))
                  (cons __tmp300824 _g294909294916_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp300823
                                                         '()
                                                         _L294890_
                                                         _L294892_)))))
                                        (declare (not safe))
                                        (cons __tmp300828 __tmp300822))))
                                 (declare (not safe))
                                 (cons __tmp300821 '()))))
                          (declare (not safe))
                          (cons __tmp300829 __tmp300820))))
                   (declare (not safe))
                   (cons __tmp300833 __tmp300819)))))
          (let* ((___match300454300455_
                  (lambda (_e294796294826_
                           _hd294795294830_
                           _tl294794294833_
                           ___splice300412300413_
                           _target294797294836_
                           _tl294799294839_)
                    (letrec ((_loop294800294842_
                              (lambda (_hd294798294846_
                                       _dispatch294804294849_
                                       _arity294805294851_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd294798294846_))
                                    (let ((_e294801294854_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd294798294846_))))
                                      (let ((_lp-tl294803294861_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294801294854_)))
                                            (_lp-hd294802294858_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294801294854_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd294802294858_))
                                            (let ((_e294810294864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd294802294858_))))
                                              (let ((_tl294808294871_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294810294864_)))
                                                    (_hd294809294868_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294810294864_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294808294871_))
                                                    (let ((_e294813294874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294808294871_))))
                                                      (let ((_tl294811294881_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e294813294874_)))
                    (_hd294812294878_
                     (let () (declare (not safe)) (##car _e294813294874_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl294811294881_))
                    (_loop294800294842_
                     _lp-tl294803294861_
                     (let ()
                       (declare (not safe))
                       (cons _hd294812294878_ _dispatch294804294849_))
                     (let ()
                       (declare (not safe))
                       (cons _hd294809294868_ _arity294805294851_)))
                    (let () (declare (not safe)) (_g294764294819_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294764294819_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g294764294819_)))))
                                    (let ((_arity294807294887_
                                           (reverse _arity294805294851_))
                                          (_dispatch294806294884_
                                           (reverse _dispatch294804294849_)))
                                      (___kont300410300411_
                                       _dispatch294806294884_
                                       _arity294807294887_))))))
                      (_loop294800294842_ _target294797294836_ '() '()))))
                 (___match300446300447_
                  (lambda (_e294796294826_ _hd294795294830_ _tl294794294833_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl294794294833_))
                        (let ((___splice300412300413_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl294794294833_
                                  '0))))
                          (let ((_tl294799294839_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice300412300413_ '1)))
                                (_target294797294836_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice300412300413_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl294799294839_))
                                (___match300454300455_
                                 _e294796294826_
                                 _hd294795294830_
                                 _tl294794294833_
                                 ___splice300412300413_
                                 _target294797294836_
                                 _tl294799294839_)
                                (let ()
                                  (declare (not safe))
                                  (_g294764294819_)))))
                        (let () (declare (not safe)) (_g294764294819_)))))
                 (___match300440300441_
                  (lambda (_e294770294926_
                           _hd294769294930_
                           _tl294768294933_
                           _e294773294936_
                           _hd294772294940_
                           _tl294771294943_
                           _e294774294946_
                           ___splice300408300409_
                           _target294775294950_
                           _tl294777294953_)
                    (letrec ((_loop294778294956_
                              (lambda (_hd294776294960_
                                       _dispatch294782294963_
                                       _arity294783294965_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd294776294960_))
                                    (let ((_e294779294968_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd294776294960_))))
                                      (let ((_lp-tl294781294975_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294779294968_)))
                                            (_lp-hd294780294972_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294779294968_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd294780294972_))
                                            (let ((_e294788294978_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd294780294972_))))
                                              (let ((_tl294786294985_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294788294978_)))
                                                    (_hd294787294982_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294788294978_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294786294985_))
                                                    (let ((_e294791294988_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294786294985_))))
                                                      (let ((_tl294789294995_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e294791294988_)))
                    (_hd294790294992_
                     (let () (declare (not safe)) (##car _e294791294988_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl294789294995_))
                    (_loop294778294956_
                     _lp-tl294781294975_
                     (let ()
                       (declare (not safe))
                       (cons _hd294790294992_ _dispatch294782294963_))
                     (let ()
                       (declare (not safe))
                       (cons _hd294787294982_ _arity294783294965_)))
                    (___match300446300447_
                     _e294770294926_
                     _hd294769294930_
                     _tl294768294933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match300446300447_
                                                     _e294770294926_
                                                     _hd294769294930_
                                                     _tl294768294933_))))
                                            (___match300446300447_
                                             _e294770294926_
                                             _hd294769294930_
                                             _tl294768294933_))))
                                    (let ((_arity294785295001_
                                           (reverse _arity294783294965_))
                                          (_dispatch294784294998_
                                           (reverse _dispatch294782294963_)))
                                      (___kont300406300407_
                                       _dispatch294784294998_
                                       _arity294785295001_))))))
                      (_loop294778294956_ _target294775294950_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx300403300404_))
                (let ((_e294770294926_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx300403300404_))))
                  (let ((_tl294768294933_
                         (let () (declare (not safe)) (##cdr _e294770294926_)))
                        (_hd294769294930_
                         (let ()
                           (declare (not safe))
                           (##car _e294770294926_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl294768294933_))
                        (let ((_e294773294936_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl294768294933_))))
                          (let ((_tl294771294943_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e294773294936_)))
                                (_hd294772294940_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e294773294936_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd294772294940_))
                                (let ((_e294774294946_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd294772294940_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e294774294946_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl294771294943_))
                                          (let ((___splice300408300409_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl294771294943_
                                                    '0))))
                                            (let ((_tl294777294953_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice300408300409_
                                                      '1)))
                                                  (_target294775294950_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice300408300409_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl294777294953_))
                                                  (___match300440300441_
                                                   _e294770294926_
                                                   _hd294769294930_
                                                   _tl294768294933_
                                                   _e294773294936_
                                                   _hd294772294940_
                                                   _tl294771294943_
                                                   _e294774294946_
                                                   ___splice300408300409_
                                                   _target294775294950_
                                                   _tl294777294953_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl294768294933_))
                                                      (let ((___splice300412300413_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl294768294933_ '0))))
                (let ((_tl294799294839_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice300412300413_ '1)))
                      (_target294797294836_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice300412300413_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294799294839_))
                      (___match300454300455_
                       _e294770294926_
                       _hd294769294930_
                       _tl294768294933_
                       ___splice300412300413_
                       _target294797294836_
                       _tl294799294839_)
                      (let () (declare (not safe)) (_g294764294819_)))))
              (let () (declare (not safe)) (_g294764294819_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl294768294933_))
                                              (let ((___splice300412300413_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl294768294933_
                                                        '0))))
                                                (let ((_tl294799294839_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice300412300413_
                                                          '1)))
                                                      (_target294797294836_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice300412300413_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl294799294839_))
                                                      (___match300454300455_
                                                       _e294770294926_
                                                       _hd294769294930_
                                                       _tl294768294933_
                                                       ___splice300412300413_
                                                       _target294797294836_
                                                       _tl294799294839_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g294764294819_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g294764294819_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl294768294933_))
                                          (let ((___splice300412300413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl294768294933_
                                                    '0))))
                                            (let ((_tl294799294839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice300412300413_
                                                      '1)))
                                                  (_target294797294836_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice300412300413_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl294799294839_))
                                                  (___match300454300455_
                                                   _e294770294926_
                                                   _hd294769294930_
                                                   _tl294768294933_
                                                   ___splice300412300413_
                                                   _target294797294836_
                                                   _tl294799294839_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g294764294819_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g294764294819_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl294768294933_))
                                    (let ((___splice300412300413_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl294768294933_
                                              '0))))
                                      (let ((_tl294799294839_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice300412300413_
                                                '1)))
                                            (_target294797294836_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice300412300413_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl294799294839_))
                                            (___match300454300455_
                                             _e294770294926_
                                             _hd294769294930_
                                             _tl294768294933_
                                             ___splice300412300413_
                                             _target294797294836_
                                             _tl294799294839_)
                                            (let ()
                                              (declare (not safe))
                                              (_g294764294819_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g294764294819_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl294768294933_))
                            (let ((___splice300412300413_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl294768294933_
                                      '0))))
                              (let ((_tl294799294839_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice300412300413_
                                        '1)))
                                    (_target294797294836_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice300412300413_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294799294839_))
                                    (___match300454300455_
                                     _e294770294926_
                                     _hd294769294930_
                                     _tl294768294933_
                                     ___splice300412300413_
                                     _target294797294836_
                                     _tl294799294839_)
                                    (let ()
                                      (declare (not safe))
                                      (_g294764294819_)))))
                            (let () (declare (not safe)) (_g294764294819_))))))
                (let () (declare (not safe)) (_g294764294819_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx295041_)
      (let* ((_g295045295063_
              (lambda (_g295046295059_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295046295059_))))
             (_g295044295118_
              (lambda (_g295046295067_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295046295067_))
                    (let ((_e295051295070_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295046295067_))))
                      (let ((_hd295050295074_
                             (let ()
                               (declare (not safe))
                               (##car _e295051295070_)))
                            (_tl295049295077_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295051295070_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295049295077_))
                            (let ((_e295054295080_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295049295077_))))
                              (let ((_hd295053295084_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295054295080_)))
                                    (_tl295052295087_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295054295080_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295052295087_))
                                    (let ((_e295057295090_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295052295087_))))
                                      (let ((_hd295056295094_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295057295090_)))
                                            (_tl295055295097_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295057295090_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295055295097_))
                                            ((lambda (_L295100_ _L295102_)
                                               (let ((__tmp300847
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp300834
                                                      (let ((__tmp300843
                                                             (let ((__tmp300846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp300844
                            (let ((__tmp300845
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp300845 '()))))
                       (declare (not safe))
                       (cons __tmp300846 __tmp300844)))
                    (__tmp300835
                     (let ((__tmp300840
                            (let ((__tmp300842
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp300841
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295102_ '()))))
                              (declare (not safe))
                              (cons __tmp300842 __tmp300841)))
                           (__tmp300836
                            (let ((__tmp300837
                                   (let ((__tmp300839
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp300838
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295100_ '()))))
                                     (declare (not safe))
                                     (cons __tmp300839 __tmp300838))))
                              (declare (not safe))
                              (cons __tmp300837 '()))))
                       (declare (not safe))
                       (cons __tmp300840 __tmp300836))))
                (declare (not safe))
                (cons __tmp300843 __tmp300835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp300847
                                                       __tmp300834)))
                                             _hd295056295094_
                                             _hd295053295084_)
                                            (_g295045295063_
                                             _g295046295067_))))
                                    (_g295045295063_ _g295046295067_))))
                            (_g295045295063_ _g295046295067_))))
                    (_g295045295063_ _g295046295067_)))))
        (_g295044295118_ _$stx295041_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx295122_)
      (let* ((_g295126295144_
              (lambda (_g295127295140_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295127295140_))))
             (_g295125295199_
              (lambda (_g295127295148_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295127295148_))
                    (let ((_e295132295151_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295127295148_))))
                      (let ((_hd295131295155_
                             (let ()
                               (declare (not safe))
                               (##car _e295132295151_)))
                            (_tl295130295158_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295132295151_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295130295158_))
                            (let ((_e295135295161_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295130295158_))))
                              (let ((_hd295134295165_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295135295161_)))
                                    (_tl295133295168_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295135295161_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295133295168_))
                                    (let ((_e295138295171_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295133295168_))))
                                      (let ((_hd295137295175_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295138295171_)))
                                            (_tl295136295178_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295138295171_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295136295178_))
                                            ((lambda (_L295181_ _L295183_)
                                               (let ((__tmp300861
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp300848
                                                      (let ((__tmp300857
                                                             (let ((__tmp300860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp300858
                            (let ((__tmp300859
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp300859 '()))))
                       (declare (not safe))
                       (cons __tmp300860 __tmp300858)))
                    (__tmp300849
                     (let ((__tmp300854
                            (let ((__tmp300856
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp300855
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295183_ '()))))
                              (declare (not safe))
                              (cons __tmp300856 __tmp300855)))
                           (__tmp300850
                            (let ((__tmp300851
                                   (let ((__tmp300853
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp300852
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295181_ '()))))
                                     (declare (not safe))
                                     (cons __tmp300853 __tmp300852))))
                              (declare (not safe))
                              (cons __tmp300851 '()))))
                       (declare (not safe))
                       (cons __tmp300854 __tmp300850))))
                (declare (not safe))
                (cons __tmp300857 __tmp300849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp300861
                                                       __tmp300848)))
                                             _hd295137295175_
                                             _hd295134295165_)
                                            (_g295126295144_
                                             _g295127295148_))))
                                    (_g295126295144_ _g295127295148_))))
                            (_g295126295144_ _g295127295148_))))
                    (_g295126295144_ _g295127295148_)))))
        (_g295125295199_ _$stx295122_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx295203_)
      (let* ((___stx300457300458_ _$stx295203_)
             (_g295210295281_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx300457300458_)))))
        (let ((___kont300460300461_
               (lambda (_L295572_ _L295574_)
                 (let ((__tmp300867
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp300862
                        (let ((__tmp300863
                               (let ((__tmp300864
                                      (let ((__tmp300866
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp300865
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295572_ '()))))
                                        (declare (not safe))
                                        (cons __tmp300866 __tmp300865))))
                                 (declare (not safe))
                                 (cons __tmp300864 '()))))
                          (declare (not safe))
                          (cons _L295574_ __tmp300863))))
                   (declare (not safe))
                   (cons __tmp300867 __tmp300862))))
              (___kont300462300463_
               (lambda (_L295491_ _L295493_)
                 (let ((__tmp300876
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp300868
                        (let ((__tmp300869
                               (let ((__tmp300870
                                      (let ((__tmp300875
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp300871
                                             (let ((__tmp300872
                                                    (lambda (_g295512295515_
                                                             _g295513295518_)
                                                      (let ((__tmp300873
                                                             (let ((__tmp300874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g295512295515_ __tmp300874))))
                (declare (not safe))
                (cons __tmp300873 _g295513295518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp300872
                                                       '()
                                                       _L295491_))))
                                        (declare (not safe))
                                        (cons __tmp300875 __tmp300871))))
                                 (declare (not safe))
                                 (cons __tmp300870 '()))))
                          (declare (not safe))
                          (cons _L295493_ __tmp300869))))
                   (declare (not safe))
                   (cons __tmp300876 __tmp300868))))
              (___kont300466300467_
               (lambda (_L295403_ _L295405_)
                 (let ((__tmp300883
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp300877
                        (let ((__tmp300878
                               (let ((__tmp300879
                                      (let ((__tmp300882
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp300880
                                             (let ((__tmp300881
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295403_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp300881))))
                                        (declare (not safe))
                                        (cons __tmp300882 __tmp300880))))
                                 (declare (not safe))
                                 (cons __tmp300879 '()))))
                          (declare (not safe))
                          (cons _L295405_ __tmp300878))))
                   (declare (not safe))
                   (cons __tmp300883 __tmp300877))))
              (___kont300468300469_
               (lambda (_L295338_ _L295340_)
                 (let ((__tmp300893
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp300884
                        (let ((__tmp300885
                               (let ((__tmp300886
                                      (let ((__tmp300892
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp300887
                                             (let ((__tmp300888
                                                    (let ((__tmp300889
                                                           (lambda (_g295357295360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g295358295363_)
                     (let ((__tmp300890
                            (let ((__tmp300891
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g295357295360_ __tmp300891))))
                       (declare (not safe))
                       (cons __tmp300890 _g295358295363_)))))
              (declare (not safe))
              (foldr1 __tmp300889 '() _L295338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp300888))))
                                        (declare (not safe))
                                        (cons __tmp300892 __tmp300887))))
                                 (declare (not safe))
                                 (cons __tmp300886 '()))))
                          (declare (not safe))
                          (cons _L295340_ __tmp300885))))
                   (declare (not safe))
                   (cons __tmp300893 __tmp300884)))))
          (let* ((___match300576300577_
                  (lambda (_e295263295288_
                           _hd295262295292_
                           _tl295261295295_
                           _e295266295298_
                           _hd295265295302_
                           _tl295264295305_
                           ___splice300470300471_
                           _target295267295308_
                           _tl295269295311_)
                    (letrec ((_loop295270295314_
                              (lambda (_hd295268295318_ _arity295274295321_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295268295318_))
                                    (let ((_e295271295324_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295268295318_))))
                                      (let ((_lp-tl295273295331_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295271295324_)))
                                            (_lp-hd295272295328_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295271295324_))))
                                        (_loop295270295314_
                                         _lp-tl295273295331_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295272295328_
                                                 _arity295274295321_)))))
                                    (let ((_arity295275295334_
                                           (reverse _arity295274295321_)))
                                      (___kont300468300469_
                                       _arity295275295334_
                                       _hd295265295302_))))))
                      (_loop295270295314_ _target295267295308_ '()))))
                 (___match300536300537_
                  (lambda (_e295231295427_
                           _hd295230295431_
                           _tl295229295434_
                           _e295234295437_
                           _hd295233295441_
                           _tl295232295444_
                           _e295237295447_
                           _hd295236295451_
                           _tl295235295454_
                           _e295238295457_
                           ___splice300464300465_
                           _target295239295461_
                           _tl295241295464_)
                    (letrec ((_loop295242295467_
                              (lambda (_hd295240295471_ _arity295246295474_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295240295471_))
                                    (let ((_e295243295477_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295240295471_))))
                                      (let ((_lp-tl295245295484_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295243295477_)))
                                            (_lp-hd295244295481_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295243295477_))))
                                        (_loop295242295467_
                                         _lp-tl295245295484_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295244295481_
                                                 _arity295246295474_)))))
                                    (let ((_arity295247295487_
                                           (reverse _arity295246295474_)))
                                      (___kont300462300463_
                                       _arity295247295487_
                                       _hd295233295441_))))))
                      (_loop295242295467_ _target295239295461_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx300457300458_))
                (let ((_e295216295528_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx300457300458_))))
                  (let ((_tl295214295535_
                         (let () (declare (not safe)) (##cdr _e295216295528_)))
                        (_hd295215295532_
                         (let ()
                           (declare (not safe))
                           (##car _e295216295528_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295214295535_))
                        (let ((_e295219295538_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295214295535_))))
                          (let ((_tl295217295545_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295219295538_)))
                                (_hd295218295542_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295219295538_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl295217295545_))
                                (let ((_e295222295548_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl295217295545_))))
                                  (let ((_tl295220295555_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e295222295548_)))
                                        (_hd295221295552_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e295222295548_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd295221295552_))
                                        (let ((_e295223295558_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd295221295552_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e295223295558_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl295220295555_))
                                                  (let ((_e295226295562_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl295220295555_))))
                                                    (let ((_tl295224295569_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e295226295562_)))
                                                          (_hd295225295566_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e295226295562_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl295224295569_))
                                                          (___kont300460300461_
                                                           _hd295225295566_
                                                           _hd295218295542_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl295220295555_))
                      (let ((___splice300464300465_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295220295555_ '0))))
                        (let ((_tl295241295464_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice300464300465_ '1)))
                              (_target295239295461_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice300464300465_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295241295464_))
                              (___match300536300537_
                               _e295216295528_
                               _hd295215295532_
                               _tl295214295535_
                               _e295219295538_
                               _hd295218295542_
                               _tl295217295545_
                               _e295222295548_
                               _hd295221295552_
                               _tl295220295555_
                               _e295223295558_
                               ___splice300464300465_
                               _target295239295461_
                               _tl295241295464_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl295217295545_))
                                  (let ((___splice300470300471_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl295217295545_
                                            '0))))
                                    (let ((_tl295269295311_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice300470300471_
                                              '1)))
                                          (_target295267295308_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice300470300471_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl295269295311_))
                                          (___match300576300577_
                                           _e295216295528_
                                           _hd295215295532_
                                           _tl295214295535_
                                           _e295219295538_
                                           _hd295218295542_
                                           _tl295217295545_
                                           ___splice300470300471_
                                           _target295267295308_
                                           _tl295269295311_)
                                          (let ()
                                            (declare (not safe))
                                            (_g295210295281_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g295210295281_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl295217295545_))
                          (let ((___splice300470300471_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl295217295545_
                                    '0))))
                            (let ((_tl295269295311_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice300470300471_ '1)))
                                  (_target295267295308_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice300470300471_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl295269295311_))
                                  (___match300576300577_
                                   _e295216295528_
                                   _hd295215295532_
                                   _tl295214295535_
                                   _e295219295538_
                                   _hd295218295542_
                                   _tl295217295545_
                                   ___splice300470300471_
                                   _target295267295308_
                                   _tl295269295311_)
                                  (let ()
                                    (declare (not safe))
                                    (_g295210295281_)))))
                          (let () (declare (not safe)) (_g295210295281_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295220295555_))
                                                      (let ((___splice300464300465_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295220295555_ '0))))
                (let ((_tl295241295464_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice300464300465_ '1)))
                      (_target295239295461_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice300464300465_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295241295464_))
                      (___match300536300537_
                       _e295216295528_
                       _hd295215295532_
                       _tl295214295535_
                       _e295219295538_
                       _hd295218295542_
                       _tl295217295545_
                       _e295222295548_
                       _hd295221295552_
                       _tl295220295555_
                       _e295223295558_
                       ___splice300464300465_
                       _target295239295461_
                       _tl295241295464_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl295220295555_))
                          (___kont300466300467_
                           _hd295221295552_
                           _hd295218295542_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl295217295545_))
                              (let ((___splice300470300471_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl295217295545_
                                        '0))))
                                (let ((_tl295269295311_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice300470300471_
                                          '1)))
                                      (_target295267295308_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice300470300471_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295269295311_))
                                      (___match300576300577_
                                       _e295216295528_
                                       _hd295215295532_
                                       _tl295214295535_
                                       _e295219295538_
                                       _hd295218295542_
                                       _tl295217295545_
                                       ___splice300470300471_
                                       _target295267295308_
                                       _tl295269295311_)
                                      (let ()
                                        (declare (not safe))
                                        (_g295210295281_)))))
                              (let ()
                                (declare (not safe))
                                (_g295210295281_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl295220295555_))
                  (___kont300466300467_ _hd295221295552_ _hd295218295542_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl295217295545_))
                      (let ((___splice300470300471_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295217295545_ '0))))
                        (let ((_tl295269295311_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice300470300471_ '1)))
                              (_target295267295308_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice300470300471_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295269295311_))
                              (___match300576300577_
                               _e295216295528_
                               _hd295215295532_
                               _tl295214295535_
                               _e295219295538_
                               _hd295218295542_
                               _tl295217295545_
                               ___splice300470300471_
                               _target295267295308_
                               _tl295269295311_)
                              (let ()
                                (declare (not safe))
                                (_g295210295281_)))))
                      (let () (declare (not safe)) (_g295210295281_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295220295555_))
                                                  (___kont300466300467_
                                                   _hd295221295552_
                                                   _hd295218295542_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295217295545_))
                                                      (let ((___splice300470300471_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295217295545_ '0))))
                (let ((_tl295269295311_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice300470300471_ '1)))
                      (_target295267295308_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice300470300471_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295269295311_))
                      (___match300576300577_
                       _e295216295528_
                       _hd295215295532_
                       _tl295214295535_
                       _e295219295538_
                       _hd295218295542_
                       _tl295217295545_
                       ___splice300470300471_
                       _target295267295308_
                       _tl295269295311_)
                      (let () (declare (not safe)) (_g295210295281_)))))
              (let () (declare (not safe)) (_g295210295281_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295220295555_))
                                            (___kont300466300467_
                                             _hd295221295552_
                                             _hd295218295542_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl295217295545_))
                                                (let ((___splice300470300471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl295217295545_
                                                          '0))))
                                                  (let ((_tl295269295311_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice300470300471_
                                                            '1)))
                                                        (_target295267295308_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice300470300471_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295269295311_))
                                                        (___match300576300577_
                                                         _e295216295528_
                                                         _hd295215295532_
                                                         _tl295214295535_
                                                         _e295219295538_
                                                         _hd295218295542_
                                                         _tl295217295545_
                                                         ___splice300470300471_
                                                         _target295267295308_
                                                         _tl295269295311_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g295210295281_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g295210295281_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295217295545_))
                                    (let ((___splice300470300471_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295217295545_
                                              '0))))
                                      (let ((_tl295269295311_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice300470300471_
                                                '1)))
                                            (_target295267295308_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice300470300471_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295269295311_))
                                            (___match300576300577_
                                             _e295216295528_
                                             _hd295215295532_
                                             _tl295214295535_
                                             _e295219295538_
                                             _hd295218295542_
                                             _tl295217295545_
                                             ___splice300470300471_
                                             _target295267295308_
                                             _tl295269295311_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295210295281_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295210295281_))))))
                        (let () (declare (not safe)) (_g295210295281_)))))
                (let () (declare (not safe)) (_g295210295281_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx295598_)
      (let* ((___stx300579300580_ _$stx295598_)
             (_g295603295638_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx300579300580_)))))
        (let ((___kont300582300583_
               (lambda (_L295760_ _L295762_)
                 (let ((__tmp300899
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp300894
                        (let ((__tmp300895
                               (let ((__tmp300896
                                      (let ((__tmp300898
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp300897
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295760_ '()))))
                                        (declare (not safe))
                                        (cons __tmp300898 __tmp300897))))
                                 (declare (not safe))
                                 (cons __tmp300896 '()))))
                          (declare (not safe))
                          (cons _L295762_ __tmp300895))))
                   (declare (not safe))
                   (cons __tmp300899 __tmp300894))))
              (___kont300584300585_
               (lambda (_L295695_ _L295697_)
                 (let ((__tmp300908
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp300900
                        (let ((__tmp300901
                               (let ((__tmp300902
                                      (let ((__tmp300907
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp300903
                                             (let ((__tmp300904
                                                    (lambda (_g295714295717_
                                                             _g295715295720_)
                                                      (let ((__tmp300905
                                                             (let ((__tmp300906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g295714295717_ __tmp300906))))
                (declare (not safe))
                (cons __tmp300905 _g295715295720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp300904
                                                       '()
                                                       _L295695_))))
                                        (declare (not safe))
                                        (cons __tmp300907 __tmp300903))))
                                 (declare (not safe))
                                 (cons __tmp300902 '()))))
                          (declare (not safe))
                          (cons _L295697_ __tmp300901))))
                   (declare (not safe))
                   (cons __tmp300908 __tmp300900)))))
          (let ((___match300628300629_
                 (lambda (_e295620295645_
                          _hd295619295649_
                          _tl295618295652_
                          _e295623295655_
                          _hd295622295659_
                          _tl295621295662_
                          ___splice300586300587_
                          _target295624295665_
                          _tl295626295668_)
                   (letrec ((_loop295627295671_
                             (lambda (_hd295625295675_ _arity295631295678_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd295625295675_))
                                   (let ((_e295628295681_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd295625295675_))))
                                     (let ((_lp-tl295630295688_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e295628295681_)))
                                           (_lp-hd295629295685_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e295628295681_))))
                                       (_loop295627295671_
                                        _lp-tl295630295688_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd295629295685_
                                                _arity295631295678_)))))
                                   (let ((_arity295632295691_
                                          (reverse _arity295631295678_)))
                                     (___kont300584300585_
                                      _arity295632295691_
                                      _hd295622295659_))))))
                     (_loop295627295671_ _target295624295665_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx300579300580_))
                (let ((_e295609295730_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx300579300580_))))
                  (let ((_tl295607295737_
                         (let () (declare (not safe)) (##cdr _e295609295730_)))
                        (_hd295608295734_
                         (let ()
                           (declare (not safe))
                           (##car _e295609295730_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295607295737_))
                        (let ((_e295612295740_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295607295737_))))
                          (let ((_tl295610295747_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295612295740_)))
                                (_hd295611295744_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295612295740_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl295610295747_))
                                (let ((_e295615295750_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl295610295747_))))
                                  (let ((_tl295613295757_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e295615295750_)))
                                        (_hd295614295754_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e295615295750_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl295613295757_))
                                        (___kont300582300583_
                                         _hd295614295754_
                                         _hd295611295744_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl295610295747_))
                                            (let ((___splice300586300587_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl295610295747_
                                                      '0))))
                                              (let ((_tl295626295668_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice300586300587_
                                                        '1)))
                                                    (_target295624295665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice300586300587_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295626295668_))
                                                    (___match300628300629_
                                                     _e295609295730_
                                                     _hd295608295734_
                                                     _tl295607295737_
                                                     _e295612295740_
                                                     _hd295611295744_
                                                     _tl295610295747_
                                                     ___splice300586300587_
                                                     _target295624295665_
                                                     _tl295626295668_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295603295638_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g295603295638_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295610295747_))
                                    (let ((___splice300586300587_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295610295747_
                                              '0))))
                                      (let ((_tl295626295668_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice300586300587_
                                                '1)))
                                            (_target295624295665_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice300586300587_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295626295668_))
                                            (___match300628300629_
                                             _e295609295730_
                                             _hd295608295734_
                                             _tl295607295737_
                                             _e295612295740_
                                             _hd295611295744_
                                             _tl295610295747_
                                             ___splice300586300587_
                                             _target295624295665_
                                             _tl295626295668_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295603295638_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295603295638_))))))
                        (let () (declare (not safe)) (_g295603295638_)))))
                (let () (declare (not safe)) (_g295603295638_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx295782_)
      (let* ((_g295786295821_
              (lambda (_g295787295817_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295787295817_))))
             (_g295785295949_
              (lambda (_g295787295825_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295787295825_))
                    (let ((_e295792295828_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295787295825_))))
                      (let ((_hd295791295832_
                             (let ()
                               (declare (not safe))
                               (##car _e295792295828_)))
                            (_tl295790295835_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295792295828_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl295790295835_))
                            (let ((_g300909_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl295790295835_
                                      '0))))
                              (begin
                                (let ((_g300910_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g300909_)
                                             (##vector-length _g300909_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g300910_ 2)))
                                      (error "Context expects 2 values"
                                             _g300910_)))
                                (let ((_target295793295838_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g300909_ 0)))
                                      (_tl295795295841_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g300909_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295795295841_))
                                      (letrec ((_loop295796295844_
                                                (lambda (_hd295794295848_
                                                         _arity295800295851_
                                                         _prim295801295853_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd295794295848_))
                                                      (let ((_e295797295856_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd295794295848_))))
                (let ((_lp-hd295798295860_
                       (let () (declare (not safe)) (##car _e295797295856_)))
                      (_lp-tl295799295863_
                       (let () (declare (not safe)) (##cdr _e295797295856_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd295798295860_))
                      (let ((_e295806295866_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd295798295860_))))
                        (let ((_hd295805295870_
                               (let ()
                                 (declare (not safe))
                                 (##car _e295806295866_)))
                              (_tl295804295873_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e295806295866_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl295804295873_))
                              (let ((_g300919_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl295804295873_
                                        '0))))
                                (begin
                                  (let ((_g300920_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g300919_)
                                               (##vector-length _g300919_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g300920_ 2)))
                                        (error "Context expects 2 values"
                                               _g300920_)))
                                  (let ((_target295807295876_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g300919_ 0)))
                                        (_tl295809295879_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g300919_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl295809295879_))
                                        (letrec ((_loop295810295882_
                                                  (lambda (_hd295808295886_
                                                           _arity295814295889_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd295808295886_))
                                                        (let ((_e295811295892_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd295808295886_))))
                  (let ((_lp-hd295812295896_
                         (let () (declare (not safe)) (##car _e295811295892_)))
                        (_lp-tl295813295899_
                         (let ()
                           (declare (not safe))
                           (##cdr _e295811295892_))))
                    (_loop295810295882_
                     _lp-tl295813295899_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd295812295896_ _arity295814295889_)))))
                (let ((_arity295815295902_ (reverse _arity295814295889_)))
                  (_loop295796295844_
                   _lp-tl295799295863_
                   (let ()
                     (declare (not safe))
                     (cons _arity295815295902_ _arity295800295851_))
                   (let ()
                     (declare (not safe))
                     (cons _hd295805295870_ _prim295801295853_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop295810295882_
                                           _target295807295876_
                                           '()))
                                        (_g295786295821_ _g295787295825_)))))
                              (_g295786295821_ _g295787295825_))))
                      (_g295786295821_ _g295787295825_))))
              (let ((_arity295802295906_ (reverse _arity295800295851_))
                    (_prim295803295909_ (reverse _prim295801295853_)))
                ((lambda (_L295912_ _L295914_)
                   (let ((__tmp300918
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp300911
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L295912_
                               _L295914_))
                            (let ((__tmp300912
                                   (lambda (_g295929295935_
                                            _g295930295938_
                                            _g295931295940_)
                                     (let ((__tmp300913
                                            (let ((__tmp300917
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp300914
                                                   (let ((__tmp300915
                                                          (let ((__tmp300916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g295932295943_ _g295933295946_)
                           (let ()
                             (declare (not safe))
                             (cons _g295932295943_ _g295933295946_)))))
                    (declare (not safe))
                    (foldr1 __tmp300916 '() _g295929295935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g295930295938_
                                                           __tmp300915))))
                                              (declare (not safe))
                                              (cons __tmp300917 __tmp300914))))
                                       (declare (not safe))
                                       (cons __tmp300913 _g295931295940_)))))
                              (declare (not safe))
                              (foldr2 __tmp300912 '() _L295912_ _L295914_)))))
                     (declare (not safe))
                     (cons __tmp300918 __tmp300911)))
                 _arity295802295906_
                 _prim295803295909_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop295796295844_
                                         _target295793295838_
                                         '()
                                         '()))
                                      (_g295786295821_ _g295787295825_)))))
                            (_g295786295821_ _g295787295825_))))
                    (_g295786295821_ _g295787295825_)))))
        (_g295785295949_ _$stx295782_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx295955_)
      (let* ((_g295959295994_
              (lambda (_g295960295990_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295960295990_))))
             (_g295958296122_
              (lambda (_g295960295998_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295960295998_))
                    (let ((_e295965296001_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295960295998_))))
                      (let ((_hd295964296005_
                             (let ()
                               (declare (not safe))
                               (##car _e295965296001_)))
                            (_tl295963296008_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295965296001_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl295963296008_))
                            (let ((_g300921_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl295963296008_
                                      '0))))
                              (begin
                                (let ((_g300922_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g300921_)
                                             (##vector-length _g300921_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g300922_ 2)))
                                      (error "Context expects 2 values"
                                             _g300922_)))
                                (let ((_target295966296011_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g300921_ 0)))
                                      (_tl295968296014_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g300921_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295968296014_))
                                      (letrec ((_loop295969296017_
                                                (lambda (_hd295967296021_
                                                         _arity295973296024_
                                                         _prim295974296026_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd295967296021_))
                                                      (let ((_e295970296029_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd295967296021_))))
                (let ((_lp-hd295971296033_
                       (let () (declare (not safe)) (##car _e295970296029_)))
                      (_lp-tl295972296036_
                       (let () (declare (not safe)) (##cdr _e295970296029_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd295971296033_))
                      (let ((_e295979296039_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd295971296033_))))
                        (let ((_hd295978296043_
                               (let ()
                                 (declare (not safe))
                                 (##car _e295979296039_)))
                              (_tl295977296046_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e295979296039_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl295977296046_))
                              (let ((_g300931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl295977296046_
                                        '0))))
                                (begin
                                  (let ((_g300932_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g300931_)
                                               (##vector-length _g300931_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g300932_ 2)))
                                        (error "Context expects 2 values"
                                               _g300932_)))
                                  (let ((_target295980296049_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g300931_ 0)))
                                        (_tl295982296052_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g300931_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl295982296052_))
                                        (letrec ((_loop295983296055_
                                                  (lambda (_hd295981296059_
                                                           _arity295987296062_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd295981296059_))
                                                        (let ((_e295984296065_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd295981296059_))))
                  (let ((_lp-hd295985296069_
                         (let () (declare (not safe)) (##car _e295984296065_)))
                        (_lp-tl295986296072_
                         (let ()
                           (declare (not safe))
                           (##cdr _e295984296065_))))
                    (_loop295983296055_
                     _lp-tl295986296072_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd295985296069_ _arity295987296062_)))))
                (let ((_arity295988296075_ (reverse _arity295987296062_)))
                  (_loop295969296017_
                   _lp-tl295972296036_
                   (let ()
                     (declare (not safe))
                     (cons _arity295988296075_ _arity295973296024_))
                   (let ()
                     (declare (not safe))
                     (cons _hd295978296043_ _prim295974296026_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop295983296055_
                                           _target295980296049_
                                           '()))
                                        (_g295959295994_ _g295960295998_)))))
                              (_g295959295994_ _g295960295998_))))
                      (_g295959295994_ _g295960295998_))))
              (let ((_arity295975296079_ (reverse _arity295973296024_))
                    (_prim295976296082_ (reverse _prim295974296026_)))
                ((lambda (_L296085_ _L296087_)
                   (let ((__tmp300930
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp300923
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296085_
                               _L296087_))
                            (let ((__tmp300924
                                   (lambda (_g296102296108_
                                            _g296103296111_
                                            _g296104296113_)
                                     (let ((__tmp300925
                                            (let ((__tmp300929
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp300926
                                                   (let ((__tmp300927
                                                          (let ((__tmp300928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296105296116_ _g296106296119_)
                           (let ()
                             (declare (not safe))
                             (cons _g296105296116_ _g296106296119_)))))
                    (declare (not safe))
                    (foldr1 __tmp300928 '() _g296102296108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296103296111_
                                                           __tmp300927))))
                                              (declare (not safe))
                                              (cons __tmp300929 __tmp300926))))
                                       (declare (not safe))
                                       (cons __tmp300925 _g296104296113_)))))
                              (declare (not safe))
                              (foldr2 __tmp300924 '() _L296085_ _L296087_)))))
                     (declare (not safe))
                     (cons __tmp300930 __tmp300923)))
                 _arity295975296079_
                 _prim295976296082_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop295969296017_
                                         _target295966296011_
                                         '()
                                         '()))
                                      (_g295959295994_ _g295960295998_)))))
                            (_g295959295994_ _g295960295998_))))
                    (_g295959295994_ _g295960295998_)))))
        (_g295958296122_ _$stx295955_)))))
