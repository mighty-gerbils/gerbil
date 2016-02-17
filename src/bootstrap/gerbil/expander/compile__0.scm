(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gx#core-compile-top-syntax
    (lambda (_stx38581_)
      (let ((_e3858238589_ _stx38581_))
        (let ((_E3858438593_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3858238589_))))
          (let ((_E3858338607_
                 (lambda ()
                   (if (gx#stx-pair? _e3858238589_)
                       (let ((_e3858538597_ (gx#syntax-e _e3858238589_)))
                         (let ((_hd3858638600_ (##car _e3858538597_))
                               (_tl3858738602_ (##cdr _e3858538597_)))
                           (let ((_form38605_ _hd3858638600_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e _form38605_)
                                  'compile-top-syntax
                                  _stx38581_)
                                 (_E3858438593_)))))
                       (_E3858438593_)))))
            (let () (_E3858338607_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self38541_ _stx38542_)
      (let ((_self3854338551_ _self38541_))
        (let ((_E3854538555_
               (lambda () (error '"No clause matching" _self3854338551_))))
          (let ((_K3854638567_
                 (lambda (_K38558_)
                   (let ((_$e38560_ (gx#stx-source _stx38542_)))
                     (if _$e38560_
                         ((lambda (_g3856238564_)
                            (gx#stx-wrap-source
                             (_K38558_ _stx38542_)
                             _g3856238564_))
                          _$e38560_)
                         (_K38558_ _stx38542_))))))
            (if (struct-instance? gx#core-expander::t _self3854338551_)
                (let ((_e3854738570_ (##vector-ref _self3854338551_ '1)))
                  (let ((_e3854838573_ (##vector-ref _self3854338551_ '2)))
                    (let ((_e3854938576_ (##vector-ref _self3854338551_ '3)))
                      (let ((_K38579_ _e3854938576_))
                        (_K3854638567_ _K38579_)))))
                (_E3854538555_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx38539_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx38539_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx38509_)
      (let ((_e3851038517_ _stx38509_))
        (let ((_E3851238521_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3851038517_))))
          (let ((_E3851138535_
                 (lambda ()
                   (if (gx#stx-pair? _e3851038517_)
                       (let ((_e3851338525_ (gx#syntax-e _e3851038517_)))
                         (let ((_hd3851438528_ (##car _e3851338525_))
                               (_tl3851538530_ (##cdr _e3851338525_)))
                           (let ((_body38533_ _tl3851538530_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map
                                        gx#core-compile-top-syntax
                                        _body38533_))
                                 (_E3851238521_)))))
                       (_E3851238521_)))))
            (let () (_E3851138535_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx38478_)
      (let ((_e3847938486_ _stx38478_))
        (let ((_E3848138490_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3847938486_))))
          (let ((_E3848038505_
                 (lambda ()
                   (if (gx#stx-pair? _e3847938486_)
                       (let ((_e3848238494_ (gx#syntax-e _e3847938486_)))
                         (let ((_hd3848338497_ (##car _e3848238494_))
                               (_tl3848438499_ (##cdr _e3848238494_)))
                           (let ((_body38502_ _tl3848438499_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map
                                           gx#core-compile-top-syntax
                                           _body38502_))
                                        gx#current-expander-phi
                                        (fx1+ (gx#current-expander-phi))))
                                 (_E3848138490_)))))
                       (_E3848138490_)))))
            (let () (_E3848038505_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx38448_)
      (let ((_e3844938456_ _stx38448_))
        (let ((_E3845138460_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3844938456_))))
          (let ((_E3845038474_
                 (lambda ()
                   (if (gx#stx-pair? _e3844938456_)
                       (let ((_e3845238464_ (gx#syntax-e _e3844938456_)))
                         (let ((_hd3845338467_ (##car _e3845238464_))
                               (_tl3845438469_ (##cdr _e3845238464_)))
                           (let ((_body38472_ _tl3845438469_))
                             (if '#t
                                 (cons '%#begin-foreign _body38472_)
                                 (_E3845138460_)))))
                       (_E3845138460_)))))
            (let () (_E3845038474_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx38418_)
      (let ((_e3841938426_ _stx38418_))
        (let ((_E3842138430_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3841938426_))))
          (let ((_E3842038444_
                 (lambda ()
                   (if (gx#stx-pair? _e3841938426_)
                       (let ((_e3842238434_ (gx#syntax-e _e3841938426_)))
                         (let ((_hd3842338437_ (##car _e3842238434_))
                               (_tl3842438439_ (##cdr _e3842238434_)))
                           (let ((_body38442_ _tl3842438439_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body38442_))
                                 (_E3842138430_)))))
                       (_E3842138430_)))))
            (let () (_E3842038444_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx38375_)
      (let ((_e3837638386_ _stx38375_))
        (let ((_E3837838390_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3837638386_))))
          (let ((_E3837738414_
                 (lambda ()
                   (if (gx#stx-pair? _e3837638386_)
                       (let ((_e3837938394_ (gx#syntax-e _e3837638386_)))
                         (let ((_hd3838038397_ (##car _e3837938394_))
                               (_tl3838138399_ (##cdr _e3837938394_)))
                           (if (gx#stx-pair? _tl3838138399_)
                               (let ((_e3838238402_
                                      (gx#syntax-e _tl3838138399_)))
                                 (let ((_hd3838338405_ (##car _e3838238402_))
                                       (_tl3838438407_ (##cdr _e3838238402_)))
                                   (let ((_hd38410_ _hd3838338405_))
                                     (let ((_body38412_ _tl3838438407_))
                                       (if '#t
                                           (cons* '%#module
                                                  (gx#expander-context-id
                                                   (gx#syntax-local-e
                                                    _hd38410_))
                                                  (gx#stx-map
                                                   gx#core-compile-top-syntax
                                                   _body38412_))
                                           (_E3837838390_))))))
                               (_E3837838390_))))
                       (_E3837838390_)))))
            (let () (_E3837738414_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx38345_)
      (let ((_e3834638353_ _stx38345_))
        (let ((_E3834838357_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3834638353_))))
          (let ((_E3834738371_
                 (lambda ()
                   (if (gx#stx-pair? _e3834638353_)
                       (let ((_e3834938361_ (gx#syntax-e _e3834638353_)))
                         (let ((_hd3835038364_ (##car _e3834938361_))
                               (_tl3835138366_ (##cdr _e3834938361_)))
                           (let ((_body38369_ _tl3835138366_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body38369_))
                                 (_E3834838357_)))))
                       (_E3834838357_)))))
            (let () (_E3834738371_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx38315_)
      (let ((_e3831638323_ _stx38315_))
        (let ((_E3831838327_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3831638323_))))
          (let ((_E3831738341_
                 (lambda ()
                   (if (gx#stx-pair? _e3831638323_)
                       (let ((_e3831938331_ (gx#syntax-e _e3831638323_)))
                         (let ((_hd3832038334_ (##car _e3831938331_))
                               (_tl3832138336_ (##cdr _e3831938331_)))
                           (let ((_body38339_ _tl3832138336_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map
                                        gx#core-quote-syntax
                                        _body38339_))
                                 (_E3831838327_)))))
                       (_E3831838327_)))))
            (let () (_E3831738341_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx38240_)
      (let ((_generate38242_
             (lambda (_hd38272_)
               (let ((_e3827338283_ _hd38272_))
                 (let ((_E3827538287_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e3827338283_))))
                   (let ((_E3827438311_
                          (lambda ()
                            (if (gx#stx-pair? _e3827338283_)
                                (let ((_e3827638291_
                                       (gx#syntax-e _e3827338283_)))
                                  (let ((_hd3827738294_ (##car _e3827638291_))
                                        (_tl3827838296_ (##cdr _e3827638291_)))
                                    (let ((_id38299_ _hd3827738294_))
                                      (if (gx#stx-pair? _tl3827838296_)
                                          (let ((_e3827938301_
                                                 (gx#syntax-e _tl3827838296_)))
                                            (let ((_hd3828038304_
                                                   (##car _e3827938301_))
                                                  (_tl3828138306_
                                                   (##cdr _e3827938301_)))
                                              (let ((_eid38309_
                                                     _hd3828038304_))
                                                (if (gx#stx-null?
                                                     _tl3828138306_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax
                                                               _id38299_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid38309_)
                            '()))
                (_E3827538287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3827538287_)))))
                                          (_E3827538287_)))))
                                (_E3827538287_)))))
                     (let () (_E3827438311_))))))))
        (let ((_e3824338250_ _stx38240_))
          (let ((_E3824538254_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e3824338250_))))
            (let ((_E3824438268_
                   (lambda ()
                     (if (gx#stx-pair? _e3824338250_)
                         (let ((_e3824638258_ (gx#syntax-e _e3824338250_)))
                           (let ((_hd3824738261_ (##car _e3824638258_))
                                 (_tl3824838263_ (##cdr _e3824638258_)))
                             (let ((_body38266_ _tl3824838263_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map
                                          _generate38242_
                                          _body38266_))
                                   (_E3824538254_)))))
                         (_E3824538254_)))))
              (let () (_E3824438268_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx38186_)
      (let ((_e3818738200_ _stx38186_))
        (let ((_E3818938204_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3818738200_))))
          (let ((_E3818838236_
                 (lambda ()
                   (if (gx#stx-pair? _e3818738200_)
                       (let ((_e3819038208_ (gx#syntax-e _e3818738200_)))
                         (let ((_hd3819138211_ (##car _e3819038208_))
                               (_tl3819238213_ (##cdr _e3819038208_)))
                           (if (gx#stx-pair? _tl3819238213_)
                               (let ((_e3819338216_
                                      (gx#syntax-e _tl3819238213_)))
                                 (let ((_hd3819438219_ (##car _e3819338216_))
                                       (_tl3819538221_ (##cdr _e3819338216_)))
                                   (let ((_hd38224_ _hd3819438219_))
                                     (if (gx#stx-pair? _tl3819538221_)
                                         (let ((_e3819638226_
                                                (gx#syntax-e _tl3819538221_)))
                                           (let ((_hd3819738229_
                                                  (##car _e3819638226_))
                                                 (_tl3819838231_
                                                  (##cdr _e3819638226_)))
                                             (let ((_expr38234_
                                                    _hd3819738229_))
                                               (if (gx#stx-null?
                                                    _tl3819838231_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd38224_)
                           (cons (gx#core-compile-top-syntax _expr38234_)
                                 '())))
               (_E3818938204_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3818938204_)))))
                                         (_E3818938204_)))))
                               (_E3818938204_))))
                       (_E3818938204_)))))
            (let () (_E3818838236_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx38131_)
      (let ((_e3813238145_ _stx38131_))
        (let ((_E3813438149_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3813238145_))))
          (let ((_E3813338182_
                 (lambda ()
                   (if (gx#stx-pair? _e3813238145_)
                       (let ((_e3813538153_ (gx#syntax-e _e3813238145_)))
                         (let ((_hd3813638156_ (##car _e3813538153_))
                               (_tl3813738158_ (##cdr _e3813538153_)))
                           (if (gx#stx-pair? _tl3813738158_)
                               (let ((_e3813838161_
                                      (gx#syntax-e _tl3813738158_)))
                                 (let ((_hd3813938164_ (##car _e3813838161_))
                                       (_tl3814038166_ (##cdr _e3813838161_)))
                                   (let ((_hd38169_ _hd3813938164_))
                                     (if (gx#stx-pair? _tl3814038166_)
                                         (let ((_e3814138171_
                                                (gx#syntax-e _tl3814038166_)))
                                           (let ((_hd3814238174_
                                                  (##car _e3814138171_))
                                                 (_tl3814338176_
                                                  (##cdr _e3814138171_)))
                                             (let ((_expr38179_
                                                    _hd3814238174_))
                                               (if (gx#stx-null?
                                                    _tl3814338176_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd38169_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr38179_))
                                  gx#current-expander-phi
                                  (fx1+ (gx#current-expander-phi)))
                                 '())))
               (_E3813438149_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3813438149_)))))
                                         (_E3813438149_)))))
                               (_E3813438149_))))
                       (_E3813438149_)))))
            (let () (_E3813338182_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx38077_)
      (let ((_e3807838091_ _stx38077_))
        (let ((_E3808038095_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3807838091_))))
          (let ((_E3807938127_
                 (lambda ()
                   (if (gx#stx-pair? _e3807838091_)
                       (let ((_e3808138099_ (gx#syntax-e _e3807838091_)))
                         (let ((_hd3808238102_ (##car _e3808138099_))
                               (_tl3808338104_ (##cdr _e3808138099_)))
                           (if (gx#stx-pair? _tl3808338104_)
                               (let ((_e3808438107_
                                      (gx#syntax-e _tl3808338104_)))
                                 (let ((_hd3808538110_ (##car _e3808438107_))
                                       (_tl3808638112_ (##cdr _e3808438107_)))
                                   (let ((_hd38115_ _hd3808538110_))
                                     (if (gx#stx-pair? _tl3808638112_)
                                         (let ((_e3808738117_
                                                (gx#syntax-e _tl3808638112_)))
                                           (let ((_hd3808838120_
                                                  (##car _e3808738117_))
                                                 (_tl3808938122_
                                                  (##cdr _e3808738117_)))
                                             (let ((_alias-id38125_
                                                    _hd3808838120_))
                                               (if (gx#stx-null?
                                                    _tl3808938122_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd38115_)
                           (cons (gx#core-quote-syntax _alias-id38125_) '())))
               (_E3808038095_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3808038095_)))))
                                         (_E3808038095_)))))
                               (_E3808038095_))))
                       (_E3808038095_)))))
            (let () (_E3807938127_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx38023_)
      (let ((_e3802438037_ _stx38023_))
        (let ((_E3802638041_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3802438037_))))
          (let ((_E3802538073_
                 (lambda ()
                   (if (gx#stx-pair? _e3802438037_)
                       (let ((_e3802738045_ (gx#syntax-e _e3802438037_)))
                         (let ((_hd3802838048_ (##car _e3802738045_))
                               (_tl3802938050_ (##cdr _e3802738045_)))
                           (if (gx#stx-pair? _tl3802938050_)
                               (let ((_e3803038053_
                                      (gx#syntax-e _tl3802938050_)))
                                 (let ((_hd3803138056_ (##car _e3803038053_))
                                       (_tl3803238058_ (##cdr _e3803038053_)))
                                   (let ((_id38061_ _hd3803138056_))
                                     (if (gx#stx-pair? _tl3803238058_)
                                         (let ((_e3803338063_
                                                (gx#syntax-e _tl3803238058_)))
                                           (let ((_hd3803438066_
                                                  (##car _e3803338063_))
                                                 (_tl3803538068_
                                                  (##cdr _e3803338063_)))
                                             (let ((_binding-id38071_
                                                    _hd3803438066_))
                                               (if (gx#stx-null?
                                                    _tl3803538068_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id38061_)
                           (cons (gx#core-quote-syntax _binding-id38071_)
                                 '())))
               (_E3802638041_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3802638041_)))))
                                         (_E3802638041_)))))
                               (_E3802638041_))))
                       (_E3802638041_)))))
            (let () (_E3802538073_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx37993_)
      (let ((_e3799438001_ _stx37993_))
        (let ((_E3799638005_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3799438001_))))
          (let ((_E3799538019_
                 (lambda ()
                   (if (gx#stx-pair? _e3799438001_)
                       (let ((_e3799738009_ (gx#syntax-e _e3799438001_)))
                         (let ((_hd3799838012_ (##car _e3799738009_))
                               (_tl3799938014_ (##cdr _e3799738009_)))
                           (let ((_decls38017_ _tl3799938014_))
                             (if '#t
                                 (cons '%#declare _decls38017_)
                                 (_E3799638005_)))))
                       (_E3799638005_)))))
            (let () (_E3799538019_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx37963_)
      (let ((_e3796437971_ _stx37963_))
        (let ((_E3796637975_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3796437971_))))
          (let ((_E3796537989_
                 (lambda ()
                   (if (gx#stx-pair? _e3796437971_)
                       (let ((_e3796737979_ (gx#syntax-e _e3796437971_)))
                         (let ((_hd3796837982_ (##car _e3796737979_))
                               (_tl3796937984_ (##cdr _e3796737979_)))
                           (let ((_clause37987_ _tl3796937984_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause37987_))
                                 (_E3796637975_)))))
                       (_E3796637975_)))))
            (let () (_E3796537989_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx37920_)
      (let ((_e3792137931_ _stx37920_))
        (let ((_E3792337935_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3792137931_))))
          (let ((_E3792237959_
                 (lambda ()
                   (if (gx#stx-pair? _e3792137931_)
                       (let ((_e3792437939_ (gx#syntax-e _e3792137931_)))
                         (let ((_hd3792537942_ (##car _e3792437939_))
                               (_tl3792637944_ (##cdr _e3792437939_)))
                           (let ((_hd37947_ _hd3792537942_))
                             (if (gx#stx-pair? _tl3792637944_)
                                 (let ((_e3792737949_
                                        (gx#syntax-e _tl3792637944_)))
                                   (let ((_hd3792837952_ (##car _e3792737949_))
                                         (_tl3792937954_
                                          (##cdr _e3792737949_)))
                                     (let ((_body37957_ _hd3792837952_))
                                       (if (gx#stx-null? _tl3792937954_)
                                           (if '#t
                                               (cons (gx#stx-map
                                                      gx#core-compile-top-runtime-bind
                                                      _hd37947_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body37957_)
                                                           '()))
                                               (_E3792337935_))
                                           (_E3792337935_)))))
                                 (_E3792337935_)))))
                       (_E3792337935_)))))
            (let () (_E3792237959_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx37890_)
      (let ((_e3789137898_ _stx37890_))
        (let ((_E3789337902_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3789137898_))))
          (let ((_E3789237916_
                 (lambda ()
                   (if (gx#stx-pair? _e3789137898_)
                       (let ((_e3789437906_ (gx#syntax-e _e3789137898_)))
                         (let ((_hd3789537909_ (##car _e3789437906_))
                               (_tl3789637911_ (##cdr _e3789437906_)))
                           (let ((_clauses37914_ _tl3789637911_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map
                                        gx#core-compile-top-lambda-clause
                                        _clauses37914_))
                                 (_E3789337902_)))))
                       (_E3789337902_)))))
            (let () (_E3789237916_)))))))
  (define gx#core-compile-top-let-values%
    (let ((_opt-lambda3782337880_
           (lambda (_stx37825_ _form37826_)
             (let ((_e3782737840_ _stx37825_))
               (let ((_E3782937844_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e3782737840_))))
                 (let ((_E3782837876_
                        (lambda ()
                          (if (gx#stx-pair? _e3782737840_)
                              (let ((_e3783037848_
                                     (gx#syntax-e _e3782737840_)))
                                (let ((_hd3783137851_ (##car _e3783037848_))
                                      (_tl3783237853_ (##cdr _e3783037848_)))
                                  (if (gx#stx-pair? _tl3783237853_)
                                      (let ((_e3783337856_
                                             (gx#syntax-e _tl3783237853_)))
                                        (let ((_hd3783437859_
                                               (##car _e3783337856_))
                                              (_tl3783537861_
                                               (##cdr _e3783337856_)))
                                          (let ((_hd37864_ _hd3783437859_))
                                            (if (gx#stx-pair? _tl3783537861_)
                                                (let ((_e3783637866_
                                                       (gx#syntax-e
                                                        _tl3783537861_)))
                                                  (let ((_hd3783737869_
                                                         (##car _e3783637866_))
                                                        (_tl3783837871_
                                                         (##cdr _e3783637866_)))
                                                    (let ((_body37874_
                                                           _hd3783737869_))
                                                      (if (gx#stx-null?
                                                           _tl3783837871_)
                                                          (if '#t
                                                              (cons _form37826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#stx-map
                                   gx#core-compile-top-lambda-clause
                                   _hd37864_)
                                  (cons (gx#core-compile-top-syntax
                                         _body37874_)
                                        '())))
                      (_E3782937844_))
                  (_E3782937844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E3782937844_)))))
                                      (_E3782937844_))))
                              (_E3782937844_)))))
                   (let () (_E3782837876_))))))))
      (lambda _g40118_
        (let ((_g40117_ (length _g40118_)))
          (cond ((fx= _g40117_ 1)
                 (apply (lambda (_stx37883_)
                          (let ((_form37885_ '%#let-values))
                            (_opt-lambda3782337880_ _stx37883_ _form37885_)))
                        _g40118_))
                ((fx= _g40117_ 2)
                 (apply (lambda (_stx37887_ _form37888_)
                          (_opt-lambda3782337880_ _stx37887_ _form37888_))
                        _g40118_))
                (else (error "No clause matching arguments" _g40118_)))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx37822_)
      (gx#core-compile-top-let-values% _stx37822_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx37820_)
      (gx#core-compile-top-let-values% _stx37820_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx37779_)
      (let ((_e3778037790_ _stx37779_))
        (let ((_E3778237794_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3778037790_))))
          (let ((_E3778137816_
                 (lambda ()
                   (if (gx#stx-pair? _e3778037790_)
                       (let ((_e3778337798_ (gx#syntax-e _e3778037790_)))
                         (let ((_hd3778437801_ (##car _e3778337798_))
                               (_tl3778537803_ (##cdr _e3778337798_)))
                           (if (gx#stx-pair? _tl3778537803_)
                               (let ((_e3778637806_
                                      (gx#syntax-e _tl3778537803_)))
                                 (let ((_hd3778737809_ (##car _e3778637806_))
                                       (_tl3778837811_ (##cdr _e3778637806_)))
                                   (let ((_e37814_ _hd3778737809_))
                                     (if (gx#stx-null? _tl3778837811_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e37814_)
                                                         '()))
                                             (_E3778237794_))
                                         (_E3778237794_)))))
                               (_E3778237794_))))
                       (_E3778237794_)))))
            (let () (_E3778137816_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx37738_)
      (let ((_e3773937749_ _stx37738_))
        (let ((_E3774137753_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3773937749_))))
          (let ((_E3774037775_
                 (lambda ()
                   (if (gx#stx-pair? _e3773937749_)
                       (let ((_e3774237757_ (gx#syntax-e _e3773937749_)))
                         (let ((_hd3774337760_ (##car _e3774237757_))
                               (_tl3774437762_ (##cdr _e3774237757_)))
                           (if (gx#stx-pair? _tl3774437762_)
                               (let ((_e3774537765_
                                      (gx#syntax-e _tl3774437762_)))
                                 (let ((_hd3774637768_ (##car _e3774537765_))
                                       (_tl3774737770_ (##cdr _e3774537765_)))
                                   (let ((_e37773_ _hd3774637768_))
                                     (if (gx#stx-null? _tl3774737770_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax
                                                          _e37773_)
                                                         '()))
                                             (_E3774137753_))
                                         (_E3774137753_)))))
                               (_E3774137753_))))
                       (_E3774137753_)))))
            (let () (_E3774037775_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx37695_)
      (let ((_e3769637706_ _stx37695_))
        (let ((_E3769837710_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3769637706_))))
          (let ((_E3769737734_
                 (lambda ()
                   (if (gx#stx-pair? _e3769637706_)
                       (let ((_e3769937714_ (gx#syntax-e _e3769637706_)))
                         (let ((_hd3770037717_ (##car _e3769937714_))
                               (_tl3770137719_ (##cdr _e3769937714_)))
                           (if (gx#stx-pair? _tl3770137719_)
                               (let ((_e3770237722_
                                      (gx#syntax-e _tl3770137719_)))
                                 (let ((_hd3770337725_ (##car _e3770237722_))
                                       (_tl3770437727_ (##cdr _e3770237722_)))
                                   (let ((_rator37730_ _hd3770337725_))
                                     (let ((_args37732_ _tl3770437727_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator37730_)
                                                  (gx#stx-map
                                                   gx#core-compile-top-syntax
                                                   _args37732_))
                                           (_E3769837710_))))))
                               (_E3769837710_))))
                       (_E3769837710_)))))
            (let () (_E3769737734_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx37628_)
      (let ((_e3762937645_ _stx37628_))
        (let ((_E3763137649_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3762937645_))))
          (let ((_E3763037691_
                 (lambda ()
                   (if (gx#stx-pair? _e3762937645_)
                       (let ((_e3763237653_ (gx#syntax-e _e3762937645_)))
                         (let ((_hd3763337656_ (##car _e3763237653_))
                               (_tl3763437658_ (##cdr _e3763237653_)))
                           (if (gx#stx-pair? _tl3763437658_)
                               (let ((_e3763537661_
                                      (gx#syntax-e _tl3763437658_)))
                                 (let ((_hd3763637664_ (##car _e3763537661_))
                                       (_tl3763737666_ (##cdr _e3763537661_)))
                                   (let ((_test37669_ _hd3763637664_))
                                     (if (gx#stx-pair? _tl3763737666_)
                                         (let ((_e3763837671_
                                                (gx#syntax-e _tl3763737666_)))
                                           (let ((_hd3763937674_
                                                  (##car _e3763837671_))
                                                 (_tl3764037676_
                                                  (##cdr _e3763837671_)))
                                             (let ((_K37679_ _hd3763937674_))
                                               (if (gx#stx-pair?
                                                    _tl3764037676_)
                                                   (let ((_e3764137681_
                                                          (gx#syntax-e
                                                           _tl3764037676_)))
                                                     (let ((_hd3764237684_
                                                            (##car _e3764137681_))
                                                           (_tl3764337686_
                                                            (##cdr _e3764137681_)))
                                                       (let ((_E37689_
                                                              _hd3764237684_))
                                                         (if (gx#stx-null?
                                                              _tl3764337686_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test37669_)
                                     (cons (gx#core-compile-top-syntax
                                            _K37679_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E37689_)
                                                 '()))))
                         (_E3763137649_))
                     (_E3763137649_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3763137649_)))))
                                         (_E3763137649_)))))
                               (_E3763137649_))))
                       (_E3763137649_)))))
            (let () (_E3763037691_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx37587_)
      (let ((_e3758837598_ _stx37587_))
        (let ((_E3759037602_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3758837598_))))
          (let ((_E3758937624_
                 (lambda ()
                   (if (gx#stx-pair? _e3758837598_)
                       (let ((_e3759137606_ (gx#syntax-e _e3758837598_)))
                         (let ((_hd3759237609_ (##car _e3759137606_))
                               (_tl3759337611_ (##cdr _e3759137606_)))
                           (if (gx#stx-pair? _tl3759337611_)
                               (let ((_e3759437614_
                                      (gx#syntax-e _tl3759337611_)))
                                 (let ((_hd3759537617_ (##car _e3759437614_))
                                       (_tl3759637619_ (##cdr _e3759437614_)))
                                   (let ((_id37622_ _hd3759537617_))
                                     (if (gx#stx-null? _tl3759637619_)
                                         (if (gx#identifier? _id37622_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id37622_)
                                                         '()))
                                             (_E3759037602_))
                                         (_E3759037602_)))))
                               (_E3759037602_))))
                       (_E3759037602_)))))
            (let () (_E3758937624_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx37533_)
      (let ((_e3753437547_ _stx37533_))
        (let ((_E3753637551_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3753437547_))))
          (let ((_E3753537583_
                 (lambda ()
                   (if (gx#stx-pair? _e3753437547_)
                       (let ((_e3753737555_ (gx#syntax-e _e3753437547_)))
                         (let ((_hd3753837558_ (##car _e3753737555_))
                               (_tl3753937560_ (##cdr _e3753737555_)))
                           (if (gx#stx-pair? _tl3753937560_)
                               (let ((_e3754037563_
                                      (gx#syntax-e _tl3753937560_)))
                                 (let ((_hd3754137566_ (##car _e3754037563_))
                                       (_tl3754237568_ (##cdr _e3754037563_)))
                                   (let ((_id37571_ _hd3754137566_))
                                     (if (gx#stx-pair? _tl3754237568_)
                                         (let ((_e3754337573_
                                                (gx#syntax-e _tl3754237568_)))
                                           (let ((_hd3754437576_
                                                  (##car _e3754337573_))
                                                 (_tl3754537578_
                                                  (##cdr _e3754337573_)))
                                             (let ((_expr37581_
                                                    _hd3754437576_))
                                               (if (gx#stx-null?
                                                    _tl3754537578_)
                                                   (if (gx#identifier?
                                                        _id37571_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id37571_)
                           (cons (gx#core-compile-top-syntax _expr37581_)
                                 '())))
               (_E3753637551_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3753637551_)))))
                                         (_E3753637551_)))))
                               (_E3753637551_))))
                       (_E3753637551_)))))
            (let () (_E3753537583_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id37528_)
      (let ((_$e37530_ (gx#resolve-identifier _id37528_)))
        (if _$e37530_ (gx#binding-id _$e37530_) _id37528_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd37526_)
      (if (gx#identifier? _hd37526_)
          (gx#core-compile-top-runtime-ref _hd37526_)
          '#f))))
