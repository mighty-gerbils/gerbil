(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1695292397)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx13121_)
        (letrec ((_expand-special13123_
                  (lambda (_hd13125_ _K13126_ _rest13127_ _r13128_)
                    (_K13126_
                     _rest13127_
                     (cons (gx#core-expand-top _hd13125_) _r13128_)))))
          (gx#core-expand-block__0 _stx13121_ _expand-special13123_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx12874_)
        (letrec ((_expand-special12876_
                  (lambda (_hd12996_ _K12997_ _rest12998_ _r12999_)
                    (let* ((_K13003_
                            (lambda (_e13001_)
                              (_K12997_ _rest12998_ (cons _e13001_ _r12999_))))
                           (_e1300413033_ _hd12996_)
                           (_E1302813037_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1300413033_)))
                           (_E1302413049_
                            (lambda ()
                              (if (gx#stx-pair? _e1300413033_)
                                  (let ((_e1302913041_
                                         (gx#syntax-e _e1300413033_)))
                                    (let ((_hd1303013044_
                                           (##car _e1302913041_))
                                          (_tl1303113046_
                                           (##cdr _e1302913041_)))
                                      (if (and (gx#identifier? _hd1303013044_)
                                               (gx#core-identifier=?
                                                _hd1303013044_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K13003_
                                               (gx#core-expand-define-runtime%
                                                _hd12996_))
                                              (_E1302813037_))
                                          (_E1302813037_))))
                                  (_E1302813037_))))
                           (_E1302013061_
                            (lambda ()
                              (if (gx#stx-pair? _e1300413033_)
                                  (let ((_e1302513053_
                                         (gx#syntax-e _e1300413033_)))
                                    (let ((_hd1302613056_
                                           (##car _e1302513053_))
                                          (_tl1302713058_
                                           (##cdr _e1302513053_)))
                                      (if (and (gx#identifier? _hd1302613056_)
                                               (gx#core-identifier=?
                                                _hd1302613056_
                                                '%#define-alias))
                                          (if '#t
                                              (_K13003_
                                               (gx#core-expand-define-alias%
                                                _hd12996_))
                                              (_E1302413049_))
                                          (_E1302413049_))))
                                  (_E1302413049_))))
                           (_E1301013073_
                            (lambda ()
                              (if (gx#stx-pair? _e1300413033_)
                                  (let ((_e1302113065_
                                         (gx#syntax-e _e1300413033_)))
                                    (let ((_hd1302213068_
                                           (##car _e1302113065_))
                                          (_tl1302313070_
                                           (##cdr _e1302113065_)))
                                      (if (and (gx#identifier? _hd1302213068_)
                                               (gx#core-identifier=?
                                                _hd1302213068_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K13003_
                                               (gx#core-expand-define-syntax%
                                                _hd12996_))
                                              (_E1302013061_))
                                          (_E1302013061_))))
                                  (_E1302013061_))))
                           (_E1300613105_
                            (lambda ()
                              (if (gx#stx-pair? _e1300413033_)
                                  (let ((_e1301113077_
                                         (gx#syntax-e _e1300413033_)))
                                    (let ((_hd1301213080_
                                           (##car _e1301113077_))
                                          (_tl1301313082_
                                           (##cdr _e1301113077_)))
                                      (if (and (gx#identifier? _hd1301213080_)
                                               (gx#core-identifier=?
                                                _hd1301213080_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1301313082_)
                                              (let ((_e1301413085_
                                                     (gx#syntax-e
                                                      _tl1301313082_)))
                                                (let ((_hd1301513088_
                                                       (##car _e1301413085_))
                                                      (_tl1301613090_
                                                       (##cdr _e1301413085_)))
                                                  (let ((_hd-bind13093_
                                                         _hd1301513088_))
                                                    (if (gx#stx-pair?
                                                         _tl1301613090_)
                                                        (let ((_e1301713095_
                                                               (gx#syntax-e
                                                                _tl1301613090_)))
                                                          (let ((_hd1301813098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1301713095_))
                        (_tl1301913100_ (##cdr _e1301713095_)))
                    (let ((_expr13103_ _hd1301813098_))
                      (if (gx#stx-null? _tl1301913100_)
                          (if (gx#core-bind-values? _hd-bind13093_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind13093_)
                                (_K13003_ _hd12996_))
                              (_E1301013073_))
                          (_E1301013073_)))))
                (_E1301013073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1301013073_))
                                          (_E1301013073_))))
                                  (_E1301013073_))))
                           (_E1300513117_
                            (lambda ()
                              (if (gx#stx-pair? _e1300413033_)
                                  (let ((_e1300713109_
                                         (gx#syntax-e _e1300413033_)))
                                    (let ((_hd1300813112_
                                           (##car _e1300713109_))
                                          (_tl1300913114_
                                           (##cdr _e1300713109_)))
                                      (if (and (gx#identifier? _hd1300813112_)
                                               (gx#core-identifier=?
                                                _hd1300813112_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K13003_
                                               (gx#core-expand-begin-syntax%
                                                _hd12996_))
                                              (_E1300613105_))
                                          (_E1300613105_))))
                                  (_E1300613105_)))))
                      (_E1300513117_))))
                 (_eval-body12877_
                  (lambda (_rbody12885_)
                    (let _lp12887_ ((_rest12889_ _rbody12885_)
                                    (_body12890_ '())
                                    (_ebody12891_ '()))
                      (let* ((_rest1289212900_ _rest12889_)
                             (_else1289412908_
                              (lambda ()
                                (values _body12890_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody12891_)
                                          (gx#stx-source _stx12874_))))))
                             (_K1289612984_
                              (lambda (_rest12911_ _hd12912_)
                                (let* ((_e1291312930_ _hd12912_)
                                       (_E1292512934_
                                        (lambda ()
                                          (_lp12887_
                                           _rest12911_
                                           (cons _hd12912_ _body12890_)
                                           (cons _hd12912_ _ebody12891_))))
                                       (_E1291512946_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1291312930_)
                                              (let ((_e1292612938_
                                                     (gx#syntax-e
                                                      _e1291312930_)))
                                                (let ((_hd1292712941_
                                                       (##car _e1292612938_))
                                                      (_tl1292812943_
                                                       (##cdr _e1292612938_)))
                                                  (if (and (gx#identifier?
                                                            _hd1292712941_)
                                                           (gx#core-identifier=?
                                                            _hd1292712941_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp12887_
                                                           _rest12911_
                                                           (cons _hd12912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body12890_)
                   _ebody12891_)
                  (_E1292512934_))
              (_E1292512934_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1292512934_))))
                                       (_E1291412980_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1291312930_)
                                              (let ((_e1291612950_
                                                     (gx#syntax-e
                                                      _e1291312930_)))
                                                (let ((_hd1291712953_
                                                       (##car _e1291612950_))
                                                      (_tl1291812955_
                                                       (##cdr _e1291612950_)))
                                                  (if (and (gx#identifier?
                                                            _hd1291712953_)
                                                           (gx#core-identifier=?
                                                            _hd1291712953_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl1291812955_)
                                                          (let ((_e1291912958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1291812955_)))
                    (let ((_hd1292012961_ (##car _e1291912958_))
                          (_tl1292112963_ (##cdr _e1291912958_)))
                      (let ((_hd-bind12966_ _hd1292012961_))
                        (if (gx#stx-pair? _tl1292112963_)
                            (let ((_e1292212968_ (gx#syntax-e _tl1292112963_)))
                              (let ((_hd1292312971_ (##car _e1292212968_))
                                    (_tl1292412973_ (##cdr _e1292212968_)))
                                (let ((_expr12976_ _hd1292312971_))
                                  (if (gx#stx-null? _tl1292412973_)
                                      (if '#t
                                          (let ((_ehd12978_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind12966_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr12976_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd12912_))))
                                            (_lp12887_
                                             _rest12911_
                                             (cons _ehd12978_ _body12890_)
                                             (cons _ehd12978_ _ebody12891_)))
                                          (_E1291512946_))
                                      (_E1291512946_)))))
                            (_E1291512946_)))))
                  (_E1291512946_))
              (_E1291512946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1291512946_)))))
                                  (_E1291412980_)))))
                        (if (##pair? _rest1289212900_)
                            (let ((_hd1289712987_ (##car _rest1289212900_))
                                  (_tl1289812989_ (##cdr _rest1289212900_)))
                              (let* ((_hd12992_ _hd1289712987_)
                                     (_rest12994_ _tl1289812989_))
                                (_K1289612984_ _rest12994_ _hd12992_)))
                            (_else1289412908_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody12880_
                     (gx#core-expand-block__1
                      _stx12874_
                      _expand-special12876_
                      '#f))
                    (_g13144_ (_eval-body12877_ _rbody12880_)))
               (begin
                 (let ((_g13145_
                        (if (##values? _g13144_)
                            (##vector-length _g13144_)
                            1)))
                   (if (not (##fx= _g13145_ 2))
                       (error "Context expects 2 values" _g13145_)))
                 (let ((_expanded-body12882_ (##vector-ref _g13144_ 0))
                       (_value12883_ (##vector-ref _g13144_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body12882_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value12883_ '())))
                    (gx#stx-source _stx12874_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx12844_)
        (let* ((_e1284512852_ _stx12844_)
               (_E1284712856_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1284512852_)))
               (_E1284612870_
                (lambda ()
                  (if (gx#stx-pair? _e1284512852_)
                      (let ((_e1284812860_ (gx#syntax-e _e1284512852_)))
                        (let ((_hd1284912863_ (##car _e1284812860_))
                              (_tl1285012865_ (##cdr _e1284812860_)))
                          (let ((_body12868_ _tl1285012865_))
                            (if (gx#stx-list? _body12868_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body12868_)
                                 (gx#stx-source _stx12844_))
                                (_E1284712856_)))))
                      (_E1284712856_)))))
          (_E1284612870_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx12842_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx12842_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx12788_)
        (let* ((_e1278912802_ _stx12788_)
               (_E1279112806_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1278912802_)))
               (_E1279012838_
                (lambda ()
                  (if (gx#stx-pair? _e1278912802_)
                      (let ((_e1279212810_ (gx#syntax-e _e1278912802_)))
                        (let ((_hd1279312813_ (##car _e1279212810_))
                              (_tl1279412815_ (##cdr _e1279212810_)))
                          (if (gx#stx-pair? _tl1279412815_)
                              (let ((_e1279512818_
                                     (gx#syntax-e _tl1279412815_)))
                                (let ((_hd1279612821_ (##car _e1279512818_))
                                      (_tl1279712823_ (##cdr _e1279512818_)))
                                  (let ((_ann12826_ _hd1279612821_))
                                    (if (gx#stx-pair? _tl1279712823_)
                                        (let ((_e1279812828_
                                               (gx#syntax-e _tl1279712823_)))
                                          (let ((_hd1279912831_
                                                 (##car _e1279812828_))
                                                (_tl1280012833_
                                                 (##cdr _e1279812828_)))
                                            (let ((_expr12836_ _hd1279912831_))
                                              (if (gx#stx-null? _tl1280012833_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann12826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr12836_) '())))
               (gx#stx-source _stx12788_))
              (_E1279112806_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1279112806_)))))
                                        (_E1279112806_)))))
                              (_E1279112806_))))
                      (_E1279112806_)))))
          (_E1279012838_))))
    (define gx#core-expand-local-block
      (lambda (_stx12512_ _body12513_)
        (letrec ((_expand-special12515_
                  (lambda (_hd12783_ _K12784_ _rest12785_ _r12786_)
                    (_K12784_
                     '()
                     (cons (_expand-internal12516_ _hd12783_ _rest12785_)
                           _r12786_))))
                 (_expand-internal12516_
                  (lambda (_hd12779_ _rest12780_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal12518_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd12779_ _rest12780_))
                          (gx#stx-source _stx12512_))
                         _expand-internal-special12517_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj13138 (make-object gx#local-context::t '5)))
                       (gx#local-context:::init!__0 __obj13138)
                       __obj13138))))
                 (_expand-internal-special12517_
                  (lambda (_hd12674_ _K12675_ _rest12676_ _r12677_)
                    (let* ((_e1267812703_ _hd12674_)
                           (_E1269812707_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1267812703_)))
                           (_E1269412719_
                            (lambda ()
                              (if (gx#stx-pair? _e1267812703_)
                                  (let ((_e1269912711_
                                         (gx#syntax-e _e1267812703_)))
                                    (let ((_hd1270012714_
                                           (##car _e1269912711_))
                                          (_tl1270112716_
                                           (##cdr _e1269912711_)))
                                      (if (and (gx#identifier? _hd1270012714_)
                                               (gx#core-identifier=?
                                                _hd1270012714_
                                                '%#declare))
                                          (if '#t
                                              (_K12675_
                                               _rest12676_
                                               (cons (gx#core-expand-declare%
                                                      _hd12674_)
                                                     _r12677_))
                                              (_E1269812707_))
                                          (_E1269812707_))))
                                  (_E1269812707_))))
                           (_E1269012731_
                            (lambda ()
                              (if (gx#stx-pair? _e1267812703_)
                                  (let ((_e1269512723_
                                         (gx#syntax-e _e1267812703_)))
                                    (let ((_hd1269612726_
                                           (##car _e1269512723_))
                                          (_tl1269712728_
                                           (##cdr _e1269512723_)))
                                      (if (and (gx#identifier? _hd1269612726_)
                                               (gx#core-identifier=?
                                                _hd1269612726_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd12674_)
                                                (_K12675_
                                                 _rest12676_
                                                 _r12677_))
                                              (_E1269412719_))
                                          (_E1269412719_))))
                                  (_E1269412719_))))
                           (_E1268012743_
                            (lambda ()
                              (if (gx#stx-pair? _e1267812703_)
                                  (let ((_e1269112735_
                                         (gx#syntax-e _e1267812703_)))
                                    (let ((_hd1269212738_
                                           (##car _e1269112735_))
                                          (_tl1269312740_
                                           (##cdr _e1269112735_)))
                                      (if (and (gx#identifier? _hd1269212738_)
                                               (gx#core-identifier=?
                                                _hd1269212738_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd12674_)
                                                (_K12675_
                                                 _rest12676_
                                                 _r12677_))
                                              (_E1269012731_))
                                          (_E1269012731_))))
                                  (_E1269012731_))))
                           (_E1267912775_
                            (lambda ()
                              (if (gx#stx-pair? _e1267812703_)
                                  (let ((_e1268112747_
                                         (gx#syntax-e _e1267812703_)))
                                    (let ((_hd1268212750_
                                           (##car _e1268112747_))
                                          (_tl1268312752_
                                           (##cdr _e1268112747_)))
                                      (if (and (gx#identifier? _hd1268212750_)
                                               (gx#core-identifier=?
                                                _hd1268212750_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1268312752_)
                                              (let ((_e1268412755_
                                                     (gx#syntax-e
                                                      _tl1268312752_)))
                                                (let ((_hd1268512758_
                                                       (##car _e1268412755_))
                                                      (_tl1268612760_
                                                       (##cdr _e1268412755_)))
                                                  (let ((_hd-bind12763_
                                                         _hd1268512758_))
                                                    (if (gx#stx-pair?
                                                         _tl1268612760_)
                                                        (let ((_e1268712765_
                                                               (gx#syntax-e
                                                                _tl1268612760_)))
                                                          (let ((_hd1268812768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1268712765_))
                        (_tl1268912770_ (##cdr _e1268712765_)))
                    (let ((_expr12773_ _hd1268812768_))
                      (if (gx#stx-null? _tl1268912770_)
                          (if (gx#core-bind-values? _hd-bind12763_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind12763_)
                                (_K12675_
                                 _rest12676_
                                 (cons _hd12674_ _r12677_)))
                              (_E1268012743_))
                          (_E1268012743_)))))
                (_E1268012743_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1268012743_))
                                          (_E1268012743_))))
                                  (_E1268012743_)))))
                      (_E1267912775_))))
                 (_wrap-internal12518_
                  (lambda (_rbody12520_)
                    (let _lp12522_ ((_rest12524_ _rbody12520_)
                                    (_decls12525_ '())
                                    (_bind12526_ '())
                                    (_body12527_ '()))
                      (let* ((_e1252812535_ _rest12524_)
                             (_E1253012584_
                              (lambda ()
                                (let* ((_body12579_
                                        (let* ((_body1253812548_ _body12527_)
                                               (_else1254112556_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body12527_)
                                                   (gx#stx-source
                                                    _stx12512_)))))
                                          (let ((_K1254612576_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _stx12512_)))
                                                (_K1254312562_
                                                 (lambda (_expr12560_)
                                                   _expr12560_)))
                                            (let ((_try-match1254012572_
                                                   (lambda ()
                                                     (if (##pair? _body1253812548_)
                                                         (let ((_tl1254512567_
                                                                (##cdr _body1253812548_))
                                                               (_hd1254412565_
                                                                (##car _body1253812548_)))
                                                           (if (##null? _tl1254512567_)
                                                               (let ((_expr12570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd1254412565_))
                         (_K1254312562_ _expr12570_))
                       (_else1254112556_)))
                 (_else1254112556_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body1253812548_)
                                                  (_K1254612576_)
                                                  (_try-match1254012572_))))))
                                       (_body12581_
                                        (if (null? _bind12526_)
                                            _body12579_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind12526_
                                                         (cons _body12579_
                                                               '())))
                                             (gx#stx-source _stx12512_)))))
                                  (if (null? _decls12525_)
                                      _body12581_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls12525_
                                                   (cons _body12581_ '())))
                                       (gx#stx-source _stx12512_))))))
                             (_E1252912670_
                              (lambda ()
                                (if (gx#stx-pair? _e1252812535_)
                                    (let ((_e1253112588_
                                           (gx#syntax-e _e1252812535_)))
                                      (let ((_hd1253212591_
                                             (##car _e1253112588_))
                                            (_tl1253312593_
                                             (##cdr _e1253112588_)))
                                        (let* ((_hd12596_ _hd1253212591_)
                                               (_rest12598_ _tl1253312593_))
                                          (if '#t
                                              (let* ((_e1259912616_ _hd12596_)
                                                     (_E1261112620_
                                                      (lambda ()
                                                        (if (null? _bind12526_)
                                                            (_lp12522_
                                                             _rest12598_
                                                             _decls12525_
                                                             _bind12526_
                                                             (cons _hd12596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body12527_))
                    (_lp12522_
                     _rest12598_
                     _decls12525_
                     (cons (cons '#f (cons _hd12596_ '())) _bind12526_)
                     _body12527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1260112634_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1259912616_)
                                                            (let ((_e1261212624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1259912616_)))
                      (let ((_hd1261312627_ (##car _e1261212624_))
                            (_tl1261412629_ (##cdr _e1261212624_)))
                        (if (and (gx#identifier? _hd1261312627_)
                                 (gx#core-identifier=?
                                  _hd1261312627_
                                  '%#declare))
                            (let ((_xdecls12632_ _tl1261412629_))
                              (if '#t
                                  (_lp12522_
                                   _rest12598_
                                   (gx#stx-foldr
                                    cons
                                    _decls12525_
                                    _xdecls12632_)
                                   _bind12526_
                                   _body12527_)
                                  (_E1261112620_)))
                            (_E1261112620_))))
                    (_E1261112620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1260012666_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1259912616_)
                                                            (let ((_e1260212638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1259912616_)))
                      (let ((_hd1260312641_ (##car _e1260212638_))
                            (_tl1260412643_ (##cdr _e1260212638_)))
                        (if (and (gx#identifier? _hd1260312641_)
                                 (gx#core-identifier=?
                                  _hd1260312641_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl1260412643_)
                                (let ((_e1260512646_
                                       (gx#syntax-e _tl1260412643_)))
                                  (let ((_hd1260612649_ (##car _e1260512646_))
                                        (_tl1260712651_ (##cdr _e1260512646_)))
                                    (let ((_hd-bind12654_ _hd1260612649_))
                                      (if (gx#stx-pair? _tl1260712651_)
                                          (let ((_e1260812656_
                                                 (gx#syntax-e _tl1260712651_)))
                                            (let ((_hd1260912659_
                                                   (##car _e1260812656_))
                                                  (_tl1261012661_
                                                   (##cdr _e1260812656_)))
                                              (let ((_expr12664_
                                                     _hd1260912659_))
                                                (if (gx#stx-null?
                                                     _tl1261012661_)
                                                    (if '#t
                                                        (_lp12522_
                                                         _rest12598_
                                                         _decls12525_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind12654_)
                             (cons (gx#core-expand-expression _expr12664_)
                                   '()))
                       _bind12526_)
                 _body12527_)
                (_E1260112634_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1260112634_)))))
                                          (_E1260112634_)))))
                                (_E1260112634_))
                            (_E1260112634_))))
                    (_E1260112634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1260012666_))
                                              (_E1253012584_)))))
                                    (_E1253012584_)))))
                        (_E1252912670_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body12513_)
            (gx#stx-source _stx12512_))
           _expand-special12515_))))
    (define gx#core-expand-declare%
      (lambda (_stx12450_)
        (let* ((_e1245112458_ _stx12450_)
               (_E1245312462_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1245112458_)))
               (_E1245212508_
                (lambda ()
                  (if (gx#stx-pair? _e1245112458_)
                      (let ((_e1245412466_ (gx#syntax-e _e1245112458_)))
                        (let ((_hd1245512469_ (##car _e1245412466_))
                              (_tl1245612471_ (##cdr _e1245412466_)))
                          (let ((_body12474_ _tl1245612471_))
                            (if (gx#stx-list? _body12474_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl12476_)
                                     (let* ((_e1247712484_ _decl12476_)
                                            (_E1247912488_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1247712484_)))
                                            (_E1247812504_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1247712484_)
                                                   (let ((_e1248012492_
                                                          (gx#syntax-e
                                                           _e1247712484_)))
                                                     (let ((_hd1248112495_
                                                            (##car _e1248012492_))
                                                           (_tl1248212497_
                                                            (##cdr _e1248012492_)))
                                                       (let* ((_head12500_
                                                               _hd1248112495_)
                                                              (_args12502_
                                                               _tl1248212497_))
                                                         (if (gx#stx-list?
                                                              _args12502_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl12476_)
                                                             (_E1247912488_)))))
                                                   (_E1247912488_)))))
                                       (_E1247812504_)))
                                   _body12474_))
                                 (gx#stx-source _stx12450_))
                                (_E1245312462_)))))
                      (_E1245312462_)))))
          (_E1245212508_))))
    (define gx#core-expand-extern%
      (lambda (_stx12354_)
        (let* ((_e1235512362_ _stx12354_)
               (_E1235712366_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1235512362_)))
               (_E1235612446_
                (lambda ()
                  (if (gx#stx-pair? _e1235512362_)
                      (let ((_e1235812370_ (gx#syntax-e _e1235512362_)))
                        (let ((_hd1235912373_ (##car _e1235812370_))
                              (_tl1236012375_ (##cdr _e1235812370_)))
                          (let ((_body12378_ _tl1236012375_))
                            (if '#t
                                (let _lp12380_ ((_rest12382_ _body12378_)
                                                (_r12383_ '()))
                                  (let* ((_e1238412398_ _rest12382_)
                                         (_E1239612402_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _stx12354_)))
                                         (_E1238612406_
                                          (lambda ()
                                            (if (gx#stx-null? _e1238412398_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r12383_))
                                                     (gx#stx-source
                                                      _stx12354_))
                                                    (_E1239612402_))
                                                (_E1239612402_))))
                                         (_E1238512442_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1238412398_)
                                                (let ((_e1238712410_
                                                       (gx#syntax-e
                                                        _e1238412398_)))
                                                  (let ((_hd1238812413_
                                                         (##car _e1238712410_))
                                                        (_tl1238912415_
                                                         (##cdr _e1238712410_)))
                                                    (if (gx#stx-pair?
                                                         _hd1238812413_)
                                                        (let ((_e1239012418_
                                                               (gx#syntax-e
                                                                _hd1238812413_)))
                                                          (let ((_hd1239112421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1239012418_))
                        (_tl1239212423_ (##cdr _e1239012418_)))
                    (let ((_id12426_ _hd1239112421_))
                      (if (gx#stx-pair? _tl1239212423_)
                          (let ((_e1239312428_ (gx#syntax-e _tl1239212423_)))
                            (let ((_hd1239412431_ (##car _e1239312428_))
                                  (_tl1239512433_ (##cdr _e1239312428_)))
                              (let ((_eid12436_ _hd1239412431_))
                                (if (gx#stx-null? _tl1239512433_)
                                    (let ((_rest12438_ _tl1238912415_))
                                      (if (and (gx#identifier? _id12426_)
                                               (gx#identifier? _eid12436_))
                                          (let ((_eid12440_
                                                 (gx#stx-e _eid12436_)))
                                            (gx#core-bind-extern!__0
                                             _id12426_
                                             _eid12440_)
                                            (_lp12380_
                                             _rest12438_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id12426_)
                                                         (cons _eid12440_ '()))
                                                   _r12383_)))
                                          (_E1238612406_)))
                                    (_E1238612406_)))))
                          (_E1238612406_)))))
                (_E1238612406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1238612406_)))))
                                    (_E1238512442_)))
                                (_E1235712366_)))))
                      (_E1235712366_)))))
          (_E1235612446_))))
    (define gx#core-expand-define-values%
      (lambda (_stx12300_)
        (let* ((_e1230112314_ _stx12300_)
               (_E1230312318_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1230112314_)))
               (_E1230212350_
                (lambda ()
                  (if (gx#stx-pair? _e1230112314_)
                      (let ((_e1230412322_ (gx#syntax-e _e1230112314_)))
                        (let ((_hd1230512325_ (##car _e1230412322_))
                              (_tl1230612327_ (##cdr _e1230412322_)))
                          (if (gx#stx-pair? _tl1230612327_)
                              (let ((_e1230712330_
                                     (gx#syntax-e _tl1230612327_)))
                                (let ((_hd1230812333_ (##car _e1230712330_))
                                      (_tl1230912335_ (##cdr _e1230712330_)))
                                  (let ((_hd12338_ _hd1230812333_))
                                    (if (gx#stx-pair? _tl1230912335_)
                                        (let ((_e1231012340_
                                               (gx#syntax-e _tl1230912335_)))
                                          (let ((_hd1231112343_
                                                 (##car _e1231012340_))
                                                (_tl1231212345_
                                                 (##cdr _e1231012340_)))
                                            (let ((_expr12348_ _hd1231112343_))
                                              (if (gx#stx-null? _tl1231212345_)
                                                  (if (gx#core-bind-values?
                                                       _hd12338_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd12338_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd12338_)
                             (cons (gx#core-expand-expression _expr12348_)
                                   '())))
                 (gx#stx-source _stx12300_)))
              (_E1230312318_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1230312318_)))))
                                        (_E1230312318_)))))
                              (_E1230312318_))))
                      (_E1230312318_)))))
          (_E1230212350_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx12244_)
        (let* ((_e1224512258_ _stx12244_)
               (_E1224712262_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1224512258_)))
               (_E1224612296_
                (lambda ()
                  (if (gx#stx-pair? _e1224512258_)
                      (let ((_e1224812266_ (gx#syntax-e _e1224512258_)))
                        (let ((_hd1224912269_ (##car _e1224812266_))
                              (_tl1225012271_ (##cdr _e1224812266_)))
                          (if (gx#stx-pair? _tl1225012271_)
                              (let ((_e1225112274_
                                     (gx#syntax-e _tl1225012271_)))
                                (let ((_hd1225212277_ (##car _e1225112274_))
                                      (_tl1225312279_ (##cdr _e1225112274_)))
                                  (let ((_id12282_ _hd1225212277_))
                                    (if (gx#stx-pair? _tl1225312279_)
                                        (let ((_e1225412284_
                                               (gx#syntax-e _tl1225312279_)))
                                          (let ((_hd1225512287_
                                                 (##car _e1225412284_))
                                                (_tl1225612289_
                                                 (##cdr _e1225412284_)))
                                            (let ((_binding-id12292_
                                                   _hd1225512287_))
                                              (if (gx#stx-null? _tl1225612289_)
                                                  (if (and (gx#identifier?
                                                            _id12282_)
                                                           (gx#identifier?
                                                            _binding-id12292_))
                                                      (let ((_eid12294_
                                                             (gx#stx-e
                                                              _binding-id12292_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id12282_
                                                         _eid12294_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id12282_)
                             (cons _eid12294_ '())))))
              (_E1224712262_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1224712262_)))))
                                        (_E1224712262_)))))
                              (_E1224712262_))))
                      (_E1224712262_)))))
          (_E1224612296_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx12187_)
        (let* ((_e1218812201_ _stx12187_)
               (_E1219012205_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1218812201_)))
               (_E1218912240_
                (lambda ()
                  (if (gx#stx-pair? _e1218812201_)
                      (let ((_e1219112209_ (gx#syntax-e _e1218812201_)))
                        (let ((_hd1219212212_ (##car _e1219112209_))
                              (_tl1219312214_ (##cdr _e1219112209_)))
                          (if (gx#stx-pair? _tl1219312214_)
                              (let ((_e1219412217_
                                     (gx#syntax-e _tl1219312214_)))
                                (let ((_hd1219512220_ (##car _e1219412217_))
                                      (_tl1219612222_ (##cdr _e1219412217_)))
                                  (let ((_id12225_ _hd1219512220_))
                                    (if (gx#stx-pair? _tl1219612222_)
                                        (let ((_e1219712227_
                                               (gx#syntax-e _tl1219612222_)))
                                          (let ((_hd1219812230_
                                                 (##car _e1219712227_))
                                                (_tl1219912232_
                                                 (##cdr _e1219712227_)))
                                            (let ((_expr12235_ _hd1219812230_))
                                              (if (gx#stx-null? _tl1219912232_)
                                                  (if (gx#identifier?
                                                       _id12225_)
                                                      (let ((_g13146_
                                                             (gx#core-expand-expression+1
                                                              _expr12235_)))
                                                        (begin
                                                          (let ((_g13147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g13146_)
                             (##vector-length _g13146_)
                             1)))
                    (if (not (##fx= _g13147_ 2))
                        (error "Context expects 2 values" _g13147_)))
                  (let ((_e-stx12237_ (##vector-ref _g13146_ 0))
                        (_e12238_ (##vector-ref _g13146_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id12225_ _e12238_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id12225_)
                                   (cons _e-stx12237_ '())))
                       (gx#stx-source _stx12187_))))))
              (_E1219012205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1219012205_)))))
                                        (_E1219012205_)))))
                              (_E1219012205_))))
                      (_E1219012205_)))))
          (_E1218912240_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx12131_)
        (let* ((_e1213212145_ _stx12131_)
               (_E1213412149_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1213212145_)))
               (_E1213312183_
                (lambda ()
                  (if (gx#stx-pair? _e1213212145_)
                      (let ((_e1213512153_ (gx#syntax-e _e1213212145_)))
                        (let ((_hd1213612156_ (##car _e1213512153_))
                              (_tl1213712158_ (##cdr _e1213512153_)))
                          (if (gx#stx-pair? _tl1213712158_)
                              (let ((_e1213812161_
                                     (gx#syntax-e _tl1213712158_)))
                                (let ((_hd1213912164_ (##car _e1213812161_))
                                      (_tl1214012166_ (##cdr _e1213812161_)))
                                  (let ((_id12169_ _hd1213912164_))
                                    (if (gx#stx-pair? _tl1214012166_)
                                        (let ((_e1214112171_
                                               (gx#syntax-e _tl1214012166_)))
                                          (let ((_hd1214212174_
                                                 (##car _e1214112171_))
                                                (_tl1214312176_
                                                 (##cdr _e1214112171_)))
                                            (let ((_alias-id12179_
                                                   _hd1214212174_))
                                              (if (gx#stx-null? _tl1214312176_)
                                                  (if (and (gx#identifier?
                                                            _id12169_)
                                                           (gx#identifier?
                                                            _alias-id12179_))
                                                      (let ((_alias-id12181_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id12179_)))
                                                        (gx#core-bind-alias!__0
                                                         _id12169_
                                                         _alias-id12181_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id12169_)
                             (cons _alias-id12181_ '())))))
              (_E1213412149_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1213412149_)))))
                                        (_E1213412149_)))))
                              (_E1213412149_))))
                      (_E1213412149_)))))
          (_E1213312183_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx12074_ _wrap?12075_)
        (let* ((_e1207612086_ _stx12074_)
               (_E1207812090_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1207612086_)))
               (_E1207712117_
                (lambda ()
                  (if (gx#stx-pair? _e1207612086_)
                      (let ((_e1207912094_ (gx#syntax-e _e1207612086_)))
                        (let ((_hd1208012097_ (##car _e1207912094_))
                              (_tl1208112099_ (##cdr _e1207912094_)))
                          (if (gx#stx-pair? _tl1208112099_)
                              (let ((_e1208212102_
                                     (gx#syntax-e _tl1208112099_)))
                                (let ((_hd1208312105_ (##car _e1208212102_))
                                      (_tl1208412107_ (##cdr _e1208212102_)))
                                  (let* ((_hd12110_ _hd1208312105_)
                                         (_body12112_ _tl1208412107_))
                                    (if (gx#core-bind-values? _hd12110_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd12110_)
                                           (let ((_body12115_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd12110_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx12074_
                                                               _body12112_)
                                                              '()))))
                                             (if _wrap?12075_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body12115_)
                                                  (gx#stx-source _stx12074_))
                                                 _body12115_)))
                                         gx#current-expander-context
                                         (let ((__obj13139
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj13139)
                                           __obj13139))
                                        (_E1207812090_)))))
                              (_E1207812090_))))
                      (_E1207812090_)))))
          (_E1207712117_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx12124_)
        (let ((_wrap?12126_ '#t))
          (gx#core-expand-lambda%__% _stx12124_ _wrap?12126_))))
    (define gx#core-expand-lambda%
      (lambda _g13149_
        (let ((_g13148_ (##length _g13149_)))
          (cond ((##fx= _g13148_ 1)
                 (apply (lambda (_stx12124_)
                          (gx#core-expand-lambda%__0 _stx12124_))
                        _g13149_))
                ((##fx= _g13148_ 2)
                 (apply (lambda (_stx12128_ _wrap?12129_)
                          (gx#core-expand-lambda%__% _stx12128_ _wrap?12129_))
                        _g13149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g13149_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx12038_)
        (let* ((_e1203912046_ _stx12038_)
               (_E1204112050_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1203912046_)))
               (_E1204012069_
                (lambda ()
                  (if (gx#stx-pair? _e1203912046_)
                      (let ((_e1204212054_ (gx#syntax-e _e1203912046_)))
                        (let ((_hd1204312057_ (##car _e1204212054_))
                              (_tl1204412059_ (##cdr _e1204212054_)))
                          (let ((_clauses12062_ _tl1204412059_))
                            (if (gx#stx-list? _clauses12062_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause12064_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause12064_)
                                       (let ((_$e12066_
                                              (gx#stx-source _clause12064_)))
                                         (if _$e12066_
                                             _$e12066_
                                             (gx#stx-source _stx12038_))))
                                      '#f))
                                   _clauses12062_))
                                 (gx#stx-source _stx12038_))
                                (_E1204112050_)))))
                      (_E1204112050_)))))
          (_E1204012069_))))
    (define gx#core-expand-let-values%
      (lambda (_stx11992_)
        (let* ((_e1199312003_ _stx11992_)
               (_E1199512007_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1199312003_)))
               (_E1199412034_
                (lambda ()
                  (if (gx#stx-pair? _e1199312003_)
                      (let ((_e1199612011_ (gx#syntax-e _e1199312003_)))
                        (let ((_hd1199712014_ (##car _e1199612011_))
                              (_tl1199812016_ (##cdr _e1199612011_)))
                          (if (gx#stx-pair? _tl1199812016_)
                              (let ((_e1199912019_
                                     (gx#syntax-e _tl1199812016_)))
                                (let ((_hd1200012022_ (##car _e1199912019_))
                                      (_tl1200112024_ (##cdr _e1199912019_)))
                                  (let* ((_hd12027_ _hd1200012022_)
                                         (_body12029_ _tl1200112024_))
                                    (if (gx#core-expand-let-bind? _hd12027_)
                                        (let ((_expressions12031_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd12027_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd12027_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd12027_
                                                           _expressions12031_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11992_
                         _body12029_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx11992_)))
                                           gx#current-expander-context
                                           (let ((__obj13140
                                                  (make-object
                                                   gx#local-context::t
                                                   '5)))
                                             (gx#local-context:::init!__0
                                              __obj13140)
                                             __obj13140)))
                                        (_E1199512007_)))))
                              (_E1199512007_))))
                      (_E1199512007_)))))
          (_E1199412034_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx11937_ _form11938_)
        (let* ((_e1193911949_ _stx11937_)
               (_E1194111953_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1193911949_)))
               (_E1194011978_
                (lambda ()
                  (if (gx#stx-pair? _e1193911949_)
                      (let ((_e1194211957_ (gx#syntax-e _e1193911949_)))
                        (let ((_hd1194311960_ (##car _e1194211957_))
                              (_tl1194411962_ (##cdr _e1194211957_)))
                          (if (gx#stx-pair? _tl1194411962_)
                              (let ((_e1194511965_
                                     (gx#syntax-e _tl1194411962_)))
                                (let ((_hd1194611968_ (##car _e1194511965_))
                                      (_tl1194711970_ (##cdr _e1194511965_)))
                                  (let* ((_hd11973_ _hd1194611968_)
                                         (_body11975_ _tl1194711970_))
                                    (if (gx#core-expand-let-bind? _hd11973_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd11973_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form11938_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd11973_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd11973_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx11937_
                                                               _body11975_)
                                                              '())))
                                            (gx#stx-source _stx11937_)))
                                         gx#current-expander-context
                                         (let ((__obj13141
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj13141)
                                           __obj13141))
                                        (_E1194111953_)))))
                              (_E1194111953_))))
                      (_E1194111953_)))))
          (_E1194011978_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx11985_)
        (let ((_form11987_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx11985_ _form11987_))))
    (define gx#core-expand-letrec-values%
      (lambda _g13151_
        (let ((_g13150_ (##length _g13151_)))
          (cond ((##fx= _g13150_ 1)
                 (apply (lambda (_stx11985_)
                          (gx#core-expand-letrec-values%__0 _stx11985_))
                        _g13151_))
                ((##fx= _g13150_ 2)
                 (apply (lambda (_stx11989_ _form11990_)
                          (gx#core-expand-letrec-values%__%
                           _stx11989_
                           _form11990_))
                        _g13151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g13151_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx11934_)
        (gx#core-expand-letrec-values%__% _stx11934_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx11891_)
        (if (gx#stx-list? _stx11891_)
            (gx#stx-andmap
             (lambda (_bind11893_)
               (let* ((_e1189411904_ _bind11893_)
                      (_E1189611908_ (lambda () '#f))
                      (_E1189511930_
                       (lambda ()
                         (if (gx#stx-pair? _e1189411904_)
                             (let ((_e1189711912_ (gx#syntax-e _e1189411904_)))
                               (let ((_hd1189811915_ (##car _e1189711912_))
                                     (_tl1189911917_ (##cdr _e1189711912_)))
                                 (let ((_hd11920_ _hd1189811915_))
                                   (if (gx#stx-pair? _tl1189911917_)
                                       (let ((_e1190011922_
                                              (gx#syntax-e _tl1189911917_)))
                                         (let ((_hd1190111925_
                                                (##car _e1190011922_))
                                               (_tl1190211927_
                                                (##cdr _e1190011922_)))
                                           (if (gx#stx-null? _tl1190211927_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd11920_)
                                                   (_E1189611908_))
                                               (_E1189611908_))))
                                       (_E1189611908_)))))
                             (_E1189611908_)))))
                 (_E1189511930_)))
             _stx11891_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind11850_)
        (let* ((_e1185111861_ _bind11850_)
               (_E1185311865_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1185111861_)))
               (_E1185211887_
                (lambda ()
                  (if (gx#stx-pair? _e1185111861_)
                      (let ((_e1185411869_ (gx#syntax-e _e1185111861_)))
                        (let ((_hd1185511872_ (##car _e1185411869_))
                              (_tl1185611874_ (##cdr _e1185411869_)))
                          (if (gx#stx-pair? _tl1185611874_)
                              (let ((_e1185711877_
                                     (gx#syntax-e _tl1185611874_)))
                                (let ((_hd1185811880_ (##car _e1185711877_))
                                      (_tl1185911882_ (##cdr _e1185711877_)))
                                  (let ((_expr11885_ _hd1185811880_))
                                    (if (gx#stx-null? _tl1185911882_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr11885_)
                                            (_E1185311865_))
                                        (_E1185311865_)))))
                              (_E1185311865_))))
                      (_E1185311865_)))))
          (_E1185211887_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind11809_)
        (let* ((_e1181011820_ _bind11809_)
               (_E1181211824_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1181011820_)))
               (_E1181111846_
                (lambda ()
                  (if (gx#stx-pair? _e1181011820_)
                      (let ((_e1181311828_ (gx#syntax-e _e1181011820_)))
                        (let ((_hd1181411831_ (##car _e1181311828_))
                              (_tl1181511833_ (##cdr _e1181311828_)))
                          (let ((_hd11836_ _hd1181411831_))
                            (if (gx#stx-pair? _tl1181511833_)
                                (let ((_e1181611838_
                                       (gx#syntax-e _tl1181511833_)))
                                  (let ((_hd1181711841_ (##car _e1181611838_))
                                        (_tl1181811843_ (##cdr _e1181611838_)))
                                    (if (gx#stx-null? _tl1181811843_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd11836_)
                                            (_E1181211824_))
                                        (_E1181211824_))))
                                (_E1181211824_)))))
                      (_E1181211824_)))))
          (_E1181111846_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind11767_ _expr11768_)
        (let* ((_e1176911779_ _bind11767_)
               (_E1177111783_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1176911779_)))
               (_E1177011805_
                (lambda ()
                  (if (gx#stx-pair? _e1176911779_)
                      (let ((_e1177211787_ (gx#syntax-e _e1176911779_)))
                        (let ((_hd1177311790_ (##car _e1177211787_))
                              (_tl1177411792_ (##cdr _e1177211787_)))
                          (let ((_hd11795_ _hd1177311790_))
                            (if (gx#stx-pair? _tl1177411792_)
                                (let ((_e1177511797_
                                       (gx#syntax-e _tl1177411792_)))
                                  (let ((_hd1177611800_ (##car _e1177511797_))
                                        (_tl1177711802_ (##cdr _e1177511797_)))
                                    (if (gx#stx-null? _tl1177711802_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd11795_)
                                                  (cons _expr11768_ '()))
                                            (_E1177111783_))
                                        (_E1177111783_))))
                                (_E1177111783_)))))
                      (_E1177111783_)))))
          (_E1177011805_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx11721_)
        (let* ((_e1172211732_ _stx11721_)
               (_E1172411736_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1172211732_)))
               (_E1172311763_
                (lambda ()
                  (if (gx#stx-pair? _e1172211732_)
                      (let ((_e1172511740_ (gx#syntax-e _e1172211732_)))
                        (let ((_hd1172611743_ (##car _e1172511740_))
                              (_tl1172711745_ (##cdr _e1172511740_)))
                          (if (gx#stx-pair? _tl1172711745_)
                              (let ((_e1172811748_
                                     (gx#syntax-e _tl1172711745_)))
                                (let ((_hd1172911751_ (##car _e1172811748_))
                                      (_tl1173011753_ (##cdr _e1172811748_)))
                                  (let* ((_hd11756_ _hd1172911751_)
                                         (_body11758_ _tl1173011753_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd11756_)
                                        (let ((_expanders11760_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd11756_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd11756_
                                              _expanders11760_)
                                             (gx#core-expand-local-block
                                              _stx11721_
                                              _body11758_))
                                           gx#current-expander-context
                                           (let ((__obj13142
                                                  (make-object
                                                   gx#local-context::t
                                                   '5)))
                                             (gx#local-context:::init!__0
                                              __obj13142)
                                             __obj13142)))
                                        (_E1172411736_)))))
                              (_E1172411736_))))
                      (_E1172411736_)))))
          (_E1172311763_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx11670_)
        (let* ((_e1167111681_ _stx11670_)
               (_E1167311685_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1167111681_)))
               (_E1167211717_
                (lambda ()
                  (if (gx#stx-pair? _e1167111681_)
                      (let ((_e1167411689_ (gx#syntax-e _e1167111681_)))
                        (let ((_hd1167511692_ (##car _e1167411689_))
                              (_tl1167611694_ (##cdr _e1167411689_)))
                          (if (gx#stx-pair? _tl1167611694_)
                              (let ((_e1167711697_
                                     (gx#syntax-e _tl1167611694_)))
                                (let ((_hd1167811700_ (##car _e1167711697_))
                                      (_tl1167911702_ (##cdr _e1167711697_)))
                                  (let* ((_hd11705_ _hd1167811700_)
                                         (_body11707_ _tl1167911702_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd11705_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd11705_
                                            (make-list
                                             (gx#stx-length _hd11705_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g1170911712_
                                                     _g1171011714_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g1170911712_
                                               _g1171011714_
                                               '#t))
                                            _hd11705_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd11705_))
                                           (gx#core-expand-local-block
                                            _stx11670_
                                            _body11707_))
                                         gx#current-expander-context
                                         (let ((__obj13143
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj13143)
                                           __obj13143))
                                        (_E1167311685_)))))
                              (_E1167311685_))))
                      (_E1167311685_)))))
          (_E1167211717_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx11627_)
        (if (gx#stx-list? _stx11627_)
            (gx#stx-andmap
             (lambda (_bind11629_)
               (let* ((_e1163011640_ _bind11629_)
                      (_E1163211644_ (lambda () '#f))
                      (_E1163111666_
                       (lambda ()
                         (if (gx#stx-pair? _e1163011640_)
                             (let ((_e1163311648_ (gx#syntax-e _e1163011640_)))
                               (let ((_hd1163411651_ (##car _e1163311648_))
                                     (_tl1163511653_ (##cdr _e1163311648_)))
                                 (let ((_hd11656_ _hd1163411651_))
                                   (if (gx#stx-pair? _tl1163511653_)
                                       (let ((_e1163611658_
                                              (gx#syntax-e _tl1163511653_)))
                                         (let ((_hd1163711661_
                                                (##car _e1163611658_))
                                               (_tl1163811663_
                                                (##cdr _e1163611658_)))
                                           (if (gx#stx-null? _tl1163811663_)
                                               (if '#t
                                                   (gx#identifier? _hd11656_)
                                                   (_E1163211644_))
                                               (_E1163211644_))))
                                       (_E1163211644_)))))
                             (_E1163211644_)))))
                 (_E1163111666_)))
             _stx11627_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind11584_)
        (let* ((_e1158511595_ _bind11584_)
               (_E1158711599_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1158511595_)))
               (_E1158611623_
                (lambda ()
                  (if (gx#stx-pair? _e1158511595_)
                      (let ((_e1158811603_ (gx#syntax-e _e1158511595_)))
                        (let ((_hd1158911606_ (##car _e1158811603_))
                              (_tl1159011608_ (##cdr _e1158811603_)))
                          (if (gx#stx-pair? _tl1159011608_)
                              (let ((_e1159111611_
                                     (gx#syntax-e _tl1159011608_)))
                                (let ((_hd1159211614_ (##car _e1159111611_))
                                      (_tl1159311616_ (##cdr _e1159111611_)))
                                  (let ((_expr11619_ _hd1159211614_))
                                    (if (gx#stx-null? _tl1159311616_)
                                        (if '#t
                                            (let ((_g13152_
                                                   (gx#core-expand-expression+1
                                                    _expr11619_)))
                                              (begin
                                                (let ((_g13153_
                                                       (if (##values? _g13152_)
                                                           (##vector-length
                                                            _g13152_)
                                                           1)))
                                                  (if (not (##fx= _g13153_ 2))
                                                      (error "Context expects 2 values"
                                                             _g13153_)))
                                                (let ((_e11621_
                                                       (##vector-ref
                                                        _g13152_
                                                        1)))
                                                  _e11621_)))
                                            (_E1158711599_))
                                        (_E1158711599_)))))
                              (_E1158711599_))))
                      (_E1158711599_)))))
          (_E1158611623_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind11529_ _e11530_ _rebind?11531_)
        (let* ((_e1153211542_ _bind11529_)
               (_E1153411546_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1153211542_)))
               (_E1153311568_
                (lambda ()
                  (if (gx#stx-pair? _e1153211542_)
                      (let ((_e1153511550_ (gx#syntax-e _e1153211542_)))
                        (let ((_hd1153611553_ (##car _e1153511550_))
                              (_tl1153711555_ (##cdr _e1153511550_)))
                          (let ((_id11558_ _hd1153611553_))
                            (if (gx#stx-pair? _tl1153711555_)
                                (let ((_e1153811560_
                                       (gx#syntax-e _tl1153711555_)))
                                  (let ((_hd1153911563_ (##car _e1153811560_))
                                        (_tl1154011565_ (##cdr _e1153811560_)))
                                    (if (gx#stx-null? _tl1154011565_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id11558_
                                             _e11530_
                                             _rebind?11531_)
                                            (_E1153411546_))
                                        (_E1153411546_))))
                                (_E1153411546_)))))
                      (_E1153411546_)))))
          (_E1153311568_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind11575_ _e11576_)
        (let ((_rebind?11578_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind11575_
           _e11576_
           _rebind?11578_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g13155_
        (let ((_g13154_ (##length _g13155_)))
          (cond ((##fx= _g13154_ 2)
                 (apply (lambda (_bind11575_ _e11576_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind11575_
                           _e11576_))
                        _g13155_))
                ((##fx= _g13154_ 3)
                 (apply (lambda (_bind11580_ _e11581_ _rebind?11582_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind11580_
                           _e11581_
                           _rebind?11582_))
                        _g13155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g13155_))))))
    (define gx#core-expand-expression%
      (lambda (_stx11487_)
        (let* ((_e1148811498_ _stx11487_)
               (_E1149011502_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1148811498_)))
               (_E1148911524_
                (lambda ()
                  (if (gx#stx-pair? _e1148811498_)
                      (let ((_e1149111506_ (gx#syntax-e _e1148811498_)))
                        (let ((_hd1149211509_ (##car _e1149111506_))
                              (_tl1149311511_ (##cdr _e1149111506_)))
                          (if (gx#stx-pair? _tl1149311511_)
                              (let ((_e1149411514_
                                     (gx#syntax-e _tl1149311511_)))
                                (let ((_hd1149511517_ (##car _e1149411514_))
                                      (_tl1149611519_ (##cdr _e1149411514_)))
                                  (let ((_expr11522_ _hd1149511517_))
                                    (if (gx#stx-null? _tl1149611519_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr11522_)
                                            (_E1149011502_))
                                        (_E1149011502_)))))
                              (_E1149011502_))))
                      (_E1149011502_)))))
          (_E1148911524_))))
    (define gx#core-expand-quote%
      (lambda (_stx11446_)
        (let* ((_e1144711457_ _stx11446_)
               (_E1144911461_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1144711457_)))
               (_E1144811483_
                (lambda ()
                  (if (gx#stx-pair? _e1144711457_)
                      (let ((_e1145011465_ (gx#syntax-e _e1144711457_)))
                        (let ((_hd1145111468_ (##car _e1145011465_))
                              (_tl1145211470_ (##cdr _e1145011465_)))
                          (if (gx#stx-pair? _tl1145211470_)
                              (let ((_e1145311473_
                                     (gx#syntax-e _tl1145211470_)))
                                (let ((_hd1145411476_ (##car _e1145311473_))
                                      (_tl1145511478_ (##cdr _e1145311473_)))
                                  (let ((_e11481_ _hd1145411476_))
                                    (if (gx#stx-null? _tl1145511478_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e11481_)
                                                         '()))
                                             (gx#stx-source _stx11446_))
                                            (_E1144911461_))
                                        (_E1144911461_)))))
                              (_E1144911461_))))
                      (_E1144911461_)))))
          (_E1144811483_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx11405_)
        (let* ((_e1140611416_ _stx11405_)
               (_E1140811420_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1140611416_)))
               (_E1140711442_
                (lambda ()
                  (if (gx#stx-pair? _e1140611416_)
                      (let ((_e1140911424_ (gx#syntax-e _e1140611416_)))
                        (let ((_hd1141011427_ (##car _e1140911424_))
                              (_tl1141111429_ (##cdr _e1140911424_)))
                          (if (gx#stx-pair? _tl1141111429_)
                              (let ((_e1141211432_
                                     (gx#syntax-e _tl1141111429_)))
                                (let ((_hd1141311435_ (##car _e1141211432_))
                                      (_tl1141411437_ (##cdr _e1141211432_)))
                                  (let ((_e11440_ _hd1141311435_))
                                    (if (gx#stx-null? _tl1141411437_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11440_)
                                                         '()))
                                             (gx#stx-source _stx11405_))
                                            (_E1140811420_))
                                        (_E1140811420_)))))
                              (_E1140811420_))))
                      (_E1140811420_)))))
          (_E1140711442_))))
    (define gx#core-expand-call%
      (lambda (_stx11362_)
        (let* ((_e1136311373_ _stx11362_)
               (_E1136511377_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1136311373_)))
               (_E1136411401_
                (lambda ()
                  (if (gx#stx-pair? _e1136311373_)
                      (let ((_e1136611381_ (gx#syntax-e _e1136311373_)))
                        (let ((_hd1136711384_ (##car _e1136611381_))
                              (_tl1136811386_ (##cdr _e1136611381_)))
                          (if (gx#stx-pair? _tl1136811386_)
                              (let ((_e1136911389_
                                     (gx#syntax-e _tl1136811386_)))
                                (let ((_hd1137011392_ (##car _e1136911389_))
                                      (_tl1137111394_ (##cdr _e1136911389_)))
                                  (let* ((_rator11397_ _hd1137011392_)
                                         (_args11399_ _tl1137111394_))
                                    (if (gx#stx-list? _args11399_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator11397_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args11399_))
                                         (gx#stx-source _stx11362_))
                                        (_E1136511377_)))))
                              (_E1136511377_))))
                      (_E1136511377_)))))
          (_E1136411401_))))
    (define gx#core-expand-if%
      (lambda (_stx11295_)
        (let* ((_e1129611312_ _stx11295_)
               (_E1129811316_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1129611312_)))
               (_E1129711358_
                (lambda ()
                  (if (gx#stx-pair? _e1129611312_)
                      (let ((_e1129911320_ (gx#syntax-e _e1129611312_)))
                        (let ((_hd1130011323_ (##car _e1129911320_))
                              (_tl1130111325_ (##cdr _e1129911320_)))
                          (if (gx#stx-pair? _tl1130111325_)
                              (let ((_e1130211328_
                                     (gx#syntax-e _tl1130111325_)))
                                (let ((_hd1130311331_ (##car _e1130211328_))
                                      (_tl1130411333_ (##cdr _e1130211328_)))
                                  (let ((_test11336_ _hd1130311331_))
                                    (if (gx#stx-pair? _tl1130411333_)
                                        (let ((_e1130511338_
                                               (gx#syntax-e _tl1130411333_)))
                                          (let ((_hd1130611341_
                                                 (##car _e1130511338_))
                                                (_tl1130711343_
                                                 (##cdr _e1130511338_)))
                                            (let ((_K11346_ _hd1130611341_))
                                              (if (gx#stx-pair? _tl1130711343_)
                                                  (let ((_e1130811348_
                                                         (gx#syntax-e
                                                          _tl1130711343_)))
                                                    (let ((_hd1130911351_
                                                           (##car _e1130811348_))
                                                          (_tl1131011353_
                                                           (##cdr _e1130811348_)))
                                                      (let ((_E11356_
                                                             _hd1130911351_))
                                                        (if (gx#stx-null?
                                                             _tl1131011353_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test11336_)
                                     (cons (gx#core-expand-expression _K11346_)
                                           (cons (gx#core-expand-expression
                                                  _E11356_)
                                                 '()))))
                         (gx#stx-source _stx11295_))
                        (_E1129811316_))
                    (_E1129811316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1129811316_)))))
                                        (_E1129811316_)))))
                              (_E1129811316_))))
                      (_E1129811316_)))))
          (_E1129711358_))))
    (define gx#core-expand-ref%
      (lambda (_stx11254_)
        (let* ((_e1125511265_ _stx11254_)
               (_E1125711269_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1125511265_)))
               (_E1125611291_
                (lambda ()
                  (if (gx#stx-pair? _e1125511265_)
                      (let ((_e1125811273_ (gx#syntax-e _e1125511265_)))
                        (let ((_hd1125911276_ (##car _e1125811273_))
                              (_tl1126011278_ (##cdr _e1125811273_)))
                          (if (gx#stx-pair? _tl1126011278_)
                              (let ((_e1126111281_
                                     (gx#syntax-e _tl1126011278_)))
                                (let ((_hd1126211284_ (##car _e1126111281_))
                                      (_tl1126311286_ (##cdr _e1126111281_)))
                                  (let ((_id11289_ _hd1126211284_))
                                    (if (gx#stx-null? _tl1126311286_)
                                        (if (gx#identifier? _id11289_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id11289_
                                                          _stx11254_)
                                                         '()))
                                             (gx#stx-source _stx11254_))
                                            (_E1125711269_))
                                        (_E1125711269_)))))
                              (_E1125711269_))))
                      (_E1125711269_)))))
          (_E1125611291_))))
    (define gx#core-expand-setq%
      (lambda (_stx11200_)
        (let* ((_e1120111214_ _stx11200_)
               (_E1120311218_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1120111214_)))
               (_E1120211250_
                (lambda ()
                  (if (gx#stx-pair? _e1120111214_)
                      (let ((_e1120411222_ (gx#syntax-e _e1120111214_)))
                        (let ((_hd1120511225_ (##car _e1120411222_))
                              (_tl1120611227_ (##cdr _e1120411222_)))
                          (if (gx#stx-pair? _tl1120611227_)
                              (let ((_e1120711230_
                                     (gx#syntax-e _tl1120611227_)))
                                (let ((_hd1120811233_ (##car _e1120711230_))
                                      (_tl1120911235_ (##cdr _e1120711230_)))
                                  (let ((_id11238_ _hd1120811233_))
                                    (if (gx#stx-pair? _tl1120911235_)
                                        (let ((_e1121011240_
                                               (gx#syntax-e _tl1120911235_)))
                                          (let ((_hd1121111243_
                                                 (##car _e1121011240_))
                                                (_tl1121211245_
                                                 (##cdr _e1121011240_)))
                                            (let ((_expr11248_ _hd1121111243_))
                                              (if (gx#stx-null? _tl1121211245_)
                                                  (if (gx#identifier?
                                                       _id11238_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11238_
                            _stx11200_)
                           (cons (gx#core-expand-expression _expr11248_) '())))
               (gx#stx-source _stx11200_))
              (_E1120311218_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1120311218_)))))
                                        (_E1120311218_)))))
                              (_E1120311218_))))
                      (_E1120311218_)))))
          (_E1120211250_))))
    (define gx#macro-expand-extern
      (lambda (_stx11048_)
        (letrec ((_generate11050_
                  (lambda (_body11080_)
                    (let _lp11082_ ((_rest11084_ _body11080_)
                                    (_ns11085_ (gx#core-context-namespace__0))
                                    (_r11086_ '()))
                      (let* ((_e1108711102_ _rest11084_)
                             (_E1110011106_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1108711102_)))
                             (_E1109611110_
                              (lambda ()
                                (if (gx#stx-null? _e1108711102_)
                                    (if '#t (reverse _r11086_) (_E1110011106_))
                                    (_E1110011106_))))
                             (_E1108911167_
                              (lambda ()
                                (if (gx#stx-pair? _e1108711102_)
                                    (let ((_e1109711114_
                                           (gx#syntax-e _e1108711102_)))
                                      (let ((_hd1109811117_
                                             (##car _e1109711114_))
                                            (_tl1109911119_
                                             (##cdr _e1109711114_)))
                                        (let* ((_hd11122_ _hd1109811117_)
                                               (_rest11124_ _tl1109911119_))
                                          (if '#t
                                              (if (gx#identifier? _hd11122_)
                                                  (_lp11082_
                                                   _rest11124_
                                                   _ns11085_
                                                   (cons (cons _hd11122_
                                                               (cons (if _ns11085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd11122_
                                  _ns11085_
                                  '"#"
                                  _hd11122_)
                                 _hd11122_)
                             '()))
                 _r11086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e1112511135_
                                                          _hd11122_)
                                                         (_E1112711139_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1112511135_)))
                                                         (_E1112611163_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1112511135_)
                        (let ((_e1112811143_ (gx#syntax-e _e1112511135_)))
                          (let ((_hd1112911146_ (##car _e1112811143_))
                                (_tl1113011148_ (##cdr _e1112811143_)))
                            (let ((_id11151_ _hd1112911146_))
                              (if (gx#stx-pair? _tl1113011148_)
                                  (let ((_e1113111153_
                                         (gx#syntax-e _tl1113011148_)))
                                    (let ((_hd1113211156_
                                           (##car _e1113111153_))
                                          (_tl1113311158_
                                           (##cdr _e1113111153_)))
                                      (let ((_eid11161_ _hd1113211156_))
                                        (if (gx#stx-null? _tl1113311158_)
                                            (if (and (gx#identifier? _id11151_)
                                                     (gx#identifier?
                                                      _eid11161_))
                                                (_lp11082_
                                                 _rest11124_
                                                 _ns11085_
                                                 (cons (cons _id11151_
                                                             (cons _eid11161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r11086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1112711139_))
                                            (_E1112711139_)))))
                                  (_E1112711139_)))))
                        (_E1112711139_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1112611163_)))
                                              (_E1109611110_)))))
                                    (_E1109611110_))))
                             (_E1108811196_
                              (lambda ()
                                (if (gx#stx-pair? _e1108711102_)
                                    (let ((_e1109011171_
                                           (gx#syntax-e _e1108711102_)))
                                      (let ((_hd1109111174_
                                             (##car _e1109011171_))
                                            (_tl1109211176_
                                             (##cdr _e1109011171_)))
                                        (if (eq? (gx#stx-e _hd1109111174_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl1109211176_)
                                                (let ((_e1109311179_
                                                       (gx#syntax-e
                                                        _tl1109211176_)))
                                                  (let ((_hd1109411182_
                                                         (##car _e1109311179_))
                                                        (_tl1109511184_
                                                         (##cdr _e1109311179_)))
                                                    (let* ((_ns11187_
                                                            _hd1109411182_)
                                                           (_rest11189_
                                                            _tl1109511184_))
                                                      (if '#t
                                                          (let ((_ns11194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns11187_)
                             (symbol->string (gx#stx-e _ns11187_))
                             (if (or (gx#stx-string? _ns11187_)
                                     (gx#stx-false? _ns11187_))
                                 (gx#stx-e _ns11187_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx11048_
                                  _ns11187_)))))
                    (_lp11082_ _rest11189_ _ns11194_ _r11086_))
                  (_E1108911167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1108911167_))
                                            (_E1108911167_))))
                                    (_E1108911167_)))))
                        (_E1108811196_))))))
          (let* ((_e1105111058_ _stx11048_)
                 (_E1105311062_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1105111058_)))
                 (_E1105211076_
                  (lambda ()
                    (if (gx#stx-pair? _e1105111058_)
                        (let ((_e1105411066_ (gx#syntax-e _e1105111058_)))
                          (let ((_hd1105511069_ (##car _e1105411066_))
                                (_tl1105611071_ (##cdr _e1105411066_)))
                            (let ((_body11074_ _tl1105611071_))
                              (if (gx#stx-list? _body11074_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate11050_ _body11074_))
                                  (_E1105311062_)))))
                        (_E1105311062_)))))
            (_E1105211076_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx10994_)
        (let* ((_e1099511008_ _stx10994_)
               (_E1099711012_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1099511008_)))
               (_E1099611044_
                (lambda ()
                  (if (gx#stx-pair? _e1099511008_)
                      (let ((_e1099811016_ (gx#syntax-e _e1099511008_)))
                        (let ((_hd1099911019_ (##car _e1099811016_))
                              (_tl1100011021_ (##cdr _e1099811016_)))
                          (if (gx#stx-pair? _tl1100011021_)
                              (let ((_e1100111024_
                                     (gx#syntax-e _tl1100011021_)))
                                (let ((_hd1100211027_ (##car _e1100111024_))
                                      (_tl1100311029_ (##cdr _e1100111024_)))
                                  (let ((_hd11032_ _hd1100211027_))
                                    (if (gx#stx-pair? _tl1100311029_)
                                        (let ((_e1100411034_
                                               (gx#syntax-e _tl1100311029_)))
                                          (let ((_hd1100511037_
                                                 (##car _e1100411034_))
                                                (_tl1100611039_
                                                 (##cdr _e1100411034_)))
                                            (let ((_expr11042_ _hd1100511037_))
                                              (if (gx#stx-null? _tl1100611039_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd11032_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd11032_)
                          (cons _expr11042_ '())))
              (_E1099711012_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1099711012_)))))
                                        (_E1099711012_)))))
                              (_E1099711012_))))
                      (_E1099711012_)))))
          (_E1099611044_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx10940_)
        (let* ((_e1094110954_ _stx10940_)
               (_E1094310958_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1094110954_)))
               (_E1094210990_
                (lambda ()
                  (if (gx#stx-pair? _e1094110954_)
                      (let ((_e1094410962_ (gx#syntax-e _e1094110954_)))
                        (let ((_hd1094510965_ (##car _e1094410962_))
                              (_tl1094610967_ (##cdr _e1094410962_)))
                          (if (gx#stx-pair? _tl1094610967_)
                              (let ((_e1094710970_
                                     (gx#syntax-e _tl1094610967_)))
                                (let ((_hd1094810973_ (##car _e1094710970_))
                                      (_tl1094910975_ (##cdr _e1094710970_)))
                                  (let ((_hd10978_ _hd1094810973_))
                                    (if (gx#stx-pair? _tl1094910975_)
                                        (let ((_e1095010980_
                                               (gx#syntax-e _tl1094910975_)))
                                          (let ((_hd1095110983_
                                                 (##car _e1095010980_))
                                                (_tl1095210985_
                                                 (##cdr _e1095010980_)))
                                            (let ((_expr10988_ _hd1095110983_))
                                              (if (gx#stx-null? _tl1095210985_)
                                                  (if (gx#identifier?
                                                       _hd10978_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd10978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr10988_ '())))
              (_E1094310958_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1094310958_)))))
                                        (_E1094310958_)))))
                              (_E1094310958_))))
                      (_E1094310958_)))))
          (_E1094210990_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx10886_)
        (let* ((_e1088710900_ _stx10886_)
               (_E1088910904_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1088710900_)))
               (_E1088810936_
                (lambda ()
                  (if (gx#stx-pair? _e1088710900_)
                      (let ((_e1089010908_ (gx#syntax-e _e1088710900_)))
                        (let ((_hd1089110911_ (##car _e1089010908_))
                              (_tl1089210913_ (##cdr _e1089010908_)))
                          (if (gx#stx-pair? _tl1089210913_)
                              (let ((_e1089310916_
                                     (gx#syntax-e _tl1089210913_)))
                                (let ((_hd1089410919_ (##car _e1089310916_))
                                      (_tl1089510921_ (##cdr _e1089310916_)))
                                  (let ((_id10924_ _hd1089410919_))
                                    (if (gx#stx-pair? _tl1089510921_)
                                        (let ((_e1089610926_
                                               (gx#syntax-e _tl1089510921_)))
                                          (let ((_hd1089710929_
                                                 (##car _e1089610926_))
                                                (_tl1089810931_
                                                 (##cdr _e1089610926_)))
                                            (let ((_alias-id10934_
                                                   _hd1089710929_))
                                              (if (gx#stx-null? _tl1089810931_)
                                                  (if (and (gx#identifier?
                                                            _id10924_)
                                                           (gx#identifier?
                                                            _alias-id10934_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id10924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id10934_ '())))
              (_E1088910904_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1088910904_)))))
                                        (_E1088910904_)))))
                              (_E1088910904_))))
                      (_E1088910904_)))))
          (_E1088810936_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx10843_)
        (let* ((_e1084410854_ _stx10843_)
               (_E1084610858_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1084410854_)))
               (_E1084510882_
                (lambda ()
                  (if (gx#stx-pair? _e1084410854_)
                      (let ((_e1084710862_ (gx#syntax-e _e1084410854_)))
                        (let ((_hd1084810865_ (##car _e1084710862_))
                              (_tl1084910867_ (##cdr _e1084710862_)))
                          (if (gx#stx-pair? _tl1084910867_)
                              (let ((_e1085010870_
                                     (gx#syntax-e _tl1084910867_)))
                                (let ((_hd1085110873_ (##car _e1085010870_))
                                      (_tl1085210875_ (##cdr _e1085010870_)))
                                  (let* ((_hd10878_ _hd1085110873_)
                                         (_body10880_ _tl1085210875_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd10878_)
                                             (gx#stx-list? _body10880_)
                                             (not (gx#stx-null? _body10880_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd10878_)
                                         _body10880_)
                                        (_E1084610858_)))))
                              (_E1084610858_))))
                      (_E1084610858_)))))
          (_E1084510882_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx10779_)
        (letrec ((_generate10781_
                  (lambda (_clause10811_)
                    (let* ((_e1081210819_ _clause10811_)
                           (_E1081410823_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx10779_
                               _clause10811_)))
                           (_E1081310839_
                            (lambda ()
                              (if (gx#stx-pair? _e1081210819_)
                                  (let ((_e1081510827_
                                         (gx#syntax-e _e1081210819_)))
                                    (let ((_hd1081610830_
                                           (##car _e1081510827_))
                                          (_tl1081710832_
                                           (##cdr _e1081510827_)))
                                      (let* ((_hd10835_ _hd1081610830_)
                                             (_body10837_ _tl1081710832_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd10835_)
                                                 (gx#stx-list? _body10837_)
                                                 (not (gx#stx-null?
                                                       _body10837_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd10835_)
                                                   _body10837_)
                                             (gx#stx-source _clause10811_))
                                            (_E1081410823_)))))
                                  (_E1081410823_)))))
                      (_E1081310839_)))))
          (let* ((_e1078210789_ _stx10779_)
                 (_E1078410793_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1078210789_)))
                 (_E1078310807_
                  (lambda ()
                    (if (gx#stx-pair? _e1078210789_)
                        (let ((_e1078510797_ (gx#syntax-e _e1078210789_)))
                          (let ((_hd1078610800_ (##car _e1078510797_))
                                (_tl1078710802_ (##cdr _e1078510797_)))
                            (let ((_clauses10805_ _tl1078710802_))
                              (if (gx#stx-list? _clauses10805_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate10781_
                                    _clauses10805_))
                                  (_E1078410793_)))))
                        (_E1078410793_)))))
            (_E1078310807_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx10680_ _form10681_)
        (letrec ((_generate10683_
                  (lambda (_bind10726_)
                    (let* ((_e1072710737_ _bind10726_)
                           (_E1072910741_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx10680_
                               _bind10726_)))
                           (_E1072810765_
                            (lambda ()
                              (if (gx#stx-pair? _e1072710737_)
                                  (let ((_e1073010745_
                                         (gx#syntax-e _e1072710737_)))
                                    (let ((_hd1073110748_
                                           (##car _e1073010745_))
                                          (_tl1073210750_
                                           (##cdr _e1073010745_)))
                                      (let ((_ids10753_ _hd1073110748_))
                                        (if (gx#stx-pair? _tl1073210750_)
                                            (let ((_e1073310755_
                                                   (gx#syntax-e
                                                    _tl1073210750_)))
                                              (let ((_hd1073410758_
                                                     (##car _e1073310755_))
                                                    (_tl1073510760_
                                                     (##cdr _e1073310755_)))
                                                (let ((_expr10763_
                                                       _hd1073410758_))
                                                  (if (gx#stx-null?
                                                       _tl1073510760_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids10753_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids10753_)
                        (cons _expr10763_ '()))
                  (_E1072910741_))
              (_E1072910741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1072910741_)))))
                                  (_E1072910741_)))))
                      (_E1072810765_)))))
          (let* ((_e1068410694_ _stx10680_)
                 (_E1068610698_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1068410694_)))
                 (_E1068510722_
                  (lambda ()
                    (if (gx#stx-pair? _e1068410694_)
                        (let ((_e1068710702_ (gx#syntax-e _e1068410694_)))
                          (let ((_hd1068810705_ (##car _e1068710702_))
                                (_tl1068910707_ (##cdr _e1068710702_)))
                            (if (gx#stx-pair? _tl1068910707_)
                                (let ((_e1069010710_
                                       (gx#syntax-e _tl1068910707_)))
                                  (let ((_hd1069110713_ (##car _e1069010710_))
                                        (_tl1069210715_ (##cdr _e1069010710_)))
                                    (let* ((_hd10718_ _hd1069110713_)
                                           (_body10720_ _tl1069210715_))
                                      (if (and (gx#stx-list? _hd10718_)
                                               (gx#stx-list? _body10720_)
                                               (not (gx#stx-null?
                                                     _body10720_)))
                                          (gx#core-cons*
                                           _form10681_
                                           (gx#stx-map1
                                            _generate10683_
                                            _hd10718_)
                                           _body10720_)
                                          (_E1068610698_)))))
                                (_E1068610698_))))
                        (_E1068610698_)))))
            (_E1068510722_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx10772_)
        (let ((_form10774_ '%#let-values))
          (gx#macro-expand-let-values__% _stx10772_ _form10774_))))
    (define gx#macro-expand-let-values
      (lambda _g13157_
        (let ((_g13156_ (##length _g13157_)))
          (cond ((##fx= _g13156_ 1)
                 (apply (lambda (_stx10772_)
                          (gx#macro-expand-let-values__0 _stx10772_))
                        _g13157_))
                ((##fx= _g13156_ 2)
                 (apply (lambda (_stx10776_ _form10777_)
                          (gx#macro-expand-let-values__%
                           _stx10776_
                           _form10777_))
                        _g13157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g13157_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx10677_)
        (gx#macro-expand-let-values__% _stx10677_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx10675_)
        (gx#macro-expand-let-values__% _stx10675_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx10566_)
        (let* ((_e1056710593_ _stx10566_)
               (_E1057910597_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1056710593_)))
               (_E1056910639_
                (lambda ()
                  (if (gx#stx-pair? _e1056710593_)
                      (let ((_e1058010601_ (gx#syntax-e _e1056710593_)))
                        (let ((_hd1058110604_ (##car _e1058010601_))
                              (_tl1058210606_ (##cdr _e1058010601_)))
                          (if (gx#stx-pair? _tl1058210606_)
                              (let ((_e1058310609_
                                     (gx#syntax-e _tl1058210606_)))
                                (let ((_hd1058410612_ (##car _e1058310609_))
                                      (_tl1058510614_ (##cdr _e1058310609_)))
                                  (let ((_test10617_ _hd1058410612_))
                                    (if (gx#stx-pair? _tl1058510614_)
                                        (let ((_e1058610619_
                                               (gx#syntax-e _tl1058510614_)))
                                          (let ((_hd1058710622_
                                                 (##car _e1058610619_))
                                                (_tl1058810624_
                                                 (##cdr _e1058610619_)))
                                            (let ((_K10627_ _hd1058710622_))
                                              (if (gx#stx-pair? _tl1058810624_)
                                                  (let ((_e1058910629_
                                                         (gx#syntax-e
                                                          _tl1058810624_)))
                                                    (let ((_hd1059010632_
                                                           (##car _e1058910629_))
                                                          (_tl1059110634_
                                                           (##cdr _e1058910629_)))
                                                      (let ((_E10637_
                                                             _hd1059010632_))
                                                        (if (gx#stx-null?
                                                             _tl1059110634_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test10617_
                         _K10627_
                         _E10637_)
                        (_E1057910597_))
                    (_E1057910597_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1057910597_)))))
                                        (_E1057910597_)))))
                              (_E1057910597_))))
                      (_E1057910597_))))
               (_E1056810671_
                (lambda ()
                  (if (gx#stx-pair? _e1056710593_)
                      (let ((_e1057010643_ (gx#syntax-e _e1056710593_)))
                        (let ((_hd1057110646_ (##car _e1057010643_))
                              (_tl1057210648_ (##cdr _e1057010643_)))
                          (if (gx#stx-pair? _tl1057210648_)
                              (let ((_e1057310651_
                                     (gx#syntax-e _tl1057210648_)))
                                (let ((_hd1057410654_ (##car _e1057310651_))
                                      (_tl1057510656_ (##cdr _e1057310651_)))
                                  (let ((_test10659_ _hd1057410654_))
                                    (if (gx#stx-pair? _tl1057510656_)
                                        (let ((_e1057610661_
                                               (gx#syntax-e _tl1057510656_)))
                                          (let ((_hd1057710664_
                                                 (##car _e1057610661_))
                                                (_tl1057810666_
                                                 (##cdr _e1057610661_)))
                                            (let ((_K10669_ _hd1057710664_))
                                              (if (gx#stx-null? _tl1057810666_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test10659_
                                                       _K10669_
                                                       '#!void)
                                                      (_E1056910639_))
                                                  (_E1056910639_)))))
                                        (_E1056910639_)))))
                              (_E1056910639_))))
                      (_E1056910639_)))))
          (_E1056810671_))))
    (define gx#free-identifier=?
      (lambda (_xid10554_ _yid10555_)
        (let ((_xe10557_ (gx#resolve-identifier__0 _xid10554_))
              (_ye10558_ (gx#resolve-identifier__0 _yid10555_)))
          (if (and _xe10557_ _ye10558_)
              (let ((_$e10560_ (eq? _xe10557_ _ye10558_)))
                (if _$e10560_
                    _$e10560_
                    (if (##structure-instance-of? _xe10557_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye10558_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe10557_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye10558_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe10557_ _ye10558_)
                  '#f
                  (gx#stx-eq? _xid10554_ _yid10555_))))))
    (define gx#bound-identifier=?
      (lambda (_xid10538_ _yid10539_)
        (letrec ((_context10541_
                  (lambda (_e10552_)
                    (if (##structure-direct-instance-of?
                         _e10552_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e10552_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks10542_
                  (lambda (_e10550_)
                    (if (symbol? _e10550_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e10550_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e10550_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e10550_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap10543_
                  (lambda (_e10548_)
                    (if (symbol? _e10548_)
                        _e10548_
                        (gx#syntax-local-unwrap _e10548_)))))
          (let ((_x10545_ (_unwrap10543_ _xid10538_))
                (_y10546_ (_unwrap10543_ _yid10539_)))
            (if (gx#stx-eq? _x10545_ _y10546_)
                (if (eq? (_context10541_ _x10545_) (_context10541_ _y10546_))
                    (equal? (_marks10542_ _x10545_) (_marks10542_ _y10546_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx10536_)
        (if (gx#identifier? _stx10536_)
            (gx#core-identifier=? _stx10536_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx10534_)
        (if (gx#identifier? _stx10534_)
            (gx#core-identifier=? _stx10534_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x10532_)
        (if (gx#identifier? _x10532_)
            (if (not (gx#underscore? _x10532_)) _x10532_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx10478_ _where10479_)
        (let _lp10481_ ((_rest10483_ (gx#syntax->list _stx10478_)))
          (let* ((_rest1048410492_ _rest10483_)
                 (_else1048610500_ (lambda () '#t))
                 (_K1048810510_
                  (lambda (_rest10503_ _hd10504_)
                    (if (not (gx#identifier? _hd10504_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where10479_
                         _hd10504_)
                        (if (find (lambda (_g1050510507_)
                                    (gx#bound-identifier=?
                                     _g1050510507_
                                     _hd10504_))
                                  _rest10503_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where10479_
                             _hd10504_)
                            (_lp10481_ _rest10503_))))))
            (if (##pair? _rest1048410492_)
                (let ((_hd1048910513_ (##car _rest1048410492_))
                      (_tl1049010515_ (##cdr _rest1048410492_)))
                  (let* ((_hd10518_ _hd1048910513_)
                         (_rest10520_ _tl1049010515_))
                    (_K1048810510_ _rest10520_ _hd10518_)))
                (_else1048610500_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx10525_)
        (let ((_where10527_ _stx10525_))
          (gx#check-duplicate-identifiers__% _stx10525_ _where10527_))))
    (define gx#check-duplicate-identifiers
      (lambda _g13159_
        (let ((_g13158_ (##length _g13159_)))
          (cond ((##fx= _g13158_ 1)
                 (apply (lambda (_stx10525_)
                          (gx#check-duplicate-identifiers__0 _stx10525_))
                        _g13159_))
                ((##fx= _g13158_ 2)
                 (apply (lambda (_stx10529_ _where10530_)
                          (gx#check-duplicate-identifiers__%
                           _stx10529_
                           _where10530_))
                        _g13159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g13159_))))))
    (define gx#core-bind-values?
      (lambda (_stx10470_)
        (gx#stx-andmap
         (lambda (_x10472_)
           (let ((_$e10474_ (gx#identifier? _x10472_)))
             (if _$e10474_ _$e10474_ (gx#stx-false? _x10472_))))
         _stx10470_)))
    (define gx#core-bind-values!__%
      (lambda (_stx10434_ _rebind?10435_ _phi10436_ _ctx10437_)
        (gx#stx-for-each1
         (lambda (_id10439_)
           (if (gx#identifier? _id10439_)
               (gx#core-bind-runtime!__%
                _id10439_
                _rebind?10435_
                _phi10436_
                _ctx10437_)
               '#!void))
         _stx10434_)))
    (define gx#core-bind-values!__0
      (lambda (_stx10444_)
        (let* ((_rebind?10446_ '#f)
               (_phi10448_ (gx#current-expander-phi))
               (_ctx10450_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx10444_
           _rebind?10446_
           _phi10448_
           _ctx10450_))))
    (define gx#core-bind-values!__1
      (lambda (_stx10452_ _rebind?10453_)
        (let* ((_phi10455_ (gx#current-expander-phi))
               (_ctx10457_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx10452_
           _rebind?10453_
           _phi10455_
           _ctx10457_))))
    (define gx#core-bind-values!__2
      (lambda (_stx10459_ _rebind?10460_ _phi10461_)
        (let ((_ctx10463_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx10459_
           _rebind?10460_
           _phi10461_
           _ctx10463_))))
    (define gx#core-bind-values!
      (lambda _g13161_
        (let ((_g13160_ (##length _g13161_)))
          (cond ((##fx= _g13160_ 1)
                 (apply (lambda (_stx10444_)
                          (gx#core-bind-values!__0 _stx10444_))
                        _g13161_))
                ((##fx= _g13160_ 2)
                 (apply (lambda (_stx10452_ _rebind?10453_)
                          (gx#core-bind-values!__1 _stx10452_ _rebind?10453_))
                        _g13161_))
                ((##fx= _g13160_ 3)
                 (apply (lambda (_stx10459_ _rebind?10460_ _phi10461_)
                          (gx#core-bind-values!__2
                           _stx10459_
                           _rebind?10460_
                           _phi10461_))
                        _g13161_))
                ((##fx= _g13160_ 4)
                 (apply (lambda (_stx10465_
                                 _rebind?10466_
                                 _phi10467_
                                 _ctx10468_)
                          (gx#core-bind-values!__%
                           _stx10465_
                           _rebind?10466_
                           _phi10467_
                           _ctx10468_))
                        _g13161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g13161_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx10429_)
        (gx#stx-map1
         (lambda (_x10431_)
           (if (gx#identifier? _x10431_)
               (gx#core-quote-syntax__0 _x10431_)
               '#f))
         _stx10429_)))
    (define gx#core-runtime-ref?
      (lambda (_stx10422_)
        (if (gx#identifier? _stx10422_)
            (let* ((_bind10424_ (gx#resolve-identifier__0 _stx10422_))
                   (_$e10426_ (not _bind10424_)))
              (if _$e10426_
                  _$e10426_
                  (##structure-instance-of?
                   _bind10424_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id10414_ _form10415_)
        (let ((_bind10417_ (gx#resolve-identifier__0 _id10414_)))
          (if (##structure-instance-of? _bind10417_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id10414_)
              (if (not _bind10417_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id10414_)))
                      (gx#core-quote-syntax__0 _id10414_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form10415_
                       _id10414_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form10415_
                   _id10414_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id10373_ _rebind?10374_ _phi10375_ _ctx10376_)
        (let* ((_key10378_ (gx#core-identifier-key _id10373_))
               (_eid10380_
                (gx#make-binding-id__% _key10378_ '#f _phi10375_ _ctx10376_))
               (_bind10382_
                (if (##structure-instance-of? _ctx10376_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid10380_
                     _key10378_
                     _phi10375_
                     _ctx10376_)
                    (if (##structure-instance-of?
                         _ctx10376_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid10380_
                         _key10378_
                         _phi10375_)
                        (if (##structure-instance-of?
                             _ctx10376_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid10380_
                             _key10378_
                             _phi10375_)
                            (##structure
                             gx#runtime-binding::t
                             _eid10380_
                             _key10378_
                             _phi10375_))))))
          (gx#bind-identifier!__%
           _id10373_
           _bind10382_
           _rebind?10374_
           _phi10375_
           _ctx10376_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id10388_)
        (let* ((_rebind?10390_ '#f)
               (_phi10392_ (gx#current-expander-phi))
               (_ctx10394_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id10388_
           _rebind?10390_
           _phi10392_
           _ctx10394_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id10396_ _rebind?10397_)
        (let* ((_phi10399_ (gx#current-expander-phi))
               (_ctx10401_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id10396_
           _rebind?10397_
           _phi10399_
           _ctx10401_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id10403_ _rebind?10404_ _phi10405_)
        (let ((_ctx10407_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id10403_
           _rebind?10404_
           _phi10405_
           _ctx10407_))))
    (define gx#core-bind-runtime!
      (lambda _g13163_
        (let ((_g13162_ (##length _g13163_)))
          (cond ((##fx= _g13162_ 1)
                 (apply (lambda (_id10388_)
                          (gx#core-bind-runtime!__0 _id10388_))
                        _g13163_))
                ((##fx= _g13162_ 2)
                 (apply (lambda (_id10396_ _rebind?10397_)
                          (gx#core-bind-runtime!__1 _id10396_ _rebind?10397_))
                        _g13163_))
                ((##fx= _g13162_ 3)
                 (apply (lambda (_id10403_ _rebind?10404_ _phi10405_)
                          (gx#core-bind-runtime!__2
                           _id10403_
                           _rebind?10404_
                           _phi10405_))
                        _g13163_))
                ((##fx= _g13162_ 4)
                 (apply (lambda (_id10409_
                                 _rebind?10410_
                                 _phi10411_
                                 _ctx10412_)
                          (gx#core-bind-runtime!__%
                           _id10409_
                           _rebind?10410_
                           _phi10411_
                           _ctx10412_))
                        _g13163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g13163_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id10328_ _eid10329_ _rebind?10330_ _phi10331_ _ctx10332_)
        (let* ((_key10334_ (gx#core-identifier-key _id10328_))
               (_bind10336_
                (if (##structure-instance-of? _ctx10332_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid10329_
                     _key10334_
                     _phi10331_
                     _ctx10332_)
                    (if (##structure-instance-of?
                         _ctx10332_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid10329_
                         _key10334_
                         _phi10331_)
                        (##structure
                         gx#runtime-binding::t
                         _eid10329_
                         _key10334_
                         _phi10331_)))))
          (gx#bind-identifier!__%
           _id10328_
           _bind10336_
           _rebind?10330_
           _phi10331_
           _ctx10332_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id10342_ _eid10343_)
        (let* ((_rebind?10345_ '#f)
               (_phi10347_ (gx#current-expander-phi))
               (_ctx10349_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id10342_
           _eid10343_
           _rebind?10345_
           _phi10347_
           _ctx10349_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id10351_ _eid10352_ _rebind?10353_)
        (let* ((_phi10355_ (gx#current-expander-phi))
               (_ctx10357_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id10351_
           _eid10352_
           _rebind?10353_
           _phi10355_
           _ctx10357_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id10359_ _eid10360_ _rebind?10361_ _phi10362_)
        (let ((_ctx10364_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id10359_
           _eid10360_
           _rebind?10361_
           _phi10362_
           _ctx10364_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g13165_
        (let ((_g13164_ (##length _g13165_)))
          (cond ((##fx= _g13164_ 2)
                 (apply (lambda (_id10342_ _eid10343_)
                          (gx#core-bind-runtime-reference!__0
                           _id10342_
                           _eid10343_))
                        _g13165_))
                ((##fx= _g13164_ 3)
                 (apply (lambda (_id10351_ _eid10352_ _rebind?10353_)
                          (gx#core-bind-runtime-reference!__1
                           _id10351_
                           _eid10352_
                           _rebind?10353_))
                        _g13165_))
                ((##fx= _g13164_ 4)
                 (apply (lambda (_id10359_
                                 _eid10360_
                                 _rebind?10361_
                                 _phi10362_)
                          (gx#core-bind-runtime-reference!__2
                           _id10359_
                           _eid10360_
                           _rebind?10361_
                           _phi10362_))
                        _g13165_))
                ((##fx= _g13164_ 5)
                 (apply (lambda (_id10366_
                                 _eid10367_
                                 _rebind?10368_
                                 _phi10369_
                                 _ctx10370_)
                          (gx#core-bind-runtime-reference!__%
                           _id10366_
                           _eid10367_
                           _rebind?10368_
                           _phi10369_
                           _ctx10370_))
                        _g13165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g13165_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id10288_ _eid10289_ _rebind?10290_ _phi10291_ _ctx10292_)
        (gx#bind-identifier!__%
         _id10288_
         (##structure
          gx#extern-binding::t
          _eid10289_
          (gx#core-identifier-key _id10288_)
          _phi10291_)
         _rebind?10290_
         _phi10291_
         _ctx10292_)))
    (define gx#core-bind-extern!__0
      (lambda (_id10297_ _eid10298_)
        (let* ((_rebind?10300_ '#f)
               (_phi10302_ (gx#current-expander-phi))
               (_ctx10304_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id10297_
           _eid10298_
           _rebind?10300_
           _phi10302_
           _ctx10304_))))
    (define gx#core-bind-extern!__1
      (lambda (_id10306_ _eid10307_ _rebind?10308_)
        (let* ((_phi10310_ (gx#current-expander-phi))
               (_ctx10312_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id10306_
           _eid10307_
           _rebind?10308_
           _phi10310_
           _ctx10312_))))
    (define gx#core-bind-extern!__2
      (lambda (_id10314_ _eid10315_ _rebind?10316_ _phi10317_)
        (let ((_ctx10319_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id10314_
           _eid10315_
           _rebind?10316_
           _phi10317_
           _ctx10319_))))
    (define gx#core-bind-extern!
      (lambda _g13167_
        (let ((_g13166_ (##length _g13167_)))
          (cond ((##fx= _g13166_ 2)
                 (apply (lambda (_id10297_ _eid10298_)
                          (gx#core-bind-extern!__0 _id10297_ _eid10298_))
                        _g13167_))
                ((##fx= _g13166_ 3)
                 (apply (lambda (_id10306_ _eid10307_ _rebind?10308_)
                          (gx#core-bind-extern!__1
                           _id10306_
                           _eid10307_
                           _rebind?10308_))
                        _g13167_))
                ((##fx= _g13166_ 4)
                 (apply (lambda (_id10314_
                                 _eid10315_
                                 _rebind?10316_
                                 _phi10317_)
                          (gx#core-bind-extern!__2
                           _id10314_
                           _eid10315_
                           _rebind?10316_
                           _phi10317_))
                        _g13167_))
                ((##fx= _g13166_ 5)
                 (apply (lambda (_id10321_
                                 _eid10322_
                                 _rebind?10323_
                                 _phi10324_
                                 _ctx10325_)
                          (gx#core-bind-extern!__%
                           _id10321_
                           _eid10322_
                           _rebind?10323_
                           _phi10324_
                           _ctx10325_))
                        _g13167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g13167_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id10242_ _e10243_ _rebind?10244_ _phi10245_ _ctx10246_)
        (gx#bind-identifier!__%
         _id10242_
         (let ((_key10251_ (gx#core-identifier-key _id10242_))
               (_e10252_
                (if (or (##structure-instance-of? _e10243_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e10243_
                         'gx#expander-context::t))
                    _e10243_
                    (##structure
                     gx#user-expander::t
                     _e10243_
                     _ctx10246_
                     _phi10245_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key10251_ '#t _phi10245_ _ctx10246_)
            _key10251_
            _phi10245_
            _e10252_))
         _rebind?10244_
         _phi10245_
         _ctx10246_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id10257_ _e10258_)
        (let* ((_rebind?10260_ '#f)
               (_phi10262_ (gx#current-expander-phi))
               (_ctx10264_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id10257_
           _e10258_
           _rebind?10260_
           _phi10262_
           _ctx10264_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id10266_ _e10267_ _rebind?10268_)
        (let* ((_phi10270_ (gx#current-expander-phi))
               (_ctx10272_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id10266_
           _e10267_
           _rebind?10268_
           _phi10270_
           _ctx10272_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id10274_ _e10275_ _rebind?10276_ _phi10277_)
        (let ((_ctx10279_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id10274_
           _e10275_
           _rebind?10276_
           _phi10277_
           _ctx10279_))))
    (define gx#core-bind-syntax!
      (lambda _g13169_
        (let ((_g13168_ (##length _g13169_)))
          (cond ((##fx= _g13168_ 2)
                 (apply (lambda (_id10257_ _e10258_)
                          (gx#core-bind-syntax!__0 _id10257_ _e10258_))
                        _g13169_))
                ((##fx= _g13168_ 3)
                 (apply (lambda (_id10266_ _e10267_ _rebind?10268_)
                          (gx#core-bind-syntax!__1
                           _id10266_
                           _e10267_
                           _rebind?10268_))
                        _g13169_))
                ((##fx= _g13168_ 4)
                 (apply (lambda (_id10274_ _e10275_ _rebind?10276_ _phi10277_)
                          (gx#core-bind-syntax!__2
                           _id10274_
                           _e10275_
                           _rebind?10276_
                           _phi10277_))
                        _g13169_))
                ((##fx= _g13168_ 5)
                 (apply (lambda (_id10281_
                                 _e10282_
                                 _rebind?10283_
                                 _phi10284_
                                 _ctx10285_)
                          (gx#core-bind-syntax!__%
                           _id10281_
                           _e10282_
                           _rebind?10283_
                           _phi10284_
                           _ctx10285_))
                        _g13169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g13169_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id10225_ _e10226_ _rebind?10227_)
        (gx#core-bind-syntax!__%
         _id10225_
         _e10226_
         _rebind?10227_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id10232_ _e10233_)
        (let ((_rebind?10235_ '#f))
          (gx#core-bind-root-syntax!__% _id10232_ _e10233_ _rebind?10235_))))
    (define gx#core-bind-root-syntax!
      (lambda _g13171_
        (let ((_g13170_ (##length _g13171_)))
          (cond ((##fx= _g13170_ 2)
                 (apply (lambda (_id10232_ _e10233_)
                          (gx#core-bind-root-syntax!__0 _id10232_ _e10233_))
                        _g13171_))
                ((##fx= _g13170_ 3)
                 (apply (lambda (_id10237_ _e10238_ _rebind?10239_)
                          (gx#core-bind-root-syntax!__%
                           _id10237_
                           _e10238_
                           _rebind?10239_))
                        _g13171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g13171_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id10183_ _alias-id10184_ _rebind?10185_ _phi10186_ _ctx10187_)
        (gx#bind-identifier!__%
         _id10183_
         (let ((_key10189_ (gx#core-identifier-key _id10183_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key10189_ '#t _phi10186_ _ctx10187_)
            _key10189_
            _phi10186_
            _alias-id10184_))
         _rebind?10185_
         _phi10186_
         _ctx10187_)))
    (define gx#core-bind-alias!__0
      (lambda (_id10194_ _alias-id10195_)
        (let* ((_rebind?10197_ '#f)
               (_phi10199_ (gx#current-expander-phi))
               (_ctx10201_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id10194_
           _alias-id10195_
           _rebind?10197_
           _phi10199_
           _ctx10201_))))
    (define gx#core-bind-alias!__1
      (lambda (_id10203_ _alias-id10204_ _rebind?10205_)
        (let* ((_phi10207_ (gx#current-expander-phi))
               (_ctx10209_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id10203_
           _alias-id10204_
           _rebind?10205_
           _phi10207_
           _ctx10209_))))
    (define gx#core-bind-alias!__2
      (lambda (_id10211_ _alias-id10212_ _rebind?10213_ _phi10214_)
        (let ((_ctx10216_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id10211_
           _alias-id10212_
           _rebind?10213_
           _phi10214_
           _ctx10216_))))
    (define gx#core-bind-alias!
      (lambda _g13173_
        (let ((_g13172_ (##length _g13173_)))
          (cond ((##fx= _g13172_ 2)
                 (apply (lambda (_id10194_ _alias-id10195_)
                          (gx#core-bind-alias!__0 _id10194_ _alias-id10195_))
                        _g13173_))
                ((##fx= _g13172_ 3)
                 (apply (lambda (_id10203_ _alias-id10204_ _rebind?10205_)
                          (gx#core-bind-alias!__1
                           _id10203_
                           _alias-id10204_
                           _rebind?10205_))
                        _g13173_))
                ((##fx= _g13172_ 4)
                 (apply (lambda (_id10211_
                                 _alias-id10212_
                                 _rebind?10213_
                                 _phi10214_)
                          (gx#core-bind-alias!__2
                           _id10211_
                           _alias-id10212_
                           _rebind?10213_
                           _phi10214_))
                        _g13173_))
                ((##fx= _g13172_ 5)
                 (apply (lambda (_id10218_
                                 _alias-id10219_
                                 _rebind?10220_
                                 _phi10221_
                                 _ctx10222_)
                          (gx#core-bind-alias!__%
                           _id10218_
                           _alias-id10219_
                           _rebind?10220_
                           _phi10221_
                           _ctx10222_))
                        _g13173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g13173_))))))
    (define gx#make-binding-id__%
      (lambda (_key10140_ _syntax?10141_ _phi10142_ _ctx10143_)
        (if (uninterned-symbol? _key10140_)
            (gensym 'L)
            (if (pair? _key10140_)
                (gensym (car _key10140_))
                (if (##structure-instance-of? _ctx10143_ 'gx#top-context::t)
                    (let ((_ns10145_
                           (gx#core-context-namespace__% _ctx10143_)))
                      (if (and (fxzero? _phi10142_) (not _syntax?10141_))
                          (if _ns10145_
                              (make-symbol _ns10145_ '"#" _key10140_)
                              _key10140_)
                          (if _syntax?10141_
                              (make-symbol
                               (let ((_$e10147_ _ns10145_))
                                 (if _$e10147_ _$e10147_ '""))
                               '"[:"
                               (number->string _phi10142_)
                               '":]#"
                               _key10140_)
                              (make-symbol
                               (let ((_$e10150_ _ns10145_))
                                 (if _$e10150_ _$e10150_ '""))
                               '"["
                               (number->string _phi10142_)
                               '"]#"
                               _key10140_))))
                    (gensym _key10140_))))))
    (define gx#make-binding-id__0
      (lambda (_key10156_)
        (let* ((_syntax?10158_ '#f)
               (_phi10160_ (gx#current-expander-phi))
               (_ctx10162_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key10156_
           _syntax?10158_
           _phi10160_
           _ctx10162_))))
    (define gx#make-binding-id__1
      (lambda (_key10164_ _syntax?10165_)
        (let* ((_phi10167_ (gx#current-expander-phi))
               (_ctx10169_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key10164_
           _syntax?10165_
           _phi10167_
           _ctx10169_))))
    (define gx#make-binding-id__2
      (lambda (_key10171_ _syntax?10172_ _phi10173_)
        (let ((_ctx10175_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key10171_
           _syntax?10172_
           _phi10173_
           _ctx10175_))))
    (define gx#make-binding-id
      (lambda _g13175_
        (let ((_g13174_ (##length _g13175_)))
          (cond ((##fx= _g13174_ 1)
                 (apply (lambda (_key10156_)
                          (gx#make-binding-id__0 _key10156_))
                        _g13175_))
                ((##fx= _g13174_ 2)
                 (apply (lambda (_key10164_ _syntax?10165_)
                          (gx#make-binding-id__1 _key10164_ _syntax?10165_))
                        _g13175_))
                ((##fx= _g13174_ 3)
                 (apply (lambda (_key10171_ _syntax?10172_ _phi10173_)
                          (gx#make-binding-id__2
                           _key10171_
                           _syntax?10172_
                           _phi10173_))
                        _g13175_))
                ((##fx= _g13174_ 4)
                 (apply (lambda (_key10177_
                                 _syntax?10178_
                                 _phi10179_
                                 _ctx10180_)
                          (gx#make-binding-id__%
                           _key10177_
                           _syntax?10178_
                           _phi10179_
                           _ctx10180_))
                        _g13175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g13175_))))))))
