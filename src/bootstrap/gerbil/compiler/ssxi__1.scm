(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158453_)
      (let* ((_g158457158475_
              (lambda (_g158458158471_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158458158471_))))
             (_g158456158530_
              (lambda (_g158458158479_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158458158479_))
                    (let ((_e158463158482_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158458158479_))))
                      (let ((_hd158462158486_
                             (let ()
                               (declare (not safe))
                               (##car _e158463158482_)))
                            (_tl158461158489_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158463158482_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158461158489_))
                            (let ((_e158466158492_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158461158489_))))
                              (let ((_hd158465158496_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158466158492_)))
                                    (_tl158464158499_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158466158492_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158464158499_))
                                    (let ((_e158469158502_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158464158499_))))
                                      (let ((_hd158468158506_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158469158502_)))
                                            (_tl158467158509_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158469158502_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158467158509_))
                                            ((lambda (_L158512_ _L158514_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158514_))
                                                   (let ((__tmp161994
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161989
                                                          (let ((__tmp161991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161993
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161992
                                (let ()
                                  (declare (not safe))
                                  (cons _L158514_ '()))))
                           (declare (not safe))
                           (cons __tmp161993 __tmp161992)))
                        (__tmp161990
                         (let () (declare (not safe)) (cons _L158512_ '()))))
                    (declare (not safe))
                    (cons __tmp161991 __tmp161990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161994
                                                           __tmp161989))
                                                   (_g158457158475_
                                                    _g158458158479_)))
                                             _hd158468158506_
                                             _hd158465158496_)
                                            (_g158457158475_
                                             _g158458158479_))))
                                    (_g158457158475_ _g158458158479_))))
                            (_g158457158475_ _g158458158479_))))
                    (_g158457158475_ _g158458158479_)))))
        (_g158456158530_ _$stx158453_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158534_)
      (let* ((_g158538158567_
              (lambda (_g158539158563_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158539158563_))))
             (_g158537158667_
              (lambda (_g158539158571_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158539158571_))
                    (let ((_e158544158574_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158539158571_))))
                      (let ((_hd158543158578_
                             (let ()
                               (declare (not safe))
                               (##car _e158544158574_)))
                            (_tl158542158581_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158544158574_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158542158581_))
                            (let ((_g161995_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158542158581_
                                      '0))))
                              (begin
                                (let ((_g161996_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161995_)
                                             (##vector-length _g161995_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161996_ 2)))
                                      (error "Context expects 2 values"
                                             _g161996_)))
                                (let ((_target158545158584_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161995_ 0)))
                                      (_tl158547158587_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161995_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158547158587_))
                                      (letrec ((_loop158548158590_
                                                (lambda (_hd158546158594_
                                                         _type158552158597_
                                                         _symbol158553158599_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158546158594_))
                                                      (let ((_e158549158602_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158546158594_))))
                (let ((_lp-hd158550158606_
                       (let () (declare (not safe)) (##car _e158549158602_)))
                      (_lp-tl158551158609_
                       (let () (declare (not safe)) (##cdr _e158549158602_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158550158606_))
                      (let ((_e158558158612_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158550158606_))))
                        (let ((_hd158557158616_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158558158612_)))
                              (_tl158556158619_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158558158612_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158556158619_))
                              (let ((_e158561158622_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158556158619_))))
                                (let ((_hd158560158626_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158561158622_)))
                                      (_tl158559158629_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158561158622_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158559158629_))
                                      (_loop158548158590_
                                       _lp-tl158551158609_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158560158626_
                                               _type158552158597_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158557158616_
                                               _symbol158553158599_)))
                                      (_g158538158567_ _g158539158571_))))
                              (_g158538158567_ _g158539158571_))))
                      (_g158538158567_ _g158539158571_))))
              (let ((_type158554158632_ (reverse _type158552158597_))
                    (_symbol158555158635_ (reverse _symbol158553158599_)))
                ((lambda (_L158638_ _L158640_)
                   (let ((__tmp162003
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161997
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158638_
                               _L158640_))
                            (let ((__tmp161998
                                   (lambda (_g158655158659_
                                            _g158656158662_
                                            _g158657158664_)
                                     (let ((__tmp161999
                                            (let ((__tmp162002
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162000
                                                   (let ((__tmp162001
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158655158659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158656158662_
                                                           __tmp162001))))
                                              (declare (not safe))
                                              (cons __tmp162002 __tmp162000))))
                                       (declare (not safe))
                                       (cons __tmp161999 _g158657158664_)))))
                              (declare (not safe))
                              (foldr2 __tmp161998 '() _L158638_ _L158640_)))))
                     (declare (not safe))
                     (cons __tmp162003 __tmp161997)))
                 _type158554158632_
                 _symbol158555158635_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158548158590_
                                         _target158545158584_
                                         '()
                                         '()))
                                      (_g158538158567_ _g158539158571_)))))
                            (_g158538158567_ _g158539158571_))))
                    (_g158538158567_ _g158539158571_)))))
        (_g158537158667_ _$stx158534_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158672_)
      (let* ((___stx161554161555_ _$stx158672_)
             (_g158677158719_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161554161555_)))))
        (let ((___kont161557161558_
               (lambda (_L158847_ _L158849_ _L158850_ _L158851_)
                 (let ((__tmp162017
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162004
                        (let ((__tmp162014
                               (let ((__tmp162016
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162015
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158851_ '()))))
                                 (declare (not safe))
                                 (cons __tmp162016 __tmp162015)))
                              (__tmp162005
                               (let ((__tmp162011
                                      (let ((__tmp162013
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162012
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158850_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162013 __tmp162012)))
                                     (__tmp162006
                                      (let ((__tmp162008
                                             (let ((__tmp162010
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162009
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158849_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162010 __tmp162009)))
                                            (__tmp162007
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158847_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162008 __tmp162007))))
                                 (declare (not safe))
                                 (cons __tmp162011 __tmp162006))))
                          (declare (not safe))
                          (cons __tmp162014 __tmp162005))))
                   (declare (not safe))
                   (cons __tmp162017 __tmp162004))))
              (___kont161559161560_
               (lambda (_L158766_ _L158768_ _L158769_ _L158770_)
                 (let ((__tmp162018
                        (let ((__tmp162019
                               (let ((__tmp162020
                                      (let ((__tmp162021
                                             (let ((__tmp162022
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp162022 '()))))
                                        (declare (not safe))
                                        (cons _L158766_ __tmp162021))))
                                 (declare (not safe))
                                 (cons _L158768_ __tmp162020))))
                          (declare (not safe))
                          (cons _L158769_ __tmp162019))))
                   (declare (not safe))
                   (cons _L158770_ __tmp162018)))))
          (let ((___match161593161594_
                 (lambda (_e158685158797_
                          _hd158684158801_
                          _tl158683158804_
                          _e158688158807_
                          _hd158687158811_
                          _tl158686158814_
                          _e158691158817_
                          _hd158690158821_
                          _tl158689158824_
                          _e158694158827_
                          _hd158693158831_
                          _tl158692158834_
                          _e158697158837_
                          _hd158696158841_
                          _tl158695158844_)
                   (let ((_L158847_ _hd158696158841_)
                         (_L158849_ _hd158693158831_)
                         (_L158850_ _hd158690158821_)
                         (_L158851_ _hd158687158811_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158851_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158850_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158849_)))
                         (___kont161557161558_
                          _L158847_
                          _L158849_
                          _L158850_
                          _L158851_)
                         (let () (declare (not safe)) (_g158677158719_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161554161555_))
                (let ((_e158685158797_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161554161555_))))
                  (let ((_tl158683158804_
                         (let () (declare (not safe)) (##cdr _e158685158797_)))
                        (_hd158684158801_
                         (let ()
                           (declare (not safe))
                           (##car _e158685158797_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158683158804_))
                        (let ((_e158688158807_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158683158804_))))
                          (let ((_tl158686158814_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158688158807_)))
                                (_hd158687158811_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158688158807_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158686158814_))
                                (let ((_e158691158817_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158686158814_))))
                                  (let ((_tl158689158824_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158691158817_)))
                                        (_hd158690158821_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158691158817_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158689158824_))
                                        (let ((_e158694158827_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158689158824_))))
                                          (let ((_tl158692158834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158694158827_)))
                                                (_hd158693158831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158694158827_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158692158834_))
                                                (let ((_e158697158837_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158692158834_))))
                                                  (let ((_tl158695158844_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158697158837_)))
                                                        (_hd158696158841_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158697158837_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158695158844_))
                                                        (___match161593161594_
                                                         _e158685158797_
                                                         _hd158684158801_
                                                         _tl158683158804_
                                                         _e158688158807_
                                                         _hd158687158811_
                                                         _tl158686158814_
                                                         _e158691158817_
                                                         _hd158690158821_
                                                         _tl158689158824_
                                                         _e158694158827_
                                                         _hd158693158831_
                                                         _tl158692158834_
                                                         _e158697158837_
                                                         _hd158696158841_
                                                         _tl158695158844_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158677158719_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158692158834_))
                                                    (___kont161559161560_
                                                     _hd158693158831_
                                                     _hd158690158821_
                                                     _hd158687158811_
                                                     _hd158684158801_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158677158719_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158677158719_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158677158719_)))))
                        (let () (declare (not safe)) (_g158677158719_)))))
                (let () (declare (not safe)) (_g158677158719_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158876_)
      (let* ((_g158880158915_
              (lambda (_g158881158911_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158881158911_))))
             (_g158879159034_
              (lambda (_g158881158919_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158881158919_))
                    (let ((_e158887158922_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158881158919_))))
                      (let ((_hd158886158926_
                             (let ()
                               (declare (not safe))
                               (##car _e158887158922_)))
                            (_tl158885158929_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158887158922_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158885158929_))
                            (let ((_g162023_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158885158929_
                                      '0))))
                              (begin
                                (let ((_g162024_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162023_)
                                             (##vector-length _g162023_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162024_ 2)))
                                      (error "Context expects 2 values"
                                             _g162024_)))
                                (let ((_target158888158932_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162023_ 0)))
                                      (_tl158890158935_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162023_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158890158935_))
                                      (letrec ((_loop158891158938_
                                                (lambda (_hd158889158942_
                                                         _symbol158895158945_
                                                         _method158896158947_
                                                         _type-t158897158949_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158889158942_))
                                                      (let ((_e158892158952_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158889158942_))))
                (let ((_lp-hd158893158956_
                       (let () (declare (not safe)) (##car _e158892158952_)))
                      (_lp-tl158894158959_
                       (let () (declare (not safe)) (##cdr _e158892158952_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158893158956_))
                      (let ((_e158903158962_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158893158956_))))
                        (let ((_hd158902158966_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158903158962_)))
                              (_tl158901158969_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158903158962_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158901158969_))
                              (let ((_e158906158972_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158901158969_))))
                                (let ((_hd158905158976_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158906158972_)))
                                      (_tl158904158979_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158906158972_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158904158979_))
                                      (let ((_e158909158982_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158904158979_))))
                                        (let ((_hd158908158986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158909158982_)))
                                              (_tl158907158989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158909158982_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158907158989_))
                                              (_loop158891158938_
                                               _lp-tl158894158959_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158908158986_
                                                       _symbol158895158945_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158905158976_
                                                       _method158896158947_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158902158966_
                                                       _type-t158897158949_)))
                                              (_g158880158915_
                                               _g158881158919_))))
                                      (_g158880158915_ _g158881158919_))))
                              (_g158880158915_ _g158881158919_))))
                      (_g158880158915_ _g158881158919_))))
              (let ((_symbol158898158992_ (reverse _symbol158895158945_))
                    (_method158899158995_ (reverse _method158896158947_))
                    (_type-t158900158997_ (reverse _type-t158897158949_)))
                ((lambda (_L159000_ _L159002_ _L159003_)
                   (let ((__tmp162032
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162025
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159000_
                               _L159002_
                               _L159003_))
                            (let ((__tmp162026
                                   (lambda (_g159019159024_
                                            _g159020159027_
                                            _g159021159029_
                                            _g159022159031_)
                                     (let ((__tmp162027
                                            (let ((__tmp162031
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp162028
                                                   (let ((__tmp162029
                                                          (let ((__tmp162030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g159019159024_ '()))))
                    (declare (not safe))
                    (cons _g159020159027_ __tmp162030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159021159029_
                                                           __tmp162029))))
                                              (declare (not safe))
                                              (cons __tmp162031 __tmp162028))))
                                       (declare (not safe))
                                       (cons __tmp162027 _g159022159031_)))))
                              (declare (not safe))
                              (foldr* __tmp162026
                                      '()
                                      _L159000_
                                      _L159002_
                                      _L159003_)))))
                     (declare (not safe))
                     (cons __tmp162032 __tmp162025)))
                 _symbol158898158992_
                 _method158899158995_
                 _type-t158900158997_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158891158938_
                                         _target158888158932_
                                         '()
                                         '()
                                         '()))
                                      (_g158880158915_ _g158881158919_)))))
                            (_g158880158915_ _g158881158919_))))
                    (_g158880158915_ _g158881158919_)))))
        (_g158879159034_ _$stx158876_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx159039_)
      (let* ((_g159043159076_
              (lambda (_g159044159072_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159044159072_))))
             (_g159042159190_
              (lambda (_g159044159080_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159044159080_))
                    (let ((_e159050159083_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159044159080_))))
                      (let ((_hd159049159087_
                             (let ()
                               (declare (not safe))
                               (##car _e159050159083_)))
                            (_tl159048159090_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159050159083_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159048159090_))
                            (let ((_e159053159093_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159048159090_))))
                              (let ((_hd159052159097_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159053159093_)))
                                    (_tl159051159100_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159053159093_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159051159100_))
                                    (let ((_g162033_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159051159100_
                                              '0))))
                                      (begin
                                        (let ((_g162034_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g162033_)
                                                     (##vector-length
                                                      _g162033_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g162034_ 2)))
                                              (error "Context expects 2 values"
                                                     _g162034_)))
                                        (let ((_target159054159103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162033_ 0)))
                                              (_tl159056159106_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162033_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159056159106_))
                                              (letrec ((_loop159057159109_
                                                        (lambda (_hd159055159113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol159061159116_
                         _method159062159118_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd159055159113_))
                      (let ((_e159058159121_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd159055159113_))))
                        (let ((_lp-hd159059159125_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159058159121_)))
                              (_lp-tl159060159128_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159058159121_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd159059159125_))
                              (let ((_e159067159131_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd159059159125_))))
                                (let ((_hd159066159135_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159067159131_)))
                                      (_tl159065159138_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159067159131_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159065159138_))
                                      (let ((_e159070159141_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159065159138_))))
                                        (let ((_hd159069159145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159070159141_)))
                                              (_tl159068159148_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159070159141_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159068159148_))
                                              (_loop159057159109_
                                               _lp-tl159060159128_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159069159145_
                                                       _symbol159061159116_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159066159135_
                                                       _method159062159118_)))
                                              (_g159043159076_
                                               _g159044159080_))))
                                      (_g159043159076_ _g159044159080_))))
                              (_g159043159076_ _g159044159080_))))
                      (let ((_symbol159063159151_
                             (reverse _symbol159061159116_))
                            (_method159064159154_
                             (reverse _method159062159118_)))
                        ((lambda (_L159157_ _L159159_ _L159160_)
                           (let ((__tmp162042
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp162035
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L159157_
                                       _L159159_))
                                    (let ((__tmp162036
                                           (lambda (_g159178159182_
                                                    _g159179159185_
                                                    _g159180159187_)
                                             (let ((__tmp162037
                                                    (let ((__tmp162041
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp162038
                                                           (let ((__tmp162039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp162040
                                 (let ()
                                   (declare (not safe))
                                   (cons _g159178159182_ '()))))
                            (declare (not safe))
                            (cons _g159179159185_ __tmp162040))))
                     (declare (not safe))
                     (cons _L159160_ __tmp162039))))
              (declare (not safe))
              (cons __tmp162041 __tmp162038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162037
                                                     _g159180159187_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp162036
                                              '()
                                              _L159157_
                                              _L159159_)))))
                             (declare (not safe))
                             (cons __tmp162042 __tmp162035)))
                         _symbol159063159151_
                         _method159064159154_
                         _hd159052159097_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop159057159109_
                                                 _target159054159103_
                                                 '()
                                                 '()))
                                              (_g159043159076_
                                               _g159044159080_)))))
                                    (_g159043159076_ _g159044159080_))))
                            (_g159043159076_ _g159044159080_))))
                    (_g159043159076_ _g159044159080_)))))
        (_g159042159190_ _$stx159039_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx159195_)
      (let* ((_g159199159213_
              (lambda (_g159200159209_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159200159209_))))
             (_g159198159254_
              (lambda (_g159200159217_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159200159217_))
                    (let ((_e159204159220_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159200159217_))))
                      (let ((_hd159203159224_
                             (let ()
                               (declare (not safe))
                               (##car _e159204159220_)))
                            (_tl159202159227_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159204159220_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159202159227_))
                            (let ((_e159207159230_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159202159227_))))
                              (let ((_hd159206159234_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159207159230_)))
                                    (_tl159205159237_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159207159230_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159205159237_))
                                    ((lambda (_L159240_)
                                       (let ((__tmp162047
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp162043
                                              (let ((__tmp162044
                                                     (let ((__tmp162046
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162045
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162046 __tmp162045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162044 '()))))
                                         (declare (not safe))
                                         (cons __tmp162047 __tmp162043)))
                                     _hd159206159234_)
                                    (_g159199159213_ _g159200159217_))))
                            (_g159199159213_ _g159200159217_))))
                    (_g159199159213_ _g159200159217_)))))
        (_g159198159254_ _$stx159195_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx159258_)
      (let* ((_g159262159312_
              (lambda (_g159263159308_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159263159308_))))
             (_g159261159479_
              (lambda (_g159263159316_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159263159316_))
                    (let ((_e159276159319_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159263159316_))))
                      (let ((_hd159275159323_
                             (let ()
                               (declare (not safe))
                               (##car _e159276159319_)))
                            (_tl159274159326_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159276159319_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159274159326_))
                            (let ((_e159279159329_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159274159326_))))
                              (let ((_hd159278159333_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159279159329_)))
                                    (_tl159277159336_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159279159329_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159277159336_))
                                    (let ((_e159282159339_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159277159336_))))
                                      (let ((_hd159281159343_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159282159339_)))
                                            (_tl159280159346_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159282159339_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159280159346_))
                                            (let ((_e159285159349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159280159346_))))
                                              (let ((_hd159284159353_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159285159349_)))
                                                    (_tl159283159356_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159285159349_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159283159356_))
                                                    (let ((_e159288159359_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159283159356_))))
                                                      (let ((_hd159287159363_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159288159359_)))
                    (_tl159286159366_
                     (let () (declare (not safe)) (##cdr _e159288159359_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159286159366_))
                    (let ((_e159291159369_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159286159366_))))
                      (let ((_hd159290159373_
                             (let ()
                               (declare (not safe))
                               (##car _e159291159369_)))
                            (_tl159289159376_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159291159369_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159289159376_))
                            (let ((_e159294159379_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159289159376_))))
                              (let ((_hd159293159383_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159294159379_)))
                                    (_tl159292159386_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159294159379_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159292159386_))
                                    (let ((_e159297159389_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159292159386_))))
                                      (let ((_hd159296159393_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159297159389_)))
                                            (_tl159295159396_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159297159389_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159295159396_))
                                            (let ((_e159300159399_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159295159396_))))
                                              (let ((_hd159299159403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159300159399_)))
                                                    (_tl159298159406_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159300159399_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159298159406_))
                                                    (let ((_e159303159409_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159298159406_))))
                                                      (let ((_hd159302159413_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159303159409_)))
                    (_tl159301159416_
                     (let () (declare (not safe)) (##cdr _e159303159409_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159301159416_))
                    (let ((_e159306159419_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159301159416_))))
                      (let ((_hd159305159423_
                             (let ()
                               (declare (not safe))
                               (##car _e159306159419_)))
                            (_tl159304159426_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159306159419_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl159304159426_))
                            ((lambda (_L159429_
                                      _L159431_
                                      _L159432_
                                      _L159433_
                                      _L159434_
                                      _L159435_
                                      _L159436_
                                      _L159437_
                                      _L159438_
                                      _L159439_)
                               (let ((__tmp162082
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp162048
                                      (let ((__tmp162079
                                             (let ((__tmp162081
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162080
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159439_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162081 __tmp162080)))
                                            (__tmp162049
                                             (let ((__tmp162076
                                                    (let ((__tmp162078
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp162077
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp162078 __tmp162077)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp162050
                                                    (let ((__tmp162073
                                                           (let ((__tmp162075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162074
                          (let () (declare (not safe)) (cons _L159437_ '()))))
                     (declare (not safe))
                     (cons __tmp162075 __tmp162074)))
                  (__tmp162051
                   (let ((__tmp162070
                          (let ((__tmp162072
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp162071
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159436_ '()))))
                            (declare (not safe))
                            (cons __tmp162072 __tmp162071)))
                         (__tmp162052
                          (let ((__tmp162067
                                 (let ((__tmp162069
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp162068
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159435_ '()))))
                                   (declare (not safe))
                                   (cons __tmp162069 __tmp162068)))
                                (__tmp162053
                                 (let ((__tmp162064
                                        (let ((__tmp162066
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp162065
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159434_ '()))))
                                          (declare (not safe))
                                          (cons __tmp162066 __tmp162065)))
                                       (__tmp162054
                                        (let ((__tmp162055
                                               (let ((__tmp162056
                                                      (let ((__tmp162061
                                                             (let ((__tmp162063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162062
                            (let ()
                              (declare (not safe))
                              (cons _L159431_ '()))))
                       (declare (not safe))
                       (cons __tmp162063 __tmp162062)))
                    (__tmp162057
                     (let ((__tmp162058
                            (let ((__tmp162060
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162059
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159429_ '()))))
                              (declare (not safe))
                              (cons __tmp162060 __tmp162059))))
                       (declare (not safe))
                       (cons __tmp162058 '()))))
                (declare (not safe))
                (cons __tmp162061 __tmp162057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159432_
                                                       __tmp162056))))
                                          (declare (not safe))
                                          (cons _L159433_ __tmp162055))))
                                   (declare (not safe))
                                   (cons __tmp162064 __tmp162054))))
                            (declare (not safe))
                            (cons __tmp162067 __tmp162053))))
                     (declare (not safe))
                     (cons __tmp162070 __tmp162052))))
              (declare (not safe))
              (cons __tmp162073 __tmp162051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162076
                                                     __tmp162050))))
                                        (declare (not safe))
                                        (cons __tmp162079 __tmp162049))))
                                 (declare (not safe))
                                 (cons __tmp162082 __tmp162048)))
                             _hd159305159423_
                             _hd159302159413_
                             _hd159299159403_
                             _hd159296159393_
                             _hd159293159383_
                             _hd159290159373_
                             _hd159287159363_
                             _hd159284159353_
                             _hd159281159343_
                             _hd159278159333_)
                            (_g159262159312_ _g159263159316_))))
                    (_g159262159312_ _g159263159316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159262159312_
                                                     _g159263159316_))))
                                            (_g159262159312_
                                             _g159263159316_))))
                                    (_g159262159312_ _g159263159316_))))
                            (_g159262159312_ _g159263159316_))))
                    (_g159262159312_ _g159263159316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159262159312_
                                                     _g159263159316_))))
                                            (_g159262159312_
                                             _g159263159316_))))
                                    (_g159262159312_ _g159263159316_))))
                            (_g159262159312_ _g159263159316_))))
                    (_g159262159312_ _g159263159316_)))))
        (_g159261159479_ _$stx159258_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159483_)
      (let* ((_g159487159501_
              (lambda (_g159488159497_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159488159497_))))
             (_g159486159542_
              (lambda (_g159488159505_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159488159505_))
                    (let ((_e159492159508_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159488159505_))))
                      (let ((_hd159491159512_
                             (let ()
                               (declare (not safe))
                               (##car _e159492159508_)))
                            (_tl159490159515_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159492159508_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159490159515_))
                            (let ((_e159495159518_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159490159515_))))
                              (let ((_hd159494159522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159495159518_)))
                                    (_tl159493159525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159495159518_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159493159525_))
                                    ((lambda (_L159528_)
                                       (let ((__tmp162087
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp162083
                                              (let ((__tmp162084
                                                     (let ((__tmp162086
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162085
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162086 __tmp162085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162084 '()))))
                                         (declare (not safe))
                                         (cons __tmp162087 __tmp162083)))
                                     _hd159494159522_)
                                    (_g159487159501_ _g159488159505_))))
                            (_g159487159501_ _g159488159505_))))
                    (_g159487159501_ _g159488159505_)))))
        (_g159486159542_ _$stx159483_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159546_)
      (let* ((_g159550159564_
              (lambda (_g159551159560_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159551159560_))))
             (_g159549159605_
              (lambda (_g159551159568_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159551159568_))
                    (let ((_e159555159571_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159551159568_))))
                      (let ((_hd159554159575_
                             (let ()
                               (declare (not safe))
                               (##car _e159555159571_)))
                            (_tl159553159578_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159555159571_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159553159578_))
                            (let ((_e159558159581_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159553159578_))))
                              (let ((_hd159557159585_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159558159581_)))
                                    (_tl159556159588_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159558159581_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159556159588_))
                                    ((lambda (_L159591_)
                                       (let ((__tmp162092
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp162088
                                              (let ((__tmp162089
                                                     (let ((__tmp162091
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162090
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162091 __tmp162090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162089 '()))))
                                         (declare (not safe))
                                         (cons __tmp162092 __tmp162088)))
                                     _hd159557159585_)
                                    (_g159550159564_ _g159551159568_))))
                            (_g159550159564_ _g159551159568_))))
                    (_g159550159564_ _g159551159568_)))))
        (_g159549159605_ _$stx159546_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159609_)
      (let* ((_g159613159635_
              (lambda (_g159614159631_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159614159631_))))
             (_g159612159704_
              (lambda (_g159614159639_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159614159639_))
                    (let ((_e159620159642_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159614159639_))))
                      (let ((_hd159619159646_
                             (let ()
                               (declare (not safe))
                               (##car _e159620159642_)))
                            (_tl159618159649_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159620159642_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159618159649_))
                            (let ((_e159623159652_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159618159649_))))
                              (let ((_hd159622159656_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159623159652_)))
                                    (_tl159621159659_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159623159652_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159621159659_))
                                    (let ((_e159626159662_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159621159659_))))
                                      (let ((_hd159625159666_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159626159662_)))
                                            (_tl159624159669_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159626159662_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159624159669_))
                                            (let ((_e159629159672_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159624159669_))))
                                              (let ((_hd159628159676_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159629159672_)))
                                                    (_tl159627159679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159629159672_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159627159679_))
                                                    ((lambda (_L159682_
                                                              _L159684_
                                                              _L159685_)
                                                       (let ((__tmp162102
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp162093
                      (let ((__tmp162099
                             (let ((__tmp162101
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162100
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159685_ '()))))
                               (declare (not safe))
                               (cons __tmp162101 __tmp162100)))
                            (__tmp162094
                             (let ((__tmp162096
                                    (let ((__tmp162098
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162097
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159684_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162098 __tmp162097)))
                                   (__tmp162095
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159682_ '()))))
                               (declare (not safe))
                               (cons __tmp162096 __tmp162095))))
                        (declare (not safe))
                        (cons __tmp162099 __tmp162094))))
                 (declare (not safe))
                 (cons __tmp162102 __tmp162093)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159628159676_
                                                     _hd159625159666_
                                                     _hd159622159656_)
                                                    (_g159613159635_
                                                     _g159614159639_))))
                                            (_g159613159635_
                                             _g159614159639_))))
                                    (_g159613159635_ _g159614159639_))))
                            (_g159613159635_ _g159614159639_))))
                    (_g159613159635_ _g159614159639_)))))
        (_g159612159704_ _$stx159609_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159708_)
      (let* ((_g159712159734_
              (lambda (_g159713159730_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159713159730_))))
             (_g159711159803_
              (lambda (_g159713159738_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159713159738_))
                    (let ((_e159719159741_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159713159738_))))
                      (let ((_hd159718159745_
                             (let ()
                               (declare (not safe))
                               (##car _e159719159741_)))
                            (_tl159717159748_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159719159741_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159717159748_))
                            (let ((_e159722159751_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159717159748_))))
                              (let ((_hd159721159755_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159722159751_)))
                                    (_tl159720159758_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159722159751_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159720159758_))
                                    (let ((_e159725159761_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159720159758_))))
                                      (let ((_hd159724159765_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159725159761_)))
                                            (_tl159723159768_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159725159761_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159723159768_))
                                            (let ((_e159728159771_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159723159768_))))
                                              (let ((_hd159727159775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159728159771_)))
                                                    (_tl159726159778_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159728159771_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159726159778_))
                                                    ((lambda (_L159781_
                                                              _L159783_
                                                              _L159784_)
                                                       (let ((__tmp162112
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp162103
                      (let ((__tmp162109
                             (let ((__tmp162111
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162110
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159784_ '()))))
                               (declare (not safe))
                               (cons __tmp162111 __tmp162110)))
                            (__tmp162104
                             (let ((__tmp162106
                                    (let ((__tmp162108
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162107
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159783_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162108 __tmp162107)))
                                   (__tmp162105
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159781_ '()))))
                               (declare (not safe))
                               (cons __tmp162106 __tmp162105))))
                        (declare (not safe))
                        (cons __tmp162109 __tmp162104))))
                 (declare (not safe))
                 (cons __tmp162112 __tmp162103)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159727159775_
                                                     _hd159724159765_
                                                     _hd159721159755_)
                                                    (_g159712159734_
                                                     _g159713159738_))))
                                            (_g159712159734_
                                             _g159713159738_))))
                                    (_g159712159734_ _g159713159738_))))
                            (_g159712159734_ _g159713159738_))))
                    (_g159712159734_ _g159713159738_)))))
        (_g159711159803_ _$stx159708_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159807_)
      (let* ((___stx161622161623_ _$stx159807_)
             (_g159815159883_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161622161623_)))))
        (let ((___kont161625161626_
               (lambda (_L160161_ _L160163_)
                 (let ((__tmp162133
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162113
                        (let ((__tmp162129
                               (let ((__tmp162132
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162130
                                      (let ((__tmp162131
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162131 '()))))
                                 (declare (not safe))
                                 (cons __tmp162132 __tmp162130)))
                              (__tmp162114
                               (let ((__tmp162126
                                      (let ((__tmp162128
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162127
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160163_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162128 __tmp162127)))
                                     (__tmp162115
                                      (let ((__tmp162116
                                             (let ((__tmp162117
                                                    (let ((__tmp162118
                                                           (let ((__tmp162125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162119
                          (let ((__tmp162120
                                 (let ((__tmp162124
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp162121
                                        (let ((__tmp162122
                                               (let ((__tmp162123
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L160161_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp162123))))
                                          (declare (not safe))
                                          (cons _L160163_ __tmp162122))))
                                   (declare (not safe))
                                   (cons __tmp162124 __tmp162121))))
                            (declare (not safe))
                            (cons __tmp162120 '()))))
                     (declare (not safe))
                     (cons __tmp162125 __tmp162119))))
              (declare (not safe))
              (cons __tmp162118 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L160161_ __tmp162117))))
                                        (declare (not safe))
                                        (cons '#f __tmp162116))))
                                 (declare (not safe))
                                 (cons __tmp162126 __tmp162115))))
                          (declare (not safe))
                          (cons __tmp162129 __tmp162114))))
                   (declare (not safe))
                   (cons __tmp162133 __tmp162113))))
              (___kont161627161628_
               (lambda (_L160092_ _L160094_)
                 (let ((__tmp162134
                        (let ((__tmp162135
                               (let ((__tmp162136
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L160092_ __tmp162136))))
                          (declare (not safe))
                          (cons 'primitive: __tmp162135))))
                   (declare (not safe))
                   (cons _L160094_ __tmp162134))))
              (___kont161629161630_
               (lambda (_L160031_ _L160033_)
                 (let ((__tmp162150
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp162137
                        (let ((__tmp162146
                               (let ((__tmp162149
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162147
                                      (let ((__tmp162148
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162148 '()))))
                                 (declare (not safe))
                                 (cons __tmp162149 __tmp162147)))
                              (__tmp162138
                               (let ((__tmp162143
                                      (let ((__tmp162145
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162144
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160033_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162145 __tmp162144)))
                                     (__tmp162139
                                      (let ((__tmp162140
                                             (let ((__tmp162142
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162141
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160031_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162142
                                                     __tmp162141))))
                                        (declare (not safe))
                                        (cons __tmp162140 '()))))
                                 (declare (not safe))
                                 (cons __tmp162143 __tmp162139))))
                          (declare (not safe))
                          (cons __tmp162146 __tmp162138))))
                   (declare (not safe))
                   (cons __tmp162150 __tmp162137))))
              (___kont161631161632_
               (lambda (_L159963_ _L159965_)
                 (let ((__tmp162164
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162151
                        (let ((__tmp162160
                               (let ((__tmp162163
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162161
                                      (let ((__tmp162162
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162162 '()))))
                                 (declare (not safe))
                                 (cons __tmp162163 __tmp162161)))
                              (__tmp162152
                               (let ((__tmp162157
                                      (let ((__tmp162159
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162158
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159965_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162159 __tmp162158)))
                                     (__tmp162153
                                      (let ((__tmp162154
                                             (let ((__tmp162156
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162155
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159963_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162156
                                                     __tmp162155))))
                                        (declare (not safe))
                                        (cons __tmp162154 '()))))
                                 (declare (not safe))
                                 (cons __tmp162157 __tmp162153))))
                          (declare (not safe))
                          (cons __tmp162160 __tmp162152))))
                   (declare (not safe))
                   (cons __tmp162164 __tmp162151))))
              (___kont161633161634_
               (lambda (_L159910_ _L159912_)
                 (let ((__tmp162165
                        (let ((__tmp162166
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159910_ __tmp162166))))
                   (declare (not safe))
                   (cons _L159912_ __tmp162165)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161622161623_))
              (let ((_e159821160117_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161622161623_))))
                (let ((_tl159819160124_
                       (let () (declare (not safe)) (##cdr _e159821160117_)))
                      (_hd159820160121_
                       (let () (declare (not safe)) (##car _e159821160117_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159819160124_))
                      (let ((_e159824160127_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159819160124_))))
                        (let ((_tl159822160134_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159824160127_)))
                              (_hd159823160131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159824160127_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159822160134_))
                              (let ((_e159827160137_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159822160134_))))
                                (let ((_tl159825160144_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159827160137_)))
                                      (_hd159826160141_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159827160137_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159826160141_))
                                      (let ((_e159828160147_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159826160141_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159828160147_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159825160144_))
                                                (let ((_e159831160151_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159825160144_))))
                                                  (let ((_tl159829160158_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159831160151_)))
                                                        (_hd159830160155_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159831160151_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159829160158_))
                                                        (___kont161625161626_
                                                         _hd159830160155_
                                                         _hd159823160131_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159823160131_))
                                                            (let ((_e159840160078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159823160131_))))
                      (declare (not safe))
                      (_g159815159883_))
                    (let () (declare (not safe)) (_g159815159883_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159823160131_))
                                                    (let ((_e159840160078_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159823160131_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159840160078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159825160144_))
                      (___kont161627161628_ _hd159826160141_ _hd159820160121_)
                      (let () (declare (not safe)) (_g159815159883_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159825160144_))
                      (___kont161631161632_ _hd159826160141_ _hd159823160131_)
                      (let () (declare (not safe)) (_g159815159883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159825160144_))
                                                        (___kont161631161632_
                                                         _hd159826160141_
                                                         _hd159823160131_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159815159883_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159823160131_))
                                                (let ((_e159840160078_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159823160131_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159840160078_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159825160144_))
                                                          (___kont161627161628_
                                                           _hd159826160141_
                                                           _hd159820160121_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159825160144_))
                      (let ((_e159858160021_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159825160144_))))
                        (let ((_tl159856160028_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159858160021_)))
                              (_hd159857160025_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159858160021_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159856160028_))
                              (___kont161629161630_
                               _hd159857160025_
                               _hd159826160141_)
                              (let ()
                                (declare (not safe))
                                (_g159815159883_)))))
                      (let () (declare (not safe)) (_g159815159883_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159825160144_))
                  (___kont161631161632_ _hd159826160141_ _hd159823160131_)
                  (let () (declare (not safe)) (_g159815159883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159825160144_))
                                                    (___kont161631161632_
                                                     _hd159826160141_
                                                     _hd159823160131_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159815159883_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159823160131_))
                                          (let ((_e159840160078_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159823160131_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159840160078_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159825160144_))
                                                    (___kont161627161628_
                                                     _hd159826160141_
                                                     _hd159820160121_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159825160144_))
                                                        (let ((_e159858160021_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159825160144_))))
                  (let ((_tl159856160028_
                         (let () (declare (not safe)) (##cdr _e159858160021_)))
                        (_hd159857160025_
                         (let ()
                           (declare (not safe))
                           (##car _e159858160021_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159856160028_))
                        (___kont161629161630_
                         _hd159857160025_
                         _hd159826160141_)
                        (let () (declare (not safe)) (_g159815159883_)))))
                (let () (declare (not safe)) (_g159815159883_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159825160144_))
                                                    (___kont161631161632_
                                                     _hd159826160141_
                                                     _hd159823160131_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159815159883_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159825160144_))
                                              (___kont161631161632_
                                               _hd159826160141_
                                               _hd159823160131_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159815159883_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159823160131_))
                                  (let ((_e159840160078_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159823160131_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159822160134_))
                                        (___kont161633161634_
                                         _hd159823160131_
                                         _hd159820160121_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159815159883_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159822160134_))
                                      (___kont161633161634_
                                       _hd159823160131_
                                       _hd159820160121_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159815159883_)))))))
                      (let () (declare (not safe)) (_g159815159883_)))))
              (let () (declare (not safe)) (_g159815159883_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx160185_)
      (let* ((___stx161762161763_ _$stx160185_)
             (_g160190160245_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161762161763_)))))
        (let ((___kont161765161766_
               (lambda (_L160430_ _L160432_)
                 (let ((__tmp162182
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp162167
                        (let ((__tmp162178
                               (let ((__tmp162181
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162179
                                      (let ((__tmp162180
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162180 '()))))
                                 (declare (not safe))
                                 (cons __tmp162181 __tmp162179)))
                              (__tmp162168
                               (let ((__tmp162169
                                      (let ((__tmp162177
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162170
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160430_
                                                  _L160432_))
                                               (let ((__tmp162171
                                                      (lambda (_g160449160453_
                                                               _g160450160456_
                                                               _g160451160458_)
                                                        (let ((__tmp162172
                                                               (let ((__tmp162176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162173
                              (let ((__tmp162174
                                     (let ((__tmp162175
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160449160453_ '()))))
                                       (declare (not safe))
                                       (cons _g160450160456_ __tmp162175))))
                                (declare (not safe))
                                (cons 'primitive: __tmp162174))))
                         (declare (not safe))
                         (cons __tmp162176 __tmp162173))))
                  (declare (not safe))
                  (cons __tmp162172 _g160451160458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162171
                                                         '()
                                                         _L160430_
                                                         _L160432_)))))
                                        (declare (not safe))
                                        (cons __tmp162177 __tmp162170))))
                                 (declare (not safe))
                                 (cons __tmp162169 '()))))
                          (declare (not safe))
                          (cons __tmp162178 __tmp162168))))
                   (declare (not safe))
                   (cons __tmp162182 __tmp162167))))
              (___kont161769161770_
               (lambda (_L160316_ _L160318_)
                 (let ((__tmp162197
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp162183
                        (let ((__tmp162193
                               (let ((__tmp162196
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162194
                                      (let ((__tmp162195
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162195 '()))))
                                 (declare (not safe))
                                 (cons __tmp162196 __tmp162194)))
                              (__tmp162184
                               (let ((__tmp162185
                                      (let ((__tmp162192
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162186
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160316_
                                                  _L160318_))
                                               (let ((__tmp162187
                                                      (lambda (_g160333160337_
                                                               _g160334160340_
                                                               _g160335160342_)
                                                        (let ((__tmp162188
                                                               (let ((__tmp162191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162189
                              (let ((__tmp162190
                                     (let ()
                                       (declare (not safe))
                                       (cons _g160333160337_ '()))))
                                (declare (not safe))
                                (cons _g160334160340_ __tmp162190))))
                         (declare (not safe))
                         (cons __tmp162191 __tmp162189))))
                  (declare (not safe))
                  (cons __tmp162188 _g160335160342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162187
                                                         '()
                                                         _L160316_
                                                         _L160318_)))))
                                        (declare (not safe))
                                        (cons __tmp162192 __tmp162186))))
                                 (declare (not safe))
                                 (cons __tmp162185 '()))))
                          (declare (not safe))
                          (cons __tmp162193 __tmp162184))))
                   (declare (not safe))
                   (cons __tmp162197 __tmp162183)))))
          (let* ((___match161813161814_
                  (lambda (_e160222160252_
                           _hd160221160256_
                           _tl160220160259_
                           ___splice161771161772_
                           _target160223160262_
                           _tl160225160265_)
                    (letrec ((_loop160226160268_
                              (lambda (_hd160224160272_
                                       _dispatch160230160275_
                                       _arity160231160277_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160224160272_))
                                    (let ((_e160227160280_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160224160272_))))
                                      (let ((_lp-tl160229160287_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160227160280_)))
                                            (_lp-hd160228160284_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160227160280_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160228160284_))
                                            (let ((_e160236160290_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160228160284_))))
                                              (let ((_tl160234160297_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160236160290_)))
                                                    (_hd160235160294_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160236160290_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160234160297_))
                                                    (let ((_e160239160300_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160234160297_))))
                                                      (let ((_tl160237160307_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160239160300_)))
                    (_hd160238160304_
                     (let () (declare (not safe)) (##car _e160239160300_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160237160307_))
                    (_loop160226160268_
                     _lp-tl160229160287_
                     (let ()
                       (declare (not safe))
                       (cons _hd160238160304_ _dispatch160230160275_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160235160294_ _arity160231160277_)))
                    (let () (declare (not safe)) (_g160190160245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160190160245_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160190160245_)))))
                                    (let ((_arity160233160313_
                                           (reverse _arity160231160277_))
                                          (_dispatch160232160310_
                                           (reverse _dispatch160230160275_)))
                                      (___kont161769161770_
                                       _dispatch160232160310_
                                       _arity160233160313_))))))
                      (_loop160226160268_ _target160223160262_ '() '()))))
                 (___match161805161806_
                  (lambda (_e160222160252_ _hd160221160256_ _tl160220160259_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl160220160259_))
                        (let ((___splice161771161772_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl160220160259_
                                  '0))))
                          (let ((_tl160225160265_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161771161772_ '1)))
                                (_target160223160262_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161771161772_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160225160265_))
                                (___match161813161814_
                                 _e160222160252_
                                 _hd160221160256_
                                 _tl160220160259_
                                 ___splice161771161772_
                                 _target160223160262_
                                 _tl160225160265_)
                                (let ()
                                  (declare (not safe))
                                  (_g160190160245_)))))
                        (let () (declare (not safe)) (_g160190160245_)))))
                 (___match161799161800_
                  (lambda (_e160196160352_
                           _hd160195160356_
                           _tl160194160359_
                           _e160199160362_
                           _hd160198160366_
                           _tl160197160369_
                           _e160200160372_
                           ___splice161767161768_
                           _target160201160376_
                           _tl160203160379_)
                    (letrec ((_loop160204160382_
                              (lambda (_hd160202160386_
                                       _dispatch160208160389_
                                       _arity160209160391_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160202160386_))
                                    (let ((_e160205160394_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160202160386_))))
                                      (let ((_lp-tl160207160401_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160205160394_)))
                                            (_lp-hd160206160398_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160205160394_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160206160398_))
                                            (let ((_e160214160404_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160206160398_))))
                                              (let ((_tl160212160411_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160214160404_)))
                                                    (_hd160213160408_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160214160404_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160212160411_))
                                                    (let ((_e160217160414_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160212160411_))))
                                                      (let ((_tl160215160421_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160217160414_)))
                    (_hd160216160418_
                     (let () (declare (not safe)) (##car _e160217160414_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160215160421_))
                    (_loop160204160382_
                     _lp-tl160207160401_
                     (let ()
                       (declare (not safe))
                       (cons _hd160216160418_ _dispatch160208160389_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160213160408_ _arity160209160391_)))
                    (___match161805161806_
                     _e160196160352_
                     _hd160195160356_
                     _tl160194160359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161805161806_
                                                     _e160196160352_
                                                     _hd160195160356_
                                                     _tl160194160359_))))
                                            (___match161805161806_
                                             _e160196160352_
                                             _hd160195160356_
                                             _tl160194160359_))))
                                    (let ((_arity160211160427_
                                           (reverse _arity160209160391_))
                                          (_dispatch160210160424_
                                           (reverse _dispatch160208160389_)))
                                      (___kont161765161766_
                                       _dispatch160210160424_
                                       _arity160211160427_))))))
                      (_loop160204160382_ _target160201160376_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161762161763_))
                (let ((_e160196160352_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161762161763_))))
                  (let ((_tl160194160359_
                         (let () (declare (not safe)) (##cdr _e160196160352_)))
                        (_hd160195160356_
                         (let ()
                           (declare (not safe))
                           (##car _e160196160352_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160194160359_))
                        (let ((_e160199160362_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160194160359_))))
                          (let ((_tl160197160369_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160199160362_)))
                                (_hd160198160366_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160199160362_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd160198160366_))
                                (let ((_e160200160372_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd160198160366_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e160200160372_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160197160369_))
                                          (let ((___splice161767161768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160197160369_
                                                    '0))))
                                            (let ((_tl160203160379_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161767161768_
                                                      '1)))
                                                  (_target160201160376_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161767161768_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160203160379_))
                                                  (___match161799161800_
                                                   _e160196160352_
                                                   _hd160195160356_
                                                   _tl160194160359_
                                                   _e160199160362_
                                                   _hd160198160366_
                                                   _tl160197160369_
                                                   _e160200160372_
                                                   ___splice161767161768_
                                                   _target160201160376_
                                                   _tl160203160379_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160194160359_))
                                                      (let ((___splice161771161772_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160194160359_ '0))))
                (let ((_tl160225160265_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161771161772_ '1)))
                      (_target160223160262_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161771161772_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160225160265_))
                      (___match161813161814_
                       _e160196160352_
                       _hd160195160356_
                       _tl160194160359_
                       ___splice161771161772_
                       _target160223160262_
                       _tl160225160265_)
                      (let () (declare (not safe)) (_g160190160245_)))))
              (let () (declare (not safe)) (_g160190160245_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160194160359_))
                                              (let ((___splice161771161772_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160194160359_
                                                        '0))))
                                                (let ((_tl160225160265_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161771161772_
                                                          '1)))
                                                      (_target160223160262_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161771161772_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160225160265_))
                                                      (___match161813161814_
                                                       _e160196160352_
                                                       _hd160195160356_
                                                       _tl160194160359_
                                                       ___splice161771161772_
                                                       _target160223160262_
                                                       _tl160225160265_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160190160245_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160190160245_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160194160359_))
                                          (let ((___splice161771161772_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160194160359_
                                                    '0))))
                                            (let ((_tl160225160265_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161771161772_
                                                      '1)))
                                                  (_target160223160262_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161771161772_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160225160265_))
                                                  (___match161813161814_
                                                   _e160196160352_
                                                   _hd160195160356_
                                                   _tl160194160359_
                                                   ___splice161771161772_
                                                   _target160223160262_
                                                   _tl160225160265_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160190160245_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160190160245_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160194160359_))
                                    (let ((___splice161771161772_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160194160359_
                                              '0))))
                                      (let ((_tl160225160265_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161771161772_
                                                '1)))
                                            (_target160223160262_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161771161772_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160225160265_))
                                            (___match161813161814_
                                             _e160196160352_
                                             _hd160195160356_
                                             _tl160194160359_
                                             ___splice161771161772_
                                             _target160223160262_
                                             _tl160225160265_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160190160245_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160190160245_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160194160359_))
                            (let ((___splice161771161772_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160194160359_
                                      '0))))
                              (let ((_tl160225160265_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161771161772_
                                        '1)))
                                    (_target160223160262_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161771161772_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160225160265_))
                                    (___match161813161814_
                                     _e160196160352_
                                     _hd160195160356_
                                     _tl160194160359_
                                     ___splice161771161772_
                                     _target160223160262_
                                     _tl160225160265_)
                                    (let ()
                                      (declare (not safe))
                                      (_g160190160245_)))))
                            (let () (declare (not safe)) (_g160190160245_))))))
                (let () (declare (not safe)) (_g160190160245_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160467_)
      (let* ((_g160471160489_
              (lambda (_g160472160485_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160472160485_))))
             (_g160470160544_
              (lambda (_g160472160493_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160472160493_))
                    (let ((_e160477160496_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160472160493_))))
                      (let ((_hd160476160500_
                             (let ()
                               (declare (not safe))
                               (##car _e160477160496_)))
                            (_tl160475160503_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160477160496_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160475160503_))
                            (let ((_e160480160506_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160475160503_))))
                              (let ((_hd160479160510_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160480160506_)))
                                    (_tl160478160513_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160480160506_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160478160513_))
                                    (let ((_e160483160516_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160478160513_))))
                                      (let ((_hd160482160520_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160483160516_)))
                                            (_tl160481160523_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160483160516_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160481160523_))
                                            ((lambda (_L160526_ _L160528_)
                                               (let ((__tmp162211
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp162198
                                                      (let ((__tmp162207
                                                             (let ((__tmp162210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162208
                            (let ((__tmp162209
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp162209 '()))))
                       (declare (not safe))
                       (cons __tmp162210 __tmp162208)))
                    (__tmp162199
                     (let ((__tmp162204
                            (let ((__tmp162206
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162205
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160528_ '()))))
                              (declare (not safe))
                              (cons __tmp162206 __tmp162205)))
                           (__tmp162200
                            (let ((__tmp162201
                                   (let ((__tmp162203
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162202
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160526_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162203 __tmp162202))))
                              (declare (not safe))
                              (cons __tmp162201 '()))))
                       (declare (not safe))
                       (cons __tmp162204 __tmp162200))))
                (declare (not safe))
                (cons __tmp162207 __tmp162199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162211
                                                       __tmp162198)))
                                             _hd160482160520_
                                             _hd160479160510_)
                                            (_g160471160489_
                                             _g160472160493_))))
                                    (_g160471160489_ _g160472160493_))))
                            (_g160471160489_ _g160472160493_))))
                    (_g160471160489_ _g160472160493_)))))
        (_g160470160544_ _$stx160467_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160548_)
      (let* ((_g160552160570_
              (lambda (_g160553160566_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160553160566_))))
             (_g160551160625_
              (lambda (_g160553160574_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160553160574_))
                    (let ((_e160558160577_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160553160574_))))
                      (let ((_hd160557160581_
                             (let ()
                               (declare (not safe))
                               (##car _e160558160577_)))
                            (_tl160556160584_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160558160577_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160556160584_))
                            (let ((_e160561160587_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160556160584_))))
                              (let ((_hd160560160591_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160561160587_)))
                                    (_tl160559160594_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160561160587_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160559160594_))
                                    (let ((_e160564160597_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160559160594_))))
                                      (let ((_hd160563160601_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160564160597_)))
                                            (_tl160562160604_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160564160597_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160562160604_))
                                            ((lambda (_L160607_ _L160609_)
                                               (let ((__tmp162225
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp162212
                                                      (let ((__tmp162221
                                                             (let ((__tmp162224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162222
                            (let ((__tmp162223
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp162223 '()))))
                       (declare (not safe))
                       (cons __tmp162224 __tmp162222)))
                    (__tmp162213
                     (let ((__tmp162218
                            (let ((__tmp162220
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162219
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160609_ '()))))
                              (declare (not safe))
                              (cons __tmp162220 __tmp162219)))
                           (__tmp162214
                            (let ((__tmp162215
                                   (let ((__tmp162217
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162216
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160607_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162217 __tmp162216))))
                              (declare (not safe))
                              (cons __tmp162215 '()))))
                       (declare (not safe))
                       (cons __tmp162218 __tmp162214))))
                (declare (not safe))
                (cons __tmp162221 __tmp162213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162225
                                                       __tmp162212)))
                                             _hd160563160601_
                                             _hd160560160591_)
                                            (_g160552160570_
                                             _g160553160574_))))
                                    (_g160552160570_ _g160553160574_))))
                            (_g160552160570_ _g160553160574_))))
                    (_g160552160570_ _g160553160574_)))))
        (_g160551160625_ _$stx160548_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160629_)
      (let* ((___stx161816161817_ _$stx160629_)
             (_g160636160707_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161816161817_)))))
        (let ((___kont161819161820_
               (lambda (_L160998_ _L161000_)
                 (let ((__tmp162231
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162226
                        (let ((__tmp162227
                               (let ((__tmp162228
                                      (let ((__tmp162230
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162229
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160998_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162230 __tmp162229))))
                                 (declare (not safe))
                                 (cons __tmp162228 '()))))
                          (declare (not safe))
                          (cons _L161000_ __tmp162227))))
                   (declare (not safe))
                   (cons __tmp162231 __tmp162226))))
              (___kont161821161822_
               (lambda (_L160917_ _L160919_)
                 (let ((__tmp162240
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162232
                        (let ((__tmp162233
                               (let ((__tmp162234
                                      (let ((__tmp162239
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162235
                                             (let ((__tmp162236
                                                    (lambda (_g160938160941_
                                                             _g160939160944_)
                                                      (let ((__tmp162237
                                                             (let ((__tmp162238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160938160941_ __tmp162238))))
                (declare (not safe))
                (cons __tmp162237 _g160939160944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162236
                                                       '()
                                                       _L160917_))))
                                        (declare (not safe))
                                        (cons __tmp162239 __tmp162235))))
                                 (declare (not safe))
                                 (cons __tmp162234 '()))))
                          (declare (not safe))
                          (cons _L160919_ __tmp162233))))
                   (declare (not safe))
                   (cons __tmp162240 __tmp162232))))
              (___kont161825161826_
               (lambda (_L160829_ _L160831_)
                 (let ((__tmp162247
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162241
                        (let ((__tmp162242
                               (let ((__tmp162243
                                      (let ((__tmp162246
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162244
                                             (let ((__tmp162245
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160829_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162245))))
                                        (declare (not safe))
                                        (cons __tmp162246 __tmp162244))))
                                 (declare (not safe))
                                 (cons __tmp162243 '()))))
                          (declare (not safe))
                          (cons _L160831_ __tmp162242))))
                   (declare (not safe))
                   (cons __tmp162247 __tmp162241))))
              (___kont161827161828_
               (lambda (_L160764_ _L160766_)
                 (let ((__tmp162257
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162248
                        (let ((__tmp162249
                               (let ((__tmp162250
                                      (let ((__tmp162256
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162251
                                             (let ((__tmp162252
                                                    (let ((__tmp162253
                                                           (lambda (_g160783160786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160784160789_)
                     (let ((__tmp162254
                            (let ((__tmp162255
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160783160786_ __tmp162255))))
                       (declare (not safe))
                       (cons __tmp162254 _g160784160789_)))))
              (declare (not safe))
              (foldr1 __tmp162253 '() _L160764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162252))))
                                        (declare (not safe))
                                        (cons __tmp162256 __tmp162251))))
                                 (declare (not safe))
                                 (cons __tmp162250 '()))))
                          (declare (not safe))
                          (cons _L160766_ __tmp162249))))
                   (declare (not safe))
                   (cons __tmp162257 __tmp162248)))))
          (let* ((___match161935161936_
                  (lambda (_e160689160714_
                           _hd160688160718_
                           _tl160687160721_
                           _e160692160724_
                           _hd160691160728_
                           _tl160690160731_
                           ___splice161829161830_
                           _target160693160734_
                           _tl160695160737_)
                    (letrec ((_loop160696160740_
                              (lambda (_hd160694160744_ _arity160700160747_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160694160744_))
                                    (let ((_e160697160750_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160694160744_))))
                                      (let ((_lp-tl160699160757_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160697160750_)))
                                            (_lp-hd160698160754_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160697160750_))))
                                        (_loop160696160740_
                                         _lp-tl160699160757_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160698160754_
                                                 _arity160700160747_)))))
                                    (let ((_arity160701160760_
                                           (reverse _arity160700160747_)))
                                      (___kont161827161828_
                                       _arity160701160760_
                                       _hd160691160728_))))))
                      (_loop160696160740_ _target160693160734_ '()))))
                 (___match161895161896_
                  (lambda (_e160657160853_
                           _hd160656160857_
                           _tl160655160860_
                           _e160660160863_
                           _hd160659160867_
                           _tl160658160870_
                           _e160663160873_
                           _hd160662160877_
                           _tl160661160880_
                           _e160664160883_
                           ___splice161823161824_
                           _target160665160887_
                           _tl160667160890_)
                    (letrec ((_loop160668160893_
                              (lambda (_hd160666160897_ _arity160672160900_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160666160897_))
                                    (let ((_e160669160903_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160666160897_))))
                                      (let ((_lp-tl160671160910_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160669160903_)))
                                            (_lp-hd160670160907_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160669160903_))))
                                        (_loop160668160893_
                                         _lp-tl160671160910_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160670160907_
                                                 _arity160672160900_)))))
                                    (let ((_arity160673160913_
                                           (reverse _arity160672160900_)))
                                      (___kont161821161822_
                                       _arity160673160913_
                                       _hd160659160867_))))))
                      (_loop160668160893_ _target160665160887_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161816161817_))
                (let ((_e160642160954_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161816161817_))))
                  (let ((_tl160640160961_
                         (let () (declare (not safe)) (##cdr _e160642160954_)))
                        (_hd160641160958_
                         (let ()
                           (declare (not safe))
                           (##car _e160642160954_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160640160961_))
                        (let ((_e160645160964_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160640160961_))))
                          (let ((_tl160643160971_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160645160964_)))
                                (_hd160644160968_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160645160964_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160643160971_))
                                (let ((_e160648160974_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160643160971_))))
                                  (let ((_tl160646160981_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160648160974_)))
                                        (_hd160647160978_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160648160974_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160647160978_))
                                        (let ((_e160649160984_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160647160978_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160649160984_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160646160981_))
                                                  (let ((_e160652160988_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160646160981_))))
                                                    (let ((_tl160650160995_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160652160988_)))
                                                          (_hd160651160992_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160652160988_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160650160995_))
                                                          (___kont161819161820_
                                                           _hd160651160992_
                                                           _hd160644160968_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160646160981_))
                      (let ((___splice161823161824_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160646160981_ '0))))
                        (let ((_tl160667160890_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161823161824_ '1)))
                              (_target160665160887_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161823161824_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160667160890_))
                              (___match161895161896_
                               _e160642160954_
                               _hd160641160958_
                               _tl160640160961_
                               _e160645160964_
                               _hd160644160968_
                               _tl160643160971_
                               _e160648160974_
                               _hd160647160978_
                               _tl160646160981_
                               _e160649160984_
                               ___splice161823161824_
                               _target160665160887_
                               _tl160667160890_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160643160971_))
                                  (let ((___splice161829161830_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160643160971_
                                            '0))))
                                    (let ((_tl160695160737_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161829161830_
                                              '1)))
                                          (_target160693160734_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161829161830_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160695160737_))
                                          (___match161935161936_
                                           _e160642160954_
                                           _hd160641160958_
                                           _tl160640160961_
                                           _e160645160964_
                                           _hd160644160968_
                                           _tl160643160971_
                                           ___splice161829161830_
                                           _target160693160734_
                                           _tl160695160737_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160636160707_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160636160707_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160643160971_))
                          (let ((___splice161829161830_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160643160971_
                                    '0))))
                            (let ((_tl160695160737_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161829161830_ '1)))
                                  (_target160693160734_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161829161830_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160695160737_))
                                  (___match161935161936_
                                   _e160642160954_
                                   _hd160641160958_
                                   _tl160640160961_
                                   _e160645160964_
                                   _hd160644160968_
                                   _tl160643160971_
                                   ___splice161829161830_
                                   _target160693160734_
                                   _tl160695160737_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160636160707_)))))
                          (let () (declare (not safe)) (_g160636160707_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160646160981_))
                                                      (let ((___splice161823161824_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160646160981_ '0))))
                (let ((_tl160667160890_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161823161824_ '1)))
                      (_target160665160887_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161823161824_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160667160890_))
                      (___match161895161896_
                       _e160642160954_
                       _hd160641160958_
                       _tl160640160961_
                       _e160645160964_
                       _hd160644160968_
                       _tl160643160971_
                       _e160648160974_
                       _hd160647160978_
                       _tl160646160981_
                       _e160649160984_
                       ___splice161823161824_
                       _target160665160887_
                       _tl160667160890_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160646160981_))
                          (___kont161825161826_
                           _hd160647160978_
                           _hd160644160968_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160643160971_))
                              (let ((___splice161829161830_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160643160971_
                                        '0))))
                                (let ((_tl160695160737_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161829161830_
                                          '1)))
                                      (_target160693160734_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161829161830_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160695160737_))
                                      (___match161935161936_
                                       _e160642160954_
                                       _hd160641160958_
                                       _tl160640160961_
                                       _e160645160964_
                                       _hd160644160968_
                                       _tl160643160971_
                                       ___splice161829161830_
                                       _target160693160734_
                                       _tl160695160737_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160636160707_)))))
                              (let ()
                                (declare (not safe))
                                (_g160636160707_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160646160981_))
                  (___kont161825161826_ _hd160647160978_ _hd160644160968_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160643160971_))
                      (let ((___splice161829161830_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160643160971_ '0))))
                        (let ((_tl160695160737_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161829161830_ '1)))
                              (_target160693160734_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161829161830_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160695160737_))
                              (___match161935161936_
                               _e160642160954_
                               _hd160641160958_
                               _tl160640160961_
                               _e160645160964_
                               _hd160644160968_
                               _tl160643160971_
                               ___splice161829161830_
                               _target160693160734_
                               _tl160695160737_)
                              (let ()
                                (declare (not safe))
                                (_g160636160707_)))))
                      (let () (declare (not safe)) (_g160636160707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160646160981_))
                                                  (___kont161825161826_
                                                   _hd160647160978_
                                                   _hd160644160968_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160643160971_))
                                                      (let ((___splice161829161830_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160643160971_ '0))))
                (let ((_tl160695160737_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161829161830_ '1)))
                      (_target160693160734_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161829161830_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160695160737_))
                      (___match161935161936_
                       _e160642160954_
                       _hd160641160958_
                       _tl160640160961_
                       _e160645160964_
                       _hd160644160968_
                       _tl160643160971_
                       ___splice161829161830_
                       _target160693160734_
                       _tl160695160737_)
                      (let () (declare (not safe)) (_g160636160707_)))))
              (let () (declare (not safe)) (_g160636160707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160646160981_))
                                            (___kont161825161826_
                                             _hd160647160978_
                                             _hd160644160968_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160643160971_))
                                                (let ((___splice161829161830_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160643160971_
                                                          '0))))
                                                  (let ((_tl160695160737_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161829161830_
                                                            '1)))
                                                        (_target160693160734_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161829161830_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160695160737_))
                                                        (___match161935161936_
                                                         _e160642160954_
                                                         _hd160641160958_
                                                         _tl160640160961_
                                                         _e160645160964_
                                                         _hd160644160968_
                                                         _tl160643160971_
                                                         ___splice161829161830_
                                                         _target160693160734_
                                                         _tl160695160737_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160636160707_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160636160707_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160643160971_))
                                    (let ((___splice161829161830_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160643160971_
                                              '0))))
                                      (let ((_tl160695160737_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161829161830_
                                                '1)))
                                            (_target160693160734_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161829161830_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160695160737_))
                                            (___match161935161936_
                                             _e160642160954_
                                             _hd160641160958_
                                             _tl160640160961_
                                             _e160645160964_
                                             _hd160644160968_
                                             _tl160643160971_
                                             ___splice161829161830_
                                             _target160693160734_
                                             _tl160695160737_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160636160707_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160636160707_))))))
                        (let () (declare (not safe)) (_g160636160707_)))))
                (let () (declare (not safe)) (_g160636160707_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx161024_)
      (let* ((___stx161938161939_ _$stx161024_)
             (_g161029161064_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161938161939_)))))
        (let ((___kont161941161942_
               (lambda (_L161186_ _L161188_)
                 (let ((__tmp162263
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162258
                        (let ((__tmp162259
                               (let ((__tmp162260
                                      (let ((__tmp162262
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162261
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161186_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162262 __tmp162261))))
                                 (declare (not safe))
                                 (cons __tmp162260 '()))))
                          (declare (not safe))
                          (cons _L161188_ __tmp162259))))
                   (declare (not safe))
                   (cons __tmp162263 __tmp162258))))
              (___kont161943161944_
               (lambda (_L161121_ _L161123_)
                 (let ((__tmp162272
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162264
                        (let ((__tmp162265
                               (let ((__tmp162266
                                      (let ((__tmp162271
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162267
                                             (let ((__tmp162268
                                                    (lambda (_g161140161143_
                                                             _g161141161146_)
                                                      (let ((__tmp162269
                                                             (let ((__tmp162270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161140161143_ __tmp162270))))
                (declare (not safe))
                (cons __tmp162269 _g161141161146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162268
                                                       '()
                                                       _L161121_))))
                                        (declare (not safe))
                                        (cons __tmp162271 __tmp162267))))
                                 (declare (not safe))
                                 (cons __tmp162266 '()))))
                          (declare (not safe))
                          (cons _L161123_ __tmp162265))))
                   (declare (not safe))
                   (cons __tmp162272 __tmp162264)))))
          (let ((___match161987161988_
                 (lambda (_e161046161071_
                          _hd161045161075_
                          _tl161044161078_
                          _e161049161081_
                          _hd161048161085_
                          _tl161047161088_
                          ___splice161945161946_
                          _target161050161091_
                          _tl161052161094_)
                   (letrec ((_loop161053161097_
                             (lambda (_hd161051161101_ _arity161057161104_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd161051161101_))
                                   (let ((_e161054161107_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd161051161101_))))
                                     (let ((_lp-tl161056161114_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e161054161107_)))
                                           (_lp-hd161055161111_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e161054161107_))))
                                       (_loop161053161097_
                                        _lp-tl161056161114_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd161055161111_
                                                _arity161057161104_)))))
                                   (let ((_arity161058161117_
                                          (reverse _arity161057161104_)))
                                     (___kont161943161944_
                                      _arity161058161117_
                                      _hd161048161085_))))))
                     (_loop161053161097_ _target161050161091_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161938161939_))
                (let ((_e161035161156_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161938161939_))))
                  (let ((_tl161033161163_
                         (let () (declare (not safe)) (##cdr _e161035161156_)))
                        (_hd161034161160_
                         (let ()
                           (declare (not safe))
                           (##car _e161035161156_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161033161163_))
                        (let ((_e161038161166_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161033161163_))))
                          (let ((_tl161036161173_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161038161166_)))
                                (_hd161037161170_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161038161166_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161036161173_))
                                (let ((_e161041161176_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161036161173_))))
                                  (let ((_tl161039161183_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161041161176_)))
                                        (_hd161040161180_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161041161176_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161039161183_))
                                        (___kont161941161942_
                                         _hd161040161180_
                                         _hd161037161170_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl161036161173_))
                                            (let ((___splice161945161946_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl161036161173_
                                                      '0))))
                                              (let ((_tl161052161094_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161945161946_
                                                        '1)))
                                                    (_target161050161091_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161945161946_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161052161094_))
                                                    (___match161987161988_
                                                     _e161035161156_
                                                     _hd161034161160_
                                                     _tl161033161163_
                                                     _e161038161166_
                                                     _hd161037161170_
                                                     _tl161036161173_
                                                     ___splice161945161946_
                                                     _target161050161091_
                                                     _tl161052161094_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161029161064_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161029161064_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161036161173_))
                                    (let ((___splice161945161946_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161036161173_
                                              '0))))
                                      (let ((_tl161052161094_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161945161946_
                                                '1)))
                                            (_target161050161091_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161945161946_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161052161094_))
                                            (___match161987161988_
                                             _e161035161156_
                                             _hd161034161160_
                                             _tl161033161163_
                                             _e161038161166_
                                             _hd161037161170_
                                             _tl161036161173_
                                             ___splice161945161946_
                                             _target161050161091_
                                             _tl161052161094_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161029161064_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161029161064_))))))
                        (let () (declare (not safe)) (_g161029161064_)))))
                (let () (declare (not safe)) (_g161029161064_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx161208_)
      (let* ((_g161212161247_
              (lambda (_g161213161243_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161213161243_))))
             (_g161211161375_
              (lambda (_g161213161251_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161213161251_))
                    (let ((_e161218161254_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161213161251_))))
                      (let ((_hd161217161258_
                             (let ()
                               (declare (not safe))
                               (##car _e161218161254_)))
                            (_tl161216161261_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161218161254_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161216161261_))
                            (let ((_g162273_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161216161261_
                                      '0))))
                              (begin
                                (let ((_g162274_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162273_)
                                             (##vector-length _g162273_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162274_ 2)))
                                      (error "Context expects 2 values"
                                             _g162274_)))
                                (let ((_target161219161264_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162273_ 0)))
                                      (_tl161221161267_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162273_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161221161267_))
                                      (letrec ((_loop161222161270_
                                                (lambda (_hd161220161274_
                                                         _arity161226161277_
                                                         _prim161227161279_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161220161274_))
                                                      (let ((_e161223161282_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161220161274_))))
                (let ((_lp-hd161224161286_
                       (let () (declare (not safe)) (##car _e161223161282_)))
                      (_lp-tl161225161289_
                       (let () (declare (not safe)) (##cdr _e161223161282_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161224161286_))
                      (let ((_e161232161292_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161224161286_))))
                        (let ((_hd161231161296_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161232161292_)))
                              (_tl161230161299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161232161292_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161230161299_))
                              (let ((_g162283_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161230161299_
                                        '0))))
                                (begin
                                  (let ((_g162284_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162283_)
                                               (##vector-length _g162283_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162284_ 2)))
                                        (error "Context expects 2 values"
                                               _g162284_)))
                                  (let ((_target161233161302_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162283_ 0)))
                                        (_tl161235161305_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162283_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161235161305_))
                                        (letrec ((_loop161236161308_
                                                  (lambda (_hd161234161312_
                                                           _arity161240161315_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161234161312_))
                                                        (let ((_e161237161318_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161234161312_))))
                  (let ((_lp-hd161238161322_
                         (let () (declare (not safe)) (##car _e161237161318_)))
                        (_lp-tl161239161325_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161237161318_))))
                    (_loop161236161308_
                     _lp-tl161239161325_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161238161322_ _arity161240161315_)))))
                (let ((_arity161241161328_ (reverse _arity161240161315_)))
                  (_loop161222161270_
                   _lp-tl161225161289_
                   (let ()
                     (declare (not safe))
                     (cons _arity161241161328_ _arity161226161277_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161231161296_ _prim161227161279_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161236161308_
                                           _target161233161302_
                                           '()))
                                        (_g161212161247_ _g161213161251_)))))
                              (_g161212161247_ _g161213161251_))))
                      (_g161212161247_ _g161213161251_))))
              (let ((_arity161228161332_ (reverse _arity161226161277_))
                    (_prim161229161335_ (reverse _prim161227161279_)))
                ((lambda (_L161338_ _L161340_)
                   (let ((__tmp162282
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162275
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161338_
                               _L161340_))
                            (let ((__tmp162276
                                   (lambda (_g161355161361_
                                            _g161356161364_
                                            _g161357161366_)
                                     (let ((__tmp162277
                                            (let ((__tmp162281
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp162278
                                                   (let ((__tmp162279
                                                          (let ((__tmp162280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161358161369_ _g161359161372_)
                           (let ()
                             (declare (not safe))
                             (cons _g161358161369_ _g161359161372_)))))
                    (declare (not safe))
                    (foldr1 __tmp162280 '() _g161355161361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161356161364_
                                                           __tmp162279))))
                                              (declare (not safe))
                                              (cons __tmp162281 __tmp162278))))
                                       (declare (not safe))
                                       (cons __tmp162277 _g161357161366_)))))
                              (declare (not safe))
                              (foldr2 __tmp162276 '() _L161338_ _L161340_)))))
                     (declare (not safe))
                     (cons __tmp162282 __tmp162275)))
                 _arity161228161332_
                 _prim161229161335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161222161270_
                                         _target161219161264_
                                         '()
                                         '()))
                                      (_g161212161247_ _g161213161251_)))))
                            (_g161212161247_ _g161213161251_))))
                    (_g161212161247_ _g161213161251_)))))
        (_g161211161375_ _$stx161208_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx161381_)
      (let* ((_g161385161420_
              (lambda (_g161386161416_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161386161416_))))
             (_g161384161548_
              (lambda (_g161386161424_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161386161424_))
                    (let ((_e161391161427_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161386161424_))))
                      (let ((_hd161390161431_
                             (let ()
                               (declare (not safe))
                               (##car _e161391161427_)))
                            (_tl161389161434_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161391161427_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161389161434_))
                            (let ((_g162285_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161389161434_
                                      '0))))
                              (begin
                                (let ((_g162286_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162285_)
                                             (##vector-length _g162285_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162286_ 2)))
                                      (error "Context expects 2 values"
                                             _g162286_)))
                                (let ((_target161392161437_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162285_ 0)))
                                      (_tl161394161440_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162285_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161394161440_))
                                      (letrec ((_loop161395161443_
                                                (lambda (_hd161393161447_
                                                         _arity161399161450_
                                                         _prim161400161452_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161393161447_))
                                                      (let ((_e161396161455_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161393161447_))))
                (let ((_lp-hd161397161459_
                       (let () (declare (not safe)) (##car _e161396161455_)))
                      (_lp-tl161398161462_
                       (let () (declare (not safe)) (##cdr _e161396161455_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161397161459_))
                      (let ((_e161405161465_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161397161459_))))
                        (let ((_hd161404161469_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161405161465_)))
                              (_tl161403161472_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161405161465_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161403161472_))
                              (let ((_g162295_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161403161472_
                                        '0))))
                                (begin
                                  (let ((_g162296_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162295_)
                                               (##vector-length _g162295_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162296_ 2)))
                                        (error "Context expects 2 values"
                                               _g162296_)))
                                  (let ((_target161406161475_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162295_ 0)))
                                        (_tl161408161478_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162295_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161408161478_))
                                        (letrec ((_loop161409161481_
                                                  (lambda (_hd161407161485_
                                                           _arity161413161488_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161407161485_))
                                                        (let ((_e161410161491_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161407161485_))))
                  (let ((_lp-hd161411161495_
                         (let () (declare (not safe)) (##car _e161410161491_)))
                        (_lp-tl161412161498_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161410161491_))))
                    (_loop161409161481_
                     _lp-tl161412161498_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161411161495_ _arity161413161488_)))))
                (let ((_arity161414161501_ (reverse _arity161413161488_)))
                  (_loop161395161443_
                   _lp-tl161398161462_
                   (let ()
                     (declare (not safe))
                     (cons _arity161414161501_ _arity161399161450_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161404161469_ _prim161400161452_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161409161481_
                                           _target161406161475_
                                           '()))
                                        (_g161385161420_ _g161386161424_)))))
                              (_g161385161420_ _g161386161424_))))
                      (_g161385161420_ _g161386161424_))))
              (let ((_arity161401161505_ (reverse _arity161399161450_))
                    (_prim161402161508_ (reverse _prim161400161452_)))
                ((lambda (_L161511_ _L161513_)
                   (let ((__tmp162294
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162287
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161511_
                               _L161513_))
                            (let ((__tmp162288
                                   (lambda (_g161528161534_
                                            _g161529161537_
                                            _g161530161539_)
                                     (let ((__tmp162289
                                            (let ((__tmp162293
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp162290
                                                   (let ((__tmp162291
                                                          (let ((__tmp162292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161531161542_ _g161532161545_)
                           (let ()
                             (declare (not safe))
                             (cons _g161531161542_ _g161532161545_)))))
                    (declare (not safe))
                    (foldr1 __tmp162292 '() _g161528161534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161529161537_
                                                           __tmp162291))))
                                              (declare (not safe))
                                              (cons __tmp162293 __tmp162290))))
                                       (declare (not safe))
                                       (cons __tmp162289 _g161530161539_)))))
                              (declare (not safe))
                              (foldr2 __tmp162288 '() _L161511_ _L161513_)))))
                     (declare (not safe))
                     (cons __tmp162294 __tmp162287)))
                 _arity161401161505_
                 _prim161402161508_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161395161443_
                                         _target161392161437_
                                         '()
                                         '()))
                                      (_g161385161420_ _g161386161424_)))))
                            (_g161385161420_ _g161386161424_))))
                    (_g161385161420_ _g161386161424_)))))
        (_g161384161548_ _$stx161381_)))))
