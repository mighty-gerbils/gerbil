(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gx#core-compile-top-syntax
    (lambda (_stx10525_)
      (let ((_e1052610533_ _stx10525_))
        (let ((_E1052810537_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1052610533_))))
          (let ((_E1052710551_
                 (lambda ()
                   (if (gx#stx-pair? _e1052610533_)
                       (let ((_e1052910541_ (gx#syntax-e _e1052610533_)))
                         (let ((_hd1053010544_ (##car _e1052910541_))
                               (_tl1053110546_ (##cdr _e1052910541_)))
                           (let ((_form10549_ _hd1053010544_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e _form10549_)
                                  'compile-top-syntax
                                  _stx10525_)
                                 (_E1052810537_)))))
                       (_E1052810537_)))))
            (let () (_E1052710551_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self10485_ _stx10486_)
      (let ((_self1048710495_ _self10485_))
        (let ((_E1048910499_
               (lambda () (error '"No clause matching" _self1048710495_))))
          (let ((_K1049010511_
                 (lambda (_K10502_)
                   (let ((_$e10504_ (gx#stx-source _stx10486_)))
                     (if _$e10504_
                         ((lambda (_g1050610508_)
                            (gx#stx-wrap-source
                             (_K10502_ _stx10486_)
                             _g1050610508_))
                          _$e10504_)
                         (_K10502_ _stx10486_))))))
            (if (struct-instance? gx#core-expander::t _self1048710495_)
                (let ((_e1049110514_ (##vector-ref _self1048710495_ '1)))
                  (let ((_e1049210517_ (##vector-ref _self1048710495_ '2)))
                    (let ((_e1049310520_ (##vector-ref _self1048710495_ '3)))
                      (let ((_K10523_ _e1049310520_))
                        (_K1049010511_ _K10523_)))))
                (_E1048910499_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx10483_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx10483_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx10453_)
      (let ((_e1045410461_ _stx10453_))
        (let ((_E1045610465_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1045410461_))))
          (let ((_E1045510479_
                 (lambda ()
                   (if (gx#stx-pair? _e1045410461_)
                       (let ((_e1045710469_ (gx#syntax-e _e1045410461_)))
                         (let ((_hd1045810472_ (##car _e1045710469_))
                               (_tl1045910474_ (##cdr _e1045710469_)))
                           (let ((_body10477_ _tl1045910474_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map
                                        gx#core-compile-top-syntax
                                        _body10477_))
                                 (_E1045610465_)))))
                       (_E1045610465_)))))
            (let () (_E1045510479_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx10422_)
      (let ((_e1042310430_ _stx10422_))
        (let ((_E1042510434_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1042310430_))))
          (let ((_E1042410449_
                 (lambda ()
                   (if (gx#stx-pair? _e1042310430_)
                       (let ((_e1042610438_ (gx#syntax-e _e1042310430_)))
                         (let ((_hd1042710441_ (##car _e1042610438_))
                               (_tl1042810443_ (##cdr _e1042610438_)))
                           (let ((_body10446_ _tl1042810443_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map
                                           gx#core-compile-top-syntax
                                           _body10446_))
                                        gx#current-expander-phi
                                        (fx1+ (gx#current-expander-phi))))
                                 (_E1042510434_)))))
                       (_E1042510434_)))))
            (let () (_E1042410449_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx10392_)
      (let ((_e1039310400_ _stx10392_))
        (let ((_E1039510404_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1039310400_))))
          (let ((_E1039410418_
                 (lambda ()
                   (if (gx#stx-pair? _e1039310400_)
                       (let ((_e1039610408_ (gx#syntax-e _e1039310400_)))
                         (let ((_hd1039710411_ (##car _e1039610408_))
                               (_tl1039810413_ (##cdr _e1039610408_)))
                           (let ((_body10416_ _tl1039810413_))
                             (if '#t
                                 (cons '%#begin-foreign _body10416_)
                                 (_E1039510404_)))))
                       (_E1039510404_)))))
            (let () (_E1039410418_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx10362_)
      (let ((_e1036310370_ _stx10362_))
        (let ((_E1036510374_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1036310370_))))
          (let ((_E1036410388_
                 (lambda ()
                   (if (gx#stx-pair? _e1036310370_)
                       (let ((_e1036610378_ (gx#syntax-e _e1036310370_)))
                         (let ((_hd1036710381_ (##car _e1036610378_))
                               (_tl1036810383_ (##cdr _e1036610378_)))
                           (let ((_body10386_ _tl1036810383_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body10386_))
                                 (_E1036510374_)))))
                       (_E1036510374_)))))
            (let () (_E1036410388_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx10319_)
      (let ((_e1032010330_ _stx10319_))
        (let ((_E1032210334_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1032010330_))))
          (let ((_E1032110358_
                 (lambda ()
                   (if (gx#stx-pair? _e1032010330_)
                       (let ((_e1032310338_ (gx#syntax-e _e1032010330_)))
                         (let ((_hd1032410341_ (##car _e1032310338_))
                               (_tl1032510343_ (##cdr _e1032310338_)))
                           (if (gx#stx-pair? _tl1032510343_)
                               (let ((_e1032610346_
                                      (gx#syntax-e _tl1032510343_)))
                                 (let ((_hd1032710349_ (##car _e1032610346_))
                                       (_tl1032810351_ (##cdr _e1032610346_)))
                                   (let ((_hd10354_ _hd1032710349_))
                                     (let ((_body10356_ _tl1032810351_))
                                       (if '#t
                                           (cons* '%#module
                                                  (gx#expander-context-id
                                                   (gx#syntax-local-e
                                                    _hd10354_))
                                                  (gx#stx-map
                                                   gx#core-compile-top-syntax
                                                   _body10356_))
                                           (_E1032210334_))))))
                               (_E1032210334_))))
                       (_E1032210334_)))))
            (let () (_E1032110358_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx10289_)
      (let ((_e1029010297_ _stx10289_))
        (let ((_E1029210301_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1029010297_))))
          (let ((_E1029110315_
                 (lambda ()
                   (if (gx#stx-pair? _e1029010297_)
                       (let ((_e1029310305_ (gx#syntax-e _e1029010297_)))
                         (let ((_hd1029410308_ (##car _e1029310305_))
                               (_tl1029510310_ (##cdr _e1029310305_)))
                           (let ((_body10313_ _tl1029510310_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body10313_))
                                 (_E1029210301_)))))
                       (_E1029210301_)))))
            (let () (_E1029110315_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx10259_)
      (let ((_e1026010267_ _stx10259_))
        (let ((_E1026210271_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1026010267_))))
          (let ((_E1026110285_
                 (lambda ()
                   (if (gx#stx-pair? _e1026010267_)
                       (let ((_e1026310275_ (gx#syntax-e _e1026010267_)))
                         (let ((_hd1026410278_ (##car _e1026310275_))
                               (_tl1026510280_ (##cdr _e1026310275_)))
                           (let ((_body10283_ _tl1026510280_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map
                                        gx#core-quote-syntax
                                        _body10283_))
                                 (_E1026210271_)))))
                       (_E1026210271_)))))
            (let () (_E1026110285_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx10184_)
      (let ((_generate10186_
             (lambda (_hd10216_)
               (let ((_e1021710227_ _hd10216_))
                 (let ((_E1021910231_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1021710227_))))
                   (let ((_E1021810255_
                          (lambda ()
                            (if (gx#stx-pair? _e1021710227_)
                                (let ((_e1022010235_
                                       (gx#syntax-e _e1021710227_)))
                                  (let ((_hd1022110238_ (##car _e1022010235_))
                                        (_tl1022210240_ (##cdr _e1022010235_)))
                                    (let ((_id10243_ _hd1022110238_))
                                      (if (gx#stx-pair? _tl1022210240_)
                                          (let ((_e1022310245_
                                                 (gx#syntax-e _tl1022210240_)))
                                            (let ((_hd1022410248_
                                                   (##car _e1022310245_))
                                                  (_tl1022510250_
                                                   (##cdr _e1022310245_)))
                                              (let ((_eid10253_
                                                     _hd1022410248_))
                                                (if (gx#stx-null?
                                                     _tl1022510250_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax
                                                               _id10243_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid10253_)
                            '()))
                (_E1021910231_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1021910231_)))))
                                          (_E1021910231_)))))
                                (_E1021910231_)))))
                     (let () (_E1021810255_))))))))
        (let ((_e1018710194_ _stx10184_))
          (let ((_E1018910198_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1018710194_))))
            (let ((_E1018810212_
                   (lambda ()
                     (if (gx#stx-pair? _e1018710194_)
                         (let ((_e1019010202_ (gx#syntax-e _e1018710194_)))
                           (let ((_hd1019110205_ (##car _e1019010202_))
                                 (_tl1019210207_ (##cdr _e1019010202_)))
                             (let ((_body10210_ _tl1019210207_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map
                                          _generate10186_
                                          _body10210_))
                                   (_E1018910198_)))))
                         (_E1018910198_)))))
              (let () (_E1018810212_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx10130_)
      (let ((_e1013110144_ _stx10130_))
        (let ((_E1013310148_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1013110144_))))
          (let ((_E1013210180_
                 (lambda ()
                   (if (gx#stx-pair? _e1013110144_)
                       (let ((_e1013410152_ (gx#syntax-e _e1013110144_)))
                         (let ((_hd1013510155_ (##car _e1013410152_))
                               (_tl1013610157_ (##cdr _e1013410152_)))
                           (if (gx#stx-pair? _tl1013610157_)
                               (let ((_e1013710160_
                                      (gx#syntax-e _tl1013610157_)))
                                 (let ((_hd1013810163_ (##car _e1013710160_))
                                       (_tl1013910165_ (##cdr _e1013710160_)))
                                   (let ((_hd10168_ _hd1013810163_))
                                     (if (gx#stx-pair? _tl1013910165_)
                                         (let ((_e1014010170_
                                                (gx#syntax-e _tl1013910165_)))
                                           (let ((_hd1014110173_
                                                  (##car _e1014010170_))
                                                 (_tl1014210175_
                                                  (##cdr _e1014010170_)))
                                             (let ((_expr10178_
                                                    _hd1014110173_))
                                               (if (gx#stx-null?
                                                    _tl1014210175_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd10168_)
                           (cons (gx#core-compile-top-syntax _expr10178_)
                                 '())))
               (_E1013310148_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1013310148_)))))
                                         (_E1013310148_)))))
                               (_E1013310148_))))
                       (_E1013310148_)))))
            (let () (_E1013210180_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx10075_)
      (let ((_e1007610089_ _stx10075_))
        (let ((_E1007810093_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1007610089_))))
          (let ((_E1007710126_
                 (lambda ()
                   (if (gx#stx-pair? _e1007610089_)
                       (let ((_e1007910097_ (gx#syntax-e _e1007610089_)))
                         (let ((_hd1008010100_ (##car _e1007910097_))
                               (_tl1008110102_ (##cdr _e1007910097_)))
                           (if (gx#stx-pair? _tl1008110102_)
                               (let ((_e1008210105_
                                      (gx#syntax-e _tl1008110102_)))
                                 (let ((_hd1008310108_ (##car _e1008210105_))
                                       (_tl1008410110_ (##cdr _e1008210105_)))
                                   (let ((_hd10113_ _hd1008310108_))
                                     (if (gx#stx-pair? _tl1008410110_)
                                         (let ((_e1008510115_
                                                (gx#syntax-e _tl1008410110_)))
                                           (let ((_hd1008610118_
                                                  (##car _e1008510115_))
                                                 (_tl1008710120_
                                                  (##cdr _e1008510115_)))
                                             (let ((_expr10123_
                                                    _hd1008610118_))
                                               (if (gx#stx-null?
                                                    _tl1008710120_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10113_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr10123_))
                                  gx#current-expander-phi
                                  (fx1+ (gx#current-expander-phi)))
                                 '())))
               (_E1007810093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1007810093_)))))
                                         (_E1007810093_)))))
                               (_E1007810093_))))
                       (_E1007810093_)))))
            (let () (_E1007710126_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx10021_)
      (let ((_e1002210035_ _stx10021_))
        (let ((_E1002410039_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1002210035_))))
          (let ((_E1002310071_
                 (lambda ()
                   (if (gx#stx-pair? _e1002210035_)
                       (let ((_e1002510043_ (gx#syntax-e _e1002210035_)))
                         (let ((_hd1002610046_ (##car _e1002510043_))
                               (_tl1002710048_ (##cdr _e1002510043_)))
                           (if (gx#stx-pair? _tl1002710048_)
                               (let ((_e1002810051_
                                      (gx#syntax-e _tl1002710048_)))
                                 (let ((_hd1002910054_ (##car _e1002810051_))
                                       (_tl1003010056_ (##cdr _e1002810051_)))
                                   (let ((_hd10059_ _hd1002910054_))
                                     (if (gx#stx-pair? _tl1003010056_)
                                         (let ((_e1003110061_
                                                (gx#syntax-e _tl1003010056_)))
                                           (let ((_hd1003210064_
                                                  (##car _e1003110061_))
                                                 (_tl1003310066_
                                                  (##cdr _e1003110061_)))
                                             (let ((_alias-id10069_
                                                    _hd1003210064_))
                                               (if (gx#stx-null?
                                                    _tl1003310066_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10059_)
                           (cons (gx#core-quote-syntax _alias-id10069_) '())))
               (_E1002410039_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1002410039_)))))
                                         (_E1002410039_)))))
                               (_E1002410039_))))
                       (_E1002410039_)))))
            (let () (_E1002310071_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx9967_)
      (let ((_e99689981_ _stx9967_))
        (let ((_E99709985_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e99689981_))))
          (let ((_E996910017_
                 (lambda ()
                   (if (gx#stx-pair? _e99689981_)
                       (let ((_e99719989_ (gx#syntax-e _e99689981_)))
                         (let ((_hd99729992_ (##car _e99719989_))
                               (_tl99739994_ (##cdr _e99719989_)))
                           (if (gx#stx-pair? _tl99739994_)
                               (let ((_e99749997_ (gx#syntax-e _tl99739994_)))
                                 (let ((_hd997510000_ (##car _e99749997_))
                                       (_tl997610002_ (##cdr _e99749997_)))
                                   (let ((_id10005_ _hd997510000_))
                                     (if (gx#stx-pair? _tl997610002_)
                                         (let ((_e997710007_
                                                (gx#syntax-e _tl997610002_)))
                                           (let ((_hd997810010_
                                                  (##car _e997710007_))
                                                 (_tl997910012_
                                                  (##cdr _e997710007_)))
                                             (let ((_binding-id10015_
                                                    _hd997810010_))
                                               (if (gx#stx-null? _tl997910012_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10005_)
                           (cons (gx#core-quote-syntax _binding-id10015_)
                                 '())))
               (_E99709985_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E99709985_)))))
                                         (_E99709985_)))))
                               (_E99709985_))))
                       (_E99709985_)))))
            (let () (_E996910017_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx9937_)
      (let ((_e99389945_ _stx9937_))
        (let ((_E99409949_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e99389945_))))
          (let ((_E99399963_
                 (lambda ()
                   (if (gx#stx-pair? _e99389945_)
                       (let ((_e99419953_ (gx#syntax-e _e99389945_)))
                         (let ((_hd99429956_ (##car _e99419953_))
                               (_tl99439958_ (##cdr _e99419953_)))
                           (let ((_decls9961_ _tl99439958_))
                             (if '#t
                                 (cons '%#declare _decls9961_)
                                 (_E99409949_)))))
                       (_E99409949_)))))
            (let () (_E99399963_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx9907_)
      (let ((_e99089915_ _stx9907_))
        (let ((_E99109919_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e99089915_))))
          (let ((_E99099933_
                 (lambda ()
                   (if (gx#stx-pair? _e99089915_)
                       (let ((_e99119923_ (gx#syntax-e _e99089915_)))
                         (let ((_hd99129926_ (##car _e99119923_))
                               (_tl99139928_ (##cdr _e99119923_)))
                           (let ((_clause9931_ _tl99139928_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause9931_))
                                 (_E99109919_)))))
                       (_E99109919_)))))
            (let () (_E99099933_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx9864_)
      (let ((_e98659875_ _stx9864_))
        (let ((_E98679879_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e98659875_))))
          (let ((_E98669903_
                 (lambda ()
                   (if (gx#stx-pair? _e98659875_)
                       (let ((_e98689883_ (gx#syntax-e _e98659875_)))
                         (let ((_hd98699886_ (##car _e98689883_))
                               (_tl98709888_ (##cdr _e98689883_)))
                           (let ((_hd9891_ _hd98699886_))
                             (if (gx#stx-pair? _tl98709888_)
                                 (let ((_e98719893_
                                        (gx#syntax-e _tl98709888_)))
                                   (let ((_hd98729896_ (##car _e98719893_))
                                         (_tl98739898_ (##cdr _e98719893_)))
                                     (let ((_body9901_ _hd98729896_))
                                       (if (gx#stx-null? _tl98739898_)
                                           (if '#t
                                               (cons (gx#stx-map
                                                      gx#core-compile-top-runtime-bind
                                                      _hd9891_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body9901_)
                                                           '()))
                                               (_E98679879_))
                                           (_E98679879_)))))
                                 (_E98679879_)))))
                       (_E98679879_)))))
            (let () (_E98669903_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx9834_)
      (let ((_e98359842_ _stx9834_))
        (let ((_E98379846_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e98359842_))))
          (let ((_E98369860_
                 (lambda ()
                   (if (gx#stx-pair? _e98359842_)
                       (let ((_e98389850_ (gx#syntax-e _e98359842_)))
                         (let ((_hd98399853_ (##car _e98389850_))
                               (_tl98409855_ (##cdr _e98389850_)))
                           (let ((_clauses9858_ _tl98409855_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map
                                        gx#core-compile-top-lambda-clause
                                        _clauses9858_))
                                 (_E98379846_)))))
                       (_E98379846_)))))
            (let () (_E98369860_)))))))
  (define gx#core-compile-top-let-values%
    (let ((_opt-lambda97679824_
           (lambda (_stx9769_ _form9770_)
             (let ((_e97719784_ _stx9769_))
               (let ((_E97739788_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e97719784_))))
                 (let ((_E97729820_
                        (lambda ()
                          (if (gx#stx-pair? _e97719784_)
                              (let ((_e97749792_ (gx#syntax-e _e97719784_)))
                                (let ((_hd97759795_ (##car _e97749792_))
                                      (_tl97769797_ (##cdr _e97749792_)))
                                  (if (gx#stx-pair? _tl97769797_)
                                      (let ((_e97779800_
                                             (gx#syntax-e _tl97769797_)))
                                        (let ((_hd97789803_
                                               (##car _e97779800_))
                                              (_tl97799805_
                                               (##cdr _e97779800_)))
                                          (let ((_hd9808_ _hd97789803_))
                                            (if (gx#stx-pair? _tl97799805_)
                                                (let ((_e97809810_
                                                       (gx#syntax-e
                                                        _tl97799805_)))
                                                  (let ((_hd97819813_
                                                         (##car _e97809810_))
                                                        (_tl97829815_
                                                         (##cdr _e97809810_)))
                                                    (let ((_body9818_
                                                           _hd97819813_))
                                                      (if (gx#stx-null?
                                                           _tl97829815_)
                                                          (if '#t
                                                              (cons _form9770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#stx-map
                                   gx#core-compile-top-lambda-clause
                                   _hd9808_)
                                  (cons (gx#core-compile-top-syntax _body9818_)
                                        '())))
                      (_E97739788_))
                  (_E97739788_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E97739788_)))))
                                      (_E97739788_))))
                              (_E97739788_)))))
                   (let () (_E97729820_))))))))
      (lambda _g12062_
        (let ((_g12061_ (length _g12062_)))
          (cond ((fx= _g12061_ 1)
                 (apply (lambda (_stx9827_)
                          (let ((_form9829_ '%#let-values))
                            (_opt-lambda97679824_ _stx9827_ _form9829_)))
                        _g12062_))
                ((fx= _g12061_ 2)
                 (apply (lambda (_stx9831_ _form9832_)
                          (_opt-lambda97679824_ _stx9831_ _form9832_))
                        _g12062_))
                (else (error "No clause matching arguments" _g12062_)))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx9766_)
      (gx#core-compile-top-let-values% _stx9766_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx9764_)
      (gx#core-compile-top-let-values% _stx9764_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx9723_)
      (let ((_e97249734_ _stx9723_))
        (let ((_E97269738_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e97249734_))))
          (let ((_E97259760_
                 (lambda ()
                   (if (gx#stx-pair? _e97249734_)
                       (let ((_e97279742_ (gx#syntax-e _e97249734_)))
                         (let ((_hd97289745_ (##car _e97279742_))
                               (_tl97299747_ (##cdr _e97279742_)))
                           (if (gx#stx-pair? _tl97299747_)
                               (let ((_e97309750_ (gx#syntax-e _tl97299747_)))
                                 (let ((_hd97319753_ (##car _e97309750_))
                                       (_tl97329755_ (##cdr _e97309750_)))
                                   (let ((_e9758_ _hd97319753_))
                                     (if (gx#stx-null? _tl97329755_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e9758_)
                                                         '()))
                                             (_E97269738_))
                                         (_E97269738_)))))
                               (_E97269738_))))
                       (_E97269738_)))))
            (let () (_E97259760_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx9682_)
      (let ((_e96839693_ _stx9682_))
        (let ((_E96859697_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e96839693_))))
          (let ((_E96849719_
                 (lambda ()
                   (if (gx#stx-pair? _e96839693_)
                       (let ((_e96869701_ (gx#syntax-e _e96839693_)))
                         (let ((_hd96879704_ (##car _e96869701_))
                               (_tl96889706_ (##cdr _e96869701_)))
                           (if (gx#stx-pair? _tl96889706_)
                               (let ((_e96899709_ (gx#syntax-e _tl96889706_)))
                                 (let ((_hd96909712_ (##car _e96899709_))
                                       (_tl96919714_ (##cdr _e96899709_)))
                                   (let ((_e9717_ _hd96909712_))
                                     (if (gx#stx-null? _tl96919714_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax
                                                          _e9717_)
                                                         '()))
                                             (_E96859697_))
                                         (_E96859697_)))))
                               (_E96859697_))))
                       (_E96859697_)))))
            (let () (_E96849719_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx9639_)
      (let ((_e96409650_ _stx9639_))
        (let ((_E96429654_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e96409650_))))
          (let ((_E96419678_
                 (lambda ()
                   (if (gx#stx-pair? _e96409650_)
                       (let ((_e96439658_ (gx#syntax-e _e96409650_)))
                         (let ((_hd96449661_ (##car _e96439658_))
                               (_tl96459663_ (##cdr _e96439658_)))
                           (if (gx#stx-pair? _tl96459663_)
                               (let ((_e96469666_ (gx#syntax-e _tl96459663_)))
                                 (let ((_hd96479669_ (##car _e96469666_))
                                       (_tl96489671_ (##cdr _e96469666_)))
                                   (let ((_rator9674_ _hd96479669_))
                                     (let ((_args9676_ _tl96489671_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator9674_)
                                                  (gx#stx-map
                                                   gx#core-compile-top-syntax
                                                   _args9676_))
                                           (_E96429654_))))))
                               (_E96429654_))))
                       (_E96429654_)))))
            (let () (_E96419678_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx9572_)
      (let ((_e95739589_ _stx9572_))
        (let ((_E95759593_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e95739589_))))
          (let ((_E95749635_
                 (lambda ()
                   (if (gx#stx-pair? _e95739589_)
                       (let ((_e95769597_ (gx#syntax-e _e95739589_)))
                         (let ((_hd95779600_ (##car _e95769597_))
                               (_tl95789602_ (##cdr _e95769597_)))
                           (if (gx#stx-pair? _tl95789602_)
                               (let ((_e95799605_ (gx#syntax-e _tl95789602_)))
                                 (let ((_hd95809608_ (##car _e95799605_))
                                       (_tl95819610_ (##cdr _e95799605_)))
                                   (let ((_test9613_ _hd95809608_))
                                     (if (gx#stx-pair? _tl95819610_)
                                         (let ((_e95829615_
                                                (gx#syntax-e _tl95819610_)))
                                           (let ((_hd95839618_
                                                  (##car _e95829615_))
                                                 (_tl95849620_
                                                  (##cdr _e95829615_)))
                                             (let ((_K9623_ _hd95839618_))
                                               (if (gx#stx-pair? _tl95849620_)
                                                   (let ((_e95859625_
                                                          (gx#syntax-e
                                                           _tl95849620_)))
                                                     (let ((_hd95869628_
                                                            (##car _e95859625_))
                                                           (_tl95879630_
                                                            (##cdr _e95859625_)))
                                                       (let ((_E9633_ _hd95869628_))
                                                         (if (gx#stx-null?
                                                              _tl95879630_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test9613_)
                                     (cons (gx#core-compile-top-syntax _K9623_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E9633_)
                                                 '()))))
                         (_E95759593_))
                     (_E95759593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E95759593_)))))
                                         (_E95759593_)))))
                               (_E95759593_))))
                       (_E95759593_)))))
            (let () (_E95749635_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx9531_)
      (let ((_e95329542_ _stx9531_))
        (let ((_E95349546_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e95329542_))))
          (let ((_E95339568_
                 (lambda ()
                   (if (gx#stx-pair? _e95329542_)
                       (let ((_e95359550_ (gx#syntax-e _e95329542_)))
                         (let ((_hd95369553_ (##car _e95359550_))
                               (_tl95379555_ (##cdr _e95359550_)))
                           (if (gx#stx-pair? _tl95379555_)
                               (let ((_e95389558_ (gx#syntax-e _tl95379555_)))
                                 (let ((_hd95399561_ (##car _e95389558_))
                                       (_tl95409563_ (##cdr _e95389558_)))
                                   (let ((_id9566_ _hd95399561_))
                                     (if (gx#stx-null? _tl95409563_)
                                         (if (gx#identifier? _id9566_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id9566_)
                                                         '()))
                                             (_E95349546_))
                                         (_E95349546_)))))
                               (_E95349546_))))
                       (_E95349546_)))))
            (let () (_E95339568_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx9477_)
      (let ((_e94789491_ _stx9477_))
        (let ((_E94809495_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e94789491_))))
          (let ((_E94799527_
                 (lambda ()
                   (if (gx#stx-pair? _e94789491_)
                       (let ((_e94819499_ (gx#syntax-e _e94789491_)))
                         (let ((_hd94829502_ (##car _e94819499_))
                               (_tl94839504_ (##cdr _e94819499_)))
                           (if (gx#stx-pair? _tl94839504_)
                               (let ((_e94849507_ (gx#syntax-e _tl94839504_)))
                                 (let ((_hd94859510_ (##car _e94849507_))
                                       (_tl94869512_ (##cdr _e94849507_)))
                                   (let ((_id9515_ _hd94859510_))
                                     (if (gx#stx-pair? _tl94869512_)
                                         (let ((_e94879517_
                                                (gx#syntax-e _tl94869512_)))
                                           (let ((_hd94889520_
                                                  (##car _e94879517_))
                                                 (_tl94899522_
                                                  (##cdr _e94879517_)))
                                             (let ((_expr9525_ _hd94889520_))
                                               (if (gx#stx-null? _tl94899522_)
                                                   (if (gx#identifier?
                                                        _id9515_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id9515_)
                           (cons (gx#core-compile-top-syntax _expr9525_) '())))
               (_E94809495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E94809495_)))))
                                         (_E94809495_)))))
                               (_E94809495_))))
                       (_E94809495_)))))
            (let () (_E94799527_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id9472_)
      (let ((_$e9474_ (gx#resolve-identifier _id9472_)))
        (if _$e9474_ (gx#binding-id _$e9474_) _id9472_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd9470_)
      (if (gx#identifier? _hd9470_)
          (gx#core-compile-top-runtime-ref _hd9470_)
          '#f))))
