(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx159442_)
      (let* ((_g159446159464_
              (lambda (_g159447159460_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159447159460_))))
             (_g159445159519_
              (lambda (_g159447159468_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159447159468_))
                    (let ((_e159452159471_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159447159468_))))
                      (let ((_hd159451159475_
                             (let ()
                               (declare (not safe))
                               (##car _e159452159471_)))
                            (_tl159450159478_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159452159471_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159450159478_))
                            (let ((_e159455159481_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159450159478_))))
                              (let ((_hd159454159485_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159455159481_)))
                                    (_tl159453159488_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159455159481_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159453159488_))
                                    (let ((_e159458159491_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159453159488_))))
                                      (let ((_hd159457159495_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159458159491_)))
                                            (_tl159456159498_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159458159491_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159456159498_))
                                            ((lambda (_L159501_ _L159503_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L159503_))
                                                   (let ((__tmp162983
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp162978
                                                          (let ((__tmp162980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp162982
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp162981
                                (let ()
                                  (declare (not safe))
                                  (cons _L159503_ '()))))
                           (declare (not safe))
                           (cons __tmp162982 __tmp162981)))
                        (__tmp162979
                         (let () (declare (not safe)) (cons _L159501_ '()))))
                    (declare (not safe))
                    (cons __tmp162980 __tmp162979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp162983
                                                           __tmp162978))
                                                   (_g159446159464_
                                                    _g159447159468_)))
                                             _hd159457159495_
                                             _hd159454159485_)
                                            (_g159446159464_
                                             _g159447159468_))))
                                    (_g159446159464_ _g159447159468_))))
                            (_g159446159464_ _g159447159468_))))
                    (_g159446159464_ _g159447159468_)))))
        (_g159445159519_ _$stx159442_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx159523_)
      (let* ((_g159527159556_
              (lambda (_g159528159552_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159528159552_))))
             (_g159526159656_
              (lambda (_g159528159560_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159528159560_))
                    (let ((_e159533159563_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159528159560_))))
                      (let ((_hd159532159567_
                             (let ()
                               (declare (not safe))
                               (##car _e159533159563_)))
                            (_tl159531159570_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159533159563_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159531159570_))
                            (let ((_g162984_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159531159570_
                                      '0))))
                              (begin
                                (let ((_g162985_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162984_)
                                             (##vector-length _g162984_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162985_ 2)))
                                      (error "Context expects 2 values"
                                             _g162985_)))
                                (let ((_target159534159573_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162984_ 0)))
                                      (_tl159536159576_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162984_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159536159576_))
                                      (letrec ((_loop159537159579_
                                                (lambda (_hd159535159583_
                                                         _type159541159586_
                                                         _symbol159542159588_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159535159583_))
                                                      (let ((_e159538159591_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159535159583_))))
                (let ((_lp-hd159539159595_
                       (let () (declare (not safe)) (##car _e159538159591_)))
                      (_lp-tl159540159598_
                       (let () (declare (not safe)) (##cdr _e159538159591_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159539159595_))
                      (let ((_e159547159601_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159539159595_))))
                        (let ((_hd159546159605_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159547159601_)))
                              (_tl159545159608_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159547159601_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159545159608_))
                              (let ((_e159550159611_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159545159608_))))
                                (let ((_hd159549159615_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159550159611_)))
                                      (_tl159548159618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159550159611_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159548159618_))
                                      (_loop159537159579_
                                       _lp-tl159540159598_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159549159615_
                                               _type159541159586_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159546159605_
                                               _symbol159542159588_)))
                                      (_g159527159556_ _g159528159560_))))
                              (_g159527159556_ _g159528159560_))))
                      (_g159527159556_ _g159528159560_))))
              (let ((_type159543159621_ (reverse _type159541159586_))
                    (_symbol159544159624_ (reverse _symbol159542159588_)))
                ((lambda (_L159627_ _L159629_)
                   (let ((__tmp162992
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162986
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159627_
                               _L159629_))
                            (let ((__tmp162987
                                   (lambda (_g159644159648_
                                            _g159645159651_
                                            _g159646159653_)
                                     (let ((__tmp162988
                                            (let ((__tmp162991
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162989
                                                   (let ((__tmp162990
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g159644159648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159645159651_
                                                           __tmp162990))))
                                              (declare (not safe))
                                              (cons __tmp162991 __tmp162989))))
                                       (declare (not safe))
                                       (cons __tmp162988 _g159646159653_)))))
                              (declare (not safe))
                              (foldr2 __tmp162987 '() _L159627_ _L159629_)))))
                     (declare (not safe))
                     (cons __tmp162992 __tmp162986)))
                 _type159543159621_
                 _symbol159544159624_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159537159579_
                                         _target159534159573_
                                         '()
                                         '()))
                                      (_g159527159556_ _g159528159560_)))))
                            (_g159527159556_ _g159528159560_))))
                    (_g159527159556_ _g159528159560_)))))
        (_g159526159656_ _$stx159523_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx159661_)
      (let* ((___stx162543162544_ _$stx159661_)
             (_g159666159708_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162543162544_)))))
        (let ((___kont162546162547_
               (lambda (_L159836_ _L159838_ _L159839_ _L159840_)
                 (let ((__tmp163006
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162993
                        (let ((__tmp163003
                               (let ((__tmp163005
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163004
                                      (let ()
                                        (declare (not safe))
                                        (cons _L159840_ '()))))
                                 (declare (not safe))
                                 (cons __tmp163005 __tmp163004)))
                              (__tmp162994
                               (let ((__tmp163000
                                      (let ((__tmp163002
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163001
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159839_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163002 __tmp163001)))
                                     (__tmp162995
                                      (let ((__tmp162997
                                             (let ((__tmp162999
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162998
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159838_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162999 __tmp162998)))
                                            (__tmp162996
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159836_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162997 __tmp162996))))
                                 (declare (not safe))
                                 (cons __tmp163000 __tmp162995))))
                          (declare (not safe))
                          (cons __tmp163003 __tmp162994))))
                   (declare (not safe))
                   (cons __tmp163006 __tmp162993))))
              (___kont162548162549_
               (lambda (_L159755_ _L159757_ _L159758_ _L159759_)
                 (let ((__tmp163007
                        (let ((__tmp163008
                               (let ((__tmp163009
                                      (let ((__tmp163010
                                             (let ((__tmp163011
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp163011 '()))))
                                        (declare (not safe))
                                        (cons _L159755_ __tmp163010))))
                                 (declare (not safe))
                                 (cons _L159757_ __tmp163009))))
                          (declare (not safe))
                          (cons _L159758_ __tmp163008))))
                   (declare (not safe))
                   (cons _L159759_ __tmp163007)))))
          (let ((___match162582162583_
                 (lambda (_e159674159786_
                          _hd159673159790_
                          _tl159672159793_
                          _e159677159796_
                          _hd159676159800_
                          _tl159675159803_
                          _e159680159806_
                          _hd159679159810_
                          _tl159678159813_
                          _e159683159816_
                          _hd159682159820_
                          _tl159681159823_
                          _e159686159826_
                          _hd159685159830_
                          _tl159684159833_)
                   (let ((_L159836_ _hd159685159830_)
                         (_L159838_ _hd159682159820_)
                         (_L159839_ _hd159679159810_)
                         (_L159840_ _hd159676159800_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L159840_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159839_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159838_)))
                         (___kont162546162547_
                          _L159836_
                          _L159838_
                          _L159839_
                          _L159840_)
                         (let () (declare (not safe)) (_g159666159708_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162543162544_))
                (let ((_e159674159786_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162543162544_))))
                  (let ((_tl159672159793_
                         (let () (declare (not safe)) (##cdr _e159674159786_)))
                        (_hd159673159790_
                         (let ()
                           (declare (not safe))
                           (##car _e159674159786_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159672159793_))
                        (let ((_e159677159796_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159672159793_))))
                          (let ((_tl159675159803_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159677159796_)))
                                (_hd159676159800_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159677159796_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159675159803_))
                                (let ((_e159680159806_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159675159803_))))
                                  (let ((_tl159678159813_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159680159806_)))
                                        (_hd159679159810_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159680159806_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl159678159813_))
                                        (let ((_e159683159816_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl159678159813_))))
                                          (let ((_tl159681159823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e159683159816_)))
                                                (_hd159682159820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e159683159816_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159681159823_))
                                                (let ((_e159686159826_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159681159823_))))
                                                  (let ((_tl159684159833_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159686159826_)))
                                                        (_hd159685159830_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159686159826_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159684159833_))
                                                        (___match162582162583_
                                                         _e159674159786_
                                                         _hd159673159790_
                                                         _tl159672159793_
                                                         _e159677159796_
                                                         _hd159676159800_
                                                         _tl159675159803_
                                                         _e159680159806_
                                                         _hd159679159810_
                                                         _tl159678159813_
                                                         _e159683159816_
                                                         _hd159682159820_
                                                         _tl159681159823_
                                                         _e159686159826_
                                                         _hd159685159830_
                                                         _tl159684159833_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159666159708_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159681159823_))
                                                    (___kont162548162549_
                                                     _hd159682159820_
                                                     _hd159679159810_
                                                     _hd159676159800_
                                                     _hd159673159790_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159666159708_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g159666159708_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g159666159708_)))))
                        (let () (declare (not safe)) (_g159666159708_)))))
                (let () (declare (not safe)) (_g159666159708_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx159865_)
      (let* ((_g159869159904_
              (lambda (_g159870159900_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159870159900_))))
             (_g159868160023_
              (lambda (_g159870159908_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159870159908_))
                    (let ((_e159876159911_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159870159908_))))
                      (let ((_hd159875159915_
                             (let ()
                               (declare (not safe))
                               (##car _e159876159911_)))
                            (_tl159874159918_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159876159911_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159874159918_))
                            (let ((_g163012_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159874159918_
                                      '0))))
                              (begin
                                (let ((_g163013_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163012_)
                                             (##vector-length _g163012_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163013_ 2)))
                                      (error "Context expects 2 values"
                                             _g163013_)))
                                (let ((_target159877159921_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163012_ 0)))
                                      (_tl159879159924_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163012_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159879159924_))
                                      (letrec ((_loop159880159927_
                                                (lambda (_hd159878159931_
                                                         _symbol159884159934_
                                                         _method159885159936_
                                                         _type-t159886159938_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159878159931_))
                                                      (let ((_e159881159941_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159878159931_))))
                (let ((_lp-hd159882159945_
                       (let () (declare (not safe)) (##car _e159881159941_)))
                      (_lp-tl159883159948_
                       (let () (declare (not safe)) (##cdr _e159881159941_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159882159945_))
                      (let ((_e159892159951_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159882159945_))))
                        (let ((_hd159891159955_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159892159951_)))
                              (_tl159890159958_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159892159951_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159890159958_))
                              (let ((_e159895159961_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159890159958_))))
                                (let ((_hd159894159965_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159895159961_)))
                                      (_tl159893159968_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159895159961_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159893159968_))
                                      (let ((_e159898159971_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159893159968_))))
                                        (let ((_hd159897159975_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159898159971_)))
                                              (_tl159896159978_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159898159971_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159896159978_))
                                              (_loop159880159927_
                                               _lp-tl159883159948_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159897159975_
                                                       _symbol159884159934_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159894159965_
                                                       _method159885159936_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159891159955_
                                                       _type-t159886159938_)))
                                              (_g159869159904_
                                               _g159870159908_))))
                                      (_g159869159904_ _g159870159908_))))
                              (_g159869159904_ _g159870159908_))))
                      (_g159869159904_ _g159870159908_))))
              (let ((_symbol159887159981_ (reverse _symbol159884159934_))
                    (_method159888159984_ (reverse _method159885159936_))
                    (_type-t159889159986_ (reverse _type-t159886159938_)))
                ((lambda (_L159989_ _L159991_ _L159992_)
                   (let ((__tmp163021
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163014
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159989_
                               _L159991_
                               _L159992_))
                            (let ((__tmp163015
                                   (lambda (_g160008160013_
                                            _g160009160016_
                                            _g160010160018_
                                            _g160011160020_)
                                     (let ((__tmp163016
                                            (let ((__tmp163020
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp163017
                                                   (let ((__tmp163018
                                                          (let ((__tmp163019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g160008160013_ '()))))
                    (declare (not safe))
                    (cons _g160009160016_ __tmp163019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160010160018_
                                                           __tmp163018))))
                                              (declare (not safe))
                                              (cons __tmp163020 __tmp163017))))
                                       (declare (not safe))
                                       (cons __tmp163016 _g160011160020_)))))
                              (declare (not safe))
                              (foldr* __tmp163015
                                      '()
                                      _L159989_
                                      _L159991_
                                      _L159992_)))))
                     (declare (not safe))
                     (cons __tmp163021 __tmp163014)))
                 _symbol159887159981_
                 _method159888159984_
                 _type-t159889159986_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159880159927_
                                         _target159877159921_
                                         '()
                                         '()
                                         '()))
                                      (_g159869159904_ _g159870159908_)))))
                            (_g159869159904_ _g159870159908_))))
                    (_g159869159904_ _g159870159908_)))))
        (_g159868160023_ _$stx159865_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx160028_)
      (let* ((_g160032160065_
              (lambda (_g160033160061_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160033160061_))))
             (_g160031160179_
              (lambda (_g160033160069_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160033160069_))
                    (let ((_e160039160072_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160033160069_))))
                      (let ((_hd160038160076_
                             (let ()
                               (declare (not safe))
                               (##car _e160039160072_)))
                            (_tl160037160079_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160039160072_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160037160079_))
                            (let ((_e160042160082_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160037160079_))))
                              (let ((_hd160041160086_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160042160082_)))
                                    (_tl160040160089_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160042160082_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160040160089_))
                                    (let ((_g163022_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160040160089_
                                              '0))))
                                      (begin
                                        (let ((_g163023_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g163022_)
                                                     (##vector-length
                                                      _g163022_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g163023_ 2)))
                                              (error "Context expects 2 values"
                                                     _g163023_)))
                                        (let ((_target160043160092_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163022_ 0)))
                                              (_tl160045160095_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163022_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160045160095_))
                                              (letrec ((_loop160046160098_
                                                        (lambda (_hd160044160102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol160050160105_
                         _method160051160107_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd160044160102_))
                      (let ((_e160047160110_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd160044160102_))))
                        (let ((_lp-hd160048160114_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160047160110_)))
                              (_lp-tl160049160117_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160047160110_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd160048160114_))
                              (let ((_e160056160120_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd160048160114_))))
                                (let ((_hd160055160124_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160056160120_)))
                                      (_tl160054160127_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160056160120_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl160054160127_))
                                      (let ((_e160059160130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl160054160127_))))
                                        (let ((_hd160058160134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160059160130_)))
                                              (_tl160057160137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160059160130_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160057160137_))
                                              (_loop160046160098_
                                               _lp-tl160049160117_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160058160134_
                                                       _symbol160050160105_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160055160124_
                                                       _method160051160107_)))
                                              (_g160032160065_
                                               _g160033160069_))))
                                      (_g160032160065_ _g160033160069_))))
                              (_g160032160065_ _g160033160069_))))
                      (let ((_symbol160052160140_
                             (reverse _symbol160050160105_))
                            (_method160053160143_
                             (reverse _method160051160107_)))
                        ((lambda (_L160146_ _L160148_ _L160149_)
                           (let ((__tmp163031
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp163024
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L160146_
                                       _L160148_))
                                    (let ((__tmp163025
                                           (lambda (_g160167160171_
                                                    _g160168160174_
                                                    _g160169160176_)
                                             (let ((__tmp163026
                                                    (let ((__tmp163030
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp163027
                                                           (let ((__tmp163028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp163029
                                 (let ()
                                   (declare (not safe))
                                   (cons _g160167160171_ '()))))
                            (declare (not safe))
                            (cons _g160168160174_ __tmp163029))))
                     (declare (not safe))
                     (cons _L160149_ __tmp163028))))
              (declare (not safe))
              (cons __tmp163030 __tmp163027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163026
                                                     _g160169160176_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp163025
                                              '()
                                              _L160146_
                                              _L160148_)))))
                             (declare (not safe))
                             (cons __tmp163031 __tmp163024)))
                         _symbol160052160140_
                         _method160053160143_
                         _hd160041160086_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop160046160098_
                                                 _target160043160092_
                                                 '()
                                                 '()))
                                              (_g160032160065_
                                               _g160033160069_)))))
                                    (_g160032160065_ _g160033160069_))))
                            (_g160032160065_ _g160033160069_))))
                    (_g160032160065_ _g160033160069_)))))
        (_g160031160179_ _$stx160028_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx160184_)
      (let* ((_g160188160202_
              (lambda (_g160189160198_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160189160198_))))
             (_g160187160243_
              (lambda (_g160189160206_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160189160206_))
                    (let ((_e160193160209_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160189160206_))))
                      (let ((_hd160192160213_
                             (let ()
                               (declare (not safe))
                               (##car _e160193160209_)))
                            (_tl160191160216_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160193160209_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160191160216_))
                            (let ((_e160196160219_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160191160216_))))
                              (let ((_hd160195160223_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160196160219_)))
                                    (_tl160194160226_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160196160219_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160194160226_))
                                    ((lambda (_L160229_)
                                       (let ((__tmp163036
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp163032
                                              (let ((__tmp163033
                                                     (let ((__tmp163035
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163034
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163035 __tmp163034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163033 '()))))
                                         (declare (not safe))
                                         (cons __tmp163036 __tmp163032)))
                                     _hd160195160223_)
                                    (_g160188160202_ _g160189160206_))))
                            (_g160188160202_ _g160189160206_))))
                    (_g160188160202_ _g160189160206_)))))
        (_g160187160243_ _$stx160184_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx160247_)
      (let* ((_g160251160301_
              (lambda (_g160252160297_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160252160297_))))
             (_g160250160468_
              (lambda (_g160252160305_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160252160305_))
                    (let ((_e160265160308_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160252160305_))))
                      (let ((_hd160264160312_
                             (let ()
                               (declare (not safe))
                               (##car _e160265160308_)))
                            (_tl160263160315_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160265160308_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160263160315_))
                            (let ((_e160268160318_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160263160315_))))
                              (let ((_hd160267160322_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160268160318_)))
                                    (_tl160266160325_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160268160318_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160266160325_))
                                    (let ((_e160271160328_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160266160325_))))
                                      (let ((_hd160270160332_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160271160328_)))
                                            (_tl160269160335_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160271160328_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160269160335_))
                                            (let ((_e160274160338_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160269160335_))))
                                              (let ((_hd160273160342_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160274160338_)))
                                                    (_tl160272160345_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160274160338_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160272160345_))
                                                    (let ((_e160277160348_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160272160345_))))
                                                      (let ((_hd160276160352_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e160277160348_)))
                    (_tl160275160355_
                     (let () (declare (not safe)) (##cdr _e160277160348_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl160275160355_))
                    (let ((_e160280160358_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl160275160355_))))
                      (let ((_hd160279160362_
                             (let ()
                               (declare (not safe))
                               (##car _e160280160358_)))
                            (_tl160278160365_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160280160358_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160278160365_))
                            (let ((_e160283160368_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160278160365_))))
                              (let ((_hd160282160372_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160283160368_)))
                                    (_tl160281160375_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160283160368_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160281160375_))
                                    (let ((_e160286160378_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160281160375_))))
                                      (let ((_hd160285160382_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160286160378_)))
                                            (_tl160284160385_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160286160378_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160284160385_))
                                            (let ((_e160289160388_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160284160385_))))
                                              (let ((_hd160288160392_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160289160388_)))
                                                    (_tl160287160395_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160289160388_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160287160395_))
                                                    (let ((_e160292160398_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160287160395_))))
                                                      (let ((_hd160291160402_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e160292160398_)))
                    (_tl160290160405_
                     (let () (declare (not safe)) (##cdr _e160292160398_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl160290160405_))
                    (let ((_e160295160408_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl160290160405_))))
                      (let ((_hd160294160412_
                             (let ()
                               (declare (not safe))
                               (##car _e160295160408_)))
                            (_tl160293160415_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160295160408_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl160293160415_))
                            ((lambda (_L160418_
                                      _L160420_
                                      _L160421_
                                      _L160422_
                                      _L160423_
                                      _L160424_
                                      _L160425_
                                      _L160426_
                                      _L160427_
                                      _L160428_)
                               (let ((__tmp163071
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp163037
                                      (let ((__tmp163068
                                             (let ((__tmp163070
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163069
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160428_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163070 __tmp163069)))
                                            (__tmp163038
                                             (let ((__tmp163065
                                                    (let ((__tmp163067
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp163066
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L160427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp163067 __tmp163066)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp163039
                                                    (let ((__tmp163062
                                                           (let ((__tmp163064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp163063
                          (let () (declare (not safe)) (cons _L160426_ '()))))
                     (declare (not safe))
                     (cons __tmp163064 __tmp163063)))
                  (__tmp163040
                   (let ((__tmp163059
                          (let ((__tmp163061
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp163060
                                 (let ()
                                   (declare (not safe))
                                   (cons _L160425_ '()))))
                            (declare (not safe))
                            (cons __tmp163061 __tmp163060)))
                         (__tmp163041
                          (let ((__tmp163056
                                 (let ((__tmp163058
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp163057
                                        (let ()
                                          (declare (not safe))
                                          (cons _L160424_ '()))))
                                   (declare (not safe))
                                   (cons __tmp163058 __tmp163057)))
                                (__tmp163042
                                 (let ((__tmp163053
                                        (let ((__tmp163055
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp163054
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L160423_ '()))))
                                          (declare (not safe))
                                          (cons __tmp163055 __tmp163054)))
                                       (__tmp163043
                                        (let ((__tmp163044
                                               (let ((__tmp163045
                                                      (let ((__tmp163050
                                                             (let ((__tmp163052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163051
                            (let ()
                              (declare (not safe))
                              (cons _L160420_ '()))))
                       (declare (not safe))
                       (cons __tmp163052 __tmp163051)))
                    (__tmp163046
                     (let ((__tmp163047
                            (let ((__tmp163049
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163048
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160418_ '()))))
                              (declare (not safe))
                              (cons __tmp163049 __tmp163048))))
                       (declare (not safe))
                       (cons __tmp163047 '()))))
                (declare (not safe))
                (cons __tmp163050 __tmp163046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L160421_
                                                       __tmp163045))))
                                          (declare (not safe))
                                          (cons _L160422_ __tmp163044))))
                                   (declare (not safe))
                                   (cons __tmp163053 __tmp163043))))
                            (declare (not safe))
                            (cons __tmp163056 __tmp163042))))
                     (declare (not safe))
                     (cons __tmp163059 __tmp163041))))
              (declare (not safe))
              (cons __tmp163062 __tmp163040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163065
                                                     __tmp163039))))
                                        (declare (not safe))
                                        (cons __tmp163068 __tmp163038))))
                                 (declare (not safe))
                                 (cons __tmp163071 __tmp163037)))
                             _hd160294160412_
                             _hd160291160402_
                             _hd160288160392_
                             _hd160285160382_
                             _hd160282160372_
                             _hd160279160362_
                             _hd160276160352_
                             _hd160273160342_
                             _hd160270160332_
                             _hd160267160322_)
                            (_g160251160301_ _g160252160305_))))
                    (_g160251160301_ _g160252160305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g160251160301_
                                                     _g160252160305_))))
                                            (_g160251160301_
                                             _g160252160305_))))
                                    (_g160251160301_ _g160252160305_))))
                            (_g160251160301_ _g160252160305_))))
                    (_g160251160301_ _g160252160305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g160251160301_
                                                     _g160252160305_))))
                                            (_g160251160301_
                                             _g160252160305_))))
                                    (_g160251160301_ _g160252160305_))))
                            (_g160251160301_ _g160252160305_))))
                    (_g160251160301_ _g160252160305_)))))
        (_g160250160468_ _$stx160247_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx160472_)
      (let* ((_g160476160490_
              (lambda (_g160477160486_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160477160486_))))
             (_g160475160531_
              (lambda (_g160477160494_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160477160494_))
                    (let ((_e160481160497_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160477160494_))))
                      (let ((_hd160480160501_
                             (let ()
                               (declare (not safe))
                               (##car _e160481160497_)))
                            (_tl160479160504_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160481160497_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160479160504_))
                            (let ((_e160484160507_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160479160504_))))
                              (let ((_hd160483160511_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160484160507_)))
                                    (_tl160482160514_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160484160507_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160482160514_))
                                    ((lambda (_L160517_)
                                       (let ((__tmp163076
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp163072
                                              (let ((__tmp163073
                                                     (let ((__tmp163075
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163074
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163075 __tmp163074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163073 '()))))
                                         (declare (not safe))
                                         (cons __tmp163076 __tmp163072)))
                                     _hd160483160511_)
                                    (_g160476160490_ _g160477160494_))))
                            (_g160476160490_ _g160477160494_))))
                    (_g160476160490_ _g160477160494_)))))
        (_g160475160531_ _$stx160472_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx160535_)
      (let* ((_g160539160553_
              (lambda (_g160540160549_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160540160549_))))
             (_g160538160594_
              (lambda (_g160540160557_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160540160557_))
                    (let ((_e160544160560_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160540160557_))))
                      (let ((_hd160543160564_
                             (let ()
                               (declare (not safe))
                               (##car _e160544160560_)))
                            (_tl160542160567_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160544160560_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160542160567_))
                            (let ((_e160547160570_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160542160567_))))
                              (let ((_hd160546160574_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160547160570_)))
                                    (_tl160545160577_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160547160570_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160545160577_))
                                    ((lambda (_L160580_)
                                       (let ((__tmp163081
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp163077
                                              (let ((__tmp163078
                                                     (let ((__tmp163080
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163079
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163080 __tmp163079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163078 '()))))
                                         (declare (not safe))
                                         (cons __tmp163081 __tmp163077)))
                                     _hd160546160574_)
                                    (_g160539160553_ _g160540160557_))))
                            (_g160539160553_ _g160540160557_))))
                    (_g160539160553_ _g160540160557_)))))
        (_g160538160594_ _$stx160535_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx160598_)
      (let* ((_g160602160624_
              (lambda (_g160603160620_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160603160620_))))
             (_g160601160693_
              (lambda (_g160603160628_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160603160628_))
                    (let ((_e160609160631_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160603160628_))))
                      (let ((_hd160608160635_
                             (let ()
                               (declare (not safe))
                               (##car _e160609160631_)))
                            (_tl160607160638_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160609160631_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160607160638_))
                            (let ((_e160612160641_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160607160638_))))
                              (let ((_hd160611160645_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160612160641_)))
                                    (_tl160610160648_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160612160641_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160610160648_))
                                    (let ((_e160615160651_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160610160648_))))
                                      (let ((_hd160614160655_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160615160651_)))
                                            (_tl160613160658_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160615160651_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160613160658_))
                                            (let ((_e160618160661_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160613160658_))))
                                              (let ((_hd160617160665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160618160661_)))
                                                    (_tl160616160668_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160618160661_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160616160668_))
                                                    ((lambda (_L160671_
                                                              _L160673_
                                                              _L160674_)
                                                       (let ((__tmp163091
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp163082
                      (let ((__tmp163088
                             (let ((__tmp163090
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp163089
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160674_ '()))))
                               (declare (not safe))
                               (cons __tmp163090 __tmp163089)))
                            (__tmp163083
                             (let ((__tmp163085
                                    (let ((__tmp163087
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163086
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160673_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163087 __tmp163086)))
                                   (__tmp163084
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160671_ '()))))
                               (declare (not safe))
                               (cons __tmp163085 __tmp163084))))
                        (declare (not safe))
                        (cons __tmp163088 __tmp163083))))
                 (declare (not safe))
                 (cons __tmp163091 __tmp163082)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160617160665_
                                                     _hd160614160655_
                                                     _hd160611160645_)
                                                    (_g160602160624_
                                                     _g160603160628_))))
                                            (_g160602160624_
                                             _g160603160628_))))
                                    (_g160602160624_ _g160603160628_))))
                            (_g160602160624_ _g160603160628_))))
                    (_g160602160624_ _g160603160628_)))))
        (_g160601160693_ _$stx160598_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx160697_)
      (let* ((_g160701160723_
              (lambda (_g160702160719_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160702160719_))))
             (_g160700160792_
              (lambda (_g160702160727_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160702160727_))
                    (let ((_e160708160730_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160702160727_))))
                      (let ((_hd160707160734_
                             (let ()
                               (declare (not safe))
                               (##car _e160708160730_)))
                            (_tl160706160737_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160708160730_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160706160737_))
                            (let ((_e160711160740_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160706160737_))))
                              (let ((_hd160710160744_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160711160740_)))
                                    (_tl160709160747_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160711160740_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160709160747_))
                                    (let ((_e160714160750_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160709160747_))))
                                      (let ((_hd160713160754_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160714160750_)))
                                            (_tl160712160757_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160714160750_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160712160757_))
                                            (let ((_e160717160760_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160712160757_))))
                                              (let ((_hd160716160764_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160717160760_)))
                                                    (_tl160715160767_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160717160760_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160715160767_))
                                                    ((lambda (_L160770_
                                                              _L160772_
                                                              _L160773_)
                                                       (let ((__tmp163101
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp163092
                      (let ((__tmp163098
                             (let ((__tmp163100
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp163099
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160773_ '()))))
                               (declare (not safe))
                               (cons __tmp163100 __tmp163099)))
                            (__tmp163093
                             (let ((__tmp163095
                                    (let ((__tmp163097
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163096
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160772_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163097 __tmp163096)))
                                   (__tmp163094
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160770_ '()))))
                               (declare (not safe))
                               (cons __tmp163095 __tmp163094))))
                        (declare (not safe))
                        (cons __tmp163098 __tmp163093))))
                 (declare (not safe))
                 (cons __tmp163101 __tmp163092)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160716160764_
                                                     _hd160713160754_
                                                     _hd160710160744_)
                                                    (_g160701160723_
                                                     _g160702160727_))))
                                            (_g160701160723_
                                             _g160702160727_))))
                                    (_g160701160723_ _g160702160727_))))
                            (_g160701160723_ _g160702160727_))))
                    (_g160701160723_ _g160702160727_)))))
        (_g160700160792_ _$stx160697_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx160796_)
      (let* ((___stx162611162612_ _$stx160796_)
             (_g160804160872_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162611162612_)))))
        (let ((___kont162614162615_
               (lambda (_L161150_ _L161152_)
                 (let ((__tmp163122
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp163102
                        (let ((__tmp163118
                               (let ((__tmp163121
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163119
                                      (let ((__tmp163120
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163120 '()))))
                                 (declare (not safe))
                                 (cons __tmp163121 __tmp163119)))
                              (__tmp163103
                               (let ((__tmp163115
                                      (let ((__tmp163117
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163116
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161152_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163117 __tmp163116)))
                                     (__tmp163104
                                      (let ((__tmp163105
                                             (let ((__tmp163106
                                                    (let ((__tmp163107
                                                           (let ((__tmp163114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp163108
                          (let ((__tmp163109
                                 (let ((__tmp163113
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp163110
                                        (let ((__tmp163111
                                               (let ((__tmp163112
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L161150_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp163112))))
                                          (declare (not safe))
                                          (cons _L161152_ __tmp163111))))
                                   (declare (not safe))
                                   (cons __tmp163113 __tmp163110))))
                            (declare (not safe))
                            (cons __tmp163109 '()))))
                     (declare (not safe))
                     (cons __tmp163114 __tmp163108))))
              (declare (not safe))
              (cons __tmp163107 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L161150_ __tmp163106))))
                                        (declare (not safe))
                                        (cons '#f __tmp163105))))
                                 (declare (not safe))
                                 (cons __tmp163115 __tmp163104))))
                          (declare (not safe))
                          (cons __tmp163118 __tmp163103))))
                   (declare (not safe))
                   (cons __tmp163122 __tmp163102))))
              (___kont162616162617_
               (lambda (_L161081_ _L161083_)
                 (let ((__tmp163123
                        (let ((__tmp163124
                               (let ((__tmp163125
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L161081_ __tmp163125))))
                          (declare (not safe))
                          (cons 'primitive: __tmp163124))))
                   (declare (not safe))
                   (cons _L161083_ __tmp163123))))
              (___kont162618162619_
               (lambda (_L161020_ _L161022_)
                 (let ((__tmp163139
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp163126
                        (let ((__tmp163135
                               (let ((__tmp163138
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163136
                                      (let ((__tmp163137
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163137 '()))))
                                 (declare (not safe))
                                 (cons __tmp163138 __tmp163136)))
                              (__tmp163127
                               (let ((__tmp163132
                                      (let ((__tmp163134
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163133
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161022_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163134 __tmp163133)))
                                     (__tmp163128
                                      (let ((__tmp163129
                                             (let ((__tmp163131
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163130
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161020_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163131
                                                     __tmp163130))))
                                        (declare (not safe))
                                        (cons __tmp163129 '()))))
                                 (declare (not safe))
                                 (cons __tmp163132 __tmp163128))))
                          (declare (not safe))
                          (cons __tmp163135 __tmp163127))))
                   (declare (not safe))
                   (cons __tmp163139 __tmp163126))))
              (___kont162620162621_
               (lambda (_L160952_ _L160954_)
                 (let ((__tmp163153
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp163140
                        (let ((__tmp163149
                               (let ((__tmp163152
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163150
                                      (let ((__tmp163151
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163151 '()))))
                                 (declare (not safe))
                                 (cons __tmp163152 __tmp163150)))
                              (__tmp163141
                               (let ((__tmp163146
                                      (let ((__tmp163148
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163147
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160954_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163148 __tmp163147)))
                                     (__tmp163142
                                      (let ((__tmp163143
                                             (let ((__tmp163145
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163144
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160952_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163145
                                                     __tmp163144))))
                                        (declare (not safe))
                                        (cons __tmp163143 '()))))
                                 (declare (not safe))
                                 (cons __tmp163146 __tmp163142))))
                          (declare (not safe))
                          (cons __tmp163149 __tmp163141))))
                   (declare (not safe))
                   (cons __tmp163153 __tmp163140))))
              (___kont162622162623_
               (lambda (_L160899_ _L160901_)
                 (let ((__tmp163154
                        (let ((__tmp163155
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L160899_ __tmp163155))))
                   (declare (not safe))
                   (cons _L160901_ __tmp163154)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx162611162612_))
              (let ((_e160810161106_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx162611162612_))))
                (let ((_tl160808161113_
                       (let () (declare (not safe)) (##cdr _e160810161106_)))
                      (_hd160809161110_
                       (let () (declare (not safe)) (##car _e160810161106_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl160808161113_))
                      (let ((_e160813161116_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160808161113_))))
                        (let ((_tl160811161123_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160813161116_)))
                              (_hd160812161120_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160813161116_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160811161123_))
                              (let ((_e160816161126_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160811161123_))))
                                (let ((_tl160814161133_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160816161126_)))
                                      (_hd160815161130_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160816161126_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd160815161130_))
                                      (let ((_e160817161136_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd160815161130_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e160817161136_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160814161133_))
                                                (let ((_e160820161140_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160814161133_))))
                                                  (let ((_tl160818161147_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160820161140_)))
                                                        (_hd160819161144_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160820161140_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160818161147_))
                                                        (___kont162614162615_
                                                         _hd160819161144_
                                                         _hd160812161120_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd160812161120_))
                                                            (let ((_e160829161067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd160812161120_))))
                      (declare (not safe))
                      (_g160804160872_))
                    (let () (declare (not safe)) (_g160804160872_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd160812161120_))
                                                    (let ((_e160829161067_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd160812161120_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e160829161067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160814161133_))
                      (___kont162616162617_ _hd160815161130_ _hd160809161110_)
                      (let () (declare (not safe)) (_g160804160872_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160814161133_))
                      (___kont162620162621_ _hd160815161130_ _hd160812161120_)
                      (let () (declare (not safe)) (_g160804160872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160814161133_))
                                                        (___kont162620162621_
                                                         _hd160815161130_
                                                         _hd160812161120_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160804160872_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd160812161120_))
                                                (let ((_e160829161067_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd160812161120_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e160829161067_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160814161133_))
                                                          (___kont162616162617_
                                                           _hd160815161130_
                                                           _hd160809161110_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl160814161133_))
                      (let ((_e160847161010_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160814161133_))))
                        (let ((_tl160845161017_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160847161010_)))
                              (_hd160846161014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160847161010_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160845161017_))
                              (___kont162618162619_
                               _hd160846161014_
                               _hd160815161130_)
                              (let ()
                                (declare (not safe))
                                (_g160804160872_)))))
                      (let () (declare (not safe)) (_g160804160872_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160814161133_))
                  (___kont162620162621_ _hd160815161130_ _hd160812161120_)
                  (let () (declare (not safe)) (_g160804160872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160814161133_))
                                                    (___kont162620162621_
                                                     _hd160815161130_
                                                     _hd160812161120_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160804160872_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd160812161120_))
                                          (let ((_e160829161067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd160812161120_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e160829161067_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160814161133_))
                                                    (___kont162616162617_
                                                     _hd160815161130_
                                                     _hd160809161110_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160814161133_))
                                                        (let ((_e160847161010_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160814161133_))))
                  (let ((_tl160845161017_
                         (let () (declare (not safe)) (##cdr _e160847161010_)))
                        (_hd160846161014_
                         (let ()
                           (declare (not safe))
                           (##car _e160847161010_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160845161017_))
                        (___kont162618162619_
                         _hd160846161014_
                         _hd160815161130_)
                        (let () (declare (not safe)) (_g160804160872_)))))
                (let () (declare (not safe)) (_g160804160872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160814161133_))
                                                    (___kont162620162621_
                                                     _hd160815161130_
                                                     _hd160812161120_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160804160872_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160814161133_))
                                              (___kont162620162621_
                                               _hd160815161130_
                                               _hd160812161120_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160804160872_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd160812161120_))
                                  (let ((_e160829161067_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd160812161120_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160811161123_))
                                        (___kont162622162623_
                                         _hd160812161120_
                                         _hd160809161110_)
                                        (let ()
                                          (declare (not safe))
                                          (_g160804160872_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160811161123_))
                                      (___kont162622162623_
                                       _hd160812161120_
                                       _hd160809161110_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160804160872_)))))))
                      (let () (declare (not safe)) (_g160804160872_)))))
              (let () (declare (not safe)) (_g160804160872_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx161174_)
      (let* ((___stx162751162752_ _$stx161174_)
             (_g161179161234_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162751162752_)))))
        (let ((___kont162754162755_
               (lambda (_L161419_ _L161421_)
                 (let ((__tmp163171
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp163156
                        (let ((__tmp163167
                               (let ((__tmp163170
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163168
                                      (let ((__tmp163169
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp163169 '()))))
                                 (declare (not safe))
                                 (cons __tmp163170 __tmp163168)))
                              (__tmp163157
                               (let ((__tmp163158
                                      (let ((__tmp163166
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp163159
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L161419_
                                                  _L161421_))
                                               (let ((__tmp163160
                                                      (lambda (_g161438161442_
                                                               _g161439161445_
                                                               _g161440161447_)
                                                        (let ((__tmp163161
                                                               (let ((__tmp163165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp163162
                              (let ((__tmp163163
                                     (let ((__tmp163164
                                            (let ()
                                              (declare (not safe))
                                              (cons _g161438161442_ '()))))
                                       (declare (not safe))
                                       (cons _g161439161445_ __tmp163164))))
                                (declare (not safe))
                                (cons 'primitive: __tmp163163))))
                         (declare (not safe))
                         (cons __tmp163165 __tmp163162))))
                  (declare (not safe))
                  (cons __tmp163161 _g161440161447_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp163160
                                                         '()
                                                         _L161419_
                                                         _L161421_)))))
                                        (declare (not safe))
                                        (cons __tmp163166 __tmp163159))))
                                 (declare (not safe))
                                 (cons __tmp163158 '()))))
                          (declare (not safe))
                          (cons __tmp163167 __tmp163157))))
                   (declare (not safe))
                   (cons __tmp163171 __tmp163156))))
              (___kont162758162759_
               (lambda (_L161305_ _L161307_)
                 (let ((__tmp163186
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp163172
                        (let ((__tmp163182
                               (let ((__tmp163185
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163183
                                      (let ((__tmp163184
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp163184 '()))))
                                 (declare (not safe))
                                 (cons __tmp163185 __tmp163183)))
                              (__tmp163173
                               (let ((__tmp163174
                                      (let ((__tmp163181
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp163175
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L161305_
                                                  _L161307_))
                                               (let ((__tmp163176
                                                      (lambda (_g161322161326_
                                                               _g161323161329_
                                                               _g161324161331_)
                                                        (let ((__tmp163177
                                                               (let ((__tmp163180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp163178
                              (let ((__tmp163179
                                     (let ()
                                       (declare (not safe))
                                       (cons _g161322161326_ '()))))
                                (declare (not safe))
                                (cons _g161323161329_ __tmp163179))))
                         (declare (not safe))
                         (cons __tmp163180 __tmp163178))))
                  (declare (not safe))
                  (cons __tmp163177 _g161324161331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp163176
                                                         '()
                                                         _L161305_
                                                         _L161307_)))))
                                        (declare (not safe))
                                        (cons __tmp163181 __tmp163175))))
                                 (declare (not safe))
                                 (cons __tmp163174 '()))))
                          (declare (not safe))
                          (cons __tmp163182 __tmp163173))))
                   (declare (not safe))
                   (cons __tmp163186 __tmp163172)))))
          (let* ((___match162802162803_
                  (lambda (_e161211161241_
                           _hd161210161245_
                           _tl161209161248_
                           ___splice162760162761_
                           _target161212161251_
                           _tl161214161254_)
                    (letrec ((_loop161215161257_
                              (lambda (_hd161213161261_
                                       _dispatch161219161264_
                                       _arity161220161266_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161213161261_))
                                    (let ((_e161216161269_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161213161261_))))
                                      (let ((_lp-tl161218161276_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161216161269_)))
                                            (_lp-hd161217161273_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161216161269_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd161217161273_))
                                            (let ((_e161225161279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd161217161273_))))
                                              (let ((_tl161223161286_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161225161279_)))
                                                    (_hd161224161283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161225161279_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161223161286_))
                                                    (let ((_e161228161289_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161223161286_))))
                                                      (let ((_tl161226161296_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e161228161289_)))
                    (_hd161227161293_
                     (let () (declare (not safe)) (##car _e161228161289_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl161226161296_))
                    (_loop161215161257_
                     _lp-tl161218161276_
                     (let ()
                       (declare (not safe))
                       (cons _hd161227161293_ _dispatch161219161264_))
                     (let ()
                       (declare (not safe))
                       (cons _hd161224161283_ _arity161220161266_)))
                    (let () (declare (not safe)) (_g161179161234_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161179161234_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161179161234_)))))
                                    (let ((_arity161222161302_
                                           (reverse _arity161220161266_))
                                          (_dispatch161221161299_
                                           (reverse _dispatch161219161264_)))
                                      (___kont162758162759_
                                       _dispatch161221161299_
                                       _arity161222161302_))))))
                      (_loop161215161257_ _target161212161251_ '() '()))))
                 (___match162794162795_
                  (lambda (_e161211161241_ _hd161210161245_ _tl161209161248_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl161209161248_))
                        (let ((___splice162760162761_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl161209161248_
                                  '0))))
                          (let ((_tl161214161254_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162760162761_ '1)))
                                (_target161212161251_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162760162761_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl161214161254_))
                                (___match162802162803_
                                 _e161211161241_
                                 _hd161210161245_
                                 _tl161209161248_
                                 ___splice162760162761_
                                 _target161212161251_
                                 _tl161214161254_)
                                (let ()
                                  (declare (not safe))
                                  (_g161179161234_)))))
                        (let () (declare (not safe)) (_g161179161234_)))))
                 (___match162788162789_
                  (lambda (_e161185161341_
                           _hd161184161345_
                           _tl161183161348_
                           _e161188161351_
                           _hd161187161355_
                           _tl161186161358_
                           _e161189161361_
                           ___splice162756162757_
                           _target161190161365_
                           _tl161192161368_)
                    (letrec ((_loop161193161371_
                              (lambda (_hd161191161375_
                                       _dispatch161197161378_
                                       _arity161198161380_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161191161375_))
                                    (let ((_e161194161383_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161191161375_))))
                                      (let ((_lp-tl161196161390_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161194161383_)))
                                            (_lp-hd161195161387_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161194161383_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd161195161387_))
                                            (let ((_e161203161393_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd161195161387_))))
                                              (let ((_tl161201161400_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161203161393_)))
                                                    (_hd161202161397_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161203161393_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161201161400_))
                                                    (let ((_e161206161403_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161201161400_))))
                                                      (let ((_tl161204161410_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e161206161403_)))
                    (_hd161205161407_
                     (let () (declare (not safe)) (##car _e161206161403_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl161204161410_))
                    (_loop161193161371_
                     _lp-tl161196161390_
                     (let ()
                       (declare (not safe))
                       (cons _hd161205161407_ _dispatch161197161378_))
                     (let ()
                       (declare (not safe))
                       (cons _hd161202161397_ _arity161198161380_)))
                    (___match162794162795_
                     _e161185161341_
                     _hd161184161345_
                     _tl161183161348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match162794162795_
                                                     _e161185161341_
                                                     _hd161184161345_
                                                     _tl161183161348_))))
                                            (___match162794162795_
                                             _e161185161341_
                                             _hd161184161345_
                                             _tl161183161348_))))
                                    (let ((_arity161200161416_
                                           (reverse _arity161198161380_))
                                          (_dispatch161199161413_
                                           (reverse _dispatch161197161378_)))
                                      (___kont162754162755_
                                       _dispatch161199161413_
                                       _arity161200161416_))))))
                      (_loop161193161371_ _target161190161365_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162751162752_))
                (let ((_e161185161341_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162751162752_))))
                  (let ((_tl161183161348_
                         (let () (declare (not safe)) (##cdr _e161185161341_)))
                        (_hd161184161345_
                         (let ()
                           (declare (not safe))
                           (##car _e161185161341_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161183161348_))
                        (let ((_e161188161351_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161183161348_))))
                          (let ((_tl161186161358_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161188161351_)))
                                (_hd161187161355_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161188161351_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd161187161355_))
                                (let ((_e161189161361_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd161187161355_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e161189161361_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl161186161358_))
                                          (let ((___splice162756162757_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl161186161358_
                                                    '0))))
                                            (let ((_tl161192161368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162756162757_
                                                      '1)))
                                                  (_target161190161365_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162756162757_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161192161368_))
                                                  (___match162788162789_
                                                   _e161185161341_
                                                   _hd161184161345_
                                                   _tl161183161348_
                                                   _e161188161351_
                                                   _hd161187161355_
                                                   _tl161186161358_
                                                   _e161189161361_
                                                   ___splice162756162757_
                                                   _target161190161365_
                                                   _tl161192161368_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161183161348_))
                                                      (let ((___splice162760162761_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161183161348_ '0))))
                (let ((_tl161214161254_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162760162761_ '1)))
                      (_target161212161251_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162760162761_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161214161254_))
                      (___match162802162803_
                       _e161185161341_
                       _hd161184161345_
                       _tl161183161348_
                       ___splice162760162761_
                       _target161212161251_
                       _tl161214161254_)
                      (let () (declare (not safe)) (_g161179161234_)))))
              (let () (declare (not safe)) (_g161179161234_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl161183161348_))
                                              (let ((___splice162760162761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl161183161348_
                                                        '0))))
                                                (let ((_tl161214161254_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162760162761_
                                                          '1)))
                                                      (_target161212161251_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162760162761_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl161214161254_))
                                                      (___match162802162803_
                                                       _e161185161341_
                                                       _hd161184161345_
                                                       _tl161183161348_
                                                       ___splice162760162761_
                                                       _target161212161251_
                                                       _tl161214161254_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g161179161234_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g161179161234_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl161183161348_))
                                          (let ((___splice162760162761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl161183161348_
                                                    '0))))
                                            (let ((_tl161214161254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162760162761_
                                                      '1)))
                                                  (_target161212161251_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162760162761_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161214161254_))
                                                  (___match162802162803_
                                                   _e161185161341_
                                                   _hd161184161345_
                                                   _tl161183161348_
                                                   ___splice162760162761_
                                                   _target161212161251_
                                                   _tl161214161254_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g161179161234_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g161179161234_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161183161348_))
                                    (let ((___splice162760162761_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161183161348_
                                              '0))))
                                      (let ((_tl161214161254_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162760162761_
                                                '1)))
                                            (_target161212161251_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162760162761_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161214161254_))
                                            (___match162802162803_
                                             _e161185161341_
                                             _hd161184161345_
                                             _tl161183161348_
                                             ___splice162760162761_
                                             _target161212161251_
                                             _tl161214161254_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161179161234_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161179161234_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161183161348_))
                            (let ((___splice162760162761_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161183161348_
                                      '0))))
                              (let ((_tl161214161254_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162760162761_
                                        '1)))
                                    (_target161212161251_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162760162761_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161214161254_))
                                    (___match162802162803_
                                     _e161185161341_
                                     _hd161184161345_
                                     _tl161183161348_
                                     ___splice162760162761_
                                     _target161212161251_
                                     _tl161214161254_)
                                    (let ()
                                      (declare (not safe))
                                      (_g161179161234_)))))
                            (let () (declare (not safe)) (_g161179161234_))))))
                (let () (declare (not safe)) (_g161179161234_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx161456_)
      (let* ((_g161460161478_
              (lambda (_g161461161474_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161461161474_))))
             (_g161459161533_
              (lambda (_g161461161482_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161461161482_))
                    (let ((_e161466161485_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161461161482_))))
                      (let ((_hd161465161489_
                             (let ()
                               (declare (not safe))
                               (##car _e161466161485_)))
                            (_tl161464161492_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161466161485_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161464161492_))
                            (let ((_e161469161495_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161464161492_))))
                              (let ((_hd161468161499_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161469161495_)))
                                    (_tl161467161502_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161469161495_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161467161502_))
                                    (let ((_e161472161505_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161467161502_))))
                                      (let ((_hd161471161509_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161472161505_)))
                                            (_tl161470161512_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161472161505_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161470161512_))
                                            ((lambda (_L161515_ _L161517_)
                                               (let ((__tmp163200
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp163187
                                                      (let ((__tmp163196
                                                             (let ((__tmp163199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163197
                            (let ((__tmp163198
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp163198 '()))))
                       (declare (not safe))
                       (cons __tmp163199 __tmp163197)))
                    (__tmp163188
                     (let ((__tmp163193
                            (let ((__tmp163195
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163194
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161517_ '()))))
                              (declare (not safe))
                              (cons __tmp163195 __tmp163194)))
                           (__tmp163189
                            (let ((__tmp163190
                                   (let ((__tmp163192
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp163191
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161515_ '()))))
                                     (declare (not safe))
                                     (cons __tmp163192 __tmp163191))))
                              (declare (not safe))
                              (cons __tmp163190 '()))))
                       (declare (not safe))
                       (cons __tmp163193 __tmp163189))))
                (declare (not safe))
                (cons __tmp163196 __tmp163188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp163200
                                                       __tmp163187)))
                                             _hd161471161509_
                                             _hd161468161499_)
                                            (_g161460161478_
                                             _g161461161482_))))
                                    (_g161460161478_ _g161461161482_))))
                            (_g161460161478_ _g161461161482_))))
                    (_g161460161478_ _g161461161482_)))))
        (_g161459161533_ _$stx161456_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx161537_)
      (let* ((_g161541161559_
              (lambda (_g161542161555_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161542161555_))))
             (_g161540161614_
              (lambda (_g161542161563_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161542161563_))
                    (let ((_e161547161566_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161542161563_))))
                      (let ((_hd161546161570_
                             (let ()
                               (declare (not safe))
                               (##car _e161547161566_)))
                            (_tl161545161573_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161547161566_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161545161573_))
                            (let ((_e161550161576_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161545161573_))))
                              (let ((_hd161549161580_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161550161576_)))
                                    (_tl161548161583_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161550161576_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161548161583_))
                                    (let ((_e161553161586_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161548161583_))))
                                      (let ((_hd161552161590_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161553161586_)))
                                            (_tl161551161593_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161553161586_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161551161593_))
                                            ((lambda (_L161596_ _L161598_)
                                               (let ((__tmp163214
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp163201
                                                      (let ((__tmp163210
                                                             (let ((__tmp163213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163211
                            (let ((__tmp163212
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp163212 '()))))
                       (declare (not safe))
                       (cons __tmp163213 __tmp163211)))
                    (__tmp163202
                     (let ((__tmp163207
                            (let ((__tmp163209
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163208
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161598_ '()))))
                              (declare (not safe))
                              (cons __tmp163209 __tmp163208)))
                           (__tmp163203
                            (let ((__tmp163204
                                   (let ((__tmp163206
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp163205
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161596_ '()))))
                                     (declare (not safe))
                                     (cons __tmp163206 __tmp163205))))
                              (declare (not safe))
                              (cons __tmp163204 '()))))
                       (declare (not safe))
                       (cons __tmp163207 __tmp163203))))
                (declare (not safe))
                (cons __tmp163210 __tmp163202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp163214
                                                       __tmp163201)))
                                             _hd161552161590_
                                             _hd161549161580_)
                                            (_g161541161559_
                                             _g161542161563_))))
                                    (_g161541161559_ _g161542161563_))))
                            (_g161541161559_ _g161542161563_))))
                    (_g161541161559_ _g161542161563_)))))
        (_g161540161614_ _$stx161537_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx161618_)
      (let* ((___stx162805162806_ _$stx161618_)
             (_g161625161696_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162805162806_)))))
        (let ((___kont162808162809_
               (lambda (_L161987_ _L161989_)
                 (let ((__tmp163220
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163215
                        (let ((__tmp163216
                               (let ((__tmp163217
                                      (let ((__tmp163219
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163218
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161987_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163219 __tmp163218))))
                                 (declare (not safe))
                                 (cons __tmp163217 '()))))
                          (declare (not safe))
                          (cons _L161989_ __tmp163216))))
                   (declare (not safe))
                   (cons __tmp163220 __tmp163215))))
              (___kont162810162811_
               (lambda (_L161906_ _L161908_)
                 (let ((__tmp163229
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163221
                        (let ((__tmp163222
                               (let ((__tmp163223
                                      (let ((__tmp163228
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163224
                                             (let ((__tmp163225
                                                    (lambda (_g161927161930_
                                                             _g161928161933_)
                                                      (let ((__tmp163226
                                                             (let ((__tmp163227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161927161930_ __tmp163227))))
                (declare (not safe))
                (cons __tmp163226 _g161928161933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp163225
                                                       '()
                                                       _L161906_))))
                                        (declare (not safe))
                                        (cons __tmp163228 __tmp163224))))
                                 (declare (not safe))
                                 (cons __tmp163223 '()))))
                          (declare (not safe))
                          (cons _L161908_ __tmp163222))))
                   (declare (not safe))
                   (cons __tmp163229 __tmp163221))))
              (___kont162814162815_
               (lambda (_L161818_ _L161820_)
                 (let ((__tmp163236
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163230
                        (let ((__tmp163231
                               (let ((__tmp163232
                                      (let ((__tmp163235
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163233
                                             (let ((__tmp163234
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161818_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp163234))))
                                        (declare (not safe))
                                        (cons __tmp163235 __tmp163233))))
                                 (declare (not safe))
                                 (cons __tmp163232 '()))))
                          (declare (not safe))
                          (cons _L161820_ __tmp163231))))
                   (declare (not safe))
                   (cons __tmp163236 __tmp163230))))
              (___kont162816162817_
               (lambda (_L161753_ _L161755_)
                 (let ((__tmp163246
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163237
                        (let ((__tmp163238
                               (let ((__tmp163239
                                      (let ((__tmp163245
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163240
                                             (let ((__tmp163241
                                                    (let ((__tmp163242
                                                           (lambda (_g161772161775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g161773161778_)
                     (let ((__tmp163243
                            (let ((__tmp163244
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g161772161775_ __tmp163244))))
                       (declare (not safe))
                       (cons __tmp163243 _g161773161778_)))))
              (declare (not safe))
              (foldr1 __tmp163242 '() _L161753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp163241))))
                                        (declare (not safe))
                                        (cons __tmp163245 __tmp163240))))
                                 (declare (not safe))
                                 (cons __tmp163239 '()))))
                          (declare (not safe))
                          (cons _L161755_ __tmp163238))))
                   (declare (not safe))
                   (cons __tmp163246 __tmp163237)))))
          (let* ((___match162924162925_
                  (lambda (_e161678161703_
                           _hd161677161707_
                           _tl161676161710_
                           _e161681161713_
                           _hd161680161717_
                           _tl161679161720_
                           ___splice162818162819_
                           _target161682161723_
                           _tl161684161726_)
                    (letrec ((_loop161685161729_
                              (lambda (_hd161683161733_ _arity161689161736_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161683161733_))
                                    (let ((_e161686161739_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161683161733_))))
                                      (let ((_lp-tl161688161746_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161686161739_)))
                                            (_lp-hd161687161743_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161686161739_))))
                                        (_loop161685161729_
                                         _lp-tl161688161746_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161687161743_
                                                 _arity161689161736_)))))
                                    (let ((_arity161690161749_
                                           (reverse _arity161689161736_)))
                                      (___kont162816162817_
                                       _arity161690161749_
                                       _hd161680161717_))))))
                      (_loop161685161729_ _target161682161723_ '()))))
                 (___match162884162885_
                  (lambda (_e161646161842_
                           _hd161645161846_
                           _tl161644161849_
                           _e161649161852_
                           _hd161648161856_
                           _tl161647161859_
                           _e161652161862_
                           _hd161651161866_
                           _tl161650161869_
                           _e161653161872_
                           ___splice162812162813_
                           _target161654161876_
                           _tl161656161879_)
                    (letrec ((_loop161657161882_
                              (lambda (_hd161655161886_ _arity161661161889_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161655161886_))
                                    (let ((_e161658161892_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161655161886_))))
                                      (let ((_lp-tl161660161899_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161658161892_)))
                                            (_lp-hd161659161896_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161658161892_))))
                                        (_loop161657161882_
                                         _lp-tl161660161899_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161659161896_
                                                 _arity161661161889_)))))
                                    (let ((_arity161662161902_
                                           (reverse _arity161661161889_)))
                                      (___kont162810162811_
                                       _arity161662161902_
                                       _hd161648161856_))))))
                      (_loop161657161882_ _target161654161876_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162805162806_))
                (let ((_e161631161943_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162805162806_))))
                  (let ((_tl161629161950_
                         (let () (declare (not safe)) (##cdr _e161631161943_)))
                        (_hd161630161947_
                         (let ()
                           (declare (not safe))
                           (##car _e161631161943_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161629161950_))
                        (let ((_e161634161953_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161629161950_))))
                          (let ((_tl161632161960_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161634161953_)))
                                (_hd161633161957_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161634161953_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161632161960_))
                                (let ((_e161637161963_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161632161960_))))
                                  (let ((_tl161635161970_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161637161963_)))
                                        (_hd161636161967_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161637161963_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd161636161967_))
                                        (let ((_e161638161973_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd161636161967_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e161638161973_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161635161970_))
                                                  (let ((_e161641161977_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161635161970_))))
                                                    (let ((_tl161639161984_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161641161977_)))
                                                          (_hd161640161981_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161641161977_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161639161984_))
                                                          (___kont162808162809_
                                                           _hd161640161981_
                                                           _hd161633161957_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl161635161970_))
                      (let ((___splice162812162813_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161635161970_ '0))))
                        (let ((_tl161656161879_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162812162813_ '1)))
                              (_target161654161876_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162812162813_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161656161879_))
                              (___match162884162885_
                               _e161631161943_
                               _hd161630161947_
                               _tl161629161950_
                               _e161634161953_
                               _hd161633161957_
                               _tl161632161960_
                               _e161637161963_
                               _hd161636161967_
                               _tl161635161970_
                               _e161638161973_
                               ___splice162812162813_
                               _target161654161876_
                               _tl161656161879_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl161632161960_))
                                  (let ((___splice162818162819_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl161632161960_
                                            '0))))
                                    (let ((_tl161684161726_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162818162819_
                                              '1)))
                                          (_target161682161723_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162818162819_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl161684161726_))
                                          (___match162924162925_
                                           _e161631161943_
                                           _hd161630161947_
                                           _tl161629161950_
                                           _e161634161953_
                                           _hd161633161957_
                                           _tl161632161960_
                                           ___splice162818162819_
                                           _target161682161723_
                                           _tl161684161726_)
                                          (let ()
                                            (declare (not safe))
                                            (_g161625161696_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g161625161696_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl161632161960_))
                          (let ((___splice162818162819_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl161632161960_
                                    '0))))
                            (let ((_tl161684161726_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162818162819_ '1)))
                                  (_target161682161723_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162818162819_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl161684161726_))
                                  (___match162924162925_
                                   _e161631161943_
                                   _hd161630161947_
                                   _tl161629161950_
                                   _e161634161953_
                                   _hd161633161957_
                                   _tl161632161960_
                                   ___splice162818162819_
                                   _target161682161723_
                                   _tl161684161726_)
                                  (let ()
                                    (declare (not safe))
                                    (_g161625161696_)))))
                          (let () (declare (not safe)) (_g161625161696_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161635161970_))
                                                      (let ((___splice162812162813_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161635161970_ '0))))
                (let ((_tl161656161879_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162812162813_ '1)))
                      (_target161654161876_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162812162813_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161656161879_))
                      (___match162884162885_
                       _e161631161943_
                       _hd161630161947_
                       _tl161629161950_
                       _e161634161953_
                       _hd161633161957_
                       _tl161632161960_
                       _e161637161963_
                       _hd161636161967_
                       _tl161635161970_
                       _e161638161973_
                       ___splice162812162813_
                       _target161654161876_
                       _tl161656161879_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl161635161970_))
                          (___kont162814162815_
                           _hd161636161967_
                           _hd161633161957_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161632161960_))
                              (let ((___splice162818162819_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161632161960_
                                        '0))))
                                (let ((_tl161684161726_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162818162819_
                                          '1)))
                                      (_target161682161723_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162818162819_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161684161726_))
                                      (___match162924162925_
                                       _e161631161943_
                                       _hd161630161947_
                                       _tl161629161950_
                                       _e161634161953_
                                       _hd161633161957_
                                       _tl161632161960_
                                       ___splice162818162819_
                                       _target161682161723_
                                       _tl161684161726_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161625161696_)))))
                              (let ()
                                (declare (not safe))
                                (_g161625161696_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161635161970_))
                  (___kont162814162815_ _hd161636161967_ _hd161633161957_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl161632161960_))
                      (let ((___splice162818162819_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161632161960_ '0))))
                        (let ((_tl161684161726_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162818162819_ '1)))
                              (_target161682161723_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162818162819_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161684161726_))
                              (___match162924162925_
                               _e161631161943_
                               _hd161630161947_
                               _tl161629161950_
                               _e161634161953_
                               _hd161633161957_
                               _tl161632161960_
                               ___splice162818162819_
                               _target161682161723_
                               _tl161684161726_)
                              (let ()
                                (declare (not safe))
                                (_g161625161696_)))))
                      (let () (declare (not safe)) (_g161625161696_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161635161970_))
                                                  (___kont162814162815_
                                                   _hd161636161967_
                                                   _hd161633161957_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161632161960_))
                                                      (let ((___splice162818162819_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161632161960_ '0))))
                (let ((_tl161684161726_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162818162819_ '1)))
                      (_target161682161723_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162818162819_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161684161726_))
                      (___match162924162925_
                       _e161631161943_
                       _hd161630161947_
                       _tl161629161950_
                       _e161634161953_
                       _hd161633161957_
                       _tl161632161960_
                       ___splice162818162819_
                       _target161682161723_
                       _tl161684161726_)
                      (let () (declare (not safe)) (_g161625161696_)))))
              (let () (declare (not safe)) (_g161625161696_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161635161970_))
                                            (___kont162814162815_
                                             _hd161636161967_
                                             _hd161633161957_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl161632161960_))
                                                (let ((___splice162818162819_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl161632161960_
                                                          '0))))
                                                  (let ((_tl161684161726_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162818162819_
                                                            '1)))
                                                        (_target161682161723_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162818162819_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161684161726_))
                                                        (___match162924162925_
                                                         _e161631161943_
                                                         _hd161630161947_
                                                         _tl161629161950_
                                                         _e161634161953_
                                                         _hd161633161957_
                                                         _tl161632161960_
                                                         ___splice162818162819_
                                                         _target161682161723_
                                                         _tl161684161726_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161625161696_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g161625161696_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161632161960_))
                                    (let ((___splice162818162819_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161632161960_
                                              '0))))
                                      (let ((_tl161684161726_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162818162819_
                                                '1)))
                                            (_target161682161723_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162818162819_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161684161726_))
                                            (___match162924162925_
                                             _e161631161943_
                                             _hd161630161947_
                                             _tl161629161950_
                                             _e161634161953_
                                             _hd161633161957_
                                             _tl161632161960_
                                             ___splice162818162819_
                                             _target161682161723_
                                             _tl161684161726_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161625161696_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161625161696_))))))
                        (let () (declare (not safe)) (_g161625161696_)))))
                (let () (declare (not safe)) (_g161625161696_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx162013_)
      (let* ((___stx162927162928_ _$stx162013_)
             (_g162018162053_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162927162928_)))))
        (let ((___kont162930162931_
               (lambda (_L162175_ _L162177_)
                 (let ((__tmp163252
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163247
                        (let ((__tmp163248
                               (let ((__tmp163249
                                      (let ((__tmp163251
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163250
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162175_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163251 __tmp163250))))
                                 (declare (not safe))
                                 (cons __tmp163249 '()))))
                          (declare (not safe))
                          (cons _L162177_ __tmp163248))))
                   (declare (not safe))
                   (cons __tmp163252 __tmp163247))))
              (___kont162932162933_
               (lambda (_L162110_ _L162112_)
                 (let ((__tmp163261
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163253
                        (let ((__tmp163254
                               (let ((__tmp163255
                                      (let ((__tmp163260
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163256
                                             (let ((__tmp163257
                                                    (lambda (_g162129162132_
                                                             _g162130162135_)
                                                      (let ((__tmp163258
                                                             (let ((__tmp163259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g162129162132_ __tmp163259))))
                (declare (not safe))
                (cons __tmp163258 _g162130162135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp163257
                                                       '()
                                                       _L162110_))))
                                        (declare (not safe))
                                        (cons __tmp163260 __tmp163256))))
                                 (declare (not safe))
                                 (cons __tmp163255 '()))))
                          (declare (not safe))
                          (cons _L162112_ __tmp163254))))
                   (declare (not safe))
                   (cons __tmp163261 __tmp163253)))))
          (let ((___match162976162977_
                 (lambda (_e162035162060_
                          _hd162034162064_
                          _tl162033162067_
                          _e162038162070_
                          _hd162037162074_
                          _tl162036162077_
                          ___splice162934162935_
                          _target162039162080_
                          _tl162041162083_)
                   (letrec ((_loop162042162086_
                             (lambda (_hd162040162090_ _arity162046162093_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd162040162090_))
                                   (let ((_e162043162096_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd162040162090_))))
                                     (let ((_lp-tl162045162103_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e162043162096_)))
                                           (_lp-hd162044162100_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e162043162096_))))
                                       (_loop162042162086_
                                        _lp-tl162045162103_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd162044162100_
                                                _arity162046162093_)))))
                                   (let ((_arity162047162106_
                                          (reverse _arity162046162093_)))
                                     (___kont162932162933_
                                      _arity162047162106_
                                      _hd162037162074_))))))
                     (_loop162042162086_ _target162039162080_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162927162928_))
                (let ((_e162024162145_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162927162928_))))
                  (let ((_tl162022162152_
                         (let () (declare (not safe)) (##cdr _e162024162145_)))
                        (_hd162023162149_
                         (let ()
                           (declare (not safe))
                           (##car _e162024162145_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162022162152_))
                        (let ((_e162027162155_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162022162152_))))
                          (let ((_tl162025162162_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162027162155_)))
                                (_hd162026162159_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162027162155_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162025162162_))
                                (let ((_e162030162165_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162025162162_))))
                                  (let ((_tl162028162172_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162030162165_)))
                                        (_hd162029162169_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162030162165_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162028162172_))
                                        (___kont162930162931_
                                         _hd162029162169_
                                         _hd162026162159_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl162025162162_))
                                            (let ((___splice162934162935_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl162025162162_
                                                      '0))))
                                              (let ((_tl162041162083_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162934162935_
                                                        '1)))
                                                    (_target162039162080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162934162935_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162041162083_))
                                                    (___match162976162977_
                                                     _e162024162145_
                                                     _hd162023162149_
                                                     _tl162022162152_
                                                     _e162027162155_
                                                     _hd162026162159_
                                                     _tl162025162162_
                                                     ___splice162934162935_
                                                     _target162039162080_
                                                     _tl162041162083_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162018162053_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162018162053_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162025162162_))
                                    (let ((___splice162934162935_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162025162162_
                                              '0))))
                                      (let ((_tl162041162083_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162934162935_
                                                '1)))
                                            (_target162039162080_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162934162935_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162041162083_))
                                            (___match162976162977_
                                             _e162024162145_
                                             _hd162023162149_
                                             _tl162022162152_
                                             _e162027162155_
                                             _hd162026162159_
                                             _tl162025162162_
                                             ___splice162934162935_
                                             _target162039162080_
                                             _tl162041162083_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162018162053_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162018162053_))))))
                        (let () (declare (not safe)) (_g162018162053_)))))
                (let () (declare (not safe)) (_g162018162053_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx162197_)
      (let* ((_g162201162236_
              (lambda (_g162202162232_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162202162232_))))
             (_g162200162364_
              (lambda (_g162202162240_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162202162240_))
                    (let ((_e162207162243_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162202162240_))))
                      (let ((_hd162206162247_
                             (let ()
                               (declare (not safe))
                               (##car _e162207162243_)))
                            (_tl162205162250_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162207162243_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162205162250_))
                            (let ((_g163262_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162205162250_
                                      '0))))
                              (begin
                                (let ((_g163263_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163262_)
                                             (##vector-length _g163262_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163263_ 2)))
                                      (error "Context expects 2 values"
                                             _g163263_)))
                                (let ((_target162208162253_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163262_ 0)))
                                      (_tl162210162256_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163262_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162210162256_))
                                      (letrec ((_loop162211162259_
                                                (lambda (_hd162209162263_
                                                         _arity162215162266_
                                                         _prim162216162268_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd162209162263_))
                                                      (let ((_e162212162271_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd162209162263_))))
                (let ((_lp-hd162213162275_
                       (let () (declare (not safe)) (##car _e162212162271_)))
                      (_lp-tl162214162278_
                       (let () (declare (not safe)) (##cdr _e162212162271_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd162213162275_))
                      (let ((_e162221162281_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd162213162275_))))
                        (let ((_hd162220162285_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162221162281_)))
                              (_tl162219162288_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162221162281_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162219162288_))
                              (let ((_g163272_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162219162288_
                                        '0))))
                                (begin
                                  (let ((_g163273_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g163272_)
                                               (##vector-length _g163272_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g163273_ 2)))
                                        (error "Context expects 2 values"
                                               _g163273_)))
                                  (let ((_target162222162291_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163272_ 0)))
                                        (_tl162224162294_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163272_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162224162294_))
                                        (letrec ((_loop162225162297_
                                                  (lambda (_hd162223162301_
                                                           _arity162229162304_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd162223162301_))
                                                        (let ((_e162226162307_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd162223162301_))))
                  (let ((_lp-hd162227162311_
                         (let () (declare (not safe)) (##car _e162226162307_)))
                        (_lp-tl162228162314_
                         (let ()
                           (declare (not safe))
                           (##cdr _e162226162307_))))
                    (_loop162225162297_
                     _lp-tl162228162314_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd162227162311_ _arity162229162304_)))))
                (let ((_arity162230162317_ (reverse _arity162229162304_)))
                  (_loop162211162259_
                   _lp-tl162214162278_
                   (let ()
                     (declare (not safe))
                     (cons _arity162230162317_ _arity162215162266_))
                   (let ()
                     (declare (not safe))
                     (cons _hd162220162285_ _prim162216162268_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop162225162297_
                                           _target162222162291_
                                           '()))
                                        (_g162201162236_ _g162202162240_)))))
                              (_g162201162236_ _g162202162240_))))
                      (_g162201162236_ _g162202162240_))))
              (let ((_arity162217162321_ (reverse _arity162215162266_))
                    (_prim162218162324_ (reverse _prim162216162268_)))
                ((lambda (_L162327_ _L162329_)
                   (let ((__tmp163271
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163264
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L162327_
                               _L162329_))
                            (let ((__tmp163265
                                   (lambda (_g162344162350_
                                            _g162345162353_
                                            _g162346162355_)
                                     (let ((__tmp163266
                                            (let ((__tmp163270
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp163267
                                                   (let ((__tmp163268
                                                          (let ((__tmp163269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g162347162358_ _g162348162361_)
                           (let ()
                             (declare (not safe))
                             (cons _g162347162358_ _g162348162361_)))))
                    (declare (not safe))
                    (foldr1 __tmp163269 '() _g162344162350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g162345162353_
                                                           __tmp163268))))
                                              (declare (not safe))
                                              (cons __tmp163270 __tmp163267))))
                                       (declare (not safe))
                                       (cons __tmp163266 _g162346162355_)))))
                              (declare (not safe))
                              (foldr2 __tmp163265 '() _L162327_ _L162329_)))))
                     (declare (not safe))
                     (cons __tmp163271 __tmp163264)))
                 _arity162217162321_
                 _prim162218162324_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop162211162259_
                                         _target162208162253_
                                         '()
                                         '()))
                                      (_g162201162236_ _g162202162240_)))))
                            (_g162201162236_ _g162202162240_))))
                    (_g162201162236_ _g162202162240_)))))
        (_g162200162364_ _$stx162197_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx162370_)
      (let* ((_g162374162409_
              (lambda (_g162375162405_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162375162405_))))
             (_g162373162537_
              (lambda (_g162375162413_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162375162413_))
                    (let ((_e162380162416_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162375162413_))))
                      (let ((_hd162379162420_
                             (let ()
                               (declare (not safe))
                               (##car _e162380162416_)))
                            (_tl162378162423_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162380162416_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162378162423_))
                            (let ((_g163274_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162378162423_
                                      '0))))
                              (begin
                                (let ((_g163275_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163274_)
                                             (##vector-length _g163274_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163275_ 2)))
                                      (error "Context expects 2 values"
                                             _g163275_)))
                                (let ((_target162381162426_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163274_ 0)))
                                      (_tl162383162429_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163274_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162383162429_))
                                      (letrec ((_loop162384162432_
                                                (lambda (_hd162382162436_
                                                         _arity162388162439_
                                                         _prim162389162441_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd162382162436_))
                                                      (let ((_e162385162444_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd162382162436_))))
                (let ((_lp-hd162386162448_
                       (let () (declare (not safe)) (##car _e162385162444_)))
                      (_lp-tl162387162451_
                       (let () (declare (not safe)) (##cdr _e162385162444_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd162386162448_))
                      (let ((_e162394162454_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd162386162448_))))
                        (let ((_hd162393162458_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162394162454_)))
                              (_tl162392162461_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162394162454_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162392162461_))
                              (let ((_g163284_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162392162461_
                                        '0))))
                                (begin
                                  (let ((_g163285_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g163284_)
                                               (##vector-length _g163284_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g163285_ 2)))
                                        (error "Context expects 2 values"
                                               _g163285_)))
                                  (let ((_target162395162464_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163284_ 0)))
                                        (_tl162397162467_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163284_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162397162467_))
                                        (letrec ((_loop162398162470_
                                                  (lambda (_hd162396162474_
                                                           _arity162402162477_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd162396162474_))
                                                        (let ((_e162399162480_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd162396162474_))))
                  (let ((_lp-hd162400162484_
                         (let () (declare (not safe)) (##car _e162399162480_)))
                        (_lp-tl162401162487_
                         (let ()
                           (declare (not safe))
                           (##cdr _e162399162480_))))
                    (_loop162398162470_
                     _lp-tl162401162487_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd162400162484_ _arity162402162477_)))))
                (let ((_arity162403162490_ (reverse _arity162402162477_)))
                  (_loop162384162432_
                   _lp-tl162387162451_
                   (let ()
                     (declare (not safe))
                     (cons _arity162403162490_ _arity162388162439_))
                   (let ()
                     (declare (not safe))
                     (cons _hd162393162458_ _prim162389162441_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop162398162470_
                                           _target162395162464_
                                           '()))
                                        (_g162374162409_ _g162375162413_)))))
                              (_g162374162409_ _g162375162413_))))
                      (_g162374162409_ _g162375162413_))))
              (let ((_arity162390162494_ (reverse _arity162388162439_))
                    (_prim162391162497_ (reverse _prim162389162441_)))
                ((lambda (_L162500_ _L162502_)
                   (let ((__tmp163283
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163276
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L162500_
                               _L162502_))
                            (let ((__tmp163277
                                   (lambda (_g162517162523_
                                            _g162518162526_
                                            _g162519162528_)
                                     (let ((__tmp163278
                                            (let ((__tmp163282
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp163279
                                                   (let ((__tmp163280
                                                          (let ((__tmp163281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g162520162531_ _g162521162534_)
                           (let ()
                             (declare (not safe))
                             (cons _g162520162531_ _g162521162534_)))))
                    (declare (not safe))
                    (foldr1 __tmp163281 '() _g162517162523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g162518162526_
                                                           __tmp163280))))
                                              (declare (not safe))
                                              (cons __tmp163282 __tmp163279))))
                                       (declare (not safe))
                                       (cons __tmp163278 _g162519162528_)))))
                              (declare (not safe))
                              (foldr2 __tmp163277 '() _L162500_ _L162502_)))))
                     (declare (not safe))
                     (cons __tmp163283 __tmp163276)))
                 _arity162390162494_
                 _prim162391162497_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop162384162432_
                                         _target162381162426_
                                         '()
                                         '()))
                                      (_g162374162409_ _g162375162413_)))))
                            (_g162374162409_ _g162375162413_))))
                    (_g162374162409_ _g162375162413_)))))
        (_g162373162537_ _$stx162370_)))))
