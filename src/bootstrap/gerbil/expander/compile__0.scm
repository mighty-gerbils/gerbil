(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx11866_)
      (let ((_e1186711874_ _stx11866_))
        (let ((_E1186911878_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1186711874_))))
          (let ((_E1186811892_
                 (lambda ()
                   (if (gx#stx-pair? _e1186711874_)
                       (let ((_e1187011882_ (gx#syntax-e _e1186711874_)))
                         (let ((_hd1187111885_ (##car _e1187011882_))
                               (_tl1187211887_ (##cdr _e1187011882_)))
                           (let ((_form11890_ _hd1187111885_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form11890_)
                                  'compile-top-syntax
                                  _stx11866_)
                                 (_E1186911878_)))))
                       (_E1186911878_)))))
            (let () (_E1186811892_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self11826_ _stx11827_)
      (let ((_self1182811836_ _self11826_))
        (let ((_E1183011840_
               (lambda () (error '"No clause matching" _self1182811836_))))
          (let ((_K1183111852_
                 (lambda (_K11843_)
                   (let ((_$e11845_ (gx#stx-source _stx11827_)))
                     (if _$e11845_
                         ((lambda (_g1184711849_)
                            (gx#stx-wrap-source
                             (_K11843_ _stx11827_)
                             _g1184711849_))
                          _$e11845_)
                         (_K11843_ _stx11827_))))))
            (if (struct-instance? gx#core-expander::t _self1182811836_)
                (let ((_e1183211855_ (##vector-ref _self1182811836_ '1)))
                  (let ((_e1183311858_ (##vector-ref _self1182811836_ '2)))
                    (let ((_e1183411861_ (##vector-ref _self1182811836_ '3)))
                      (let ((_K11864_ _e1183411861_))
                        (_K1183111852_ _K11864_)))))
                (_E1183011840_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx11824_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx11824_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx11794_)
      (let ((_e1179511802_ _stx11794_))
        (let ((_E1179711806_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1179511802_))))
          (let ((_E1179611820_
                 (lambda ()
                   (if (gx#stx-pair? _e1179511802_)
                       (let ((_e1179811810_ (gx#syntax-e _e1179511802_)))
                         (let ((_hd1179911813_ (##car _e1179811810_))
                               (_tl1180011815_ (##cdr _e1179811810_)))
                           (let ((_body11818_ _tl1180011815_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body11818_))
                                 (_E1179711806_)))))
                       (_E1179711806_)))))
            (let () (_E1179611820_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx11763_)
      (let ((_e1176411771_ _stx11763_))
        (let ((_E1176611775_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1176411771_))))
          (let ((_E1176511790_
                 (lambda ()
                   (if (gx#stx-pair? _e1176411771_)
                       (let ((_e1176711779_ (gx#syntax-e _e1176411771_)))
                         (let ((_hd1176811782_ (##car _e1176711779_))
                               (_tl1176911784_ (##cdr _e1176711779_)))
                           (let ((_body11787_ _tl1176911784_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body11787_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1176611775_)))))
                       (_E1176611775_)))))
            (let () (_E1176511790_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx11733_)
      (let ((_e1173411741_ _stx11733_))
        (let ((_E1173611745_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1173411741_))))
          (let ((_E1173511759_
                 (lambda ()
                   (if (gx#stx-pair? _e1173411741_)
                       (let ((_e1173711749_ (gx#syntax-e _e1173411741_)))
                         (let ((_hd1173811752_ (##car _e1173711749_))
                               (_tl1173911754_ (##cdr _e1173711749_)))
                           (let ((_body11757_ _tl1173911754_))
                             (if '#t
                                 (cons '%#begin-foreign _body11757_)
                                 (_E1173611745_)))))
                       (_E1173611745_)))))
            (let () (_E1173511759_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx11703_)
      (let ((_e1170411711_ _stx11703_))
        (let ((_E1170611715_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1170411711_))))
          (let ((_E1170511729_
                 (lambda ()
                   (if (gx#stx-pair? _e1170411711_)
                       (let ((_e1170711719_ (gx#syntax-e _e1170411711_)))
                         (let ((_hd1170811722_ (##car _e1170711719_))
                               (_tl1170911724_ (##cdr _e1170711719_)))
                           (let ((_body11727_ _tl1170911724_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body11727_))
                                 (_E1170611715_)))))
                       (_E1170611715_)))))
            (let () (_E1170511729_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx11660_)
      (let ((_e1166111671_ _stx11660_))
        (let ((_E1166311675_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1166111671_))))
          (let ((_E1166211699_
                 (lambda ()
                   (if (gx#stx-pair? _e1166111671_)
                       (let ((_e1166411679_ (gx#syntax-e _e1166111671_)))
                         (let ((_hd1166511682_ (##car _e1166411679_))
                               (_tl1166611684_ (##cdr _e1166411679_)))
                           (if (gx#stx-pair? _tl1166611684_)
                               (let ((_e1166711687_
                                      (gx#syntax-e _tl1166611684_)))
                                 (let ((_hd1166811690_ (##car _e1166711687_))
                                       (_tl1166911692_ (##cdr _e1166711687_)))
                                   (let ((_hd11695_ _hd1166811690_))
                                     (let ((_body11697_ _tl1166911692_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd11695_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body11697_))
                                           (_E1166311675_))))))
                               (_E1166311675_))))
                       (_E1166311675_)))))
            (let () (_E1166211699_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx11630_)
      (let ((_e1163111638_ _stx11630_))
        (let ((_E1163311642_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1163111638_))))
          (let ((_E1163211656_
                 (lambda ()
                   (if (gx#stx-pair? _e1163111638_)
                       (let ((_e1163411646_ (gx#syntax-e _e1163111638_)))
                         (let ((_hd1163511649_ (##car _e1163411646_))
                               (_tl1163611651_ (##cdr _e1163411646_)))
                           (let ((_body11654_ _tl1163611651_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body11654_))
                                 (_E1163311642_)))))
                       (_E1163311642_)))))
            (let () (_E1163211656_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx11600_)
      (let ((_e1160111608_ _stx11600_))
        (let ((_E1160311612_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1160111608_))))
          (let ((_E1160211626_
                 (lambda ()
                   (if (gx#stx-pair? _e1160111608_)
                       (let ((_e1160411616_ (gx#syntax-e _e1160111608_)))
                         (let ((_hd1160511619_ (##car _e1160411616_))
                               (_tl1160611621_ (##cdr _e1160411616_)))
                           (let ((_body11624_ _tl1160611621_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body11624_))
                                 (_E1160311612_)))))
                       (_E1160311612_)))))
            (let () (_E1160211626_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx11525_)
      (let ((_generate11527_
             (lambda (_hd11557_)
               (let ((_e1155811568_ _hd11557_))
                 (let ((_E1156011572_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1155811568_))))
                   (let ((_E1155911596_
                          (lambda ()
                            (if (gx#stx-pair? _e1155811568_)
                                (let ((_e1156111576_
                                       (gx#syntax-e _e1155811568_)))
                                  (let ((_hd1156211579_ (##car _e1156111576_))
                                        (_tl1156311581_ (##cdr _e1156111576_)))
                                    (let ((_id11584_ _hd1156211579_))
                                      (if (gx#stx-pair? _tl1156311581_)
                                          (let ((_e1156411586_
                                                 (gx#syntax-e _tl1156311581_)))
                                            (let ((_hd1156511589_
                                                   (##car _e1156411586_))
                                                  (_tl1156611591_
                                                   (##cdr _e1156411586_)))
                                              (let ((_eid11594_
                                                     _hd1156511589_))
                                                (if (gx#stx-null?
                                                     _tl1156611591_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id11584_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid11594_)
                            '()))
                (_E1156011572_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1156011572_)))))
                                          (_E1156011572_)))))
                                (_E1156011572_)))))
                     (let () (_E1155911596_))))))))
        (let ((_e1152811535_ _stx11525_))
          (let ((_E1153011539_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1152811535_))))
            (let ((_E1152911553_
                   (lambda ()
                     (if (gx#stx-pair? _e1152811535_)
                         (let ((_e1153111543_ (gx#syntax-e _e1152811535_)))
                           (let ((_hd1153211546_ (##car _e1153111543_))
                                 (_tl1153311548_ (##cdr _e1153111543_)))
                             (let ((_body11551_ _tl1153311548_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate11527_
                                          _body11551_))
                                   (_E1153011539_)))))
                         (_E1153011539_)))))
              (let () (_E1152911553_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx11471_)
      (let ((_e1147211485_ _stx11471_))
        (let ((_E1147411489_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1147211485_))))
          (let ((_E1147311521_
                 (lambda ()
                   (if (gx#stx-pair? _e1147211485_)
                       (let ((_e1147511493_ (gx#syntax-e _e1147211485_)))
                         (let ((_hd1147611496_ (##car _e1147511493_))
                               (_tl1147711498_ (##cdr _e1147511493_)))
                           (if (gx#stx-pair? _tl1147711498_)
                               (let ((_e1147811501_
                                      (gx#syntax-e _tl1147711498_)))
                                 (let ((_hd1147911504_ (##car _e1147811501_))
                                       (_tl1148011506_ (##cdr _e1147811501_)))
                                   (let ((_hd11509_ _hd1147911504_))
                                     (if (gx#stx-pair? _tl1148011506_)
                                         (let ((_e1148111511_
                                                (gx#syntax-e _tl1148011506_)))
                                           (let ((_hd1148211514_
                                                  (##car _e1148111511_))
                                                 (_tl1148311516_
                                                  (##cdr _e1148111511_)))
                                             (let ((_expr11519_
                                                    _hd1148211514_))
                                               (if (gx#stx-null?
                                                    _tl1148311516_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd11509_)
                           (cons (gx#core-compile-top-syntax _expr11519_)
                                 '())))
               (_E1147411489_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1147411489_)))))
                                         (_E1147411489_)))))
                               (_E1147411489_))))
                       (_E1147411489_)))))
            (let () (_E1147311521_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx11416_)
      (let ((_e1141711430_ _stx11416_))
        (let ((_E1141911434_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1141711430_))))
          (let ((_E1141811467_
                 (lambda ()
                   (if (gx#stx-pair? _e1141711430_)
                       (let ((_e1142011438_ (gx#syntax-e _e1141711430_)))
                         (let ((_hd1142111441_ (##car _e1142011438_))
                               (_tl1142211443_ (##cdr _e1142011438_)))
                           (if (gx#stx-pair? _tl1142211443_)
                               (let ((_e1142311446_
                                      (gx#syntax-e _tl1142211443_)))
                                 (let ((_hd1142411449_ (##car _e1142311446_))
                                       (_tl1142511451_ (##cdr _e1142311446_)))
                                   (let ((_hd11454_ _hd1142411449_))
                                     (if (gx#stx-pair? _tl1142511451_)
                                         (let ((_e1142611456_
                                                (gx#syntax-e _tl1142511451_)))
                                           (let ((_hd1142711459_
                                                  (##car _e1142611456_))
                                                 (_tl1142811461_
                                                  (##cdr _e1142611456_)))
                                             (let ((_expr11464_
                                                    _hd1142711459_))
                                               (if (gx#stx-null?
                                                    _tl1142811461_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11454_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr11464_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1141911434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1141911434_)))))
                                         (_E1141911434_)))))
                               (_E1141911434_))))
                       (_E1141911434_)))))
            (let () (_E1141811467_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx11362_)
      (let ((_e1136311376_ _stx11362_))
        (let ((_E1136511380_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1136311376_))))
          (let ((_E1136411412_
                 (lambda ()
                   (if (gx#stx-pair? _e1136311376_)
                       (let ((_e1136611384_ (gx#syntax-e _e1136311376_)))
                         (let ((_hd1136711387_ (##car _e1136611384_))
                               (_tl1136811389_ (##cdr _e1136611384_)))
                           (if (gx#stx-pair? _tl1136811389_)
                               (let ((_e1136911392_
                                      (gx#syntax-e _tl1136811389_)))
                                 (let ((_hd1137011395_ (##car _e1136911392_))
                                       (_tl1137111397_ (##cdr _e1136911392_)))
                                   (let ((_hd11400_ _hd1137011395_))
                                     (if (gx#stx-pair? _tl1137111397_)
                                         (let ((_e1137211402_
                                                (gx#syntax-e _tl1137111397_)))
                                           (let ((_hd1137311405_
                                                  (##car _e1137211402_))
                                                 (_tl1137411407_
                                                  (##cdr _e1137211402_)))
                                             (let ((_alias-id11410_
                                                    _hd1137311405_))
                                               (if (gx#stx-null?
                                                    _tl1137411407_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11400_)
                           (cons (gx#core-quote-syntax__0 _alias-id11410_)
                                 '())))
               (_E1136511380_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1136511380_)))))
                                         (_E1136511380_)))))
                               (_E1136511380_))))
                       (_E1136511380_)))))
            (let () (_E1136411412_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx11308_)
      (let ((_e1130911322_ _stx11308_))
        (let ((_E1131111326_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1130911322_))))
          (let ((_E1131011358_
                 (lambda ()
                   (if (gx#stx-pair? _e1130911322_)
                       (let ((_e1131211330_ (gx#syntax-e _e1130911322_)))
                         (let ((_hd1131311333_ (##car _e1131211330_))
                               (_tl1131411335_ (##cdr _e1131211330_)))
                           (if (gx#stx-pair? _tl1131411335_)
                               (let ((_e1131511338_
                                      (gx#syntax-e _tl1131411335_)))
                                 (let ((_hd1131611341_ (##car _e1131511338_))
                                       (_tl1131711343_ (##cdr _e1131511338_)))
                                   (let ((_id11346_ _hd1131611341_))
                                     (if (gx#stx-pair? _tl1131711343_)
                                         (let ((_e1131811348_
                                                (gx#syntax-e _tl1131711343_)))
                                           (let ((_hd1131911351_
                                                  (##car _e1131811348_))
                                                 (_tl1132011353_
                                                  (##cdr _e1131811348_)))
                                             (let ((_binding-id11356_
                                                    _hd1131911351_))
                                               (if (gx#stx-null?
                                                    _tl1132011353_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11346_)
                           (cons (gx#core-quote-syntax__0 _binding-id11356_)
                                 '())))
               (_E1131111326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1131111326_)))))
                                         (_E1131111326_)))))
                               (_E1131111326_))))
                       (_E1131111326_)))))
            (let () (_E1131011358_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx11278_)
      (let ((_e1127911286_ _stx11278_))
        (let ((_E1128111290_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1127911286_))))
          (let ((_E1128011304_
                 (lambda ()
                   (if (gx#stx-pair? _e1127911286_)
                       (let ((_e1128211294_ (gx#syntax-e _e1127911286_)))
                         (let ((_hd1128311297_ (##car _e1128211294_))
                               (_tl1128411299_ (##cdr _e1128211294_)))
                           (let ((_decls11302_ _tl1128411299_))
                             (if '#t
                                 (cons '%#declare _decls11302_)
                                 (_E1128111290_)))))
                       (_E1128111290_)))))
            (let () (_E1128011304_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx11248_)
      (let ((_e1124911256_ _stx11248_))
        (let ((_E1125111260_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1124911256_))))
          (let ((_E1125011274_
                 (lambda ()
                   (if (gx#stx-pair? _e1124911256_)
                       (let ((_e1125211264_ (gx#syntax-e _e1124911256_)))
                         (let ((_hd1125311267_ (##car _e1125211264_))
                               (_tl1125411269_ (##cdr _e1125211264_)))
                           (let ((_clause11272_ _tl1125411269_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause11272_))
                                 (_E1125111260_)))))
                       (_E1125111260_)))))
            (let () (_E1125011274_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11205_)
      (let ((_e1120611216_ _stx11205_))
        (let ((_E1120811220_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1120611216_))))
          (let ((_E1120711244_
                 (lambda ()
                   (if (gx#stx-pair? _e1120611216_)
                       (let ((_e1120911224_ (gx#syntax-e _e1120611216_)))
                         (let ((_hd1121011227_ (##car _e1120911224_))
                               (_tl1121111229_ (##cdr _e1120911224_)))
                           (let ((_hd11232_ _hd1121011227_))
                             (if (gx#stx-pair? _tl1121111229_)
                                 (let ((_e1121211234_
                                        (gx#syntax-e _tl1121111229_)))
                                   (let ((_hd1121311237_ (##car _e1121211234_))
                                         (_tl1121411239_
                                          (##cdr _e1121211234_)))
                                     (let ((_body11242_ _hd1121311237_))
                                       (if (gx#stx-null? _tl1121411239_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd11232_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body11242_)
                                                           '()))
                                               (_E1120811220_))
                                           (_E1120811220_)))))
                                 (_E1120811220_)))))
                       (_E1120811220_)))))
            (let () (_E1120711244_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11175_)
      (let ((_e1117611183_ _stx11175_))
        (let ((_E1117811187_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1117611183_))))
          (let ((_E1117711201_
                 (lambda ()
                   (if (gx#stx-pair? _e1117611183_)
                       (let ((_e1117911191_ (gx#syntax-e _e1117611183_)))
                         (let ((_hd1118011194_ (##car _e1117911191_))
                               (_tl1118111196_ (##cdr _e1117911191_)))
                           (let ((_clauses11199_ _tl1118111196_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11199_))
                                 (_E1117811187_)))))
                       (_E1117811187_)))))
            (let () (_E1117711201_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11108
      (lambda (_stx11110_ _form11111_)
        (let ((_e1111211125_ _stx11110_))
          (let ((_E1111411129_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1111211125_))))
            (let ((_E1111311161_
                   (lambda ()
                     (if (gx#stx-pair? _e1111211125_)
                         (let ((_e1111511133_ (gx#syntax-e _e1111211125_)))
                           (let ((_hd1111611136_ (##car _e1111511133_))
                                 (_tl1111711138_ (##cdr _e1111511133_)))
                             (if (gx#stx-pair? _tl1111711138_)
                                 (let ((_e1111811141_
                                        (gx#syntax-e _tl1111711138_)))
                                   (let ((_hd1111911144_ (##car _e1111811141_))
                                         (_tl1112011146_
                                          (##cdr _e1111811141_)))
                                     (let ((_hd11149_ _hd1111911144_))
                                       (if (gx#stx-pair? _tl1112011146_)
                                           (let ((_e1112111151_
                                                  (gx#syntax-e
                                                   _tl1112011146_)))
                                             (let ((_hd1112211154_
                                                    (##car _e1112111151_))
                                                   (_tl1112311156_
                                                    (##cdr _e1112111151_)))
                                               (let ((_body11159_
                                                      _hd1112211154_))
                                                 (if (gx#stx-null?
                                                      _tl1112311156_)
                                                     (if '#t
                                                         (cons _form11111_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11149_)
                             (cons (gx#core-compile-top-syntax _body11159_)
                                   '())))
                 (_E1111411129_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1111411129_)))))
                                           (_E1111411129_)))))
                                 (_E1111411129_))))
                         (_E1111411129_)))))
              (let () (_E1111311161_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11168_)
          (let ((_form11170_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11108
             _stx11168_
             _form11170_))))
      (define gx#core-compile-top-let-values%
        (lambda _g11896_
          (let ((_g11895_ (length _g11896_)))
            (cond ((fx= _g11895_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g11896_))
                  ((fx= _g11895_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11108
                          _g11896_))
                  (else (error "No clause matching arguments" _g11896_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11107_)
      (gx#core-compile-top-let-values%__opt-lambda11108
       _stx11107_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11105_)
      (gx#core-compile-top-let-values%__opt-lambda11108
       _stx11105_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11064_)
      (let ((_e1106511075_ _stx11064_))
        (let ((_E1106711079_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1106511075_))))
          (let ((_E1106611101_
                 (lambda ()
                   (if (gx#stx-pair? _e1106511075_)
                       (let ((_e1106811083_ (gx#syntax-e _e1106511075_)))
                         (let ((_hd1106911086_ (##car _e1106811083_))
                               (_tl1107011088_ (##cdr _e1106811083_)))
                           (if (gx#stx-pair? _tl1107011088_)
                               (let ((_e1107111091_
                                      (gx#syntax-e _tl1107011088_)))
                                 (let ((_hd1107211094_ (##car _e1107111091_))
                                       (_tl1107311096_ (##cdr _e1107111091_)))
                                   (let ((_e11099_ _hd1107211094_))
                                     (if (gx#stx-null? _tl1107311096_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11099_)
                                                         '()))
                                             (_E1106711079_))
                                         (_E1106711079_)))))
                               (_E1106711079_))))
                       (_E1106711079_)))))
            (let () (_E1106611101_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11023_)
      (let ((_e1102411034_ _stx11023_))
        (let ((_E1102611038_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1102411034_))))
          (let ((_E1102511060_
                 (lambda ()
                   (if (gx#stx-pair? _e1102411034_)
                       (let ((_e1102711042_ (gx#syntax-e _e1102411034_)))
                         (let ((_hd1102811045_ (##car _e1102711042_))
                               (_tl1102911047_ (##cdr _e1102711042_)))
                           (if (gx#stx-pair? _tl1102911047_)
                               (let ((_e1103011050_
                                      (gx#syntax-e _tl1102911047_)))
                                 (let ((_hd1103111053_ (##car _e1103011050_))
                                       (_tl1103211055_ (##cdr _e1103011050_)))
                                   (let ((_e11058_ _hd1103111053_))
                                     (if (gx#stx-null? _tl1103211055_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11058_)
                                                         '()))
                                             (_E1102611038_))
                                         (_E1102611038_)))))
                               (_E1102611038_))))
                       (_E1102611038_)))))
            (let () (_E1102511060_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx10980_)
      (let ((_e1098110991_ _stx10980_))
        (let ((_E1098310995_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1098110991_))))
          (let ((_E1098211019_
                 (lambda ()
                   (if (gx#stx-pair? _e1098110991_)
                       (let ((_e1098410999_ (gx#syntax-e _e1098110991_)))
                         (let ((_hd1098511002_ (##car _e1098410999_))
                               (_tl1098611004_ (##cdr _e1098410999_)))
                           (if (gx#stx-pair? _tl1098611004_)
                               (let ((_e1098711007_
                                      (gx#syntax-e _tl1098611004_)))
                                 (let ((_hd1098811010_ (##car _e1098711007_))
                                       (_tl1098911012_ (##cdr _e1098711007_)))
                                   (let ((_rator11015_ _hd1098811010_))
                                     (let ((_args11017_ _tl1098911012_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11015_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11017_))
                                           (_E1098310995_))))))
                               (_E1098310995_))))
                       (_E1098310995_)))))
            (let () (_E1098211019_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx10913_)
      (let ((_e1091410930_ _stx10913_))
        (let ((_E1091610934_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1091410930_))))
          (let ((_E1091510976_
                 (lambda ()
                   (if (gx#stx-pair? _e1091410930_)
                       (let ((_e1091710938_ (gx#syntax-e _e1091410930_)))
                         (let ((_hd1091810941_ (##car _e1091710938_))
                               (_tl1091910943_ (##cdr _e1091710938_)))
                           (if (gx#stx-pair? _tl1091910943_)
                               (let ((_e1092010946_
                                      (gx#syntax-e _tl1091910943_)))
                                 (let ((_hd1092110949_ (##car _e1092010946_))
                                       (_tl1092210951_ (##cdr _e1092010946_)))
                                   (let ((_test10954_ _hd1092110949_))
                                     (if (gx#stx-pair? _tl1092210951_)
                                         (let ((_e1092310956_
                                                (gx#syntax-e _tl1092210951_)))
                                           (let ((_hd1092410959_
                                                  (##car _e1092310956_))
                                                 (_tl1092510961_
                                                  (##cdr _e1092310956_)))
                                             (let ((_K10964_ _hd1092410959_))
                                               (if (gx#stx-pair?
                                                    _tl1092510961_)
                                                   (let ((_e1092610966_
                                                          (gx#syntax-e
                                                           _tl1092510961_)))
                                                     (let ((_hd1092710969_
                                                            (##car _e1092610966_))
                                                           (_tl1092810971_
                                                            (##cdr _e1092610966_)))
                                                       (let ((_E10974_
                                                              _hd1092710969_))
                                                         (if (gx#stx-null?
                                                              _tl1092810971_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test10954_)
                                     (cons (gx#core-compile-top-syntax
                                            _K10964_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E10974_)
                                                 '()))))
                         (_E1091610934_))
                     (_E1091610934_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1091610934_)))))
                                         (_E1091610934_)))))
                               (_E1091610934_))))
                       (_E1091610934_)))))
            (let () (_E1091510976_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx10872_)
      (let ((_e1087310883_ _stx10872_))
        (let ((_E1087510887_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1087310883_))))
          (let ((_E1087410909_
                 (lambda ()
                   (if (gx#stx-pair? _e1087310883_)
                       (let ((_e1087610891_ (gx#syntax-e _e1087310883_)))
                         (let ((_hd1087710894_ (##car _e1087610891_))
                               (_tl1087810896_ (##cdr _e1087610891_)))
                           (if (gx#stx-pair? _tl1087810896_)
                               (let ((_e1087910899_
                                      (gx#syntax-e _tl1087810896_)))
                                 (let ((_hd1088010902_ (##car _e1087910899_))
                                       (_tl1088110904_ (##cdr _e1087910899_)))
                                   (let ((_id10907_ _hd1088010902_))
                                     (if (gx#stx-null? _tl1088110904_)
                                         (if (gx#identifier? _id10907_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id10907_)
                                                         '()))
                                             (_E1087510887_))
                                         (_E1087510887_)))))
                               (_E1087510887_))))
                       (_E1087510887_)))))
            (let () (_E1087410909_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx10818_)
      (let ((_e1081910832_ _stx10818_))
        (let ((_E1082110836_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1081910832_))))
          (let ((_E1082010868_
                 (lambda ()
                   (if (gx#stx-pair? _e1081910832_)
                       (let ((_e1082210840_ (gx#syntax-e _e1081910832_)))
                         (let ((_hd1082310843_ (##car _e1082210840_))
                               (_tl1082410845_ (##cdr _e1082210840_)))
                           (if (gx#stx-pair? _tl1082410845_)
                               (let ((_e1082510848_
                                      (gx#syntax-e _tl1082410845_)))
                                 (let ((_hd1082610851_ (##car _e1082510848_))
                                       (_tl1082710853_ (##cdr _e1082510848_)))
                                   (let ((_id10856_ _hd1082610851_))
                                     (if (gx#stx-pair? _tl1082710853_)
                                         (let ((_e1082810858_
                                                (gx#syntax-e _tl1082710853_)))
                                           (let ((_hd1082910861_
                                                  (##car _e1082810858_))
                                                 (_tl1083010863_
                                                  (##cdr _e1082810858_)))
                                             (let ((_expr10866_
                                                    _hd1082910861_))
                                               (if (gx#stx-null?
                                                    _tl1083010863_)
                                                   (if (gx#identifier?
                                                        _id10856_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10856_)
                           (cons (gx#core-compile-top-syntax _expr10866_)
                                 '())))
               (_E1082110836_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1082110836_)))))
                                         (_E1082110836_)))))
                               (_E1082110836_))))
                       (_E1082110836_)))))
            (let () (_E1082010868_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id10813_)
      (let ((_$e10815_ (gx#resolve-identifier__0 _id10813_)))
        (if _$e10815_
            (##structure-ref _$e10815_ '1 gx#binding::t '#f)
            _id10813_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd10811_)
      (if (gx#identifier? _hd10811_)
          (gx#core-compile-top-runtime-ref _hd10811_)
          '#f))))
