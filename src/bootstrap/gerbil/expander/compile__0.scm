(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gx#core-compile-top-syntax
    (lambda (_stx10628_)
      (let ((_e1062910636_ _stx10628_))
        (let ((_E1063110640_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1062910636_))))
          (let ((_E1063010654_
                 (lambda ()
                   (if (gx#stx-pair? _e1062910636_)
                       (let ((_e1063210644_ (gx#syntax-e _e1062910636_)))
                         (let ((_hd1063310647_ (##car _e1063210644_))
                               (_tl1063410649_ (##cdr _e1063210644_)))
                           (let ((_form10652_ _hd1063310647_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e _form10652_)
                                  'compile-top-syntax
                                  _stx10628_)
                                 (_E1063110640_)))))
                       (_E1063110640_)))))
            (let () (_E1063010654_)))))))
  (define gx#core-expander::compile-top-syntax
    (let ((_@super10586_
           (let ((_$super10580_
                  (make-promise
                   (lambda ()
                     (let ((_$e10577_
                            (struct-find-next-method
                             gx#core-expander::t
                             'compile-top-syntax)))
                       (if _$e10577_
                           _$e10577_
                           (error '"Cannot find super method"
                                  gx#core-expander::t
                                  'compile-top-syntax)))))))
             (lambda _$args10583_
               (apply (force _$super10580_) _$args10583_)))))
      (lambda (_self10588_ _stx10589_)
        (let ((_self1059010598_ _self10588_))
          (let ((_E1059210602_
                 (lambda () (error '"No clause matching" _self1059010598_))))
            (let ((_K1059310614_
                   (lambda (_K10605_)
                     (let ((_$e10607_ (gx#stx-source _stx10589_)))
                       (if _$e10607_
                           ((lambda (_g1060910611_)
                              (gx#stx-wrap-source
                               (_K10605_ _stx10589_)
                               _g1060910611_))
                            _$e10607_)
                           (_K10605_ _stx10589_))))))
              (if (struct-instance? gx#core-expander::t _self1059010598_)
                  (let ((_e1059410617_ (##vector-ref _self1059010598_ '1)))
                    (let ((_e1059510620_ (##vector-ref _self1059010598_ '2)))
                      (let ((_e1059610623_ (##vector-ref _self1059010598_ '3)))
                        (let ((_K10626_ _e1059610623_))
                          (_K1059310614_ _K10626_)))))
                  (_E1059210602_))))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx10574_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx10574_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx10544_)
      (let ((_e1054510552_ _stx10544_))
        (let ((_E1054710556_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1054510552_))))
          (let ((_E1054610570_
                 (lambda ()
                   (if (gx#stx-pair? _e1054510552_)
                       (let ((_e1054810560_ (gx#syntax-e _e1054510552_)))
                         (let ((_hd1054910563_ (##car _e1054810560_))
                               (_tl1055010565_ (##cdr _e1054810560_)))
                           (let ((_body10568_ _tl1055010565_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map
                                        gx#core-compile-top-syntax
                                        _body10568_))
                                 (_E1054710556_)))))
                       (_E1054710556_)))))
            (let () (_E1054610570_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx10513_)
      (let ((_e1051410521_ _stx10513_))
        (let ((_E1051610525_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1051410521_))))
          (let ((_E1051510540_
                 (lambda ()
                   (if (gx#stx-pair? _e1051410521_)
                       (let ((_e1051710529_ (gx#syntax-e _e1051410521_)))
                         (let ((_hd1051810532_ (##car _e1051710529_))
                               (_tl1051910534_ (##cdr _e1051710529_)))
                           (let ((_body10537_ _tl1051910534_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map
                                           gx#core-compile-top-syntax
                                           _body10537_))
                                        gx#current-expander-phi
                                        (fx1+ (gx#current-expander-phi))))
                                 (_E1051610525_)))))
                       (_E1051610525_)))))
            (let () (_E1051510540_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx10483_)
      (let ((_e1048410491_ _stx10483_))
        (let ((_E1048610495_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1048410491_))))
          (let ((_E1048510509_
                 (lambda ()
                   (if (gx#stx-pair? _e1048410491_)
                       (let ((_e1048710499_ (gx#syntax-e _e1048410491_)))
                         (let ((_hd1048810502_ (##car _e1048710499_))
                               (_tl1048910504_ (##cdr _e1048710499_)))
                           (let ((_body10507_ _tl1048910504_))
                             (if '#t
                                 (cons '%#begin-foreign _body10507_)
                                 (_E1048610495_)))))
                       (_E1048610495_)))))
            (let () (_E1048510509_)))))))
  (define gx#core-compile-top-import%
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
                                 (cons '%#import (gx#syntax->list _body10477_))
                                 (_E1045610465_)))))
                       (_E1045610465_)))))
            (let () (_E1045510479_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx10410_)
      (let ((_e1041110421_ _stx10410_))
        (let ((_E1041310425_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1041110421_))))
          (let ((_E1041210449_
                 (lambda ()
                   (if (gx#stx-pair? _e1041110421_)
                       (let ((_e1041410429_ (gx#syntax-e _e1041110421_)))
                         (let ((_hd1041510432_ (##car _e1041410429_))
                               (_tl1041610434_ (##cdr _e1041410429_)))
                           (if (gx#stx-pair? _tl1041610434_)
                               (let ((_e1041710437_
                                      (gx#syntax-e _tl1041610434_)))
                                 (let ((_hd1041810440_ (##car _e1041710437_))
                                       (_tl1041910442_ (##cdr _e1041710437_)))
                                   (let ((_hd10445_ _hd1041810440_))
                                     (let ((_body10447_ _tl1041910442_))
                                       (if '#t
                                           (cons* '%#module
                                                  (gx#expander-context-id
                                                   (gx#syntax-local-e
                                                    _hd10445_))
                                                  (gx#stx-map
                                                   gx#core-compile-top-syntax
                                                   _body10447_))
                                           (_E1041310425_))))))
                               (_E1041310425_))))
                       (_E1041310425_)))))
            (let () (_E1041210449_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx10380_)
      (let ((_e1038110388_ _stx10380_))
        (let ((_E1038310392_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1038110388_))))
          (let ((_E1038210406_
                 (lambda ()
                   (if (gx#stx-pair? _e1038110388_)
                       (let ((_e1038410396_ (gx#syntax-e _e1038110388_)))
                         (let ((_hd1038510399_ (##car _e1038410396_))
                               (_tl1038610401_ (##cdr _e1038410396_)))
                           (let ((_body10404_ _tl1038610401_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body10404_))
                                 (_E1038310392_)))))
                       (_E1038310392_)))))
            (let () (_E1038210406_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx10350_)
      (let ((_e1035110358_ _stx10350_))
        (let ((_E1035310362_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1035110358_))))
          (let ((_E1035210376_
                 (lambda ()
                   (if (gx#stx-pair? _e1035110358_)
                       (let ((_e1035410366_ (gx#syntax-e _e1035110358_)))
                         (let ((_hd1035510369_ (##car _e1035410366_))
                               (_tl1035610371_ (##cdr _e1035410366_)))
                           (let ((_body10374_ _tl1035610371_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map
                                        gx#core-quote-syntax
                                        _body10374_))
                                 (_E1035310362_)))))
                       (_E1035310362_)))))
            (let () (_E1035210376_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx10275_)
      (let ((_generate10277_
             (lambda (_hd10307_)
               (let ((_e1030810318_ _hd10307_))
                 (let ((_E1031010322_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1030810318_))))
                   (let ((_E1030910346_
                          (lambda ()
                            (if (gx#stx-pair? _e1030810318_)
                                (let ((_e1031110326_
                                       (gx#syntax-e _e1030810318_)))
                                  (let ((_hd1031210329_ (##car _e1031110326_))
                                        (_tl1031310331_ (##cdr _e1031110326_)))
                                    (let ((_id10334_ _hd1031210329_))
                                      (if (gx#stx-pair? _tl1031310331_)
                                          (let ((_e1031410336_
                                                 (gx#syntax-e _tl1031310331_)))
                                            (let ((_hd1031510339_
                                                   (##car _e1031410336_))
                                                  (_tl1031610341_
                                                   (##cdr _e1031410336_)))
                                              (let ((_eid10344_
                                                     _hd1031510339_))
                                                (if (gx#stx-null?
                                                     _tl1031610341_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax
                                                               _id10334_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid10344_)
                            '()))
                (_E1031010322_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1031010322_)))))
                                          (_E1031010322_)))))
                                (_E1031010322_)))))
                     (let () (_E1030910346_))))))))
        (let ((_e1027810285_ _stx10275_))
          (let ((_E1028010289_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1027810285_))))
            (let ((_E1027910303_
                   (lambda ()
                     (if (gx#stx-pair? _e1027810285_)
                         (let ((_e1028110293_ (gx#syntax-e _e1027810285_)))
                           (let ((_hd1028210296_ (##car _e1028110293_))
                                 (_tl1028310298_ (##cdr _e1028110293_)))
                             (let ((_body10301_ _tl1028310298_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map
                                          _generate10277_
                                          _body10301_))
                                   (_E1028010289_)))))
                         (_E1028010289_)))))
              (let () (_E1027910303_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx10221_)
      (let ((_e1022210235_ _stx10221_))
        (let ((_E1022410239_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1022210235_))))
          (let ((_E1022310271_
                 (lambda ()
                   (if (gx#stx-pair? _e1022210235_)
                       (let ((_e1022510243_ (gx#syntax-e _e1022210235_)))
                         (let ((_hd1022610246_ (##car _e1022510243_))
                               (_tl1022710248_ (##cdr _e1022510243_)))
                           (if (gx#stx-pair? _tl1022710248_)
                               (let ((_e1022810251_
                                      (gx#syntax-e _tl1022710248_)))
                                 (let ((_hd1022910254_ (##car _e1022810251_))
                                       (_tl1023010256_ (##cdr _e1022810251_)))
                                   (let ((_hd10259_ _hd1022910254_))
                                     (if (gx#stx-pair? _tl1023010256_)
                                         (let ((_e1023110261_
                                                (gx#syntax-e _tl1023010256_)))
                                           (let ((_hd1023210264_
                                                  (##car _e1023110261_))
                                                 (_tl1023310266_
                                                  (##cdr _e1023110261_)))
                                             (let ((_expr10269_
                                                    _hd1023210264_))
                                               (if (gx#stx-null?
                                                    _tl1023310266_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd10259_)
                           (cons (gx#core-compile-top-syntax _expr10269_)
                                 '())))
               (_E1022410239_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1022410239_)))))
                                         (_E1022410239_)))))
                               (_E1022410239_))))
                       (_E1022410239_)))))
            (let () (_E1022310271_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx10166_)
      (let ((_e1016710180_ _stx10166_))
        (let ((_E1016910184_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1016710180_))))
          (let ((_E1016810217_
                 (lambda ()
                   (if (gx#stx-pair? _e1016710180_)
                       (let ((_e1017010188_ (gx#syntax-e _e1016710180_)))
                         (let ((_hd1017110191_ (##car _e1017010188_))
                               (_tl1017210193_ (##cdr _e1017010188_)))
                           (if (gx#stx-pair? _tl1017210193_)
                               (let ((_e1017310196_
                                      (gx#syntax-e _tl1017210193_)))
                                 (let ((_hd1017410199_ (##car _e1017310196_))
                                       (_tl1017510201_ (##cdr _e1017310196_)))
                                   (let ((_hd10204_ _hd1017410199_))
                                     (if (gx#stx-pair? _tl1017510201_)
                                         (let ((_e1017610206_
                                                (gx#syntax-e _tl1017510201_)))
                                           (let ((_hd1017710209_
                                                  (##car _e1017610206_))
                                                 (_tl1017810211_
                                                  (##cdr _e1017610206_)))
                                             (let ((_expr10214_
                                                    _hd1017710209_))
                                               (if (gx#stx-null?
                                                    _tl1017810211_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10204_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr10214_))
                                  gx#current-expander-phi
                                  (fx1+ (gx#current-expander-phi)))
                                 '())))
               (_E1016910184_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1016910184_)))))
                                         (_E1016910184_)))))
                               (_E1016910184_))))
                       (_E1016910184_)))))
            (let () (_E1016810217_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx10112_)
      (let ((_e1011310126_ _stx10112_))
        (let ((_E1011510130_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1011310126_))))
          (let ((_E1011410162_
                 (lambda ()
                   (if (gx#stx-pair? _e1011310126_)
                       (let ((_e1011610134_ (gx#syntax-e _e1011310126_)))
                         (let ((_hd1011710137_ (##car _e1011610134_))
                               (_tl1011810139_ (##cdr _e1011610134_)))
                           (if (gx#stx-pair? _tl1011810139_)
                               (let ((_e1011910142_
                                      (gx#syntax-e _tl1011810139_)))
                                 (let ((_hd1012010145_ (##car _e1011910142_))
                                       (_tl1012110147_ (##cdr _e1011910142_)))
                                   (let ((_hd10150_ _hd1012010145_))
                                     (if (gx#stx-pair? _tl1012110147_)
                                         (let ((_e1012210152_
                                                (gx#syntax-e _tl1012110147_)))
                                           (let ((_hd1012310155_
                                                  (##car _e1012210152_))
                                                 (_tl1012410157_
                                                  (##cdr _e1012210152_)))
                                             (let ((_alias-id10160_
                                                    _hd1012310155_))
                                               (if (gx#stx-null?
                                                    _tl1012410157_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10150_)
                           (cons (gx#core-quote-syntax _alias-id10160_) '())))
               (_E1011510130_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1011510130_)))))
                                         (_E1011510130_)))))
                               (_E1011510130_))))
                       (_E1011510130_)))))
            (let () (_E1011410162_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx10058_)
      (let ((_e1005910072_ _stx10058_))
        (let ((_E1006110076_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1005910072_))))
          (let ((_E1006010108_
                 (lambda ()
                   (if (gx#stx-pair? _e1005910072_)
                       (let ((_e1006210080_ (gx#syntax-e _e1005910072_)))
                         (let ((_hd1006310083_ (##car _e1006210080_))
                               (_tl1006410085_ (##cdr _e1006210080_)))
                           (if (gx#stx-pair? _tl1006410085_)
                               (let ((_e1006510088_
                                      (gx#syntax-e _tl1006410085_)))
                                 (let ((_hd1006610091_ (##car _e1006510088_))
                                       (_tl1006710093_ (##cdr _e1006510088_)))
                                   (let ((_id10096_ _hd1006610091_))
                                     (if (gx#stx-pair? _tl1006710093_)
                                         (let ((_e1006810098_
                                                (gx#syntax-e _tl1006710093_)))
                                           (let ((_hd1006910101_
                                                  (##car _e1006810098_))
                                                 (_tl1007010103_
                                                  (##cdr _e1006810098_)))
                                             (let ((_binding-id10106_
                                                    _hd1006910101_))
                                               (if (gx#stx-null?
                                                    _tl1007010103_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10096_)
                           (cons (gx#core-quote-syntax _binding-id10106_)
                                 '())))
               (_E1006110076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1006110076_)))))
                                         (_E1006110076_)))))
                               (_E1006110076_))))
                       (_E1006110076_)))))
            (let () (_E1006010108_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx10028_)
      (let ((_e1002910036_ _stx10028_))
        (let ((_E1003110040_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1002910036_))))
          (let ((_E1003010054_
                 (lambda ()
                   (if (gx#stx-pair? _e1002910036_)
                       (let ((_e1003210044_ (gx#syntax-e _e1002910036_)))
                         (let ((_hd1003310047_ (##car _e1003210044_))
                               (_tl1003410049_ (##cdr _e1003210044_)))
                           (let ((_decls10052_ _tl1003410049_))
                             (if '#t
                                 (cons '%#declare _decls10052_)
                                 (_E1003110040_)))))
                       (_E1003110040_)))))
            (let () (_E1003010054_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx9998_)
      (let ((_e999910006_ _stx9998_))
        (let ((_E1000110010_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e999910006_))))
          (let ((_E1000010024_
                 (lambda ()
                   (if (gx#stx-pair? _e999910006_)
                       (let ((_e1000210014_ (gx#syntax-e _e999910006_)))
                         (let ((_hd1000310017_ (##car _e1000210014_))
                               (_tl1000410019_ (##cdr _e1000210014_)))
                           (let ((_clause10022_ _tl1000410019_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause10022_))
                                 (_E1000110010_)))))
                       (_E1000110010_)))))
            (let () (_E1000010024_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx9955_)
      (let ((_e99569966_ _stx9955_))
        (let ((_E99589970_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e99569966_))))
          (let ((_E99579994_
                 (lambda ()
                   (if (gx#stx-pair? _e99569966_)
                       (let ((_e99599974_ (gx#syntax-e _e99569966_)))
                         (let ((_hd99609977_ (##car _e99599974_))
                               (_tl99619979_ (##cdr _e99599974_)))
                           (let ((_hd9982_ _hd99609977_))
                             (if (gx#stx-pair? _tl99619979_)
                                 (let ((_e99629984_
                                        (gx#syntax-e _tl99619979_)))
                                   (let ((_hd99639987_ (##car _e99629984_))
                                         (_tl99649989_ (##cdr _e99629984_)))
                                     (let ((_body9992_ _hd99639987_))
                                       (if (gx#stx-null? _tl99649989_)
                                           (if '#t
                                               (cons (gx#stx-map
                                                      gx#core-compile-top-runtime-bind
                                                      _hd9982_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body9992_)
                                                           '()))
                                               (_E99589970_))
                                           (_E99589970_)))))
                                 (_E99589970_)))))
                       (_E99589970_)))))
            (let () (_E99579994_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx9925_)
      (let ((_e99269933_ _stx9925_))
        (let ((_E99289937_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e99269933_))))
          (let ((_E99279951_
                 (lambda ()
                   (if (gx#stx-pair? _e99269933_)
                       (let ((_e99299941_ (gx#syntax-e _e99269933_)))
                         (let ((_hd99309944_ (##car _e99299941_))
                               (_tl99319946_ (##cdr _e99299941_)))
                           (let ((_clauses9949_ _tl99319946_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map
                                        gx#core-compile-top-lambda-clause
                                        _clauses9949_))
                                 (_E99289937_)))))
                       (_E99289937_)))))
            (let () (_E99279951_)))))))
  (define gx#core-compile-top-let-values%
    (let ((_opt-lambda98589915_
           (lambda (_stx9860_ _form9861_)
             (let ((_e98629875_ _stx9860_))
               (let ((_E98649879_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e98629875_))))
                 (let ((_E98639911_
                        (lambda ()
                          (if (gx#stx-pair? _e98629875_)
                              (let ((_e98659883_ (gx#syntax-e _e98629875_)))
                                (let ((_hd98669886_ (##car _e98659883_))
                                      (_tl98679888_ (##cdr _e98659883_)))
                                  (if (gx#stx-pair? _tl98679888_)
                                      (let ((_e98689891_
                                             (gx#syntax-e _tl98679888_)))
                                        (let ((_hd98699894_
                                               (##car _e98689891_))
                                              (_tl98709896_
                                               (##cdr _e98689891_)))
                                          (let ((_hd9899_ _hd98699894_))
                                            (if (gx#stx-pair? _tl98709896_)
                                                (let ((_e98719901_
                                                       (gx#syntax-e
                                                        _tl98709896_)))
                                                  (let ((_hd98729904_
                                                         (##car _e98719901_))
                                                        (_tl98739906_
                                                         (##cdr _e98719901_)))
                                                    (let ((_body9909_
                                                           _hd98729904_))
                                                      (if (gx#stx-null?
                                                           _tl98739906_)
                                                          (if '#t
                                                              (cons _form9861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#stx-map
                                   gx#core-compile-top-lambda-clause
                                   _hd9899_)
                                  (cons (gx#core-compile-top-syntax _body9909_)
                                        '())))
                      (_E98649879_))
                  (_E98649879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E98649879_)))))
                                      (_E98649879_))))
                              (_E98649879_)))))
                   (let () (_E98639911_))))))))
      (lambda _g12225_
        (let ((_g12224_ (length _g12225_)))
          (cond ((fx= _g12224_ 1)
                 (apply (lambda (_stx9918_)
                          (let ((_form9920_ '%#let-values))
                            (_opt-lambda98589915_ _stx9918_ _form9920_)))
                        _g12225_))
                ((fx= _g12224_ 2)
                 (apply (lambda (_stx9922_ _form9923_)
                          (_opt-lambda98589915_ _stx9922_ _form9923_))
                        _g12225_))
                (else (error "No clause matching arguments" _g12225_)))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx9857_)
      (gx#core-compile-top-let-values% _stx9857_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx9855_)
      (gx#core-compile-top-let-values% _stx9855_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx9814_)
      (let ((_e98159825_ _stx9814_))
        (let ((_E98179829_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e98159825_))))
          (let ((_E98169851_
                 (lambda ()
                   (if (gx#stx-pair? _e98159825_)
                       (let ((_e98189833_ (gx#syntax-e _e98159825_)))
                         (let ((_hd98199836_ (##car _e98189833_))
                               (_tl98209838_ (##cdr _e98189833_)))
                           (if (gx#stx-pair? _tl98209838_)
                               (let ((_e98219841_ (gx#syntax-e _tl98209838_)))
                                 (let ((_hd98229844_ (##car _e98219841_))
                                       (_tl98239846_ (##cdr _e98219841_)))
                                   (let ((_e9849_ _hd98229844_))
                                     (if (gx#stx-null? _tl98239846_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e9849_)
                                                         '()))
                                             (_E98179829_))
                                         (_E98179829_)))))
                               (_E98179829_))))
                       (_E98179829_)))))
            (let () (_E98169851_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx9773_)
      (let ((_e97749784_ _stx9773_))
        (let ((_E97769788_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e97749784_))))
          (let ((_E97759810_
                 (lambda ()
                   (if (gx#stx-pair? _e97749784_)
                       (let ((_e97779792_ (gx#syntax-e _e97749784_)))
                         (let ((_hd97789795_ (##car _e97779792_))
                               (_tl97799797_ (##cdr _e97779792_)))
                           (if (gx#stx-pair? _tl97799797_)
                               (let ((_e97809800_ (gx#syntax-e _tl97799797_)))
                                 (let ((_hd97819803_ (##car _e97809800_))
                                       (_tl97829805_ (##cdr _e97809800_)))
                                   (let ((_e9808_ _hd97819803_))
                                     (if (gx#stx-null? _tl97829805_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax
                                                          _e9808_)
                                                         '()))
                                             (_E97769788_))
                                         (_E97769788_)))))
                               (_E97769788_))))
                       (_E97769788_)))))
            (let () (_E97759810_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx9730_)
      (let ((_e97319741_ _stx9730_))
        (let ((_E97339745_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e97319741_))))
          (let ((_E97329769_
                 (lambda ()
                   (if (gx#stx-pair? _e97319741_)
                       (let ((_e97349749_ (gx#syntax-e _e97319741_)))
                         (let ((_hd97359752_ (##car _e97349749_))
                               (_tl97369754_ (##cdr _e97349749_)))
                           (if (gx#stx-pair? _tl97369754_)
                               (let ((_e97379757_ (gx#syntax-e _tl97369754_)))
                                 (let ((_hd97389760_ (##car _e97379757_))
                                       (_tl97399762_ (##cdr _e97379757_)))
                                   (let ((_rator9765_ _hd97389760_))
                                     (let ((_args9767_ _tl97399762_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator9765_)
                                                  (gx#stx-map
                                                   gx#core-compile-top-syntax
                                                   _args9767_))
                                           (_E97339745_))))))
                               (_E97339745_))))
                       (_E97339745_)))))
            (let () (_E97329769_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx9663_)
      (let ((_e96649680_ _stx9663_))
        (let ((_E96669684_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e96649680_))))
          (let ((_E96659726_
                 (lambda ()
                   (if (gx#stx-pair? _e96649680_)
                       (let ((_e96679688_ (gx#syntax-e _e96649680_)))
                         (let ((_hd96689691_ (##car _e96679688_))
                               (_tl96699693_ (##cdr _e96679688_)))
                           (if (gx#stx-pair? _tl96699693_)
                               (let ((_e96709696_ (gx#syntax-e _tl96699693_)))
                                 (let ((_hd96719699_ (##car _e96709696_))
                                       (_tl96729701_ (##cdr _e96709696_)))
                                   (let ((_test9704_ _hd96719699_))
                                     (if (gx#stx-pair? _tl96729701_)
                                         (let ((_e96739706_
                                                (gx#syntax-e _tl96729701_)))
                                           (let ((_hd96749709_
                                                  (##car _e96739706_))
                                                 (_tl96759711_
                                                  (##cdr _e96739706_)))
                                             (let ((_K9714_ _hd96749709_))
                                               (if (gx#stx-pair? _tl96759711_)
                                                   (let ((_e96769716_
                                                          (gx#syntax-e
                                                           _tl96759711_)))
                                                     (let ((_hd96779719_
                                                            (##car _e96769716_))
                                                           (_tl96789721_
                                                            (##cdr _e96769716_)))
                                                       (let ((_E9724_ _hd96779719_))
                                                         (if (gx#stx-null?
                                                              _tl96789721_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test9704_)
                                     (cons (gx#core-compile-top-syntax _K9714_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E9724_)
                                                 '()))))
                         (_E96669684_))
                     (_E96669684_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E96669684_)))))
                                         (_E96669684_)))))
                               (_E96669684_))))
                       (_E96669684_)))))
            (let () (_E96659726_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx9622_)
      (let ((_e96239633_ _stx9622_))
        (let ((_E96259637_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e96239633_))))
          (let ((_E96249659_
                 (lambda ()
                   (if (gx#stx-pair? _e96239633_)
                       (let ((_e96269641_ (gx#syntax-e _e96239633_)))
                         (let ((_hd96279644_ (##car _e96269641_))
                               (_tl96289646_ (##cdr _e96269641_)))
                           (if (gx#stx-pair? _tl96289646_)
                               (let ((_e96299649_ (gx#syntax-e _tl96289646_)))
                                 (let ((_hd96309652_ (##car _e96299649_))
                                       (_tl96319654_ (##cdr _e96299649_)))
                                   (let ((_id9657_ _hd96309652_))
                                     (if (gx#stx-null? _tl96319654_)
                                         (if (gx#identifier? _id9657_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id9657_)
                                                         '()))
                                             (_E96259637_))
                                         (_E96259637_)))))
                               (_E96259637_))))
                       (_E96259637_)))))
            (let () (_E96249659_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx9568_)
      (let ((_e95699582_ _stx9568_))
        (let ((_E95719586_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e95699582_))))
          (let ((_E95709618_
                 (lambda ()
                   (if (gx#stx-pair? _e95699582_)
                       (let ((_e95729590_ (gx#syntax-e _e95699582_)))
                         (let ((_hd95739593_ (##car _e95729590_))
                               (_tl95749595_ (##cdr _e95729590_)))
                           (if (gx#stx-pair? _tl95749595_)
                               (let ((_e95759598_ (gx#syntax-e _tl95749595_)))
                                 (let ((_hd95769601_ (##car _e95759598_))
                                       (_tl95779603_ (##cdr _e95759598_)))
                                   (let ((_id9606_ _hd95769601_))
                                     (if (gx#stx-pair? _tl95779603_)
                                         (let ((_e95789608_
                                                (gx#syntax-e _tl95779603_)))
                                           (let ((_hd95799611_
                                                  (##car _e95789608_))
                                                 (_tl95809613_
                                                  (##cdr _e95789608_)))
                                             (let ((_expr9616_ _hd95799611_))
                                               (if (gx#stx-null? _tl95809613_)
                                                   (if (gx#identifier?
                                                        _id9606_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id9606_)
                           (cons (gx#core-compile-top-syntax _expr9616_) '())))
               (_E95719586_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E95719586_)))))
                                         (_E95719586_)))))
                               (_E95719586_))))
                       (_E95719586_)))))
            (let () (_E95709618_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id9563_)
      (let ((_$e9565_ (gx#resolve-identifier _id9563_)))
        (if _$e9565_ (gx#binding-id _$e9565_) _id9563_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd9561_)
      (if (gx#identifier? _hd9561_)
          (gx#core-compile-top-runtime-ref _hd9561_)
          '#f))))
