(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710488240)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx89240_)
        (letrec ((_expand-special89242_
                  (lambda (_hd89244_ _K89245_ _rest89246_ _r89247_)
                    (_K89245_
                     _rest89246_
                     (cons (gx#core-expand-top _hd89244_) _r89247_)))))
          (gx#core-expand-block__0 _stx89240_ _expand-special89242_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx88993_)
        (letrec ((_expand-special88995_
                  (lambda (_hd89115_ _K89116_ _rest89117_ _r89118_)
                    (let* ((_K89122_
                            (lambda (_e89120_)
                              (_K89116_ _rest89117_ (cons _e89120_ _r89118_))))
                           (_e8912389152_ _hd89115_)
                           (_E8914789156_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8912389152_)))
                           (_E8914389168_
                            (lambda ()
                              (if (gx#stx-pair? _e8912389152_)
                                  (let ((_e8914889160_
                                         (gx#syntax-e _e8912389152_)))
                                    (let ((_hd8914989163_
                                           (##car _e8914889160_))
                                          (_tl8915089165_
                                           (##cdr _e8914889160_)))
                                      (if (and (gx#identifier? _hd8914989163_)
                                               (gx#core-identifier=?
                                                _hd8914989163_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K89122_
                                               (gx#core-expand-define-runtime%
                                                _hd89115_))
                                              (_E8914789156_))
                                          (_E8914789156_))))
                                  (_E8914789156_))))
                           (_E8913989180_
                            (lambda ()
                              (if (gx#stx-pair? _e8912389152_)
                                  (let ((_e8914489172_
                                         (gx#syntax-e _e8912389152_)))
                                    (let ((_hd8914589175_
                                           (##car _e8914489172_))
                                          (_tl8914689177_
                                           (##cdr _e8914489172_)))
                                      (if (and (gx#identifier? _hd8914589175_)
                                               (gx#core-identifier=?
                                                _hd8914589175_
                                                '%#define-alias))
                                          (if '#t
                                              (_K89122_
                                               (gx#core-expand-define-alias%
                                                _hd89115_))
                                              (_E8914389168_))
                                          (_E8914389168_))))
                                  (_E8914389168_))))
                           (_E8912989192_
                            (lambda ()
                              (if (gx#stx-pair? _e8912389152_)
                                  (let ((_e8914089184_
                                         (gx#syntax-e _e8912389152_)))
                                    (let ((_hd8914189187_
                                           (##car _e8914089184_))
                                          (_tl8914289189_
                                           (##cdr _e8914089184_)))
                                      (if (and (gx#identifier? _hd8914189187_)
                                               (gx#core-identifier=?
                                                _hd8914189187_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K89122_
                                               (gx#core-expand-define-syntax%
                                                _hd89115_))
                                              (_E8913989180_))
                                          (_E8913989180_))))
                                  (_E8913989180_))))
                           (_E8912589224_
                            (lambda ()
                              (if (gx#stx-pair? _e8912389152_)
                                  (let ((_e8913089196_
                                         (gx#syntax-e _e8912389152_)))
                                    (let ((_hd8913189199_
                                           (##car _e8913089196_))
                                          (_tl8913289201_
                                           (##cdr _e8913089196_)))
                                      (if (and (gx#identifier? _hd8913189199_)
                                               (gx#core-identifier=?
                                                _hd8913189199_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8913289201_)
                                              (let ((_e8913389204_
                                                     (gx#syntax-e
                                                      _tl8913289201_)))
                                                (let ((_hd8913489207_
                                                       (##car _e8913389204_))
                                                      (_tl8913589209_
                                                       (##cdr _e8913389204_)))
                                                  (let ((_hd-bind89212_
                                                         _hd8913489207_))
                                                    (if (gx#stx-pair?
                                                         _tl8913589209_)
                                                        (let ((_e8913689214_
                                                               (gx#syntax-e
                                                                _tl8913589209_)))
                                                          (let ((_hd8913789217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8913689214_))
                        (_tl8913889219_ (##cdr _e8913689214_)))
                    (let ((_expr89222_ _hd8913789217_))
                      (if (gx#stx-null? _tl8913889219_)
                          (if (gx#core-bind-values? _hd-bind89212_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89212_)
                                (_K89122_ _hd89115_))
                              (_E8912989192_))
                          (_E8912989192_)))))
                (_E8912989192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8912989192_))
                                          (_E8912989192_))))
                                  (_E8912989192_))))
                           (_E8912489236_
                            (lambda ()
                              (if (gx#stx-pair? _e8912389152_)
                                  (let ((_e8912689228_
                                         (gx#syntax-e _e8912389152_)))
                                    (let ((_hd8912789231_
                                           (##car _e8912689228_))
                                          (_tl8912889233_
                                           (##cdr _e8912689228_)))
                                      (if (and (gx#identifier? _hd8912789231_)
                                               (gx#core-identifier=?
                                                _hd8912789231_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K89122_
                                               (gx#core-expand-begin-syntax%
                                                _hd89115_))
                                              (_E8912589224_))
                                          (_E8912589224_))))
                                  (_E8912589224_)))))
                      (_E8912489236_))))
                 (_eval-body88996_
                  (lambda (_rbody89004_)
                    (let _lp89006_ ((_rest89008_ _rbody89004_)
                                    (_body89009_ '())
                                    (_ebody89010_ '()))
                      (let* ((_rest8901189019_ _rest89008_)
                             (_else8901389027_
                              (lambda ()
                                (values _body89009_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody89010_)
                                          (gx#stx-source _stx88993_))))))
                             (_K8901589103_
                              (lambda (_rest89030_ _hd89031_)
                                (let* ((_e8903289049_ _hd89031_)
                                       (_E8904489053_
                                        (lambda ()
                                          (_lp89006_
                                           _rest89030_
                                           (cons _hd89031_ _body89009_)
                                           (cons _hd89031_ _ebody89010_))))
                                       (_E8903489065_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8903289049_)
                                              (let ((_e8904589057_
                                                     (gx#syntax-e
                                                      _e8903289049_)))
                                                (let ((_hd8904689060_
                                                       (##car _e8904589057_))
                                                      (_tl8904789062_
                                                       (##cdr _e8904589057_)))
                                                  (if (and (gx#identifier?
                                                            _hd8904689060_)
                                                           (gx#core-identifier=?
                                                            _hd8904689060_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp89006_
                                                           _rest89030_
                                                           (cons _hd89031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body89009_)
                   _ebody89010_)
                  (_E8904489053_))
              (_E8904489053_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8904489053_))))
                                       (_E8903389099_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8903289049_)
                                              (let ((_e8903589069_
                                                     (gx#syntax-e
                                                      _e8903289049_)))
                                                (let ((_hd8903689072_
                                                       (##car _e8903589069_))
                                                      (_tl8903789074_
                                                       (##cdr _e8903589069_)))
                                                  (if (and (gx#identifier?
                                                            _hd8903689072_)
                                                           (gx#core-identifier=?
                                                            _hd8903689072_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8903789074_)
                                                          (let ((_e8903889077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8903789074_)))
                    (let ((_hd8903989080_ (##car _e8903889077_))
                          (_tl8904089082_ (##cdr _e8903889077_)))
                      (let ((_hd-bind89085_ _hd8903989080_))
                        (if (gx#stx-pair? _tl8904089082_)
                            (let ((_e8904189087_ (gx#syntax-e _tl8904089082_)))
                              (let ((_hd8904289090_ (##car _e8904189087_))
                                    (_tl8904389092_ (##cdr _e8904189087_)))
                                (let ((_expr89095_ _hd8904289090_))
                                  (if (gx#stx-null? _tl8904389092_)
                                      (if '#t
                                          (let ((_ehd89097_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind89085_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr89095_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd89031_))))
                                            (_lp89006_
                                             _rest89030_
                                             (cons _ehd89097_ _body89009_)
                                             (cons _ehd89097_ _ebody89010_)))
                                          (_E8903489065_))
                                      (_E8903489065_)))))
                            (_E8903489065_)))))
                  (_E8903489065_))
              (_E8903489065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8903489065_)))))
                                  (_E8903389099_)))))
                        (if (##pair? _rest8901189019_)
                            (let ((_hd8901689106_ (##car _rest8901189019_))
                                  (_tl8901789108_ (##cdr _rest8901189019_)))
                              (let* ((_hd89111_ _hd8901689106_)
                                     (_rest89113_ _tl8901789108_))
                                (_K8901589103_ _rest89113_ _hd89111_)))
                            (_else8901389027_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody88999_
                     (gx#core-expand-block__1
                      _stx88993_
                      _expand-special88995_
                      '#f))
                    (_g89263_ (_eval-body88996_ _rbody88999_)))
               (begin
                 (let ((_g89264_
                        (if (##values? _g89263_)
                            (##vector-length _g89263_)
                            1)))
                   (if (not (##fx= _g89264_ 2))
                       (error "Context expects 2 values" _g89264_)))
                 (let ((_expanded-body89001_ (##vector-ref _g89263_ 0))
                       (_value89002_ (##vector-ref _g89263_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body89001_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value89002_ '())))
                    (gx#stx-source _stx88993_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx88963_)
        (let* ((_e8896488971_ _stx88963_)
               (_E8896688975_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8896488971_)))
               (_E8896588989_
                (lambda ()
                  (if (gx#stx-pair? _e8896488971_)
                      (let ((_e8896788979_ (gx#syntax-e _e8896488971_)))
                        (let ((_hd8896888982_ (##car _e8896788979_))
                              (_tl8896988984_ (##cdr _e8896788979_)))
                          (let ((_body88987_ _tl8896988984_))
                            (if (gx#stx-list? _body88987_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body88987_)
                                 (gx#stx-source _stx88963_))
                                (_E8896688975_)))))
                      (_E8896688975_)))))
          (_E8896588989_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx88961_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx88961_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx88907_)
        (let* ((_e8890888921_ _stx88907_)
               (_E8891088925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8890888921_)))
               (_E8890988957_
                (lambda ()
                  (if (gx#stx-pair? _e8890888921_)
                      (let ((_e8891188929_ (gx#syntax-e _e8890888921_)))
                        (let ((_hd8891288932_ (##car _e8891188929_))
                              (_tl8891388934_ (##cdr _e8891188929_)))
                          (if (gx#stx-pair? _tl8891388934_)
                              (let ((_e8891488937_
                                     (gx#syntax-e _tl8891388934_)))
                                (let ((_hd8891588940_ (##car _e8891488937_))
                                      (_tl8891688942_ (##cdr _e8891488937_)))
                                  (let ((_ann88945_ _hd8891588940_))
                                    (if (gx#stx-pair? _tl8891688942_)
                                        (let ((_e8891788947_
                                               (gx#syntax-e _tl8891688942_)))
                                          (let ((_hd8891888950_
                                                 (##car _e8891788947_))
                                                (_tl8891988952_
                                                 (##cdr _e8891788947_)))
                                            (let ((_expr88955_ _hd8891888950_))
                                              (if (gx#stx-null? _tl8891988952_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann88945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr88955_) '())))
               (gx#stx-source _stx88907_))
              (_E8891088925_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8891088925_)))))
                                        (_E8891088925_)))))
                              (_E8891088925_))))
                      (_E8891088925_)))))
          (_E8890988957_))))
    (define gx#core-expand-local-block
      (lambda (_stx88631_ _body88632_)
        (letrec ((_expand-special88634_
                  (lambda (_hd88902_ _K88903_ _rest88904_ _r88905_)
                    (_K88903_
                     '()
                     (cons (_expand-internal88635_ _hd88902_ _rest88904_)
                           _r88905_))))
                 (_expand-internal88635_
                  (lambda (_hd88898_ _rest88899_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal88637_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd88898_ _rest88899_))
                          (gx#stx-source _stx88631_))
                         _expand-internal-special88636_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj89257
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj89257)
                       __obj89257))))
                 (_expand-internal-special88636_
                  (lambda (_hd88793_ _K88794_ _rest88795_ _r88796_)
                    (let* ((_e8879788822_ _hd88793_)
                           (_E8881788826_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8879788822_)))
                           (_E8881388838_
                            (lambda ()
                              (if (gx#stx-pair? _e8879788822_)
                                  (let ((_e8881888830_
                                         (gx#syntax-e _e8879788822_)))
                                    (let ((_hd8881988833_
                                           (##car _e8881888830_))
                                          (_tl8882088835_
                                           (##cdr _e8881888830_)))
                                      (if (and (gx#identifier? _hd8881988833_)
                                               (gx#core-identifier=?
                                                _hd8881988833_
                                                '%#declare))
                                          (if '#t
                                              (_K88794_
                                               _rest88795_
                                               (cons (gx#core-expand-declare%
                                                      _hd88793_)
                                                     _r88796_))
                                              (_E8881788826_))
                                          (_E8881788826_))))
                                  (_E8881788826_))))
                           (_E8880988850_
                            (lambda ()
                              (if (gx#stx-pair? _e8879788822_)
                                  (let ((_e8881488842_
                                         (gx#syntax-e _e8879788822_)))
                                    (let ((_hd8881588845_
                                           (##car _e8881488842_))
                                          (_tl8881688847_
                                           (##cdr _e8881488842_)))
                                      (if (and (gx#identifier? _hd8881588845_)
                                               (gx#core-identifier=?
                                                _hd8881588845_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd88793_)
                                                (_K88794_
                                                 _rest88795_
                                                 _r88796_))
                                              (_E8881388838_))
                                          (_E8881388838_))))
                                  (_E8881388838_))))
                           (_E8879988862_
                            (lambda ()
                              (if (gx#stx-pair? _e8879788822_)
                                  (let ((_e8881088854_
                                         (gx#syntax-e _e8879788822_)))
                                    (let ((_hd8881188857_
                                           (##car _e8881088854_))
                                          (_tl8881288859_
                                           (##cdr _e8881088854_)))
                                      (if (and (gx#identifier? _hd8881188857_)
                                               (gx#core-identifier=?
                                                _hd8881188857_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd88793_)
                                                (_K88794_
                                                 _rest88795_
                                                 _r88796_))
                                              (_E8880988850_))
                                          (_E8880988850_))))
                                  (_E8880988850_))))
                           (_E8879888894_
                            (lambda ()
                              (if (gx#stx-pair? _e8879788822_)
                                  (let ((_e8880088866_
                                         (gx#syntax-e _e8879788822_)))
                                    (let ((_hd8880188869_
                                           (##car _e8880088866_))
                                          (_tl8880288871_
                                           (##cdr _e8880088866_)))
                                      (if (and (gx#identifier? _hd8880188869_)
                                               (gx#core-identifier=?
                                                _hd8880188869_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8880288871_)
                                              (let ((_e8880388874_
                                                     (gx#syntax-e
                                                      _tl8880288871_)))
                                                (let ((_hd8880488877_
                                                       (##car _e8880388874_))
                                                      (_tl8880588879_
                                                       (##cdr _e8880388874_)))
                                                  (let ((_hd-bind88882_
                                                         _hd8880488877_))
                                                    (if (gx#stx-pair?
                                                         _tl8880588879_)
                                                        (let ((_e8880688884_
                                                               (gx#syntax-e
                                                                _tl8880588879_)))
                                                          (let ((_hd8880788887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8880688884_))
                        (_tl8880888889_ (##cdr _e8880688884_)))
                    (let ((_expr88892_ _hd8880788887_))
                      (if (gx#stx-null? _tl8880888889_)
                          (if (gx#core-bind-values? _hd-bind88882_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88882_)
                                (_K88794_
                                 _rest88795_
                                 (cons _hd88793_ _r88796_)))
                              (_E8879988862_))
                          (_E8879988862_)))))
                (_E8879988862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8879988862_))
                                          (_E8879988862_))))
                                  (_E8879988862_)))))
                      (_E8879888894_))))
                 (_wrap-internal88637_
                  (lambda (_rbody88639_)
                    (let _lp88641_ ((_rest88643_ _rbody88639_)
                                    (_decls88644_ '())
                                    (_bind88645_ '())
                                    (_body88646_ '()))
                      (let* ((_e8864788654_ _rest88643_)
                             (_E8864988703_
                              (lambda ()
                                (let* ((_body88698_
                                        (let* ((_body8865788667_ _body88646_)
                                               (_else8866088675_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body88646_)
                                                   (gx#stx-source
                                                    _stx88631_)))))
                                          (let ((_K8866588695_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx88631_)))
                                                (_K8866288681_
                                                 (lambda (_expr88679_)
                                                   _expr88679_)))
                                            (let ((_try-match8865988691_
                                                   (lambda ()
                                                     (if (##pair? _body8865788667_)
                                                         (let ((_tl8866488686_
                                                                (##cdr _body8865788667_))
                                                               (_hd8866388684_
                                                                (##car _body8865788667_)))
                                                           (if (##null? _tl8866488686_)
                                                               (let ((_expr88689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8866388684_))
                         (_K8866288681_ _expr88689_))
                       (_else8866088675_)))
                 (_else8866088675_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8865788667_)
                                                  (_K8866588695_)
                                                  (_try-match8865988691_))))))
                                       (_body88700_
                                        (if (null? _bind88645_)
                                            _body88698_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind88645_
                                                         (cons _body88698_
                                                               '())))
                                             (gx#stx-source _stx88631_)))))
                                  (if (null? _decls88644_)
                                      _body88700_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls88644_
                                                   (cons _body88700_ '())))
                                       (gx#stx-source _stx88631_))))))
                             (_E8864888789_
                              (lambda ()
                                (if (gx#stx-pair? _e8864788654_)
                                    (let ((_e8865088707_
                                           (gx#syntax-e _e8864788654_)))
                                      (let ((_hd8865188710_
                                             (##car _e8865088707_))
                                            (_tl8865288712_
                                             (##cdr _e8865088707_)))
                                        (let* ((_hd88715_ _hd8865188710_)
                                               (_rest88717_ _tl8865288712_))
                                          (if '#t
                                              (let* ((_e8871888735_ _hd88715_)
                                                     (_E8873088739_
                                                      (lambda ()
                                                        (if (null? _bind88645_)
                                                            (_lp88641_
                                                             _rest88717_
                                                             _decls88644_
                                                             _bind88645_
                                                             (cons _hd88715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body88646_))
                    (_lp88641_
                     _rest88717_
                     _decls88644_
                     (cons (cons '#f (cons _hd88715_ '())) _bind88645_)
                     _body88646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8872088753_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8871888735_)
                                                            (let ((_e8873188743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8871888735_)))
                      (let ((_hd8873288746_ (##car _e8873188743_))
                            (_tl8873388748_ (##cdr _e8873188743_)))
                        (if (and (gx#identifier? _hd8873288746_)
                                 (gx#core-identifier=?
                                  _hd8873288746_
                                  '%#declare))
                            (let ((_xdecls88751_ _tl8873388748_))
                              (if '#t
                                  (_lp88641_
                                   _rest88717_
                                   (gx#stx-foldr
                                    cons
                                    _decls88644_
                                    _xdecls88751_)
                                   _bind88645_
                                   _body88646_)
                                  (_E8873088739_)))
                            (_E8873088739_))))
                    (_E8873088739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8871988785_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8871888735_)
                                                            (let ((_e8872188757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8871888735_)))
                      (let ((_hd8872288760_ (##car _e8872188757_))
                            (_tl8872388762_ (##cdr _e8872188757_)))
                        (if (and (gx#identifier? _hd8872288760_)
                                 (gx#core-identifier=?
                                  _hd8872288760_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8872388762_)
                                (let ((_e8872488765_
                                       (gx#syntax-e _tl8872388762_)))
                                  (let ((_hd8872588768_ (##car _e8872488765_))
                                        (_tl8872688770_ (##cdr _e8872488765_)))
                                    (let ((_hd-bind88773_ _hd8872588768_))
                                      (if (gx#stx-pair? _tl8872688770_)
                                          (let ((_e8872788775_
                                                 (gx#syntax-e _tl8872688770_)))
                                            (let ((_hd8872888778_
                                                   (##car _e8872788775_))
                                                  (_tl8872988780_
                                                   (##cdr _e8872788775_)))
                                              (let ((_expr88783_
                                                     _hd8872888778_))
                                                (if (gx#stx-null?
                                                     _tl8872988780_)
                                                    (if '#t
                                                        (_lp88641_
                                                         _rest88717_
                                                         _decls88644_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind88773_)
                             (cons (gx#core-expand-expression _expr88783_)
                                   '()))
                       _bind88645_)
                 _body88646_)
                (_E8872088753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8872088753_)))))
                                          (_E8872088753_)))))
                                (_E8872088753_))
                            (_E8872088753_))))
                    (_E8872088753_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8871988785_))
                                              (_E8864988703_)))))
                                    (_E8864988703_)))))
                        (_E8864888789_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body88632_)
            (gx#stx-source _stx88631_))
           _expand-special88634_))))
    (define gx#core-expand-declare%
      (lambda (_stx88569_)
        (let* ((_e8857088577_ _stx88569_)
               (_E8857288581_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8857088577_)))
               (_E8857188627_
                (lambda ()
                  (if (gx#stx-pair? _e8857088577_)
                      (let ((_e8857388585_ (gx#syntax-e _e8857088577_)))
                        (let ((_hd8857488588_ (##car _e8857388585_))
                              (_tl8857588590_ (##cdr _e8857388585_)))
                          (let ((_body88593_ _tl8857588590_))
                            (if (gx#stx-list? _body88593_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl88595_)
                                     (let* ((_e8859688603_ _decl88595_)
                                            (_E8859888607_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8859688603_)))
                                            (_E8859788623_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8859688603_)
                                                   (let ((_e8859988611_
                                                          (gx#syntax-e
                                                           _e8859688603_)))
                                                     (let ((_hd8860088614_
                                                            (##car _e8859988611_))
                                                           (_tl8860188616_
                                                            (##cdr _e8859988611_)))
                                                       (let* ((_head88619_
                                                               _hd8860088614_)
                                                              (_args88621_
                                                               _tl8860188616_))
                                                         (if (gx#stx-list?
                                                              _args88621_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl88595_)
                                                             (_E8859888607_)))))
                                                   (_E8859888607_)))))
                                       (_E8859788623_)))
                                   _body88593_))
                                 (gx#stx-source _stx88569_))
                                (_E8857288581_)))))
                      (_E8857288581_)))))
          (_E8857188627_))))
    (define gx#core-expand-extern%
      (lambda (_stx88473_)
        (let* ((_e8847488481_ _stx88473_)
               (_E8847688485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8847488481_)))
               (_E8847588565_
                (lambda ()
                  (if (gx#stx-pair? _e8847488481_)
                      (let ((_e8847788489_ (gx#syntax-e _e8847488481_)))
                        (let ((_hd8847888492_ (##car _e8847788489_))
                              (_tl8847988494_ (##cdr _e8847788489_)))
                          (let ((_body88497_ _tl8847988494_))
                            (if '#t
                                (let _lp88499_ ((_rest88501_ _body88497_)
                                                (_r88502_ '()))
                                  (let* ((_e8850388517_ _rest88501_)
                                         (_E8851588521_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx88473_)))
                                         (_E8850588525_
                                          (lambda ()
                                            (if (gx#stx-null? _e8850388517_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r88502_))
                                                     (gx#stx-source
                                                      _stx88473_))
                                                    (_E8851588521_))
                                                (_E8851588521_))))
                                         (_E8850488561_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8850388517_)
                                                (let ((_e8850688529_
                                                       (gx#syntax-e
                                                        _e8850388517_)))
                                                  (let ((_hd8850788532_
                                                         (##car _e8850688529_))
                                                        (_tl8850888534_
                                                         (##cdr _e8850688529_)))
                                                    (if (gx#stx-pair?
                                                         _hd8850788532_)
                                                        (let ((_e8850988537_
                                                               (gx#syntax-e
                                                                _hd8850788532_)))
                                                          (let ((_hd8851088540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8850988537_))
                        (_tl8851188542_ (##cdr _e8850988537_)))
                    (let ((_id88545_ _hd8851088540_))
                      (if (gx#stx-pair? _tl8851188542_)
                          (let ((_e8851288547_ (gx#syntax-e _tl8851188542_)))
                            (let ((_hd8851388550_ (##car _e8851288547_))
                                  (_tl8851488552_ (##cdr _e8851288547_)))
                              (let ((_eid88555_ _hd8851388550_))
                                (if (gx#stx-null? _tl8851488552_)
                                    (let ((_rest88557_ _tl8850888534_))
                                      (if (and (gx#identifier? _id88545_)
                                               (gx#identifier? _eid88555_))
                                          (let ((_eid88559_
                                                 (gx#stx-e _eid88555_)))
                                            (gx#core-bind-extern!__0
                                             _id88545_
                                             _eid88559_)
                                            (_lp88499_
                                             _rest88557_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id88545_)
                                                         (cons _eid88559_ '()))
                                                   _r88502_)))
                                          (_E8850588525_)))
                                    (_E8850588525_)))))
                          (_E8850588525_)))))
                (_E8850588525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8850588525_)))))
                                    (_E8850488561_)))
                                (_E8847688485_)))))
                      (_E8847688485_)))))
          (_E8847588565_))))
    (define gx#core-expand-define-values%
      (lambda (_stx88419_)
        (let* ((_e8842088433_ _stx88419_)
               (_E8842288437_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8842088433_)))
               (_E8842188469_
                (lambda ()
                  (if (gx#stx-pair? _e8842088433_)
                      (let ((_e8842388441_ (gx#syntax-e _e8842088433_)))
                        (let ((_hd8842488444_ (##car _e8842388441_))
                              (_tl8842588446_ (##cdr _e8842388441_)))
                          (if (gx#stx-pair? _tl8842588446_)
                              (let ((_e8842688449_
                                     (gx#syntax-e _tl8842588446_)))
                                (let ((_hd8842788452_ (##car _e8842688449_))
                                      (_tl8842888454_ (##cdr _e8842688449_)))
                                  (let ((_hd88457_ _hd8842788452_))
                                    (if (gx#stx-pair? _tl8842888454_)
                                        (let ((_e8842988459_
                                               (gx#syntax-e _tl8842888454_)))
                                          (let ((_hd8843088462_
                                                 (##car _e8842988459_))
                                                (_tl8843188464_
                                                 (##cdr _e8842988459_)))
                                            (let ((_expr88467_ _hd8843088462_))
                                              (if (gx#stx-null? _tl8843188464_)
                                                  (if (gx#core-bind-values?
                                                       _hd88457_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd88457_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd88457_)
                             (cons (gx#core-expand-expression _expr88467_)
                                   '())))
                 (gx#stx-source _stx88419_)))
              (_E8842288437_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8842288437_)))))
                                        (_E8842288437_)))))
                              (_E8842288437_))))
                      (_E8842288437_)))))
          (_E8842188469_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx88363_)
        (let* ((_e8836488377_ _stx88363_)
               (_E8836688381_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8836488377_)))
               (_E8836588415_
                (lambda ()
                  (if (gx#stx-pair? _e8836488377_)
                      (let ((_e8836788385_ (gx#syntax-e _e8836488377_)))
                        (let ((_hd8836888388_ (##car _e8836788385_))
                              (_tl8836988390_ (##cdr _e8836788385_)))
                          (if (gx#stx-pair? _tl8836988390_)
                              (let ((_e8837088393_
                                     (gx#syntax-e _tl8836988390_)))
                                (let ((_hd8837188396_ (##car _e8837088393_))
                                      (_tl8837288398_ (##cdr _e8837088393_)))
                                  (let ((_id88401_ _hd8837188396_))
                                    (if (gx#stx-pair? _tl8837288398_)
                                        (let ((_e8837388403_
                                               (gx#syntax-e _tl8837288398_)))
                                          (let ((_hd8837488406_
                                                 (##car _e8837388403_))
                                                (_tl8837588408_
                                                 (##cdr _e8837388403_)))
                                            (let ((_binding-id88411_
                                                   _hd8837488406_))
                                              (if (gx#stx-null? _tl8837588408_)
                                                  (if (and (gx#identifier?
                                                            _id88401_)
                                                           (gx#identifier?
                                                            _binding-id88411_))
                                                      (let ((_eid88413_
                                                             (gx#stx-e
                                                              _binding-id88411_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id88401_
                                                         _eid88413_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88401_)
                             (cons _eid88413_ '())))))
              (_E8836688381_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8836688381_)))))
                                        (_E8836688381_)))))
                              (_E8836688381_))))
                      (_E8836688381_)))))
          (_E8836588415_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx88306_)
        (let* ((_e8830788320_ _stx88306_)
               (_E8830988324_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8830788320_)))
               (_E8830888359_
                (lambda ()
                  (if (gx#stx-pair? _e8830788320_)
                      (let ((_e8831088328_ (gx#syntax-e _e8830788320_)))
                        (let ((_hd8831188331_ (##car _e8831088328_))
                              (_tl8831288333_ (##cdr _e8831088328_)))
                          (if (gx#stx-pair? _tl8831288333_)
                              (let ((_e8831388336_
                                     (gx#syntax-e _tl8831288333_)))
                                (let ((_hd8831488339_ (##car _e8831388336_))
                                      (_tl8831588341_ (##cdr _e8831388336_)))
                                  (let ((_id88344_ _hd8831488339_))
                                    (if (gx#stx-pair? _tl8831588341_)
                                        (let ((_e8831688346_
                                               (gx#syntax-e _tl8831588341_)))
                                          (let ((_hd8831788349_
                                                 (##car _e8831688346_))
                                                (_tl8831888351_
                                                 (##cdr _e8831688346_)))
                                            (let ((_expr88354_ _hd8831788349_))
                                              (if (gx#stx-null? _tl8831888351_)
                                                  (if (gx#identifier?
                                                       _id88344_)
                                                      (let ((_g89265_
                                                             (gx#core-expand-expression+1
                                                              _expr88354_)))
                                                        (begin
                                                          (let ((_g89266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g89265_)
                             (##vector-length _g89265_)
                             1)))
                    (if (not (##fx= _g89266_ 2))
                        (error "Context expects 2 values" _g89266_)))
                  (let ((_e-stx88356_ (##vector-ref _g89265_ 0))
                        (_e88357_ (##vector-ref _g89265_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id88344_ _e88357_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id88344_)
                                   (cons _e-stx88356_ '())))
                       (gx#stx-source _stx88306_))))))
              (_E8830988324_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8830988324_)))))
                                        (_E8830988324_)))))
                              (_E8830988324_))))
                      (_E8830988324_)))))
          (_E8830888359_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx88250_)
        (let* ((_e8825188264_ _stx88250_)
               (_E8825388268_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8825188264_)))
               (_E8825288302_
                (lambda ()
                  (if (gx#stx-pair? _e8825188264_)
                      (let ((_e8825488272_ (gx#syntax-e _e8825188264_)))
                        (let ((_hd8825588275_ (##car _e8825488272_))
                              (_tl8825688277_ (##cdr _e8825488272_)))
                          (if (gx#stx-pair? _tl8825688277_)
                              (let ((_e8825788280_
                                     (gx#syntax-e _tl8825688277_)))
                                (let ((_hd8825888283_ (##car _e8825788280_))
                                      (_tl8825988285_ (##cdr _e8825788280_)))
                                  (let ((_id88288_ _hd8825888283_))
                                    (if (gx#stx-pair? _tl8825988285_)
                                        (let ((_e8826088290_
                                               (gx#syntax-e _tl8825988285_)))
                                          (let ((_hd8826188293_
                                                 (##car _e8826088290_))
                                                (_tl8826288295_
                                                 (##cdr _e8826088290_)))
                                            (let ((_alias-id88298_
                                                   _hd8826188293_))
                                              (if (gx#stx-null? _tl8826288295_)
                                                  (if (and (gx#identifier?
                                                            _id88288_)
                                                           (gx#identifier?
                                                            _alias-id88298_))
                                                      (let ((_alias-id88300_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id88298_)))
                                                        (gx#core-bind-alias!__0
                                                         _id88288_
                                                         _alias-id88300_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88288_)
                             (cons _alias-id88300_ '())))))
              (_E8825388268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8825388268_)))))
                                        (_E8825388268_)))))
                              (_E8825388268_))))
                      (_E8825388268_)))))
          (_E8825288302_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx88193_ _wrap?88194_)
        (let* ((_e8819588205_ _stx88193_)
               (_E8819788209_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8819588205_)))
               (_E8819688236_
                (lambda ()
                  (if (gx#stx-pair? _e8819588205_)
                      (let ((_e8819888213_ (gx#syntax-e _e8819588205_)))
                        (let ((_hd8819988216_ (##car _e8819888213_))
                              (_tl8820088218_ (##cdr _e8819888213_)))
                          (if (gx#stx-pair? _tl8820088218_)
                              (let ((_e8820188221_
                                     (gx#syntax-e _tl8820088218_)))
                                (let ((_hd8820288224_ (##car _e8820188221_))
                                      (_tl8820388226_ (##cdr _e8820188221_)))
                                  (let* ((_hd88229_ _hd8820288224_)
                                         (_body88231_ _tl8820388226_))
                                    (if (gx#core-bind-values? _hd88229_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd88229_)
                                           (let ((_body88234_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd88229_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx88193_
                                                               _body88231_)
                                                              '()))))
                                             (if _wrap?88194_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body88234_)
                                                  (gx#stx-source _stx88193_))
                                                 _body88234_)))
                                         gx#current-expander-context
                                         (let ((__obj89258
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89258)
                                           __obj89258))
                                        (_E8819788209_)))))
                              (_E8819788209_))))
                      (_E8819788209_)))))
          (_E8819688236_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx88243_)
        (let ((_wrap?88245_ '#t))
          (gx#core-expand-lambda%__% _stx88243_ _wrap?88245_))))
    (define gx#core-expand-lambda%
      (lambda _g89268_
        (let ((_g89267_ (##length _g89268_)))
          (cond ((##fx= _g89267_ 1)
                 (apply (lambda (_stx88243_)
                          (gx#core-expand-lambda%__0 _stx88243_))
                        _g89268_))
                ((##fx= _g89267_ 2)
                 (apply (lambda (_stx88247_ _wrap?88248_)
                          (gx#core-expand-lambda%__% _stx88247_ _wrap?88248_))
                        _g89268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g89268_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx88157_)
        (let* ((_e8815888165_ _stx88157_)
               (_E8816088169_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8815888165_)))
               (_E8815988188_
                (lambda ()
                  (if (gx#stx-pair? _e8815888165_)
                      (let ((_e8816188173_ (gx#syntax-e _e8815888165_)))
                        (let ((_hd8816288176_ (##car _e8816188173_))
                              (_tl8816388178_ (##cdr _e8816188173_)))
                          (let ((_clauses88181_ _tl8816388178_))
                            (if (gx#stx-list? _clauses88181_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause88183_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause88183_)
                                       (let ((_$e88185_
                                              (gx#stx-source _clause88183_)))
                                         (if _$e88185_
                                             _$e88185_
                                             (gx#stx-source _stx88157_))))
                                      '#f))
                                   _clauses88181_))
                                 (gx#stx-source _stx88157_))
                                (_E8816088169_)))))
                      (_E8816088169_)))))
          (_E8815988188_))))
    (define gx#core-expand-let-values%
      (lambda (_stx88111_)
        (let* ((_e8811288122_ _stx88111_)
               (_E8811488126_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8811288122_)))
               (_E8811388153_
                (lambda ()
                  (if (gx#stx-pair? _e8811288122_)
                      (let ((_e8811588130_ (gx#syntax-e _e8811288122_)))
                        (let ((_hd8811688133_ (##car _e8811588130_))
                              (_tl8811788135_ (##cdr _e8811588130_)))
                          (if (gx#stx-pair? _tl8811788135_)
                              (let ((_e8811888138_
                                     (gx#syntax-e _tl8811788135_)))
                                (let ((_hd8811988141_ (##car _e8811888138_))
                                      (_tl8812088143_ (##cdr _e8811888138_)))
                                  (let* ((_hd88146_ _hd8811988141_)
                                         (_body88148_ _tl8812088143_))
                                    (if (gx#core-expand-let-bind? _hd88146_)
                                        (let ((_expressions88150_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd88146_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd88146_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd88146_
                                                           _expressions88150_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx88111_
                         _body88148_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx88111_)))
                                           gx#current-expander-context
                                           (let ((__obj89259
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89259)
                                             __obj89259)))
                                        (_E8811488126_)))))
                              (_E8811488126_))))
                      (_E8811488126_)))))
          (_E8811388153_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx88056_ _form88057_)
        (let* ((_e8805888068_ _stx88056_)
               (_E8806088072_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8805888068_)))
               (_E8805988097_
                (lambda ()
                  (if (gx#stx-pair? _e8805888068_)
                      (let ((_e8806188076_ (gx#syntax-e _e8805888068_)))
                        (let ((_hd8806288079_ (##car _e8806188076_))
                              (_tl8806388081_ (##cdr _e8806188076_)))
                          (if (gx#stx-pair? _tl8806388081_)
                              (let ((_e8806488084_
                                     (gx#syntax-e _tl8806388081_)))
                                (let ((_hd8806588087_ (##car _e8806488084_))
                                      (_tl8806688089_ (##cdr _e8806488084_)))
                                  (let* ((_hd88092_ _hd8806588087_)
                                         (_body88094_ _tl8806688089_))
                                    (if (gx#core-expand-let-bind? _hd88092_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd88092_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form88057_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd88092_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd88092_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx88056_
                                                               _body88094_)
                                                              '())))
                                            (gx#stx-source _stx88056_)))
                                         gx#current-expander-context
                                         (let ((__obj89260
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89260)
                                           __obj89260))
                                        (_E8806088072_)))))
                              (_E8806088072_))))
                      (_E8806088072_)))))
          (_E8805988097_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx88104_)
        (let ((_form88106_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx88104_ _form88106_))))
    (define gx#core-expand-letrec-values%
      (lambda _g89270_
        (let ((_g89269_ (##length _g89270_)))
          (cond ((##fx= _g89269_ 1)
                 (apply (lambda (_stx88104_)
                          (gx#core-expand-letrec-values%__0 _stx88104_))
                        _g89270_))
                ((##fx= _g89269_ 2)
                 (apply (lambda (_stx88108_ _form88109_)
                          (gx#core-expand-letrec-values%__%
                           _stx88108_
                           _form88109_))
                        _g89270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g89270_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx88053_)
        (gx#core-expand-letrec-values%__% _stx88053_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx88010_)
        (if (gx#stx-list? _stx88010_)
            (gx#stx-andmap
             (lambda (_bind88012_)
               (let* ((_e8801388023_ _bind88012_)
                      (_E8801588027_ (lambda () '#f))
                      (_E8801488049_
                       (lambda ()
                         (if (gx#stx-pair? _e8801388023_)
                             (let ((_e8801688031_ (gx#syntax-e _e8801388023_)))
                               (let ((_hd8801788034_ (##car _e8801688031_))
                                     (_tl8801888036_ (##cdr _e8801688031_)))
                                 (let ((_hd88039_ _hd8801788034_))
                                   (if (gx#stx-pair? _tl8801888036_)
                                       (let ((_e8801988041_
                                              (gx#syntax-e _tl8801888036_)))
                                         (let ((_hd8802088044_
                                                (##car _e8801988041_))
                                               (_tl8802188046_
                                                (##cdr _e8801988041_)))
                                           (if (gx#stx-null? _tl8802188046_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd88039_)
                                                   (_E8801588027_))
                                               (_E8801588027_))))
                                       (_E8801588027_)))))
                             (_E8801588027_)))))
                 (_E8801488049_)))
             _stx88010_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind87969_)
        (let* ((_e8797087980_ _bind87969_)
               (_E8797287984_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8797087980_)))
               (_E8797188006_
                (lambda ()
                  (if (gx#stx-pair? _e8797087980_)
                      (let ((_e8797387988_ (gx#syntax-e _e8797087980_)))
                        (let ((_hd8797487991_ (##car _e8797387988_))
                              (_tl8797587993_ (##cdr _e8797387988_)))
                          (if (gx#stx-pair? _tl8797587993_)
                              (let ((_e8797687996_
                                     (gx#syntax-e _tl8797587993_)))
                                (let ((_hd8797787999_ (##car _e8797687996_))
                                      (_tl8797888001_ (##cdr _e8797687996_)))
                                  (let ((_expr88004_ _hd8797787999_))
                                    (if (gx#stx-null? _tl8797888001_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88004_)
                                            (_E8797287984_))
                                        (_E8797287984_)))))
                              (_E8797287984_))))
                      (_E8797287984_)))))
          (_E8797188006_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind87928_)
        (let* ((_e8792987939_ _bind87928_)
               (_E8793187943_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8792987939_)))
               (_E8793087965_
                (lambda ()
                  (if (gx#stx-pair? _e8792987939_)
                      (let ((_e8793287947_ (gx#syntax-e _e8792987939_)))
                        (let ((_hd8793387950_ (##car _e8793287947_))
                              (_tl8793487952_ (##cdr _e8793287947_)))
                          (let ((_hd87955_ _hd8793387950_))
                            (if (gx#stx-pair? _tl8793487952_)
                                (let ((_e8793587957_
                                       (gx#syntax-e _tl8793487952_)))
                                  (let ((_hd8793687960_ (##car _e8793587957_))
                                        (_tl8793787962_ (##cdr _e8793587957_)))
                                    (if (gx#stx-null? _tl8793787962_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd87955_)
                                            (_E8793187943_))
                                        (_E8793187943_))))
                                (_E8793187943_)))))
                      (_E8793187943_)))))
          (_E8793087965_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind87886_ _expr87887_)
        (let* ((_e8788887898_ _bind87886_)
               (_E8789087902_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8788887898_)))
               (_E8788987924_
                (lambda ()
                  (if (gx#stx-pair? _e8788887898_)
                      (let ((_e8789187906_ (gx#syntax-e _e8788887898_)))
                        (let ((_hd8789287909_ (##car _e8789187906_))
                              (_tl8789387911_ (##cdr _e8789187906_)))
                          (let ((_hd87914_ _hd8789287909_))
                            (if (gx#stx-pair? _tl8789387911_)
                                (let ((_e8789487916_
                                       (gx#syntax-e _tl8789387911_)))
                                  (let ((_hd8789587919_ (##car _e8789487916_))
                                        (_tl8789687921_ (##cdr _e8789487916_)))
                                    (if (gx#stx-null? _tl8789687921_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd87914_)
                                                  (cons _expr87887_ '()))
                                            (_E8789087902_))
                                        (_E8789087902_))))
                                (_E8789087902_)))))
                      (_E8789087902_)))))
          (_E8788987924_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx87840_)
        (let* ((_e8784187851_ _stx87840_)
               (_E8784387855_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8784187851_)))
               (_E8784287882_
                (lambda ()
                  (if (gx#stx-pair? _e8784187851_)
                      (let ((_e8784487859_ (gx#syntax-e _e8784187851_)))
                        (let ((_hd8784587862_ (##car _e8784487859_))
                              (_tl8784687864_ (##cdr _e8784487859_)))
                          (if (gx#stx-pair? _tl8784687864_)
                              (let ((_e8784787867_
                                     (gx#syntax-e _tl8784687864_)))
                                (let ((_hd8784887870_ (##car _e8784787867_))
                                      (_tl8784987872_ (##cdr _e8784787867_)))
                                  (let* ((_hd87875_ _hd8784887870_)
                                         (_body87877_ _tl8784987872_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87875_)
                                        (let ((_expanders87879_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd87875_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd87875_
                                              _expanders87879_)
                                             (gx#core-expand-local-block
                                              _stx87840_
                                              _body87877_))
                                           gx#current-expander-context
                                           (let ((__obj89261
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89261)
                                             __obj89261)))
                                        (_E8784387855_)))))
                              (_E8784387855_))))
                      (_E8784387855_)))))
          (_E8784287882_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx87789_)
        (let* ((_e8779087800_ _stx87789_)
               (_E8779287804_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8779087800_)))
               (_E8779187836_
                (lambda ()
                  (if (gx#stx-pair? _e8779087800_)
                      (let ((_e8779387808_ (gx#syntax-e _e8779087800_)))
                        (let ((_hd8779487811_ (##car _e8779387808_))
                              (_tl8779587813_ (##cdr _e8779387808_)))
                          (if (gx#stx-pair? _tl8779587813_)
                              (let ((_e8779687816_
                                     (gx#syntax-e _tl8779587813_)))
                                (let ((_hd8779787819_ (##car _e8779687816_))
                                      (_tl8779887821_ (##cdr _e8779687816_)))
                                  (let* ((_hd87824_ _hd8779787819_)
                                         (_body87826_ _tl8779887821_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87824_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd87824_
                                            (make-list
                                             (gx#stx-length _hd87824_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8782887831_
                                                     _g8782987833_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8782887831_
                                               _g8782987833_
                                               '#t))
                                            _hd87824_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd87824_))
                                           (gx#core-expand-local-block
                                            _stx87789_
                                            _body87826_))
                                         gx#current-expander-context
                                         (let ((__obj89262
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89262)
                                           __obj89262))
                                        (_E8779287804_)))))
                              (_E8779287804_))))
                      (_E8779287804_)))))
          (_E8779187836_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx87746_)
        (if (gx#stx-list? _stx87746_)
            (gx#stx-andmap
             (lambda (_bind87748_)
               (let* ((_e8774987759_ _bind87748_)
                      (_E8775187763_ (lambda () '#f))
                      (_E8775087785_
                       (lambda ()
                         (if (gx#stx-pair? _e8774987759_)
                             (let ((_e8775287767_ (gx#syntax-e _e8774987759_)))
                               (let ((_hd8775387770_ (##car _e8775287767_))
                                     (_tl8775487772_ (##cdr _e8775287767_)))
                                 (let ((_hd87775_ _hd8775387770_))
                                   (if (gx#stx-pair? _tl8775487772_)
                                       (let ((_e8775587777_
                                              (gx#syntax-e _tl8775487772_)))
                                         (let ((_hd8775687780_
                                                (##car _e8775587777_))
                                               (_tl8775787782_
                                                (##cdr _e8775587777_)))
                                           (if (gx#stx-null? _tl8775787782_)
                                               (if '#t
                                                   (gx#identifier? _hd87775_)
                                                   (_E8775187763_))
                                               (_E8775187763_))))
                                       (_E8775187763_)))))
                             (_E8775187763_)))))
                 (_E8775087785_)))
             _stx87746_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind87703_)
        (let* ((_e8770487714_ _bind87703_)
               (_E8770687718_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8770487714_)))
               (_E8770587742_
                (lambda ()
                  (if (gx#stx-pair? _e8770487714_)
                      (let ((_e8770787722_ (gx#syntax-e _e8770487714_)))
                        (let ((_hd8770887725_ (##car _e8770787722_))
                              (_tl8770987727_ (##cdr _e8770787722_)))
                          (if (gx#stx-pair? _tl8770987727_)
                              (let ((_e8771087730_
                                     (gx#syntax-e _tl8770987727_)))
                                (let ((_hd8771187733_ (##car _e8771087730_))
                                      (_tl8771287735_ (##cdr _e8771087730_)))
                                  (let ((_expr87738_ _hd8771187733_))
                                    (if (gx#stx-null? _tl8771287735_)
                                        (if '#t
                                            (let ((_g89271_
                                                   (gx#core-expand-expression+1
                                                    _expr87738_)))
                                              (begin
                                                (let ((_g89272_
                                                       (if (##values? _g89271_)
                                                           (##vector-length
                                                            _g89271_)
                                                           1)))
                                                  (if (not (##fx= _g89272_ 2))
                                                      (error "Context expects 2 values"
                                                             _g89272_)))
                                                (let ((_e87740_
                                                       (##vector-ref
                                                        _g89271_
                                                        1)))
                                                  _e87740_)))
                                            (_E8770687718_))
                                        (_E8770687718_)))))
                              (_E8770687718_))))
                      (_E8770687718_)))))
          (_E8770587742_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind87648_ _e87649_ _rebind?87650_)
        (let* ((_e8765187661_ _bind87648_)
               (_E8765387665_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8765187661_)))
               (_E8765287687_
                (lambda ()
                  (if (gx#stx-pair? _e8765187661_)
                      (let ((_e8765487669_ (gx#syntax-e _e8765187661_)))
                        (let ((_hd8765587672_ (##car _e8765487669_))
                              (_tl8765687674_ (##cdr _e8765487669_)))
                          (let ((_id87677_ _hd8765587672_))
                            (if (gx#stx-pair? _tl8765687674_)
                                (let ((_e8765787679_
                                       (gx#syntax-e _tl8765687674_)))
                                  (let ((_hd8765887682_ (##car _e8765787679_))
                                        (_tl8765987684_ (##cdr _e8765787679_)))
                                    (if (gx#stx-null? _tl8765987684_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id87677_
                                             _e87649_
                                             _rebind?87650_)
                                            (_E8765387665_))
                                        (_E8765387665_))))
                                (_E8765387665_)))))
                      (_E8765387665_)))))
          (_E8765287687_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind87694_ _e87695_)
        (let ((_rebind?87697_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind87694_
           _e87695_
           _rebind?87697_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g89274_
        (let ((_g89273_ (##length _g89274_)))
          (cond ((##fx= _g89273_ 2)
                 (apply (lambda (_bind87694_ _e87695_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind87694_
                           _e87695_))
                        _g89274_))
                ((##fx= _g89273_ 3)
                 (apply (lambda (_bind87699_ _e87700_ _rebind?87701_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind87699_
                           _e87700_
                           _rebind?87701_))
                        _g89274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g89274_))))))
    (define gx#core-expand-expression%
      (lambda (_stx87606_)
        (let* ((_e8760787617_ _stx87606_)
               (_E8760987621_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8760787617_)))
               (_E8760887643_
                (lambda ()
                  (if (gx#stx-pair? _e8760787617_)
                      (let ((_e8761087625_ (gx#syntax-e _e8760787617_)))
                        (let ((_hd8761187628_ (##car _e8761087625_))
                              (_tl8761287630_ (##cdr _e8761087625_)))
                          (if (gx#stx-pair? _tl8761287630_)
                              (let ((_e8761387633_
                                     (gx#syntax-e _tl8761287630_)))
                                (let ((_hd8761487636_ (##car _e8761387633_))
                                      (_tl8761587638_ (##cdr _e8761387633_)))
                                  (let ((_expr87641_ _hd8761487636_))
                                    (if (gx#stx-null? _tl8761587638_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87641_)
                                            (_E8760987621_))
                                        (_E8760987621_)))))
                              (_E8760987621_))))
                      (_E8760987621_)))))
          (_E8760887643_))))
    (define gx#core-expand-quote%
      (lambda (_stx87565_)
        (let* ((_e8756687576_ _stx87565_)
               (_E8756887580_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8756687576_)))
               (_E8756787602_
                (lambda ()
                  (if (gx#stx-pair? _e8756687576_)
                      (let ((_e8756987584_ (gx#syntax-e _e8756687576_)))
                        (let ((_hd8757087587_ (##car _e8756987584_))
                              (_tl8757187589_ (##cdr _e8756987584_)))
                          (if (gx#stx-pair? _tl8757187589_)
                              (let ((_e8757287592_
                                     (gx#syntax-e _tl8757187589_)))
                                (let ((_hd8757387595_ (##car _e8757287592_))
                                      (_tl8757487597_ (##cdr _e8757287592_)))
                                  (let ((_e87600_ _hd8757387595_))
                                    (if (gx#stx-null? _tl8757487597_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e87600_)
                                                         '()))
                                             (gx#stx-source _stx87565_))
                                            (_E8756887580_))
                                        (_E8756887580_)))))
                              (_E8756887580_))))
                      (_E8756887580_)))))
          (_E8756787602_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx87524_)
        (let* ((_e8752587535_ _stx87524_)
               (_E8752787539_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8752587535_)))
               (_E8752687561_
                (lambda ()
                  (if (gx#stx-pair? _e8752587535_)
                      (let ((_e8752887543_ (gx#syntax-e _e8752587535_)))
                        (let ((_hd8752987546_ (##car _e8752887543_))
                              (_tl8753087548_ (##cdr _e8752887543_)))
                          (if (gx#stx-pair? _tl8753087548_)
                              (let ((_e8753187551_
                                     (gx#syntax-e _tl8753087548_)))
                                (let ((_hd8753287554_ (##car _e8753187551_))
                                      (_tl8753387556_ (##cdr _e8753187551_)))
                                  (let ((_e87559_ _hd8753287554_))
                                    (if (gx#stx-null? _tl8753387556_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e87559_)
                                                         '()))
                                             (gx#stx-source _stx87524_))
                                            (_E8752787539_))
                                        (_E8752787539_)))))
                              (_E8752787539_))))
                      (_E8752787539_)))))
          (_E8752687561_))))
    (define gx#core-expand-call%
      (lambda (_stx87481_)
        (let* ((_e8748287492_ _stx87481_)
               (_E8748487496_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8748287492_)))
               (_E8748387520_
                (lambda ()
                  (if (gx#stx-pair? _e8748287492_)
                      (let ((_e8748587500_ (gx#syntax-e _e8748287492_)))
                        (let ((_hd8748687503_ (##car _e8748587500_))
                              (_tl8748787505_ (##cdr _e8748587500_)))
                          (if (gx#stx-pair? _tl8748787505_)
                              (let ((_e8748887508_
                                     (gx#syntax-e _tl8748787505_)))
                                (let ((_hd8748987511_ (##car _e8748887508_))
                                      (_tl8749087513_ (##cdr _e8748887508_)))
                                  (let* ((_rator87516_ _hd8748987511_)
                                         (_args87518_ _tl8749087513_))
                                    (if (gx#stx-list? _args87518_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator87516_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args87518_))
                                         (gx#stx-source _stx87481_))
                                        (_E8748487496_)))))
                              (_E8748487496_))))
                      (_E8748487496_)))))
          (_E8748387520_))))
    (define gx#core-expand-if%
      (lambda (_stx87414_)
        (let* ((_e8741587431_ _stx87414_)
               (_E8741787435_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8741587431_)))
               (_E8741687477_
                (lambda ()
                  (if (gx#stx-pair? _e8741587431_)
                      (let ((_e8741887439_ (gx#syntax-e _e8741587431_)))
                        (let ((_hd8741987442_ (##car _e8741887439_))
                              (_tl8742087444_ (##cdr _e8741887439_)))
                          (if (gx#stx-pair? _tl8742087444_)
                              (let ((_e8742187447_
                                     (gx#syntax-e _tl8742087444_)))
                                (let ((_hd8742287450_ (##car _e8742187447_))
                                      (_tl8742387452_ (##cdr _e8742187447_)))
                                  (let ((_test87455_ _hd8742287450_))
                                    (if (gx#stx-pair? _tl8742387452_)
                                        (let ((_e8742487457_
                                               (gx#syntax-e _tl8742387452_)))
                                          (let ((_hd8742587460_
                                                 (##car _e8742487457_))
                                                (_tl8742687462_
                                                 (##cdr _e8742487457_)))
                                            (let ((_K87465_ _hd8742587460_))
                                              (if (gx#stx-pair? _tl8742687462_)
                                                  (let ((_e8742787467_
                                                         (gx#syntax-e
                                                          _tl8742687462_)))
                                                    (let ((_hd8742887470_
                                                           (##car _e8742787467_))
                                                          (_tl8742987472_
                                                           (##cdr _e8742787467_)))
                                                      (let ((_E87475_
                                                             _hd8742887470_))
                                                        (if (gx#stx-null?
                                                             _tl8742987472_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test87455_)
                                     (cons (gx#core-expand-expression _K87465_)
                                           (cons (gx#core-expand-expression
                                                  _E87475_)
                                                 '()))))
                         (gx#stx-source _stx87414_))
                        (_E8741787435_))
                    (_E8741787435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8741787435_)))))
                                        (_E8741787435_)))))
                              (_E8741787435_))))
                      (_E8741787435_)))))
          (_E8741687477_))))
    (define gx#core-expand-ref%
      (lambda (_stx87373_)
        (let* ((_e8737487384_ _stx87373_)
               (_E8737687388_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8737487384_)))
               (_E8737587410_
                (lambda ()
                  (if (gx#stx-pair? _e8737487384_)
                      (let ((_e8737787392_ (gx#syntax-e _e8737487384_)))
                        (let ((_hd8737887395_ (##car _e8737787392_))
                              (_tl8737987397_ (##cdr _e8737787392_)))
                          (if (gx#stx-pair? _tl8737987397_)
                              (let ((_e8738087400_
                                     (gx#syntax-e _tl8737987397_)))
                                (let ((_hd8738187403_ (##car _e8738087400_))
                                      (_tl8738287405_ (##cdr _e8738087400_)))
                                  (let ((_id87408_ _hd8738187403_))
                                    (if (gx#stx-null? _tl8738287405_)
                                        (if (gx#identifier? _id87408_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id87408_
                                                          _stx87373_)
                                                         '()))
                                             (gx#stx-source _stx87373_))
                                            (_E8737687388_))
                                        (_E8737687388_)))))
                              (_E8737687388_))))
                      (_E8737687388_)))))
          (_E8737587410_))))
    (define gx#core-expand-setq%
      (lambda (_stx87319_)
        (let* ((_e8732087333_ _stx87319_)
               (_E8732287337_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8732087333_)))
               (_E8732187369_
                (lambda ()
                  (if (gx#stx-pair? _e8732087333_)
                      (let ((_e8732387341_ (gx#syntax-e _e8732087333_)))
                        (let ((_hd8732487344_ (##car _e8732387341_))
                              (_tl8732587346_ (##cdr _e8732387341_)))
                          (if (gx#stx-pair? _tl8732587346_)
                              (let ((_e8732687349_
                                     (gx#syntax-e _tl8732587346_)))
                                (let ((_hd8732787352_ (##car _e8732687349_))
                                      (_tl8732887354_ (##cdr _e8732687349_)))
                                  (let ((_id87357_ _hd8732787352_))
                                    (if (gx#stx-pair? _tl8732887354_)
                                        (let ((_e8732987359_
                                               (gx#syntax-e _tl8732887354_)))
                                          (let ((_hd8733087362_
                                                 (##car _e8732987359_))
                                                (_tl8733187364_
                                                 (##cdr _e8732987359_)))
                                            (let ((_expr87367_ _hd8733087362_))
                                              (if (gx#stx-null? _tl8733187364_)
                                                  (if (gx#identifier?
                                                       _id87357_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id87357_
                            _stx87319_)
                           (cons (gx#core-expand-expression _expr87367_) '())))
               (gx#stx-source _stx87319_))
              (_E8732287337_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8732287337_)))))
                                        (_E8732287337_)))))
                              (_E8732287337_))))
                      (_E8732287337_)))))
          (_E8732187369_))))
    (define gx#macro-expand-extern
      (lambda (_stx87167_)
        (letrec ((_generate87169_
                  (lambda (_body87199_)
                    (let _lp87201_ ((_rest87203_ _body87199_)
                                    (_ns87204_ (gx#core-context-namespace__0))
                                    (_r87205_ '()))
                      (let* ((_e8720687221_ _rest87203_)
                             (_E8721987225_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8720687221_)))
                             (_E8721587229_
                              (lambda ()
                                (if (gx#stx-null? _e8720687221_)
                                    (if '#t (reverse _r87205_) (_E8721987225_))
                                    (_E8721987225_))))
                             (_E8720887286_
                              (lambda ()
                                (if (gx#stx-pair? _e8720687221_)
                                    (let ((_e8721687233_
                                           (gx#syntax-e _e8720687221_)))
                                      (let ((_hd8721787236_
                                             (##car _e8721687233_))
                                            (_tl8721887238_
                                             (##cdr _e8721687233_)))
                                        (let* ((_hd87241_ _hd8721787236_)
                                               (_rest87243_ _tl8721887238_))
                                          (if '#t
                                              (if (gx#identifier? _hd87241_)
                                                  (_lp87201_
                                                   _rest87243_
                                                   _ns87204_
                                                   (cons (cons _hd87241_
                                                               (cons (if _ns87204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd87241_
                                  _ns87204_
                                  '"#"
                                  _hd87241_)
                                 _hd87241_)
                             '()))
                 _r87205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8724487254_
                                                          _hd87241_)
                                                         (_E8724687258_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8724487254_)))
                                                         (_E8724587282_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8724487254_)
                        (let ((_e8724787262_ (gx#syntax-e _e8724487254_)))
                          (let ((_hd8724887265_ (##car _e8724787262_))
                                (_tl8724987267_ (##cdr _e8724787262_)))
                            (let ((_id87270_ _hd8724887265_))
                              (if (gx#stx-pair? _tl8724987267_)
                                  (let ((_e8725087272_
                                         (gx#syntax-e _tl8724987267_)))
                                    (let ((_hd8725187275_
                                           (##car _e8725087272_))
                                          (_tl8725287277_
                                           (##cdr _e8725087272_)))
                                      (let ((_eid87280_ _hd8725187275_))
                                        (if (gx#stx-null? _tl8725287277_)
                                            (if (and (gx#identifier? _id87270_)
                                                     (gx#identifier?
                                                      _eid87280_))
                                                (_lp87201_
                                                 _rest87243_
                                                 _ns87204_
                                                 (cons (cons _id87270_
                                                             (cons _eid87280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r87205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8724687258_))
                                            (_E8724687258_)))))
                                  (_E8724687258_)))))
                        (_E8724687258_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8724587282_)))
                                              (_E8721587229_)))))
                                    (_E8721587229_))))
                             (_E8720787315_
                              (lambda ()
                                (if (gx#stx-pair? _e8720687221_)
                                    (let ((_e8720987290_
                                           (gx#syntax-e _e8720687221_)))
                                      (let ((_hd8721087293_
                                             (##car _e8720987290_))
                                            (_tl8721187295_
                                             (##cdr _e8720987290_)))
                                        (if (eq? (gx#stx-e _hd8721087293_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8721187295_)
                                                (let ((_e8721287298_
                                                       (gx#syntax-e
                                                        _tl8721187295_)))
                                                  (let ((_hd8721387301_
                                                         (##car _e8721287298_))
                                                        (_tl8721487303_
                                                         (##cdr _e8721287298_)))
                                                    (let* ((_ns87306_
                                                            _hd8721387301_)
                                                           (_rest87308_
                                                            _tl8721487303_))
                                                      (if '#t
                                                          (let ((_ns87313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns87306_)
                             (symbol->string (gx#stx-e _ns87306_))
                             (if (or (gx#stx-string? _ns87306_)
                                     (gx#stx-false? _ns87306_))
                                 (gx#stx-e _ns87306_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx87167_
                                  _ns87306_)))))
                    (_lp87201_ _rest87308_ _ns87313_ _r87205_))
                  (_E8720887286_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8720887286_))
                                            (_E8720887286_))))
                                    (_E8720887286_)))))
                        (_E8720787315_))))))
          (let* ((_e8717087177_ _stx87167_)
                 (_E8717287181_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8717087177_)))
                 (_E8717187195_
                  (lambda ()
                    (if (gx#stx-pair? _e8717087177_)
                        (let ((_e8717387185_ (gx#syntax-e _e8717087177_)))
                          (let ((_hd8717487188_ (##car _e8717387185_))
                                (_tl8717587190_ (##cdr _e8717387185_)))
                            (let ((_body87193_ _tl8717587190_))
                              (if (gx#stx-list? _body87193_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate87169_ _body87193_))
                                  (_E8717287181_)))))
                        (_E8717287181_)))))
            (_E8717187195_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx87113_)
        (let* ((_e8711487127_ _stx87113_)
               (_E8711687131_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8711487127_)))
               (_E8711587163_
                (lambda ()
                  (if (gx#stx-pair? _e8711487127_)
                      (let ((_e8711787135_ (gx#syntax-e _e8711487127_)))
                        (let ((_hd8711887138_ (##car _e8711787135_))
                              (_tl8711987140_ (##cdr _e8711787135_)))
                          (if (gx#stx-pair? _tl8711987140_)
                              (let ((_e8712087143_
                                     (gx#syntax-e _tl8711987140_)))
                                (let ((_hd8712187146_ (##car _e8712087143_))
                                      (_tl8712287148_ (##cdr _e8712087143_)))
                                  (let ((_hd87151_ _hd8712187146_))
                                    (if (gx#stx-pair? _tl8712287148_)
                                        (let ((_e8712387153_
                                               (gx#syntax-e _tl8712287148_)))
                                          (let ((_hd8712487156_
                                                 (##car _e8712387153_))
                                                (_tl8712587158_
                                                 (##cdr _e8712387153_)))
                                            (let ((_expr87161_ _hd8712487156_))
                                              (if (gx#stx-null? _tl8712587158_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd87151_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd87151_)
                          (cons _expr87161_ '())))
              (_E8711687131_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8711687131_)))))
                                        (_E8711687131_)))))
                              (_E8711687131_))))
                      (_E8711687131_)))))
          (_E8711587163_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx87059_)
        (let* ((_e8706087073_ _stx87059_)
               (_E8706287077_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8706087073_)))
               (_E8706187109_
                (lambda ()
                  (if (gx#stx-pair? _e8706087073_)
                      (let ((_e8706387081_ (gx#syntax-e _e8706087073_)))
                        (let ((_hd8706487084_ (##car _e8706387081_))
                              (_tl8706587086_ (##cdr _e8706387081_)))
                          (if (gx#stx-pair? _tl8706587086_)
                              (let ((_e8706687089_
                                     (gx#syntax-e _tl8706587086_)))
                                (let ((_hd8706787092_ (##car _e8706687089_))
                                      (_tl8706887094_ (##cdr _e8706687089_)))
                                  (let ((_hd87097_ _hd8706787092_))
                                    (if (gx#stx-pair? _tl8706887094_)
                                        (let ((_e8706987099_
                                               (gx#syntax-e _tl8706887094_)))
                                          (let ((_hd8707087102_
                                                 (##car _e8706987099_))
                                                (_tl8707187104_
                                                 (##cdr _e8706987099_)))
                                            (let ((_expr87107_ _hd8707087102_))
                                              (if (gx#stx-null? _tl8707187104_)
                                                  (if (gx#identifier?
                                                       _hd87097_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd87097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr87107_ '())))
              (_E8706287077_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8706287077_)))))
                                        (_E8706287077_)))))
                              (_E8706287077_))))
                      (_E8706287077_)))))
          (_E8706187109_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx87005_)
        (let* ((_e8700687019_ _stx87005_)
               (_E8700887023_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8700687019_)))
               (_E8700787055_
                (lambda ()
                  (if (gx#stx-pair? _e8700687019_)
                      (let ((_e8700987027_ (gx#syntax-e _e8700687019_)))
                        (let ((_hd8701087030_ (##car _e8700987027_))
                              (_tl8701187032_ (##cdr _e8700987027_)))
                          (if (gx#stx-pair? _tl8701187032_)
                              (let ((_e8701287035_
                                     (gx#syntax-e _tl8701187032_)))
                                (let ((_hd8701387038_ (##car _e8701287035_))
                                      (_tl8701487040_ (##cdr _e8701287035_)))
                                  (let ((_id87043_ _hd8701387038_))
                                    (if (gx#stx-pair? _tl8701487040_)
                                        (let ((_e8701587045_
                                               (gx#syntax-e _tl8701487040_)))
                                          (let ((_hd8701687048_
                                                 (##car _e8701587045_))
                                                (_tl8701787050_
                                                 (##cdr _e8701587045_)))
                                            (let ((_alias-id87053_
                                                   _hd8701687048_))
                                              (if (gx#stx-null? _tl8701787050_)
                                                  (if (and (gx#identifier?
                                                            _id87043_)
                                                           (gx#identifier?
                                                            _alias-id87053_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id87043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id87053_ '())))
              (_E8700887023_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8700887023_)))))
                                        (_E8700887023_)))))
                              (_E8700887023_))))
                      (_E8700887023_)))))
          (_E8700787055_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx86962_)
        (let* ((_e8696386973_ _stx86962_)
               (_E8696586977_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8696386973_)))
               (_E8696487001_
                (lambda ()
                  (if (gx#stx-pair? _e8696386973_)
                      (let ((_e8696686981_ (gx#syntax-e _e8696386973_)))
                        (let ((_hd8696786984_ (##car _e8696686981_))
                              (_tl8696886986_ (##cdr _e8696686981_)))
                          (if (gx#stx-pair? _tl8696886986_)
                              (let ((_e8696986989_
                                     (gx#syntax-e _tl8696886986_)))
                                (let ((_hd8697086992_ (##car _e8696986989_))
                                      (_tl8697186994_ (##cdr _e8696986989_)))
                                  (let* ((_hd86997_ _hd8697086992_)
                                         (_body86999_ _tl8697186994_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd86997_)
                                             (gx#stx-list? _body86999_)
                                             (not (gx#stx-null? _body86999_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd86997_)
                                         _body86999_)
                                        (_E8696586977_)))))
                              (_E8696586977_))))
                      (_E8696586977_)))))
          (_E8696487001_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx86898_)
        (letrec ((_generate86900_
                  (lambda (_clause86930_)
                    (let* ((_e8693186938_ _clause86930_)
                           (_E8693386942_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx86898_
                               _clause86930_)))
                           (_E8693286958_
                            (lambda ()
                              (if (gx#stx-pair? _e8693186938_)
                                  (let ((_e8693486946_
                                         (gx#syntax-e _e8693186938_)))
                                    (let ((_hd8693586949_
                                           (##car _e8693486946_))
                                          (_tl8693686951_
                                           (##cdr _e8693486946_)))
                                      (let* ((_hd86954_ _hd8693586949_)
                                             (_body86956_ _tl8693686951_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd86954_)
                                                 (gx#stx-list? _body86956_)
                                                 (not (gx#stx-null?
                                                       _body86956_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd86954_)
                                                   _body86956_)
                                             (gx#stx-source _clause86930_))
                                            (_E8693386942_)))))
                                  (_E8693386942_)))))
                      (_E8693286958_)))))
          (let* ((_e8690186908_ _stx86898_)
                 (_E8690386912_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8690186908_)))
                 (_E8690286926_
                  (lambda ()
                    (if (gx#stx-pair? _e8690186908_)
                        (let ((_e8690486916_ (gx#syntax-e _e8690186908_)))
                          (let ((_hd8690586919_ (##car _e8690486916_))
                                (_tl8690686921_ (##cdr _e8690486916_)))
                            (let ((_clauses86924_ _tl8690686921_))
                              (if (gx#stx-list? _clauses86924_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate86900_
                                    _clauses86924_))
                                  (_E8690386912_)))))
                        (_E8690386912_)))))
            (_E8690286926_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx86799_ _form86800_)
        (letrec ((_generate86802_
                  (lambda (_bind86845_)
                    (let* ((_e8684686856_ _bind86845_)
                           (_E8684886860_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx86799_
                               _bind86845_)))
                           (_E8684786884_
                            (lambda ()
                              (if (gx#stx-pair? _e8684686856_)
                                  (let ((_e8684986864_
                                         (gx#syntax-e _e8684686856_)))
                                    (let ((_hd8685086867_
                                           (##car _e8684986864_))
                                          (_tl8685186869_
                                           (##cdr _e8684986864_)))
                                      (let ((_ids86872_ _hd8685086867_))
                                        (if (gx#stx-pair? _tl8685186869_)
                                            (let ((_e8685286874_
                                                   (gx#syntax-e
                                                    _tl8685186869_)))
                                              (let ((_hd8685386877_
                                                     (##car _e8685286874_))
                                                    (_tl8685486879_
                                                     (##cdr _e8685286874_)))
                                                (let ((_expr86882_
                                                       _hd8685386877_))
                                                  (if (gx#stx-null?
                                                       _tl8685486879_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids86872_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids86872_)
                        (cons _expr86882_ '()))
                  (_E8684886860_))
              (_E8684886860_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8684886860_)))))
                                  (_E8684886860_)))))
                      (_E8684786884_)))))
          (let* ((_e8680386813_ _stx86799_)
                 (_E8680586817_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8680386813_)))
                 (_E8680486841_
                  (lambda ()
                    (if (gx#stx-pair? _e8680386813_)
                        (let ((_e8680686821_ (gx#syntax-e _e8680386813_)))
                          (let ((_hd8680786824_ (##car _e8680686821_))
                                (_tl8680886826_ (##cdr _e8680686821_)))
                            (if (gx#stx-pair? _tl8680886826_)
                                (let ((_e8680986829_
                                       (gx#syntax-e _tl8680886826_)))
                                  (let ((_hd8681086832_ (##car _e8680986829_))
                                        (_tl8681186834_ (##cdr _e8680986829_)))
                                    (let* ((_hd86837_ _hd8681086832_)
                                           (_body86839_ _tl8681186834_))
                                      (if (and (gx#stx-list? _hd86837_)
                                               (gx#stx-list? _body86839_)
                                               (not (gx#stx-null?
                                                     _body86839_)))
                                          (gx#core-cons*
                                           _form86800_
                                           (gx#stx-map1
                                            _generate86802_
                                            _hd86837_)
                                           _body86839_)
                                          (_E8680586817_)))))
                                (_E8680586817_))))
                        (_E8680586817_)))))
            (_E8680486841_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx86891_)
        (let ((_form86893_ '%#let-values))
          (gx#macro-expand-let-values__% _stx86891_ _form86893_))))
    (define gx#macro-expand-let-values
      (lambda _g89276_
        (let ((_g89275_ (##length _g89276_)))
          (cond ((##fx= _g89275_ 1)
                 (apply (lambda (_stx86891_)
                          (gx#macro-expand-let-values__0 _stx86891_))
                        _g89276_))
                ((##fx= _g89275_ 2)
                 (apply (lambda (_stx86895_ _form86896_)
                          (gx#macro-expand-let-values__%
                           _stx86895_
                           _form86896_))
                        _g89276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g89276_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx86796_)
        (gx#macro-expand-let-values__% _stx86796_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx86794_)
        (gx#macro-expand-let-values__% _stx86794_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx86685_)
        (let* ((_e8668686712_ _stx86685_)
               (_E8669886716_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8668686712_)))
               (_E8668886758_
                (lambda ()
                  (if (gx#stx-pair? _e8668686712_)
                      (let ((_e8669986720_ (gx#syntax-e _e8668686712_)))
                        (let ((_hd8670086723_ (##car _e8669986720_))
                              (_tl8670186725_ (##cdr _e8669986720_)))
                          (if (gx#stx-pair? _tl8670186725_)
                              (let ((_e8670286728_
                                     (gx#syntax-e _tl8670186725_)))
                                (let ((_hd8670386731_ (##car _e8670286728_))
                                      (_tl8670486733_ (##cdr _e8670286728_)))
                                  (let ((_test86736_ _hd8670386731_))
                                    (if (gx#stx-pair? _tl8670486733_)
                                        (let ((_e8670586738_
                                               (gx#syntax-e _tl8670486733_)))
                                          (let ((_hd8670686741_
                                                 (##car _e8670586738_))
                                                (_tl8670786743_
                                                 (##cdr _e8670586738_)))
                                            (let ((_K86746_ _hd8670686741_))
                                              (if (gx#stx-pair? _tl8670786743_)
                                                  (let ((_e8670886748_
                                                         (gx#syntax-e
                                                          _tl8670786743_)))
                                                    (let ((_hd8670986751_
                                                           (##car _e8670886748_))
                                                          (_tl8671086753_
                                                           (##cdr _e8670886748_)))
                                                      (let ((_E86756_
                                                             _hd8670986751_))
                                                        (if (gx#stx-null?
                                                             _tl8671086753_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test86736_
                         _K86746_
                         _E86756_)
                        (_E8669886716_))
                    (_E8669886716_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8669886716_)))))
                                        (_E8669886716_)))))
                              (_E8669886716_))))
                      (_E8669886716_))))
               (_E8668786790_
                (lambda ()
                  (if (gx#stx-pair? _e8668686712_)
                      (let ((_e8668986762_ (gx#syntax-e _e8668686712_)))
                        (let ((_hd8669086765_ (##car _e8668986762_))
                              (_tl8669186767_ (##cdr _e8668986762_)))
                          (if (gx#stx-pair? _tl8669186767_)
                              (let ((_e8669286770_
                                     (gx#syntax-e _tl8669186767_)))
                                (let ((_hd8669386773_ (##car _e8669286770_))
                                      (_tl8669486775_ (##cdr _e8669286770_)))
                                  (let ((_test86778_ _hd8669386773_))
                                    (if (gx#stx-pair? _tl8669486775_)
                                        (let ((_e8669586780_
                                               (gx#syntax-e _tl8669486775_)))
                                          (let ((_hd8669686783_
                                                 (##car _e8669586780_))
                                                (_tl8669786785_
                                                 (##cdr _e8669586780_)))
                                            (let ((_K86788_ _hd8669686783_))
                                              (if (gx#stx-null? _tl8669786785_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test86778_
                                                       _K86788_
                                                       '#!void)
                                                      (_E8668886758_))
                                                  (_E8668886758_)))))
                                        (_E8668886758_)))))
                              (_E8668886758_))))
                      (_E8668886758_)))))
          (_E8668786790_))))
    (define gx#free-identifier=?
      (lambda (_xid86673_ _yid86674_)
        (let ((_xe86676_ (gx#resolve-identifier__0 _xid86673_))
              (_ye86677_ (gx#resolve-identifier__0 _yid86674_)))
          (if (and _xe86676_ _ye86677_)
              (let ((_$e86679_ (eq? _xe86676_ _ye86677_)))
                (if _$e86679_
                    _$e86679_
                    (if (##structure-instance-of? _xe86676_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye86677_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe86676_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye86677_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe86676_ _ye86677_)
                  '#f
                  (gx#stx-eq? _xid86673_ _yid86674_))))))
    (define gx#bound-identifier=?
      (lambda (_xid86657_ _yid86658_)
        (letrec ((_context86660_
                  (lambda (_e86671_)
                    (if (##structure-direct-instance-of?
                         _e86671_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e86671_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks86661_
                  (lambda (_e86669_)
                    (if (symbol? _e86669_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e86669_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e86669_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e86669_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap86662_
                  (lambda (_e86667_)
                    (if (symbol? _e86667_)
                        _e86667_
                        (gx#syntax-local-unwrap _e86667_)))))
          (let ((_x86664_ (_unwrap86662_ _xid86657_))
                (_y86665_ (_unwrap86662_ _yid86658_)))
            (if (gx#stx-eq? _x86664_ _y86665_)
                (if (eq? (_context86660_ _x86664_) (_context86660_ _y86665_))
                    (equal? (_marks86661_ _x86664_) (_marks86661_ _y86665_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx86655_)
        (if (gx#identifier? _stx86655_)
            (gx#core-identifier=? _stx86655_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx86653_)
        (if (gx#identifier? _stx86653_)
            (gx#core-identifier=? _stx86653_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x86651_)
        (if (gx#identifier? _x86651_)
            (if (not (gx#underscore? _x86651_)) _x86651_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx86597_ _where86598_)
        (let _lp86600_ ((_rest86602_ (gx#syntax->list _stx86597_)))
          (let* ((_rest8660386611_ _rest86602_)
                 (_else8660586619_ (lambda () '#t))
                 (_K8660786629_
                  (lambda (_rest86622_ _hd86623_)
                    (if (not (gx#identifier? _hd86623_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where86598_
                         _hd86623_)
                        (if (find (lambda (_g8662486626_)
                                    (gx#bound-identifier=?
                                     _g8662486626_
                                     _hd86623_))
                                  _rest86622_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where86598_
                             _hd86623_)
                            (_lp86600_ _rest86622_))))))
            (if (##pair? _rest8660386611_)
                (let ((_hd8660886632_ (##car _rest8660386611_))
                      (_tl8660986634_ (##cdr _rest8660386611_)))
                  (let* ((_hd86637_ _hd8660886632_)
                         (_rest86639_ _tl8660986634_))
                    (_K8660786629_ _rest86639_ _hd86637_)))
                (_else8660586619_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx86644_)
        (let ((_where86646_ _stx86644_))
          (gx#check-duplicate-identifiers__% _stx86644_ _where86646_))))
    (define gx#check-duplicate-identifiers
      (lambda _g89278_
        (let ((_g89277_ (##length _g89278_)))
          (cond ((##fx= _g89277_ 1)
                 (apply (lambda (_stx86644_)
                          (gx#check-duplicate-identifiers__0 _stx86644_))
                        _g89278_))
                ((##fx= _g89277_ 2)
                 (apply (lambda (_stx86648_ _where86649_)
                          (gx#check-duplicate-identifiers__%
                           _stx86648_
                           _where86649_))
                        _g89278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g89278_))))))
    (define gx#core-bind-values?
      (lambda (_stx86589_)
        (gx#stx-andmap
         (lambda (_x86591_)
           (let ((_$e86593_ (gx#identifier? _x86591_)))
             (if _$e86593_ _$e86593_ (gx#stx-false? _x86591_))))
         _stx86589_)))
    (define gx#core-bind-values!__%
      (lambda (_stx86553_ _rebind?86554_ _phi86555_ _ctx86556_)
        (gx#stx-for-each1
         (lambda (_id86558_)
           (if (gx#identifier? _id86558_)
               (gx#core-bind-runtime!__%
                _id86558_
                _rebind?86554_
                _phi86555_
                _ctx86556_)
               '#!void))
         _stx86553_)))
    (define gx#core-bind-values!__0
      (lambda (_stx86563_)
        (let* ((_rebind?86565_ '#f)
               (_phi86567_ (gx#current-expander-phi))
               (_ctx86569_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86563_
           _rebind?86565_
           _phi86567_
           _ctx86569_))))
    (define gx#core-bind-values!__1
      (lambda (_stx86571_ _rebind?86572_)
        (let* ((_phi86574_ (gx#current-expander-phi))
               (_ctx86576_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86571_
           _rebind?86572_
           _phi86574_
           _ctx86576_))))
    (define gx#core-bind-values!__2
      (lambda (_stx86578_ _rebind?86579_ _phi86580_)
        (let ((_ctx86582_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86578_
           _rebind?86579_
           _phi86580_
           _ctx86582_))))
    (define gx#core-bind-values!
      (lambda _g89280_
        (let ((_g89279_ (##length _g89280_)))
          (cond ((##fx= _g89279_ 1)
                 (apply (lambda (_stx86563_)
                          (gx#core-bind-values!__0 _stx86563_))
                        _g89280_))
                ((##fx= _g89279_ 2)
                 (apply (lambda (_stx86571_ _rebind?86572_)
                          (gx#core-bind-values!__1 _stx86571_ _rebind?86572_))
                        _g89280_))
                ((##fx= _g89279_ 3)
                 (apply (lambda (_stx86578_ _rebind?86579_ _phi86580_)
                          (gx#core-bind-values!__2
                           _stx86578_
                           _rebind?86579_
                           _phi86580_))
                        _g89280_))
                ((##fx= _g89279_ 4)
                 (apply (lambda (_stx86584_
                                 _rebind?86585_
                                 _phi86586_
                                 _ctx86587_)
                          (gx#core-bind-values!__%
                           _stx86584_
                           _rebind?86585_
                           _phi86586_
                           _ctx86587_))
                        _g89280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g89280_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx86548_)
        (gx#stx-map1
         (lambda (_x86550_)
           (if (gx#identifier? _x86550_)
               (gx#core-quote-syntax__0 _x86550_)
               '#f))
         _stx86548_)))
    (define gx#core-runtime-ref?
      (lambda (_stx86541_)
        (if (gx#identifier? _stx86541_)
            (let* ((_bind86543_ (gx#resolve-identifier__0 _stx86541_))
                   (_$e86545_ (not _bind86543_)))
              (if _$e86545_
                  _$e86545_
                  (##structure-instance-of?
                   _bind86543_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id86533_ _form86534_)
        (let ((_bind86536_ (gx#resolve-identifier__0 _id86533_)))
          (if (##structure-instance-of? _bind86536_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id86533_)
              (if (not _bind86536_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id86533_)))
                      (gx#core-quote-syntax__0 _id86533_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form86534_
                       _id86533_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form86534_
                   _id86533_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id86492_ _rebind?86493_ _phi86494_ _ctx86495_)
        (let* ((_key86497_ (gx#core-identifier-key _id86492_))
               (_eid86499_
                (gx#make-binding-id__% _key86497_ '#f _phi86494_ _ctx86495_))
               (_bind86501_
                (if (##structure-instance-of? _ctx86495_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86499_
                     _key86497_
                     _phi86494_
                     _ctx86495_)
                    (if (##structure-instance-of?
                         _ctx86495_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86499_
                         _key86497_
                         _phi86494_)
                        (if (##structure-instance-of?
                             _ctx86495_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid86499_
                             _key86497_
                             _phi86494_)
                            (##structure
                             gx#runtime-binding::t
                             _eid86499_
                             _key86497_
                             _phi86494_))))))
          (gx#bind-identifier!__%
           _id86492_
           _bind86501_
           _rebind?86493_
           _phi86494_
           _ctx86495_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id86507_)
        (let* ((_rebind?86509_ '#f)
               (_phi86511_ (gx#current-expander-phi))
               (_ctx86513_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86507_
           _rebind?86509_
           _phi86511_
           _ctx86513_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id86515_ _rebind?86516_)
        (let* ((_phi86518_ (gx#current-expander-phi))
               (_ctx86520_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86515_
           _rebind?86516_
           _phi86518_
           _ctx86520_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id86522_ _rebind?86523_ _phi86524_)
        (let ((_ctx86526_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86522_
           _rebind?86523_
           _phi86524_
           _ctx86526_))))
    (define gx#core-bind-runtime!
      (lambda _g89282_
        (let ((_g89281_ (##length _g89282_)))
          (cond ((##fx= _g89281_ 1)
                 (apply (lambda (_id86507_)
                          (gx#core-bind-runtime!__0 _id86507_))
                        _g89282_))
                ((##fx= _g89281_ 2)
                 (apply (lambda (_id86515_ _rebind?86516_)
                          (gx#core-bind-runtime!__1 _id86515_ _rebind?86516_))
                        _g89282_))
                ((##fx= _g89281_ 3)
                 (apply (lambda (_id86522_ _rebind?86523_ _phi86524_)
                          (gx#core-bind-runtime!__2
                           _id86522_
                           _rebind?86523_
                           _phi86524_))
                        _g89282_))
                ((##fx= _g89281_ 4)
                 (apply (lambda (_id86528_
                                 _rebind?86529_
                                 _phi86530_
                                 _ctx86531_)
                          (gx#core-bind-runtime!__%
                           _id86528_
                           _rebind?86529_
                           _phi86530_
                           _ctx86531_))
                        _g89282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g89282_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id86447_ _eid86448_ _rebind?86449_ _phi86450_ _ctx86451_)
        (let* ((_key86453_ (gx#core-identifier-key _id86447_))
               (_bind86455_
                (if (##structure-instance-of? _ctx86451_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86448_
                     _key86453_
                     _phi86450_
                     _ctx86451_)
                    (if (##structure-instance-of?
                         _ctx86451_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86448_
                         _key86453_
                         _phi86450_)
                        (##structure
                         gx#runtime-binding::t
                         _eid86448_
                         _key86453_
                         _phi86450_)))))
          (gx#bind-identifier!__%
           _id86447_
           _bind86455_
           _rebind?86449_
           _phi86450_
           _ctx86451_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id86461_ _eid86462_)
        (let* ((_rebind?86464_ '#f)
               (_phi86466_ (gx#current-expander-phi))
               (_ctx86468_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86461_
           _eid86462_
           _rebind?86464_
           _phi86466_
           _ctx86468_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id86470_ _eid86471_ _rebind?86472_)
        (let* ((_phi86474_ (gx#current-expander-phi))
               (_ctx86476_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86470_
           _eid86471_
           _rebind?86472_
           _phi86474_
           _ctx86476_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id86478_ _eid86479_ _rebind?86480_ _phi86481_)
        (let ((_ctx86483_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86478_
           _eid86479_
           _rebind?86480_
           _phi86481_
           _ctx86483_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g89284_
        (let ((_g89283_ (##length _g89284_)))
          (cond ((##fx= _g89283_ 2)
                 (apply (lambda (_id86461_ _eid86462_)
                          (gx#core-bind-runtime-reference!__0
                           _id86461_
                           _eid86462_))
                        _g89284_))
                ((##fx= _g89283_ 3)
                 (apply (lambda (_id86470_ _eid86471_ _rebind?86472_)
                          (gx#core-bind-runtime-reference!__1
                           _id86470_
                           _eid86471_
                           _rebind?86472_))
                        _g89284_))
                ((##fx= _g89283_ 4)
                 (apply (lambda (_id86478_
                                 _eid86479_
                                 _rebind?86480_
                                 _phi86481_)
                          (gx#core-bind-runtime-reference!__2
                           _id86478_
                           _eid86479_
                           _rebind?86480_
                           _phi86481_))
                        _g89284_))
                ((##fx= _g89283_ 5)
                 (apply (lambda (_id86485_
                                 _eid86486_
                                 _rebind?86487_
                                 _phi86488_
                                 _ctx86489_)
                          (gx#core-bind-runtime-reference!__%
                           _id86485_
                           _eid86486_
                           _rebind?86487_
                           _phi86488_
                           _ctx86489_))
                        _g89284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g89284_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id86407_ _eid86408_ _rebind?86409_ _phi86410_ _ctx86411_)
        (gx#bind-identifier!__%
         _id86407_
         (##structure
          gx#extern-binding::t
          _eid86408_
          (gx#core-identifier-key _id86407_)
          _phi86410_)
         _rebind?86409_
         _phi86410_
         _ctx86411_)))
    (define gx#core-bind-extern!__0
      (lambda (_id86416_ _eid86417_)
        (let* ((_rebind?86419_ '#f)
               (_phi86421_ (gx#current-expander-phi))
               (_ctx86423_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86416_
           _eid86417_
           _rebind?86419_
           _phi86421_
           _ctx86423_))))
    (define gx#core-bind-extern!__1
      (lambda (_id86425_ _eid86426_ _rebind?86427_)
        (let* ((_phi86429_ (gx#current-expander-phi))
               (_ctx86431_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86425_
           _eid86426_
           _rebind?86427_
           _phi86429_
           _ctx86431_))))
    (define gx#core-bind-extern!__2
      (lambda (_id86433_ _eid86434_ _rebind?86435_ _phi86436_)
        (let ((_ctx86438_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86433_
           _eid86434_
           _rebind?86435_
           _phi86436_
           _ctx86438_))))
    (define gx#core-bind-extern!
      (lambda _g89286_
        (let ((_g89285_ (##length _g89286_)))
          (cond ((##fx= _g89285_ 2)
                 (apply (lambda (_id86416_ _eid86417_)
                          (gx#core-bind-extern!__0 _id86416_ _eid86417_))
                        _g89286_))
                ((##fx= _g89285_ 3)
                 (apply (lambda (_id86425_ _eid86426_ _rebind?86427_)
                          (gx#core-bind-extern!__1
                           _id86425_
                           _eid86426_
                           _rebind?86427_))
                        _g89286_))
                ((##fx= _g89285_ 4)
                 (apply (lambda (_id86433_
                                 _eid86434_
                                 _rebind?86435_
                                 _phi86436_)
                          (gx#core-bind-extern!__2
                           _id86433_
                           _eid86434_
                           _rebind?86435_
                           _phi86436_))
                        _g89286_))
                ((##fx= _g89285_ 5)
                 (apply (lambda (_id86440_
                                 _eid86441_
                                 _rebind?86442_
                                 _phi86443_
                                 _ctx86444_)
                          (gx#core-bind-extern!__%
                           _id86440_
                           _eid86441_
                           _rebind?86442_
                           _phi86443_
                           _ctx86444_))
                        _g89286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g89286_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id86361_ _e86362_ _rebind?86363_ _phi86364_ _ctx86365_)
        (gx#bind-identifier!__%
         _id86361_
         (let ((_key86370_ (gx#core-identifier-key _id86361_))
               (_e86371_
                (if (or (##structure-instance-of? _e86362_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e86362_
                         'gx#expander-context::t))
                    _e86362_
                    (##structure
                     gx#user-expander::t
                     _e86362_
                     _ctx86365_
                     _phi86364_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key86370_ '#t _phi86364_ _ctx86365_)
            _key86370_
            _phi86364_
            _e86371_))
         _rebind?86363_
         _phi86364_
         _ctx86365_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id86376_ _e86377_)
        (let* ((_rebind?86379_ '#f)
               (_phi86381_ (gx#current-expander-phi))
               (_ctx86383_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86376_
           _e86377_
           _rebind?86379_
           _phi86381_
           _ctx86383_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id86385_ _e86386_ _rebind?86387_)
        (let* ((_phi86389_ (gx#current-expander-phi))
               (_ctx86391_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86385_
           _e86386_
           _rebind?86387_
           _phi86389_
           _ctx86391_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id86393_ _e86394_ _rebind?86395_ _phi86396_)
        (let ((_ctx86398_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86393_
           _e86394_
           _rebind?86395_
           _phi86396_
           _ctx86398_))))
    (define gx#core-bind-syntax!
      (lambda _g89288_
        (let ((_g89287_ (##length _g89288_)))
          (cond ((##fx= _g89287_ 2)
                 (apply (lambda (_id86376_ _e86377_)
                          (gx#core-bind-syntax!__0 _id86376_ _e86377_))
                        _g89288_))
                ((##fx= _g89287_ 3)
                 (apply (lambda (_id86385_ _e86386_ _rebind?86387_)
                          (gx#core-bind-syntax!__1
                           _id86385_
                           _e86386_
                           _rebind?86387_))
                        _g89288_))
                ((##fx= _g89287_ 4)
                 (apply (lambda (_id86393_ _e86394_ _rebind?86395_ _phi86396_)
                          (gx#core-bind-syntax!__2
                           _id86393_
                           _e86394_
                           _rebind?86395_
                           _phi86396_))
                        _g89288_))
                ((##fx= _g89287_ 5)
                 (apply (lambda (_id86400_
                                 _e86401_
                                 _rebind?86402_
                                 _phi86403_
                                 _ctx86404_)
                          (gx#core-bind-syntax!__%
                           _id86400_
                           _e86401_
                           _rebind?86402_
                           _phi86403_
                           _ctx86404_))
                        _g89288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g89288_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id86344_ _e86345_ _rebind?86346_)
        (gx#core-bind-syntax!__%
         _id86344_
         _e86345_
         _rebind?86346_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id86351_ _e86352_)
        (let ((_rebind?86354_ '#f))
          (gx#core-bind-root-syntax!__% _id86351_ _e86352_ _rebind?86354_))))
    (define gx#core-bind-root-syntax!
      (lambda _g89290_
        (let ((_g89289_ (##length _g89290_)))
          (cond ((##fx= _g89289_ 2)
                 (apply (lambda (_id86351_ _e86352_)
                          (gx#core-bind-root-syntax!__0 _id86351_ _e86352_))
                        _g89290_))
                ((##fx= _g89289_ 3)
                 (apply (lambda (_id86356_ _e86357_ _rebind?86358_)
                          (gx#core-bind-root-syntax!__%
                           _id86356_
                           _e86357_
                           _rebind?86358_))
                        _g89290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g89290_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id86302_ _alias-id86303_ _rebind?86304_ _phi86305_ _ctx86306_)
        (gx#bind-identifier!__%
         _id86302_
         (let ((_key86308_ (gx#core-identifier-key _id86302_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key86308_ '#t _phi86305_ _ctx86306_)
            _key86308_
            _phi86305_
            _alias-id86303_))
         _rebind?86304_
         _phi86305_
         _ctx86306_)))
    (define gx#core-bind-alias!__0
      (lambda (_id86313_ _alias-id86314_)
        (let* ((_rebind?86316_ '#f)
               (_phi86318_ (gx#current-expander-phi))
               (_ctx86320_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86313_
           _alias-id86314_
           _rebind?86316_
           _phi86318_
           _ctx86320_))))
    (define gx#core-bind-alias!__1
      (lambda (_id86322_ _alias-id86323_ _rebind?86324_)
        (let* ((_phi86326_ (gx#current-expander-phi))
               (_ctx86328_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86322_
           _alias-id86323_
           _rebind?86324_
           _phi86326_
           _ctx86328_))))
    (define gx#core-bind-alias!__2
      (lambda (_id86330_ _alias-id86331_ _rebind?86332_ _phi86333_)
        (let ((_ctx86335_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86330_
           _alias-id86331_
           _rebind?86332_
           _phi86333_
           _ctx86335_))))
    (define gx#core-bind-alias!
      (lambda _g89292_
        (let ((_g89291_ (##length _g89292_)))
          (cond ((##fx= _g89291_ 2)
                 (apply (lambda (_id86313_ _alias-id86314_)
                          (gx#core-bind-alias!__0 _id86313_ _alias-id86314_))
                        _g89292_))
                ((##fx= _g89291_ 3)
                 (apply (lambda (_id86322_ _alias-id86323_ _rebind?86324_)
                          (gx#core-bind-alias!__1
                           _id86322_
                           _alias-id86323_
                           _rebind?86324_))
                        _g89292_))
                ((##fx= _g89291_ 4)
                 (apply (lambda (_id86330_
                                 _alias-id86331_
                                 _rebind?86332_
                                 _phi86333_)
                          (gx#core-bind-alias!__2
                           _id86330_
                           _alias-id86331_
                           _rebind?86332_
                           _phi86333_))
                        _g89292_))
                ((##fx= _g89291_ 5)
                 (apply (lambda (_id86337_
                                 _alias-id86338_
                                 _rebind?86339_
                                 _phi86340_
                                 _ctx86341_)
                          (gx#core-bind-alias!__%
                           _id86337_
                           _alias-id86338_
                           _rebind?86339_
                           _phi86340_
                           _ctx86341_))
                        _g89292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g89292_))))))
    (define gx#make-binding-id__%
      (lambda (_key86259_ _syntax?86260_ _phi86261_ _ctx86262_)
        (if (uninterned-symbol? _key86259_)
            (gensym 'L)
            (if (pair? _key86259_)
                (gensym (car _key86259_))
                (if (##structure-instance-of? _ctx86262_ 'gx#top-context::t)
                    (let ((_ns86264_
                           (gx#core-context-namespace__% _ctx86262_)))
                      (if (and (fxzero? _phi86261_) (not _syntax?86260_))
                          (if _ns86264_
                              (make-symbol__1 _ns86264_ '"#" _key86259_)
                              _key86259_)
                          (if _syntax?86260_
                              (make-symbol__1
                               (let ((_$e86266_ _ns86264_))
                                 (if _$e86266_ _$e86266_ '""))
                               '"[:"
                               (number->string _phi86261_)
                               '":]#"
                               _key86259_)
                              (make-symbol__1
                               (let ((_$e86269_ _ns86264_))
                                 (if _$e86269_ _$e86269_ '""))
                               '"["
                               (number->string _phi86261_)
                               '"]#"
                               _key86259_))))
                    (gensym _key86259_))))))
    (define gx#make-binding-id__0
      (lambda (_key86275_)
        (let* ((_syntax?86277_ '#f)
               (_phi86279_ (gx#current-expander-phi))
               (_ctx86281_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86275_
           _syntax?86277_
           _phi86279_
           _ctx86281_))))
    (define gx#make-binding-id__1
      (lambda (_key86283_ _syntax?86284_)
        (let* ((_phi86286_ (gx#current-expander-phi))
               (_ctx86288_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86283_
           _syntax?86284_
           _phi86286_
           _ctx86288_))))
    (define gx#make-binding-id__2
      (lambda (_key86290_ _syntax?86291_ _phi86292_)
        (let ((_ctx86294_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86290_
           _syntax?86291_
           _phi86292_
           _ctx86294_))))
    (define gx#make-binding-id
      (lambda _g89294_
        (let ((_g89293_ (##length _g89294_)))
          (cond ((##fx= _g89293_ 1)
                 (apply (lambda (_key86275_)
                          (gx#make-binding-id__0 _key86275_))
                        _g89294_))
                ((##fx= _g89293_ 2)
                 (apply (lambda (_key86283_ _syntax?86284_)
                          (gx#make-binding-id__1 _key86283_ _syntax?86284_))
                        _g89294_))
                ((##fx= _g89293_ 3)
                 (apply (lambda (_key86290_ _syntax?86291_ _phi86292_)
                          (gx#make-binding-id__2
                           _key86290_
                           _syntax?86291_
                           _phi86292_))
                        _g89294_))
                ((##fx= _g89293_ 4)
                 (apply (lambda (_key86296_
                                 _syntax?86297_
                                 _phi86298_
                                 _ctx86299_)
                          (gx#make-binding-id__%
                           _key86296_
                           _syntax?86297_
                           _phi86298_
                           _ctx86299_))
                        _g89294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g89294_))))))))
