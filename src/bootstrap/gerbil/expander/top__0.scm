(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx9572_)
      (letrec ((_expand-special9574_
                (lambda (_hd9576_ _K9577_ _rest9578_ _r9579_)
                  (_K9577_ _rest9578_
                           (cons (gx#core-expand-top _hd9576_) _r9579_)))))
        (gx#core-expand-block__0 _stx9572_ _expand-special9574_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx9325_)
      (letrec ((_expand-special9327_
                (lambda (_hd9447_ _K9448_ _rest9449_ _r9450_)
                  (let* ((_K9454_ (lambda (_e9452_)
                                    (_K9448_ _rest9449_
                                             (cons _e9452_ _r9450_))))
                         (_e94559484_ _hd9447_)
                         (_E94799488_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e94559484_)))
                         (_E94759500_
                          (lambda ()
                            (if (gx#stx-pair? _e94559484_)
                                (let ((_e94809492_ (gx#syntax-e _e94559484_)))
                                  (let ((_hd94819495_ (##car _e94809492_))
                                        (_tl94829497_ (##cdr _e94809492_)))
                                    (if (if (gx#identifier? _hd94819495_)
                                            (gx#core-identifier=?
                                             _hd94819495_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K9454_ (gx#core-expand-define-runtime%
                                                      _hd9447_))
                                            (_E94799488_))
                                        (_E94799488_))))
                                (_E94799488_))))
                         (_E94719512_
                          (lambda ()
                            (if (gx#stx-pair? _e94559484_)
                                (let ((_e94769504_ (gx#syntax-e _e94559484_)))
                                  (let ((_hd94779507_ (##car _e94769504_))
                                        (_tl94789509_ (##cdr _e94769504_)))
                                    (if (if (gx#identifier? _hd94779507_)
                                            (gx#core-identifier=?
                                             _hd94779507_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K9454_ (gx#core-expand-define-alias%
                                                      _hd9447_))
                                            (_E94759500_))
                                        (_E94759500_))))
                                (_E94759500_))))
                         (_E94619524_
                          (lambda ()
                            (if (gx#stx-pair? _e94559484_)
                                (let ((_e94729516_ (gx#syntax-e _e94559484_)))
                                  (let ((_hd94739519_ (##car _e94729516_))
                                        (_tl94749521_ (##cdr _e94729516_)))
                                    (if (if (gx#identifier? _hd94739519_)
                                            (gx#core-identifier=?
                                             _hd94739519_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K9454_ (gx#core-expand-define-syntax%
                                                      _hd9447_))
                                            (_E94719512_))
                                        (_E94719512_))))
                                (_E94719512_))))
                         (_E94579556_
                          (lambda ()
                            (if (gx#stx-pair? _e94559484_)
                                (let ((_e94629528_ (gx#syntax-e _e94559484_)))
                                  (let ((_hd94639531_ (##car _e94629528_))
                                        (_tl94649533_ (##cdr _e94629528_)))
                                    (if (if (gx#identifier? _hd94639531_)
                                            (gx#core-identifier=?
                                             _hd94639531_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl94649533_)
                                            (let ((_e94659536_
                                                   (gx#syntax-e _tl94649533_)))
                                              (let ((_hd94669539_
                                                     (##car _e94659536_))
                                                    (_tl94679541_
                                                     (##cdr _e94659536_)))
                                                (let ((_hd-bind9544_
                                                       _hd94669539_))
                                                  (if (gx#stx-pair?
                                                       _tl94679541_)
                                                      (let ((_e94689546_
                                                             (gx#syntax-e
                                                              _tl94679541_)))
                                                        (let ((_hd94699549_
                                                               (##car _e94689546_))
                                                              (_tl94709551_
                                                               (##cdr _e94689546_)))
                                                          (let ((_expr9554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd94699549_))
                    (if (gx#stx-null? _tl94709551_)
                        (if (gx#core-bind-values? _hd-bind9544_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind9544_)
                              (_K9454_ _hd9447_))
                            (_E94619524_))
                        (_E94619524_)))))
              (_E94619524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E94619524_))
                                        (_E94619524_))))
                                (_E94619524_))))
                         (_E94569568_
                          (lambda ()
                            (if (gx#stx-pair? _e94559484_)
                                (let ((_e94589560_ (gx#syntax-e _e94559484_)))
                                  (let ((_hd94599563_ (##car _e94589560_))
                                        (_tl94609565_ (##cdr _e94589560_)))
                                    (if (if (gx#identifier? _hd94599563_)
                                            (gx#core-identifier=?
                                             _hd94599563_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K9454_ (gx#core-expand-begin-syntax%
                                                      _hd9447_))
                                            (_E94579556_))
                                        (_E94579556_))))
                                (_E94579556_)))))
                    (_E94569568_))))
               (_eval-body9328_
                (lambda (_rbody9336_)
                  (let _lp9338_ ((_rest9340_ _rbody9336_)
                                 (_body9341_ '())
                                 (_ebody9342_ '()))
                    (let* ((_rest93439351_ _rest9340_)
                           (_E93469355_
                            (lambda ()
                              (error '"No clause matching" _rest93439351_)))
                           (_else93459359_
                            (lambda ()
                              (values _body9341_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody9342_)
                                        (gx#stx-source _stx9325_))))))
                           (_K93479435_
                            (lambda (_rest9362_ _hd9363_)
                              (let* ((_e93649381_ _hd9363_)
                                     (_E93769385_
                                      (lambda ()
                                        (_lp9338_
                                         _rest9362_
                                         (cons _hd9363_ _body9341_)
                                         (cons _hd9363_ _ebody9342_))))
                                     (_E93669397_
                                      (lambda ()
                                        (if (gx#stx-pair? _e93649381_)
                                            (let ((_e93779389_
                                                   (gx#syntax-e _e93649381_)))
                                              (let ((_hd93789392_
                                                     (##car _e93779389_))
                                                    (_tl93799394_
                                                     (##cdr _e93779389_)))
                                                (if (if (gx#identifier?
                                                         _hd93789392_)
                                                        (gx#core-identifier=?
                                                         _hd93789392_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp9338_
                                                         _rest9362_
                                                         (cons _hd9363_
                                                               _body9341_)
                                                         _ebody9342_)
                                                        (_E93769385_))
                                                    (_E93769385_))))
                                            (_E93769385_))))
                                     (_E93659431_
                                      (lambda ()
                                        (if (gx#stx-pair? _e93649381_)
                                            (let ((_e93679401_
                                                   (gx#syntax-e _e93649381_)))
                                              (let ((_hd93689404_
                                                     (##car _e93679401_))
                                                    (_tl93699406_
                                                     (##cdr _e93679401_)))
                                                (if (if (gx#identifier?
                                                         _hd93689404_)
                                                        (gx#core-identifier=?
                                                         _hd93689404_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl93699406_)
                                                        (let ((_e93709409_
                                                               (gx#syntax-e
                                                                _tl93699406_)))
                                                          (let ((_hd93719412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e93709409_))
                        (_tl93729414_ (##cdr _e93709409_)))
                    (let ((_hd-bind9417_ _hd93719412_))
                      (if (gx#stx-pair? _tl93729414_)
                          (let ((_e93739419_ (gx#syntax-e _tl93729414_)))
                            (let ((_hd93749422_ (##car _e93739419_))
                                  (_tl93759424_ (##cdr _e93739419_)))
                              (let ((_expr9427_ _hd93749422_))
                                (if (gx#stx-null? _tl93759424_)
                                    (if '#t
                                        (let ((_ehd9429_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind9417_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr9427_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd9363_))))
                                          (_lp9338_
                                           _rest9362_
                                           (cons _ehd9429_ _body9341_)
                                           (cons _ehd9429_ _ebody9342_)))
                                        (_E93669397_))
                                    (_E93669397_)))))
                          (_E93669397_)))))
                (_E93669397_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E93669397_))))
                                            (_E93669397_)))))
                                (_E93659431_)))))
                      (if (##pair? _rest93439351_)
                          (let ((_hd93489438_ (##car _rest93439351_))
                                (_tl93499440_ (##cdr _rest93439351_)))
                            (let* ((_hd9443_ _hd93489438_)
                                   (_rest9445_ _tl93499440_))
                              (_K93479435_ _rest9445_ _hd9443_)))
                          (_else93459359_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody9331_
                   (gx#core-expand-block__1
                    _stx9325_
                    _expand-special9327_
                    '#f))
                  (_g9586_ (_eval-body9328_ _rbody9331_)))
             (begin
               (let ((_g9587_ (values-count _g9586_)))
                 (if (not (fx= _g9587_ 2))
                     (error "Context expects 2 values" _g9587_)))
               (let ((_expanded-body9333_ (values-ref _g9586_ 0))
                     (_value9334_ (values-ref _g9586_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body9333_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value9334_ '())))
                  (gx#stx-source _stx9325_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx9295_)
      (let* ((_e92969303_ _stx9295_)
             (_E92989307_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92969303_)))
             (_E92979321_
              (lambda ()
                (if (gx#stx-pair? _e92969303_)
                    (let ((_e92999311_ (gx#syntax-e _e92969303_)))
                      (let ((_hd93009314_ (##car _e92999311_))
                            (_tl93019316_ (##cdr _e92999311_)))
                        (let ((_body9319_ _tl93019316_))
                          (if (gx#stx-list? _body9319_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body9319_)
                               (gx#stx-source _stx9295_))
                              (_E92989307_)))))
                    (_E92989307_)))))
        (_E92979321_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx9293_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx9293_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx9281_)
      (let* ((_e92829285_ _stx9281_)
             (_E92839289_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92829285_))))
        (_E92839289_))))
  (define gx#core-expand-local-block
    (lambda (_stx9005_ _body9006_)
      (letrec ((_expand-special9008_
                (lambda (_hd9276_ _K9277_ _rest9278_ _r9279_)
                  (_K9277_ '()
                           (cons (_expand-internal9009_ _hd9276_ _rest9278_)
                                 _r9279_))))
               (_expand-internal9009_
                (lambda (_hd9272_ _rest9273_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal9011_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons* '%#begin _hd9272_ _rest9273_)
                        (gx#stx-source _stx9005_))
                       _expand-internal-special9010_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj9580 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj9580)
                       __obj9580)))))
               (_expand-internal-special9010_
                (lambda (_hd9167_ _K9168_ _rest9169_ _r9170_)
                  (let* ((_e91719196_ _hd9167_)
                         (_E91919200_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e91719196_)))
                         (_E91879212_
                          (lambda ()
                            (if (gx#stx-pair? _e91719196_)
                                (let ((_e91929204_ (gx#syntax-e _e91719196_)))
                                  (let ((_hd91939207_ (##car _e91929204_))
                                        (_tl91949209_ (##cdr _e91929204_)))
                                    (if (if (gx#identifier? _hd91939207_)
                                            (gx#core-identifier=?
                                             _hd91939207_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K9168_ _rest9169_
                                                     (cons (gx#core-expand-declare%
                                                            _hd9167_)
                                                           _r9170_))
                                            (_E91919200_))
                                        (_E91919200_))))
                                (_E91919200_))))
                         (_E91839224_
                          (lambda ()
                            (if (gx#stx-pair? _e91719196_)
                                (let ((_e91889216_ (gx#syntax-e _e91719196_)))
                                  (let ((_hd91899219_ (##car _e91889216_))
                                        (_tl91909221_ (##cdr _e91889216_)))
                                    (if (if (gx#identifier? _hd91899219_)
                                            (gx#core-identifier=?
                                             _hd91899219_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd9167_)
                                              (_K9168_ _rest9169_ _r9170_))
                                            (_E91879212_))
                                        (_E91879212_))))
                                (_E91879212_))))
                         (_E91739236_
                          (lambda ()
                            (if (gx#stx-pair? _e91719196_)
                                (let ((_e91849228_ (gx#syntax-e _e91719196_)))
                                  (let ((_hd91859231_ (##car _e91849228_))
                                        (_tl91869233_ (##cdr _e91849228_)))
                                    (if (if (gx#identifier? _hd91859231_)
                                            (gx#core-identifier=?
                                             _hd91859231_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd9167_)
                                              (_K9168_ _rest9169_ _r9170_))
                                            (_E91839224_))
                                        (_E91839224_))))
                                (_E91839224_))))
                         (_E91729268_
                          (lambda ()
                            (if (gx#stx-pair? _e91719196_)
                                (let ((_e91749240_ (gx#syntax-e _e91719196_)))
                                  (let ((_hd91759243_ (##car _e91749240_))
                                        (_tl91769245_ (##cdr _e91749240_)))
                                    (if (if (gx#identifier? _hd91759243_)
                                            (gx#core-identifier=?
                                             _hd91759243_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl91769245_)
                                            (let ((_e91779248_
                                                   (gx#syntax-e _tl91769245_)))
                                              (let ((_hd91789251_
                                                     (##car _e91779248_))
                                                    (_tl91799253_
                                                     (##cdr _e91779248_)))
                                                (let ((_hd-bind9256_
                                                       _hd91789251_))
                                                  (if (gx#stx-pair?
                                                       _tl91799253_)
                                                      (let ((_e91809258_
                                                             (gx#syntax-e
                                                              _tl91799253_)))
                                                        (let ((_hd91819261_
                                                               (##car _e91809258_))
                                                              (_tl91829263_
                                                               (##cdr _e91809258_)))
                                                          (let ((_expr9266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd91819261_))
                    (if (gx#stx-null? _tl91829263_)
                        (if (gx#core-bind-values? _hd-bind9256_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind9256_)
                              (_K9168_ _rest9169_ (cons _hd9167_ _r9170_)))
                            (_E91739236_))
                        (_E91739236_)))))
              (_E91739236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E91739236_))
                                        (_E91739236_))))
                                (_E91739236_)))))
                    (_E91729268_))))
               (_wrap-internal9011_
                (lambda (_rbody9013_)
                  (let _lp9015_ ((_rest9017_ _rbody9013_)
                                 (_decls9018_ '())
                                 (_bind9019_ '())
                                 (_body9020_ '()))
                    (let* ((_e90219028_ _rest9017_)
                           (_E90239077_
                            (lambda ()
                              (let* ((_body9072_
                                      (let* ((_body90319041_ _body9020_)
                                             (_E90359045_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _body90319041_)))
                                             (_else90349049_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body9020_)
                                                 (gx#stx-source _stx9005_))))
                                             (_try-match90339065_
                                              (lambda ()
                                                (let ((_K90369055_
                                                       (lambda (_expr9053_)
                                                         _expr9053_)))
                                                  (if (##pair? _body90319041_)
                                                      (let ((_hd90379058_
                                                             (##car _body90319041_))
                                                            (_tl90389060_
                                                             (##cdr _body90319041_)))
                                                        (let ((_expr9063_
                                                               _hd90379058_))
                                                          (if (##null? _tl90389060_)
                                                              (_K90369055_
                                                               _expr9063_)
                                                              (_else90349049_))))
                                                      (_else90349049_)))))
                                             (_K90399069_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx9005_))))
                                        (if (##null? _body90319041_)
                                            (_K90399069_)
                                            (_try-match90339065_))))
                                     (_body9074_
                                      (if (null? _bind9019_)
                                          _body9072_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind9019_
                                                       (cons _body9072_ '())))
                                           (gx#stx-source _stx9005_)))))
                                (if (null? _decls9018_)
                                    _body9074_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls9018_
                                                 (cons _body9074_ '())))
                                     (gx#stx-source _stx9005_))))))
                           (_E90229163_
                            (lambda ()
                              (if (gx#stx-pair? _e90219028_)
                                  (let ((_e90249081_
                                         (gx#syntax-e _e90219028_)))
                                    (let ((_hd90259084_ (##car _e90249081_))
                                          (_tl90269086_ (##cdr _e90249081_)))
                                      (let* ((_hd9089_ _hd90259084_)
                                             (_rest9091_ _tl90269086_))
                                        (if '#t
                                            (let* ((_e90929109_ _hd9089_)
                                                   (_E91049113_
                                                    (lambda ()
                                                      (if (null? _bind9019_)
                                                          (_lp9015_
                                                           _rest9091_
                                                           _decls9018_
                                                           _bind9019_
                                                           (cons _hd9089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body9020_))
                  (_lp9015_
                   _rest9091_
                   _decls9018_
                   (cons (cons '#f (cons _hd9089_ '())) _bind9019_)
                   _body9020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E90949127_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e90929109_)
                                                          (let ((_e91059117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e90929109_)))
                    (let ((_hd91069120_ (##car _e91059117_))
                          (_tl91079122_ (##cdr _e91059117_)))
                      (if (if (gx#identifier? _hd91069120_)
                              (gx#core-identifier=? _hd91069120_ '%#declare)
                              '#f)
                          (let ((_xdecls9125_ _tl91079122_))
                            (if '#t
                                (_lp9015_
                                 _rest9091_
                                 (gx#stx-foldr cons _decls9018_ _xdecls9125_)
                                 _bind9019_
                                 _body9020_)
                                (_E91049113_)))
                          (_E91049113_))))
                  (_E91049113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E90939159_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e90929109_)
                                                          (let ((_e90959131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e90929109_)))
                    (let ((_hd90969134_ (##car _e90959131_))
                          (_tl90979136_ (##cdr _e90959131_)))
                      (if (if (gx#identifier? _hd90969134_)
                              (gx#core-identifier=?
                               _hd90969134_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl90979136_)
                              (let ((_e90989139_ (gx#syntax-e _tl90979136_)))
                                (let ((_hd90999142_ (##car _e90989139_))
                                      (_tl91009144_ (##cdr _e90989139_)))
                                  (let ((_hd-bind9147_ _hd90999142_))
                                    (if (gx#stx-pair? _tl91009144_)
                                        (let ((_e91019149_
                                               (gx#syntax-e _tl91009144_)))
                                          (let ((_hd91029152_
                                                 (##car _e91019149_))
                                                (_tl91039154_
                                                 (##cdr _e91019149_)))
                                            (let ((_expr9157_ _hd91029152_))
                                              (if (gx#stx-null? _tl91039154_)
                                                  (if '#t
                                                      (_lp9015_
                                                       _rest9091_
                                                       _decls9018_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind9147_)
                           (cons (gx#core-expand-expression _expr9157_) '()))
                     _bind9019_)
               _body9020_)
              (_E90949127_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E90949127_)))))
                                        (_E90949127_)))))
                              (_E90949127_))
                          (_E90949127_))))
                  (_E90949127_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E90939159_))
                                            (_E90239077_)))))
                                  (_E90239077_)))))
                      (_E90229163_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body9006_)
          (gx#stx-source _stx9005_))
         _expand-special9008_))))
  (define gx#core-expand-declare%
    (lambda (_stx8943_)
      (let* ((_e89448951_ _stx8943_)
             (_E89468955_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e89448951_)))
             (_E89459001_
              (lambda ()
                (if (gx#stx-pair? _e89448951_)
                    (let ((_e89478959_ (gx#syntax-e _e89448951_)))
                      (let ((_hd89488962_ (##car _e89478959_))
                            (_tl89498964_ (##cdr _e89478959_)))
                        (let ((_body8967_ _tl89498964_))
                          (if (gx#stx-list? _body8967_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl8969_)
                                   (let* ((_e89708977_ _decl8969_)
                                          (_E89728981_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e89708977_)))
                                          (_E89718997_
                                           (lambda ()
                                             (if (gx#stx-pair? _e89708977_)
                                                 (let ((_e89738985_
                                                        (gx#syntax-e
                                                         _e89708977_)))
                                                   (let ((_hd89748988_
                                                          (##car _e89738985_))
                                                         (_tl89758990_
                                                          (##cdr _e89738985_)))
                                                     (let* ((_head8993_
                                                             _hd89748988_)
                                                            (_args8995_
                                                             _tl89758990_))
                                                       (if (gx#stx-list?
                                                            _args8995_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl8969_)
                                                           (_E89728981_)))))
                                                 (_E89728981_)))))
                                     (_E89718997_)))
                                 _body8967_))
                               (gx#stx-source _stx8943_))
                              (_E89468955_)))))
                    (_E89468955_)))))
        (_E89459001_))))
  (define gx#core-expand-extern%
    (lambda (_stx8827_)
      (let* ((_e88288835_ _stx8827_)
             (_E88308839_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88288835_)))
             (_E88298939_
              (lambda ()
                (if (gx#stx-pair? _e88288835_)
                    (let ((_e88318843_ (gx#syntax-e _e88288835_)))
                      (let ((_hd88328846_ (##car _e88318843_))
                            (_tl88338848_ (##cdr _e88318843_)))
                        (let ((_body8851_ _tl88338848_))
                          (if (gx#stx-list? _body8851_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind8853_)
                                   (let* ((_e88548864_ _bind8853_)
                                          (_E88568868_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e88548864_)))
                                          (_E88558892_
                                           (lambda ()
                                             (if (gx#stx-pair? _e88548864_)
                                                 (let ((_e88578872_
                                                        (gx#syntax-e
                                                         _e88548864_)))
                                                   (let ((_hd88588875_
                                                          (##car _e88578872_))
                                                         (_tl88598877_
                                                          (##cdr _e88578872_)))
                                                     (let ((_id8880_
                                                            _hd88588875_))
                                                       (if (gx#stx-pair?
                                                            _tl88598877_)
                                                           (let ((_e88608882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl88598877_)))
                     (let ((_hd88618885_ (##car _e88608882_))
                           (_tl88628887_ (##cdr _e88608882_)))
                       (let ((_eid8890_ _hd88618885_))
                         (if (gx#stx-null? _tl88628887_)
                             (if (if (gx#identifier? _id8880_)
                                     (gx#identifier? _eid8890_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id8880_
                                  (gx#stx-e _eid8890_))
                                 (_E88568868_))
                             (_E88568868_)))))
                   (_E88568868_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E88568868_)))))
                                     (_E88558892_)))
                                 _body8851_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind8896_)
                                     (let* ((_e88978907_ _bind8896_)
                                            (_E88998911_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e88978907_)))
                                            (_E88988935_
                                             (lambda ()
                                               (if (gx#stx-pair? _e88978907_)
                                                   (let ((_e89008915_
                                                          (gx#syntax-e
                                                           _e88978907_)))
                                                     (let ((_hd89018918_
                                                            (##car _e89008915_))
                                                           (_tl89028920_
                                                            (##cdr _e89008915_)))
                                                       (let ((_id8923_
                                                              _hd89018918_))
                                                         (if (gx#stx-pair?
                                                              _tl89028920_)
                                                             (let ((_e89038925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl89028920_)))
                       (let ((_hd89048928_ (##car _e89038925_))
                             (_tl89058930_ (##cdr _e89038925_)))
                         (let ((_eid8933_ _hd89048928_))
                           (if (gx#stx-null? _tl89058930_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id8923_)
                                         (cons (gx#stx-e _eid8933_) '()))
                                   (_E88998911_))
                               (_E88998911_)))))
                     (_E88998911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E88998911_)))))
                                       (_E88988935_)))
                                   _body8851_))
                                 (gx#stx-source _stx8827_)))
                              (_E88308839_)))))
                    (_E88308839_)))))
        (_E88298939_))))
  (define gx#core-expand-define-values%
    (lambda (_stx8773_)
      (let* ((_e87748787_ _stx8773_)
             (_E87768791_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87748787_)))
             (_E87758823_
              (lambda ()
                (if (gx#stx-pair? _e87748787_)
                    (let ((_e87778795_ (gx#syntax-e _e87748787_)))
                      (let ((_hd87788798_ (##car _e87778795_))
                            (_tl87798800_ (##cdr _e87778795_)))
                        (if (gx#stx-pair? _tl87798800_)
                            (let ((_e87808803_ (gx#syntax-e _tl87798800_)))
                              (let ((_hd87818806_ (##car _e87808803_))
                                    (_tl87828808_ (##cdr _e87808803_)))
                                (let ((_hd8811_ _hd87818806_))
                                  (if (gx#stx-pair? _tl87828808_)
                                      (let ((_e87838813_
                                             (gx#syntax-e _tl87828808_)))
                                        (let ((_hd87848816_
                                               (##car _e87838813_))
                                              (_tl87858818_
                                               (##cdr _e87838813_)))
                                          (let ((_expr8821_ _hd87848816_))
                                            (if (gx#stx-null? _tl87858818_)
                                                (if (gx#core-bind-values?
                                                     _hd8811_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd8811_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd8811_)
                           (cons (gx#core-expand-expression _expr8821_) '())))
               (gx#stx-source _stx8773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87768791_))
                                                (_E87768791_)))))
                                      (_E87768791_)))))
                            (_E87768791_))))
                    (_E87768791_)))))
        (_E87758823_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8719_)
      (let* ((_e87208733_ _stx8719_)
             (_E87228737_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87208733_)))
             (_E87218769_
              (lambda ()
                (if (gx#stx-pair? _e87208733_)
                    (let ((_e87238741_ (gx#syntax-e _e87208733_)))
                      (let ((_hd87248744_ (##car _e87238741_))
                            (_tl87258746_ (##cdr _e87238741_)))
                        (if (gx#stx-pair? _tl87258746_)
                            (let ((_e87268749_ (gx#syntax-e _tl87258746_)))
                              (let ((_hd87278752_ (##car _e87268749_))
                                    (_tl87288754_ (##cdr _e87268749_)))
                                (let ((_id8757_ _hd87278752_))
                                  (if (gx#stx-pair? _tl87288754_)
                                      (let ((_e87298759_
                                             (gx#syntax-e _tl87288754_)))
                                        (let ((_hd87308762_
                                               (##car _e87298759_))
                                              (_tl87318764_
                                               (##cdr _e87298759_)))
                                          (let ((_binding-id8767_
                                                 _hd87308762_))
                                            (if (gx#stx-null? _tl87318764_)
                                                (if (if (gx#identifier?
                                                         _id8757_)
                                                        (gx#identifier?
                                                         _binding-id8767_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id8757_
                                                       (gx#stx-e
                                                        _binding-id8767_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id8757_)
                           (cons (gx#core-quote-syntax__0 _binding-id8767_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87228737_))
                                                (_E87228737_)))))
                                      (_E87228737_)))))
                            (_E87228737_))))
                    (_E87228737_)))))
        (_E87218769_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8662_)
      (let* ((_e86638676_ _stx8662_)
             (_E86658680_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e86638676_)))
             (_E86648715_
              (lambda ()
                (if (gx#stx-pair? _e86638676_)
                    (let ((_e86668684_ (gx#syntax-e _e86638676_)))
                      (let ((_hd86678687_ (##car _e86668684_))
                            (_tl86688689_ (##cdr _e86668684_)))
                        (if (gx#stx-pair? _tl86688689_)
                            (let ((_e86698692_ (gx#syntax-e _tl86688689_)))
                              (let ((_hd86708695_ (##car _e86698692_))
                                    (_tl86718697_ (##cdr _e86698692_)))
                                (let ((_id8700_ _hd86708695_))
                                  (if (gx#stx-pair? _tl86718697_)
                                      (let ((_e86728702_
                                             (gx#syntax-e _tl86718697_)))
                                        (let ((_hd86738705_
                                               (##car _e86728702_))
                                              (_tl86748707_
                                               (##cdr _e86728702_)))
                                          (let ((_expr8710_ _hd86738705_))
                                            (if (gx#stx-null? _tl86748707_)
                                                (if (gx#identifier? _id8700_)
                                                    (let ((_g9588_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _expr8710_)))
              (begin
                (let ((_g9589_ (values-count _g9588_)))
                  (if (not (fx= _g9589_ 2))
                      (error "Context expects 2 values" _g9589_)))
                (let ((_e-stx8712_ (values-ref _g9588_ 0))
                      (_e8713_ (values-ref _g9588_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id8700_ _e8713_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id8700_)
                                 (cons _e-stx8712_ '())))
                     (gx#stx-source _stx8662_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E86658680_))
                                                (_E86658680_)))))
                                      (_E86658680_)))))
                            (_E86658680_))))
                    (_E86658680_)))))
        (_E86648715_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx8606_)
      (let* ((_e86078620_ _stx8606_)
             (_E86098624_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e86078620_)))
             (_E86088658_
              (lambda ()
                (if (gx#stx-pair? _e86078620_)
                    (let ((_e86108628_ (gx#syntax-e _e86078620_)))
                      (let ((_hd86118631_ (##car _e86108628_))
                            (_tl86128633_ (##cdr _e86108628_)))
                        (if (gx#stx-pair? _tl86128633_)
                            (let ((_e86138636_ (gx#syntax-e _tl86128633_)))
                              (let ((_hd86148639_ (##car _e86138636_))
                                    (_tl86158641_ (##cdr _e86138636_)))
                                (let ((_id8644_ _hd86148639_))
                                  (if (gx#stx-pair? _tl86158641_)
                                      (let ((_e86168646_
                                             (gx#syntax-e _tl86158641_)))
                                        (let ((_hd86178649_
                                               (##car _e86168646_))
                                              (_tl86188651_
                                               (##cdr _e86168646_)))
                                          (let ((_alias-id8654_ _hd86178649_))
                                            (if (gx#stx-null? _tl86188651_)
                                                (if (if (gx#identifier?
                                                         _id8644_)
                                                        (gx#identifier?
                                                         _alias-id8654_)
                                                        '#f)
                                                    (let ((_alias-id8656_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id8654_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id8644_
                                                         _alias-id8656_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id8644_)
                             (cons _alias-id8656_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E86098624_))
                                                (_E86098624_)))))
                                      (_E86098624_)))))
                            (_E86098624_))))
                    (_E86098624_)))))
        (_E86088658_))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda8547
      (lambda (_stx8549_ _wrap?8550_)
        (let* ((_e85518561_ _stx8549_)
               (_E85538565_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e85518561_)))
               (_E85528592_
                (lambda ()
                  (if (gx#stx-pair? _e85518561_)
                      (let ((_e85548569_ (gx#syntax-e _e85518561_)))
                        (let ((_hd85558572_ (##car _e85548569_))
                              (_tl85568574_ (##cdr _e85548569_)))
                          (if (gx#stx-pair? _tl85568574_)
                              (let ((_e85578577_ (gx#syntax-e _tl85568574_)))
                                (let ((_hd85588580_ (##car _e85578577_))
                                      (_tl85598582_ (##cdr _e85578577_)))
                                  (let* ((_hd8585_ _hd85588580_)
                                         (_body8587_ _tl85598582_))
                                    (if (gx#core-bind-values? _hd8585_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0 _hd8585_)
                                             (let ((_body8590_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd8585_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx8549_
                         _body8587_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?8550_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body8590_)
                                                    (gx#stx-source _stx8549_))
                                                   _body8590_))))
                                         gx#current-expander-context
                                         (let ((__obj9581
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9581)
                                             __obj9581)))
                                        (_E85538565_)))))
                              (_E85538565_))))
                      (_E85538565_)))))
          (_E85528592_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx8599_)
          (let ((_wrap?8601_ '#t))
            (gx#core-expand-lambda%__opt-lambda8547 _stx8599_ _wrap?8601_))))
      (define gx#core-expand-lambda%
        (lambda _g9591_
          (let ((_g9590_ (length _g9591_)))
            (cond ((fx= _g9590_ 1) (apply gx#core-expand-lambda%__0 _g9591_))
                  ((fx= _g9590_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda8547 _g9591_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g9591_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx8513_)
      (let* ((_e85148521_ _stx8513_)
             (_E85168525_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e85148521_)))
             (_E85158544_
              (lambda ()
                (if (gx#stx-pair? _e85148521_)
                    (let ((_e85178529_ (gx#syntax-e _e85148521_)))
                      (let ((_hd85188532_ (##car _e85178529_))
                            (_tl85198534_ (##cdr _e85178529_)))
                        (let ((_clauses8537_ _tl85198534_))
                          (if (gx#stx-list? _clauses8537_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause8539_)
                                   (gx#core-expand-lambda%__opt-lambda8547
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause8539_)
                                     (let ((_$e8541_
                                            (gx#stx-source _clause8539_)))
                                       (if _$e8541_
                                           _$e8541_
                                           (gx#stx-source _stx8513_))))
                                    '#f))
                                 _clauses8537_))
                               (gx#stx-source _stx8513_))
                              (_E85168525_)))))
                    (_E85168525_)))))
        (_E85158544_))))
  (define gx#core-expand-let-values%
    (lambda (_stx8467_)
      (let* ((_e84688478_ _stx8467_)
             (_E84708482_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84688478_)))
             (_E84698509_
              (lambda ()
                (if (gx#stx-pair? _e84688478_)
                    (let ((_e84718486_ (gx#syntax-e _e84688478_)))
                      (let ((_hd84728489_ (##car _e84718486_))
                            (_tl84738491_ (##cdr _e84718486_)))
                        (if (gx#stx-pair? _tl84738491_)
                            (let ((_e84748494_ (gx#syntax-e _tl84738491_)))
                              (let ((_hd84758497_ (##car _e84748494_))
                                    (_tl84768499_ (##cdr _e84748494_)))
                                (let* ((_hd8502_ _hd84758497_)
                                       (_body8504_ _tl84768499_))
                                  (if (gx#core-expand-let-bind? _hd8502_)
                                      (let ((_expressions8506_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd8502_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd8502_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd8502_
                                                           _expressions8506_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx8467_
                         _body8504_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx8467_))))
                                         gx#current-expander-context
                                         (let ((__obj9582
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9582)
                                             __obj9582))))
                                      (_E84708482_)))))
                            (_E84708482_))))
                    (_E84708482_)))))
        (_E84698509_))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda8410
      (lambda (_stx8412_ _form8413_)
        (let* ((_e84148424_ _stx8412_)
               (_E84168428_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e84148424_)))
               (_E84158453_
                (lambda ()
                  (if (gx#stx-pair? _e84148424_)
                      (let ((_e84178432_ (gx#syntax-e _e84148424_)))
                        (let ((_hd84188435_ (##car _e84178432_))
                              (_tl84198437_ (##cdr _e84178432_)))
                          (if (gx#stx-pair? _tl84198437_)
                              (let ((_e84208440_ (gx#syntax-e _tl84198437_)))
                                (let ((_hd84218443_ (##car _e84208440_))
                                      (_tl84228445_ (##cdr _e84208440_)))
                                  (let* ((_hd8448_ _hd84218443_)
                                         (_body8450_ _tl84228445_))
                                    (if (gx#core-expand-let-bind? _hd8448_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd8448_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form8413_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd8448_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd8448_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx8412_
                         _body8450_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx8412_))))
                                         gx#current-expander-context
                                         (let ((__obj9583
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9583)
                                             __obj9583)))
                                        (_E84168428_)))))
                              (_E84168428_))))
                      (_E84168428_)))))
          (_E84158453_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx8460_)
          (let ((_form8462_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda8410
             _stx8460_
             _form8462_))))
      (define gx#core-expand-letrec-values%
        (lambda _g9593_
          (let ((_g9592_ (length _g9593_)))
            (cond ((fx= _g9592_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g9593_))
                  ((fx= _g9592_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda8410
                          _g9593_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g9593_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx8409_)
      (gx#core-expand-letrec-values%__opt-lambda8410
       _stx8409_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx8366_)
      (if (gx#stx-list? _stx8366_)
          (gx#stx-andmap
           (lambda (_bind8368_)
             (let* ((_e83698379_ _bind8368_)
                    (_E83718383_ (lambda () '#f))
                    (_E83708405_
                     (lambda ()
                       (if (gx#stx-pair? _e83698379_)
                           (let ((_e83728387_ (gx#syntax-e _e83698379_)))
                             (let ((_hd83738390_ (##car _e83728387_))
                                   (_tl83748392_ (##cdr _e83728387_)))
                               (let ((_hd8395_ _hd83738390_))
                                 (if (gx#stx-pair? _tl83748392_)
                                     (let ((_e83758397_
                                            (gx#syntax-e _tl83748392_)))
                                       (let ((_hd83768400_ (##car _e83758397_))
                                             (_tl83778402_
                                              (##cdr _e83758397_)))
                                         (if (gx#stx-null? _tl83778402_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd8395_)
                                                 (_E83718383_))
                                             (_E83718383_))))
                                     (_E83718383_)))))
                           (_E83718383_)))))
               (_E83708405_)))
           _stx8366_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind8325_)
      (let* ((_e83268336_ _bind8325_)
             (_E83288340_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e83268336_)))
             (_E83278362_
              (lambda ()
                (if (gx#stx-pair? _e83268336_)
                    (let ((_e83298344_ (gx#syntax-e _e83268336_)))
                      (let ((_hd83308347_ (##car _e83298344_))
                            (_tl83318349_ (##cdr _e83298344_)))
                        (if (gx#stx-pair? _tl83318349_)
                            (let ((_e83328352_ (gx#syntax-e _tl83318349_)))
                              (let ((_hd83338355_ (##car _e83328352_))
                                    (_tl83348357_ (##cdr _e83328352_)))
                                (let ((_expr8360_ _hd83338355_))
                                  (if (gx#stx-null? _tl83348357_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr8360_)
                                          (_E83288340_))
                                      (_E83288340_)))))
                            (_E83288340_))))
                    (_E83288340_)))))
        (_E83278362_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind8284_)
      (let* ((_e82858295_ _bind8284_)
             (_E82878299_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e82858295_)))
             (_E82868321_
              (lambda ()
                (if (gx#stx-pair? _e82858295_)
                    (let ((_e82888303_ (gx#syntax-e _e82858295_)))
                      (let ((_hd82898306_ (##car _e82888303_))
                            (_tl82908308_ (##cdr _e82888303_)))
                        (let ((_hd8311_ _hd82898306_))
                          (if (gx#stx-pair? _tl82908308_)
                              (let ((_e82918313_ (gx#syntax-e _tl82908308_)))
                                (let ((_hd82928316_ (##car _e82918313_))
                                      (_tl82938318_ (##cdr _e82918313_)))
                                  (if (gx#stx-null? _tl82938318_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd8311_)
                                          (_E82878299_))
                                      (_E82878299_))))
                              (_E82878299_)))))
                    (_E82878299_)))))
        (_E82868321_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind8242_ _expr8243_)
      (let* ((_e82448254_ _bind8242_)
             (_E82468258_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e82448254_)))
             (_E82458280_
              (lambda ()
                (if (gx#stx-pair? _e82448254_)
                    (let ((_e82478262_ (gx#syntax-e _e82448254_)))
                      (let ((_hd82488265_ (##car _e82478262_))
                            (_tl82498267_ (##cdr _e82478262_)))
                        (let ((_hd8270_ _hd82488265_))
                          (if (gx#stx-pair? _tl82498267_)
                              (let ((_e82508272_ (gx#syntax-e _tl82498267_)))
                                (let ((_hd82518275_ (##car _e82508272_))
                                      (_tl82528277_ (##cdr _e82508272_)))
                                  (if (gx#stx-null? _tl82528277_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd8270_)
                                                (cons _expr8243_ '()))
                                          (_E82468258_))
                                      (_E82468258_))))
                              (_E82468258_)))))
                    (_E82468258_)))))
        (_E82458280_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx8196_)
      (let* ((_e81978207_ _stx8196_)
             (_E81998211_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81978207_)))
             (_E81988238_
              (lambda ()
                (if (gx#stx-pair? _e81978207_)
                    (let ((_e82008215_ (gx#syntax-e _e81978207_)))
                      (let ((_hd82018218_ (##car _e82008215_))
                            (_tl82028220_ (##cdr _e82008215_)))
                        (if (gx#stx-pair? _tl82028220_)
                            (let ((_e82038223_ (gx#syntax-e _tl82028220_)))
                              (let ((_hd82048226_ (##car _e82038223_))
                                    (_tl82058228_ (##cdr _e82038223_)))
                                (let* ((_hd8231_ _hd82048226_)
                                       (_body8233_ _tl82058228_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd8231_)
                                      (let ((_expanders8235_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd8231_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd8231_
                                              _expanders8235_)
                                             (gx#core-expand-local-block
                                              _stx8196_
                                              _body8233_)))
                                         gx#current-expander-context
                                         (let ((__obj9584
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9584)
                                             __obj9584))))
                                      (_E81998211_)))))
                            (_E81998211_))))
                    (_E81998211_)))))
        (_E81988238_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx8145_)
      (let* ((_e81468156_ _stx8145_)
             (_E81488160_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81468156_)))
             (_E81478192_
              (lambda ()
                (if (gx#stx-pair? _e81468156_)
                    (let ((_e81498164_ (gx#syntax-e _e81468156_)))
                      (let ((_hd81508167_ (##car _e81498164_))
                            (_tl81518169_ (##cdr _e81498164_)))
                        (if (gx#stx-pair? _tl81518169_)
                            (let ((_e81528172_ (gx#syntax-e _tl81518169_)))
                              (let ((_hd81538175_ (##car _e81528172_))
                                    (_tl81548177_ (##cdr _e81528172_)))
                                (let* ((_hd8180_ _hd81538175_)
                                       (_body8182_ _tl81548177_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd8180_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd8180_
                                            (make-list
                                             (gx#stx-length _hd8180_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g81848187_ _g81858189_)
                                              (gx#core-expand-let-bind-syntax!__opt-lambda8002
                                               _g81848187_
                                               _g81858189_
                                               '#t))
                                            _hd8180_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd8180_))
                                           (gx#core-expand-local-block
                                            _stx8145_
                                            _body8182_)))
                                       gx#current-expander-context
                                       (let ((__obj9585
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj9585)
                                           __obj9585)))
                                      (_E81488160_)))))
                            (_E81488160_))))
                    (_E81488160_)))))
        (_E81478192_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx8102_)
      (if (gx#stx-list? _stx8102_)
          (gx#stx-andmap
           (lambda (_bind8104_)
             (let* ((_e81058115_ _bind8104_)
                    (_E81078119_ (lambda () '#f))
                    (_E81068141_
                     (lambda ()
                       (if (gx#stx-pair? _e81058115_)
                           (let ((_e81088123_ (gx#syntax-e _e81058115_)))
                             (let ((_hd81098126_ (##car _e81088123_))
                                   (_tl81108128_ (##cdr _e81088123_)))
                               (let ((_hd8131_ _hd81098126_))
                                 (if (gx#stx-pair? _tl81108128_)
                                     (let ((_e81118133_
                                            (gx#syntax-e _tl81108128_)))
                                       (let ((_hd81128136_ (##car _e81118133_))
                                             (_tl81138138_
                                              (##cdr _e81118133_)))
                                         (if (gx#stx-null? _tl81138138_)
                                             (if '#t
                                                 (gx#identifier? _hd8131_)
                                                 (_E81078119_))
                                             (_E81078119_))))
                                     (_E81078119_)))))
                           (_E81078119_)))))
               (_E81068141_)))
           _stx8102_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind8059_)
      (let* ((_e80608070_ _bind8059_)
             (_E80628074_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e80608070_)))
             (_E80618098_
              (lambda ()
                (if (gx#stx-pair? _e80608070_)
                    (let ((_e80638078_ (gx#syntax-e _e80608070_)))
                      (let ((_hd80648081_ (##car _e80638078_))
                            (_tl80658083_ (##cdr _e80638078_)))
                        (if (gx#stx-pair? _tl80658083_)
                            (let ((_e80668086_ (gx#syntax-e _tl80658083_)))
                              (let ((_hd80678089_ (##car _e80668086_))
                                    (_tl80688091_ (##cdr _e80668086_)))
                                (let ((_expr8094_ _hd80678089_))
                                  (if (gx#stx-null? _tl80688091_)
                                      (if '#t
                                          (let ((_g9594_ (gx#core-expand-expression+1
                                                          _expr8094_)))
                                            (begin
                                              (let ((_g9595_ (values-count
                                                              _g9594_)))
                                                (if (not (fx= _g9595_ 2))
                                                    (error "Context expects 2 values"
                                                           _g9595_)))
                                              (let ((_e8096_ (values-ref
                                                              _g9594_
                                                              1)))
                                                _e8096_)))
                                          (_E80628074_))
                                      (_E80628074_)))))
                            (_E80628074_))))
                    (_E80628074_)))))
        (_E80618098_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda8002
      (lambda (_bind8004_ _e8005_ _rebind?8006_)
        (let* ((_e80078017_ _bind8004_)
               (_E80098021_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e80078017_)))
               (_E80088043_
                (lambda ()
                  (if (gx#stx-pair? _e80078017_)
                      (let ((_e80108025_ (gx#syntax-e _e80078017_)))
                        (let ((_hd80118028_ (##car _e80108025_))
                              (_tl80128030_ (##cdr _e80108025_)))
                          (let ((_id8033_ _hd80118028_))
                            (if (gx#stx-pair? _tl80128030_)
                                (let ((_e80138035_ (gx#syntax-e _tl80128030_)))
                                  (let ((_hd80148038_ (##car _e80138035_))
                                        (_tl80158040_ (##cdr _e80138035_)))
                                    (if (gx#stx-null? _tl80158040_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id8033_
                                             _e8005_
                                             _rebind?8006_)
                                            (_E80098021_))
                                        (_E80098021_))))
                                (_E80098021_)))))
                      (_E80098021_)))))
          (_E80088043_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind8050_ _e8051_)
          (let ((_rebind?8053_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda8002
             _bind8050_
             _e8051_
             _rebind?8053_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g9597_
          (let ((_g9596_ (length _g9597_)))
            (cond ((fx= _g9596_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g9597_))
                  ((fx= _g9596_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda8002
                          _g9597_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g9597_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7962_)
      (let* ((_e79637973_ _stx7962_)
             (_E79657977_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e79637973_)))
             (_E79647999_
              (lambda ()
                (if (gx#stx-pair? _e79637973_)
                    (let ((_e79667981_ (gx#syntax-e _e79637973_)))
                      (let ((_hd79677984_ (##car _e79667981_))
                            (_tl79687986_ (##cdr _e79667981_)))
                        (if (gx#stx-pair? _tl79687986_)
                            (let ((_e79697989_ (gx#syntax-e _tl79687986_)))
                              (let ((_hd79707992_ (##car _e79697989_))
                                    (_tl79717994_ (##cdr _e79697989_)))
                                (let ((_expr7997_ _hd79707992_))
                                  (if (gx#stx-null? _tl79717994_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr7997_)
                                          (_E79657977_))
                                      (_E79657977_)))))
                            (_E79657977_))))
                    (_E79657977_)))))
        (_E79647999_))))
  (define gx#core-expand-quote%
    (lambda (_stx7921_)
      (let* ((_e79227932_ _stx7921_)
             (_E79247936_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e79227932_)))
             (_E79237958_
              (lambda ()
                (if (gx#stx-pair? _e79227932_)
                    (let ((_e79257940_ (gx#syntax-e _e79227932_)))
                      (let ((_hd79267943_ (##car _e79257940_))
                            (_tl79277945_ (##cdr _e79257940_)))
                        (if (gx#stx-pair? _tl79277945_)
                            (let ((_e79287948_ (gx#syntax-e _tl79277945_)))
                              (let ((_hd79297951_ (##car _e79287948_))
                                    (_tl79307953_ (##cdr _e79287948_)))
                                (let ((_e7956_ _hd79297951_))
                                  (if (gx#stx-null? _tl79307953_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e7956_)
                                                       '()))
                                           (gx#stx-source _stx7921_))
                                          (_E79247936_))
                                      (_E79247936_)))))
                            (_E79247936_))))
                    (_E79247936_)))))
        (_E79237958_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7880_)
      (let* ((_e78817891_ _stx7880_)
             (_E78837895_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e78817891_)))
             (_E78827917_
              (lambda ()
                (if (gx#stx-pair? _e78817891_)
                    (let ((_e78847899_ (gx#syntax-e _e78817891_)))
                      (let ((_hd78857902_ (##car _e78847899_))
                            (_tl78867904_ (##cdr _e78847899_)))
                        (if (gx#stx-pair? _tl78867904_)
                            (let ((_e78877907_ (gx#syntax-e _tl78867904_)))
                              (let ((_hd78887910_ (##car _e78877907_))
                                    (_tl78897912_ (##cdr _e78877907_)))
                                (let ((_e7915_ _hd78887910_))
                                  (if (gx#stx-null? _tl78897912_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e7915_)
                                                       '()))
                                           (gx#stx-source _stx7880_))
                                          (_E78837895_))
                                      (_E78837895_)))))
                            (_E78837895_))))
                    (_E78837895_)))))
        (_E78827917_))))
  (define gx#core-expand-call%
    (lambda (_stx7837_)
      (let* ((_e78387848_ _stx7837_)
             (_E78407852_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e78387848_)))
             (_E78397876_
              (lambda ()
                (if (gx#stx-pair? _e78387848_)
                    (let ((_e78417856_ (gx#syntax-e _e78387848_)))
                      (let ((_hd78427859_ (##car _e78417856_))
                            (_tl78437861_ (##cdr _e78417856_)))
                        (if (gx#stx-pair? _tl78437861_)
                            (let ((_e78447864_ (gx#syntax-e _tl78437861_)))
                              (let ((_hd78457867_ (##car _e78447864_))
                                    (_tl78467869_ (##cdr _e78447864_)))
                                (let* ((_rator7872_ _hd78457867_)
                                       (_args7874_ _tl78467869_))
                                  (if (gx#stx-list? _args7874_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator7872_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args7874_))
                                       (gx#stx-source _stx7837_))
                                      (_E78407852_)))))
                            (_E78407852_))))
                    (_E78407852_)))))
        (_E78397876_))))
  (define gx#core-expand-if%
    (lambda (_stx7770_)
      (let* ((_e77717787_ _stx7770_)
             (_E77737791_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77717787_)))
             (_E77727833_
              (lambda ()
                (if (gx#stx-pair? _e77717787_)
                    (let ((_e77747795_ (gx#syntax-e _e77717787_)))
                      (let ((_hd77757798_ (##car _e77747795_))
                            (_tl77767800_ (##cdr _e77747795_)))
                        (if (gx#stx-pair? _tl77767800_)
                            (let ((_e77777803_ (gx#syntax-e _tl77767800_)))
                              (let ((_hd77787806_ (##car _e77777803_))
                                    (_tl77797808_ (##cdr _e77777803_)))
                                (let ((_test7811_ _hd77787806_))
                                  (if (gx#stx-pair? _tl77797808_)
                                      (let ((_e77807813_
                                             (gx#syntax-e _tl77797808_)))
                                        (let ((_hd77817816_
                                               (##car _e77807813_))
                                              (_tl77827818_
                                               (##cdr _e77807813_)))
                                          (let ((_K7821_ _hd77817816_))
                                            (if (gx#stx-pair? _tl77827818_)
                                                (let ((_e77837823_
                                                       (gx#syntax-e
                                                        _tl77827818_)))
                                                  (let ((_hd77847826_
                                                         (##car _e77837823_))
                                                        (_tl77857828_
                                                         (##cdr _e77837823_)))
                                                    (let ((_E7831_ _hd77847826_))
                                                      (if (gx#stx-null?
                                                           _tl77857828_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test7811_)
                                   (cons (gx#core-expand-expression _K7821_)
                                         (cons (gx#core-expand-expression
                                                _E7831_)
                                               '()))))
                       (gx#stx-source _stx7770_))
                      (_E77737791_))
                  (_E77737791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E77737791_)))))
                                      (_E77737791_)))))
                            (_E77737791_))))
                    (_E77737791_)))))
        (_E77727833_))))
  (define gx#core-expand-ref%
    (lambda (_stx7729_)
      (let* ((_e77307740_ _stx7729_)
             (_E77327744_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77307740_)))
             (_E77317766_
              (lambda ()
                (if (gx#stx-pair? _e77307740_)
                    (let ((_e77337748_ (gx#syntax-e _e77307740_)))
                      (let ((_hd77347751_ (##car _e77337748_))
                            (_tl77357753_ (##cdr _e77337748_)))
                        (if (gx#stx-pair? _tl77357753_)
                            (let ((_e77367756_ (gx#syntax-e _tl77357753_)))
                              (let ((_hd77377759_ (##car _e77367756_))
                                    (_tl77387761_ (##cdr _e77367756_)))
                                (let ((_id7764_ _hd77377759_))
                                  (if (gx#stx-null? _tl77387761_)
                                      (if (gx#core-runtime-ref? _id7764_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id7764_
                                                        _stx7729_)
                                                       '()))
                                           (gx#stx-source _stx7729_))
                                          (_E77327744_))
                                      (_E77327744_)))))
                            (_E77327744_))))
                    (_E77327744_)))))
        (_E77317766_))))
  (define gx#core-expand-setq%
    (lambda (_stx7675_)
      (let* ((_e76767689_ _stx7675_)
             (_E76787693_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e76767689_)))
             (_E76777725_
              (lambda ()
                (if (gx#stx-pair? _e76767689_)
                    (let ((_e76797697_ (gx#syntax-e _e76767689_)))
                      (let ((_hd76807700_ (##car _e76797697_))
                            (_tl76817702_ (##cdr _e76797697_)))
                        (if (gx#stx-pair? _tl76817702_)
                            (let ((_e76827705_ (gx#syntax-e _tl76817702_)))
                              (let ((_hd76837708_ (##car _e76827705_))
                                    (_tl76847710_ (##cdr _e76827705_)))
                                (let ((_id7713_ _hd76837708_))
                                  (if (gx#stx-pair? _tl76847710_)
                                      (let ((_e76857715_
                                             (gx#syntax-e _tl76847710_)))
                                        (let ((_hd76867718_
                                               (##car _e76857715_))
                                              (_tl76877720_
                                               (##cdr _e76857715_)))
                                          (let ((_expr7723_ _hd76867718_))
                                            (if (gx#stx-null? _tl76877720_)
                                                (if (gx#core-runtime-ref?
                                                     _id7713_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id7713_
                          _stx7675_)
                         (cons (gx#core-expand-expression _expr7723_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx7675_))
                                                    (_E76787693_))
                                                (_E76787693_)))))
                                      (_E76787693_)))))
                            (_E76787693_))))
                    (_E76787693_)))))
        (_E76777725_))))
  (define gx#macro-expand-extern
    (lambda (_stx7523_)
      (letrec ((_generate7525_
                (lambda (_body7555_)
                  (let _lp7557_ ((_rest7559_ _body7555_)
                                 (_ns7560_ (gx#core-context-namespace__0))
                                 (_r7561_ '()))
                    (let* ((_e75627577_ _rest7559_)
                           (_E75757581_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e75627577_)))
                           (_E75717585_
                            (lambda ()
                              (if (gx#stx-null? _e75627577_)
                                  (if '#t (reverse _r7561_) (_E75757581_))
                                  (_E75757581_))))
                           (_E75647642_
                            (lambda ()
                              (if (gx#stx-pair? _e75627577_)
                                  (let ((_e75727589_
                                         (gx#syntax-e _e75627577_)))
                                    (let ((_hd75737592_ (##car _e75727589_))
                                          (_tl75747594_ (##cdr _e75727589_)))
                                      (let* ((_hd7597_ _hd75737592_)
                                             (_rest7599_ _tl75747594_))
                                        (if '#t
                                            (if (gx#identifier? _hd7597_)
                                                (_lp7557_
                                                 _rest7599_
                                                 _ns7560_
                                                 (cons (cons _hd7597_
                                                             (cons (if _ns7560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd7597_
                                _ns7560_
                                '"#"
                                _hd7597_)
                               _hd7597_)
                           '()))
               _r7561_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e76007610_ _hd7597_)
                                                       (_E76027614_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e76007610_)))
                                                       (_E76017638_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e76007610_)
                                                              (let ((_e76037618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e76007610_)))
                        (let ((_hd76047621_ (##car _e76037618_))
                              (_tl76057623_ (##cdr _e76037618_)))
                          (let ((_id7626_ _hd76047621_))
                            (if (gx#stx-pair? _tl76057623_)
                                (let ((_e76067628_ (gx#syntax-e _tl76057623_)))
                                  (let ((_hd76077631_ (##car _e76067628_))
                                        (_tl76087633_ (##cdr _e76067628_)))
                                    (let ((_eid7636_ _hd76077631_))
                                      (if (gx#stx-null? _tl76087633_)
                                          (if (if (gx#identifier? _id7626_)
                                                  (gx#identifier? _eid7636_)
                                                  '#f)
                                              (_lp7557_
                                               _rest7599_
                                               _ns7560_
                                               (cons (cons _id7626_
                                                           (cons _eid7636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r7561_))
                                              (_E76027614_))
                                          (_E76027614_)))))
                                (_E76027614_)))))
                      (_E76027614_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E76017638_)))
                                            (_E75717585_)))))
                                  (_E75717585_))))
                           (_E75637671_
                            (lambda ()
                              (if (gx#stx-pair? _e75627577_)
                                  (let ((_e75657646_
                                         (gx#syntax-e _e75627577_)))
                                    (let ((_hd75667649_ (##car _e75657646_))
                                          (_tl75677651_ (##cdr _e75657646_)))
                                      (if (eq? (gx#stx-e _hd75667649_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl75677651_)
                                              (let ((_e75687654_
                                                     (gx#syntax-e
                                                      _tl75677651_)))
                                                (let ((_hd75697657_
                                                       (##car _e75687654_))
                                                      (_tl75707659_
                                                       (##cdr _e75687654_)))
                                                  (let* ((_ns7662_
                                                          _hd75697657_)
                                                         (_rest7664_
                                                          _tl75707659_))
                                                    (if '#t
                                                        (let ((_ns7669_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns7662_)
                           (symbol->string (gx#stx-e _ns7662_))
                           (if (let ((_$e7666_ (gx#stx-string? _ns7662_)))
                                 (if _$e7666_
                                     _$e7666_
                                     (gx#stx-false? _ns7662_)))
                               (gx#stx-e _ns7662_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx7523_
                                _ns7662_)))))
                  (_lp7557_ _rest7664_ _ns7669_ _r7561_))
                (_E75647642_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E75647642_))
                                          (_E75647642_))))
                                  (_E75647642_)))))
                      (_E75637671_))))))
        (let* ((_e75267533_ _stx7523_)
               (_E75287537_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e75267533_)))
               (_E75277551_
                (lambda ()
                  (if (gx#stx-pair? _e75267533_)
                      (let ((_e75297541_ (gx#syntax-e _e75267533_)))
                        (let ((_hd75307544_ (##car _e75297541_))
                              (_tl75317546_ (##cdr _e75297541_)))
                          (let ((_body7549_ _tl75317546_))
                            (if (gx#stx-list? _body7549_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate7525_ _body7549_))
                                (_E75287537_)))))
                      (_E75287537_)))))
          (_E75277551_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx7469_)
      (let* ((_e74707483_ _stx7469_)
             (_E74727487_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e74707483_)))
             (_E74717519_
              (lambda ()
                (if (gx#stx-pair? _e74707483_)
                    (let ((_e74737491_ (gx#syntax-e _e74707483_)))
                      (let ((_hd74747494_ (##car _e74737491_))
                            (_tl74757496_ (##cdr _e74737491_)))
                        (if (gx#stx-pair? _tl74757496_)
                            (let ((_e74767499_ (gx#syntax-e _tl74757496_)))
                              (let ((_hd74777502_ (##car _e74767499_))
                                    (_tl74787504_ (##cdr _e74767499_)))
                                (let ((_hd7507_ _hd74777502_))
                                  (if (gx#stx-pair? _tl74787504_)
                                      (let ((_e74797509_
                                             (gx#syntax-e _tl74787504_)))
                                        (let ((_hd74807512_
                                               (##car _e74797509_))
                                              (_tl74817514_
                                               (##cdr _e74797509_)))
                                          (let ((_expr7517_ _hd74807512_))
                                            (if (gx#stx-null? _tl74817514_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd7507_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd7507_)
                        (cons _expr7517_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E74727487_))
                                                (_E74727487_)))))
                                      (_E74727487_)))))
                            (_E74727487_))))
                    (_E74727487_)))))
        (_E74717519_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx7415_)
      (let* ((_e74167429_ _stx7415_)
             (_E74187433_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e74167429_)))
             (_E74177465_
              (lambda ()
                (if (gx#stx-pair? _e74167429_)
                    (let ((_e74197437_ (gx#syntax-e _e74167429_)))
                      (let ((_hd74207440_ (##car _e74197437_))
                            (_tl74217442_ (##cdr _e74197437_)))
                        (if (gx#stx-pair? _tl74217442_)
                            (let ((_e74227445_ (gx#syntax-e _tl74217442_)))
                              (let ((_hd74237448_ (##car _e74227445_))
                                    (_tl74247450_ (##cdr _e74227445_)))
                                (let ((_hd7453_ _hd74237448_))
                                  (if (gx#stx-pair? _tl74247450_)
                                      (let ((_e74257455_
                                             (gx#syntax-e _tl74247450_)))
                                        (let ((_hd74267458_
                                               (##car _e74257455_))
                                              (_tl74277460_
                                               (##cdr _e74257455_)))
                                          (let ((_expr7463_ _hd74267458_))
                                            (if (gx#stx-null? _tl74277460_)
                                                (if (gx#identifier? _hd7453_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd7453_
                                                                (cons _expr7463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E74187433_))
                                                (_E74187433_)))))
                                      (_E74187433_)))))
                            (_E74187433_))))
                    (_E74187433_)))))
        (_E74177465_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx7361_)
      (let* ((_e73627375_ _stx7361_)
             (_E73647379_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e73627375_)))
             (_E73637411_
              (lambda ()
                (if (gx#stx-pair? _e73627375_)
                    (let ((_e73657383_ (gx#syntax-e _e73627375_)))
                      (let ((_hd73667386_ (##car _e73657383_))
                            (_tl73677388_ (##cdr _e73657383_)))
                        (if (gx#stx-pair? _tl73677388_)
                            (let ((_e73687391_ (gx#syntax-e _tl73677388_)))
                              (let ((_hd73697394_ (##car _e73687391_))
                                    (_tl73707396_ (##cdr _e73687391_)))
                                (let ((_id7399_ _hd73697394_))
                                  (if (gx#stx-pair? _tl73707396_)
                                      (let ((_e73717401_
                                             (gx#syntax-e _tl73707396_)))
                                        (let ((_hd73727404_
                                               (##car _e73717401_))
                                              (_tl73737406_
                                               (##cdr _e73717401_)))
                                          (let ((_alias-id7409_ _hd73727404_))
                                            (if (gx#stx-null? _tl73737406_)
                                                (if (if (gx#identifier?
                                                         _id7399_)
                                                        (gx#identifier?
                                                         _alias-id7409_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id7399_
                                                                (cons _alias-id7409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E73647379_))
                                                (_E73647379_)))))
                                      (_E73647379_)))))
                            (_E73647379_))))
                    (_E73647379_)))))
        (_E73637411_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx7318_)
      (let* ((_e73197329_ _stx7318_)
             (_E73217333_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e73197329_)))
             (_E73207357_
              (lambda ()
                (if (gx#stx-pair? _e73197329_)
                    (let ((_e73227337_ (gx#syntax-e _e73197329_)))
                      (let ((_hd73237340_ (##car _e73227337_))
                            (_tl73247342_ (##cdr _e73227337_)))
                        (if (gx#stx-pair? _tl73247342_)
                            (let ((_e73257345_ (gx#syntax-e _tl73247342_)))
                              (let ((_hd73267348_ (##car _e73257345_))
                                    (_tl73277350_ (##cdr _e73257345_)))
                                (let* ((_hd7353_ _hd73267348_)
                                       (_body7355_ _tl73277350_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd7353_)
                                          (if (gx#stx-list? _body7355_)
                                              (not (gx#stx-null? _body7355_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd7353_)
                                       _body7355_)
                                      (_E73217333_)))))
                            (_E73217333_))))
                    (_E73217333_)))))
        (_E73207357_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx7254_)
      (letrec ((_generate7256_
                (lambda (_clause7286_)
                  (let* ((_e72877294_ _clause7286_)
                         (_E72897298_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx7254_
                             _clause7286_)))
                         (_E72887314_
                          (lambda ()
                            (if (gx#stx-pair? _e72877294_)
                                (let ((_e72907302_ (gx#syntax-e _e72877294_)))
                                  (let ((_hd72917305_ (##car _e72907302_))
                                        (_tl72927307_ (##cdr _e72907302_)))
                                    (let* ((_hd7310_ _hd72917305_)
                                           (_body7312_ _tl72927307_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd7310_)
                                              (if (gx#stx-list? _body7312_)
                                                  (not (gx#stx-null?
                                                        _body7312_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd7310_)
                                                 _body7312_)
                                           (gx#stx-source _clause7286_))
                                          (_E72897298_)))))
                                (_E72897298_)))))
                    (_E72887314_)))))
        (let* ((_e72577264_ _stx7254_)
               (_E72597268_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e72577264_)))
               (_E72587282_
                (lambda ()
                  (if (gx#stx-pair? _e72577264_)
                      (let ((_e72607272_ (gx#syntax-e _e72577264_)))
                        (let ((_hd72617275_ (##car _e72607272_))
                              (_tl72627277_ (##cdr _e72607272_)))
                          (let ((_clauses7280_ _tl72627277_))
                            (if (gx#stx-list? _clauses7280_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate7256_ _clauses7280_))
                                (_E72597268_)))))
                      (_E72597268_)))))
          (_E72587282_)))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda7153
      (lambda (_stx7155_ _form7156_)
        (letrec ((_generate7158_
                  (lambda (_bind7201_)
                    (let* ((_e72027212_ _bind7201_)
                           (_E72047216_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx7155_
                               _bind7201_)))
                           (_E72037240_
                            (lambda ()
                              (if (gx#stx-pair? _e72027212_)
                                  (let ((_e72057220_
                                         (gx#syntax-e _e72027212_)))
                                    (let ((_hd72067223_ (##car _e72057220_))
                                          (_tl72077225_ (##cdr _e72057220_)))
                                      (let ((_ids7228_ _hd72067223_))
                                        (if (gx#stx-pair? _tl72077225_)
                                            (let ((_e72087230_
                                                   (gx#syntax-e _tl72077225_)))
                                              (let ((_hd72097233_
                                                     (##car _e72087230_))
                                                    (_tl72107235_
                                                     (##cdr _e72087230_)))
                                                (let ((_expr7238_
                                                       _hd72097233_))
                                                  (if (gx#stx-null?
                                                       _tl72107235_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids7228_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids7228_)
                        (cons _expr7238_ '()))
                  (_E72047216_))
              (_E72047216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E72047216_)))))
                                  (_E72047216_)))))
                      (_E72037240_)))))
          (let* ((_e71597169_ _stx7155_)
                 (_E71617173_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e71597169_)))
                 (_E71607197_
                  (lambda ()
                    (if (gx#stx-pair? _e71597169_)
                        (let ((_e71627177_ (gx#syntax-e _e71597169_)))
                          (let ((_hd71637180_ (##car _e71627177_))
                                (_tl71647182_ (##cdr _e71627177_)))
                            (if (gx#stx-pair? _tl71647182_)
                                (let ((_e71657185_ (gx#syntax-e _tl71647182_)))
                                  (let ((_hd71667188_ (##car _e71657185_))
                                        (_tl71677190_ (##cdr _e71657185_)))
                                    (let* ((_hd7193_ _hd71667188_)
                                           (_body7195_ _tl71677190_))
                                      (if (if (gx#stx-list? _hd7193_)
                                              (if (gx#stx-list? _body7195_)
                                                  (not (gx#stx-null?
                                                        _body7195_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form7156_
                                           (gx#stx-map1
                                            _generate7158_
                                            _hd7193_)
                                           _body7195_)
                                          (_E71617173_)))))
                                (_E71617173_))))
                        (_E71617173_)))))
            (_E71607197_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx7247_)
          (let ((_form7249_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda7153
             _stx7247_
             _form7249_))))
      (define gx#macro-expand-let-values
        (lambda _g9599_
          (let ((_g9598_ (length _g9599_)))
            (cond ((fx= _g9598_ 1)
                   (apply gx#macro-expand-let-values__0 _g9599_))
                  ((fx= _g9598_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda7153 _g9599_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g9599_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx7152_)
      (gx#macro-expand-let-values__opt-lambda7153 _stx7152_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx7150_)
      (gx#macro-expand-let-values__opt-lambda7153
       _stx7150_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx7041_)
      (let* ((_e70427068_ _stx7041_)
             (_E70547072_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e70427068_)))
             (_E70447114_
              (lambda ()
                (if (gx#stx-pair? _e70427068_)
                    (let ((_e70557076_ (gx#syntax-e _e70427068_)))
                      (let ((_hd70567079_ (##car _e70557076_))
                            (_tl70577081_ (##cdr _e70557076_)))
                        (if (gx#stx-pair? _tl70577081_)
                            (let ((_e70587084_ (gx#syntax-e _tl70577081_)))
                              (let ((_hd70597087_ (##car _e70587084_))
                                    (_tl70607089_ (##cdr _e70587084_)))
                                (let ((_test7092_ _hd70597087_))
                                  (if (gx#stx-pair? _tl70607089_)
                                      (let ((_e70617094_
                                             (gx#syntax-e _tl70607089_)))
                                        (let ((_hd70627097_
                                               (##car _e70617094_))
                                              (_tl70637099_
                                               (##cdr _e70617094_)))
                                          (let ((_K7102_ _hd70627097_))
                                            (if (gx#stx-pair? _tl70637099_)
                                                (let ((_e70647104_
                                                       (gx#syntax-e
                                                        _tl70637099_)))
                                                  (let ((_hd70657107_
                                                         (##car _e70647104_))
                                                        (_tl70667109_
                                                         (##cdr _e70647104_)))
                                                    (let ((_E7112_ _hd70657107_))
                                                      (if (gx#stx-null?
                                                           _tl70667109_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test7092_
                                                               _K7102_
                                                               _E7112_)
                                                              (_E70547072_))
                                                          (_E70547072_)))))
                                                (_E70547072_)))))
                                      (_E70547072_)))))
                            (_E70547072_))))
                    (_E70547072_))))
             (_E70437146_
              (lambda ()
                (if (gx#stx-pair? _e70427068_)
                    (let ((_e70457118_ (gx#syntax-e _e70427068_)))
                      (let ((_hd70467121_ (##car _e70457118_))
                            (_tl70477123_ (##cdr _e70457118_)))
                        (if (gx#stx-pair? _tl70477123_)
                            (let ((_e70487126_ (gx#syntax-e _tl70477123_)))
                              (let ((_hd70497129_ (##car _e70487126_))
                                    (_tl70507131_ (##cdr _e70487126_)))
                                (let ((_test7134_ _hd70497129_))
                                  (if (gx#stx-pair? _tl70507131_)
                                      (let ((_e70517136_
                                             (gx#syntax-e _tl70507131_)))
                                        (let ((_hd70527139_
                                               (##car _e70517136_))
                                              (_tl70537141_
                                               (##cdr _e70517136_)))
                                          (let ((_K7144_ _hd70527139_))
                                            (if (gx#stx-null? _tl70537141_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test7134_
                                                     _K7144_
                                                     '#!void)
                                                    (_E70447114_))
                                                (_E70447114_)))))
                                      (_E70447114_)))))
                            (_E70447114_))))
                    (_E70447114_)))))
        (_E70437146_))))
  (define gx#free-identifier=?
    (lambda (_xid7029_ _yid7030_)
      (let ((_xe7032_ (gx#resolve-identifier__0 _xid7029_))
            (_ye7033_ (gx#resolve-identifier__0 _yid7030_)))
        (if (if _xe7032_ _ye7033_ '#f)
            (let ((_$e7035_ (eq? _xe7032_ _ye7033_)))
              (if _$e7035_
                  _$e7035_
                  (if (##structure-instance-of? _xe7032_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye7033_ 'gx#binding::t)
                          (eq? (##structure-ref _xe7032_ '1 gx#binding::t '#f)
                               (##structure-ref _ye7033_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e7038_ _xe7032_)) (if _$e7038_ _$e7038_ _ye7033_))
                '#f
                (gx#stx-eq? _xid7029_ _yid7030_))))))
  (define gx#bound-identifier=?
    (lambda (_xid7013_ _yid7014_)
      (letrec ((_context7016_
                (lambda (_e7027_)
                  (if (##structure-direct-instance-of?
                       _e7027_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e7027_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks7017_
                (lambda (_e7025_)
                  (if (symbol? _e7025_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e7025_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e7025_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e7025_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap7018_
                (lambda (_e7023_)
                  (if (symbol? _e7023_)
                      _e7023_
                      (gx#syntax-local-unwrap _e7023_)))))
        (let ((_x7020_ (_unwrap7018_ _xid7013_))
              (_y7021_ (_unwrap7018_ _yid7014_)))
          (if (gx#stx-eq? _x7020_ _y7021_)
              (if (eq? (_context7016_ _x7020_) (_context7016_ _y7021_))
                  (andmap eq? (_marks7017_ _x7020_) (_marks7017_ _y7021_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx7011_)
      (if (gx#identifier? _stx7011_) (gx#core-identifier=? _stx7011_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx7009_)
      (if (gx#identifier? _stx7009_)
          (gx#core-identifier=? _stx7009_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x7007_)
      (if (gx#identifier? _x7007_)
          (if (not (gx#underscore? _x7007_)) _x7007_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6951
      (lambda (_stx6953_ _where6954_)
        (let _lp6956_ ((_rest6958_ (gx#syntax->list _stx6953_)))
          (let* ((_rest69596967_ _rest6958_)
                 (_E69626971_
                  (lambda () (error '"No clause matching" _rest69596967_)))
                 (_else69616975_ (lambda () '#t))
                 (_K69636985_
                  (lambda (_rest6978_ _hd6979_)
                    (if (not (gx#identifier? _hd6979_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where6954_
                         _hd6979_)
                        (if (find (lambda (_g69806982_)
                                    (gx#bound-identifier=?
                                     _g69806982_
                                     _hd6979_))
                                  _rest6978_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where6954_
                             _hd6979_)
                            (_lp6956_ _rest6978_))))))
            (if (##pair? _rest69596967_)
                (let ((_hd69646988_ (##car _rest69596967_))
                      (_tl69656990_ (##cdr _rest69596967_)))
                  (let* ((_hd6993_ _hd69646988_) (_rest6995_ _tl69656990_))
                    (_K69636985_ _rest6995_ _hd6993_)))
                (_else69616975_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx7000_)
          (let ((_where7002_ _stx7000_))
            (gx#check-duplicate-identifiers__opt-lambda6951
             _stx7000_
             _where7002_))))
      (define gx#check-duplicate-identifiers
        (lambda _g9601_
          (let ((_g9600_ (length _g9601_)))
            (cond ((fx= _g9600_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g9601_))
                  ((fx= _g9600_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6951
                          _g9601_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g9601_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6945_)
      (gx#stx-andmap
       (lambda (_x6947_)
         (let ((_$e6949_ (gx#identifier? _x6947_)))
           (if _$e6949_ _$e6949_ (gx#stx-false? _x6947_))))
       _stx6945_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6907
      (lambda (_stx6909_ _rebind?6910_ _phi6911_ _ctx6912_)
        (gx#stx-for-each1
         (lambda (_id6914_)
           (if (gx#identifier? _id6914_)
               (gx#core-bind-runtime!__opt-lambda6846
                _id6914_
                _rebind?6910_
                _phi6911_
                _ctx6912_)
               '#!void))
         _stx6909_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6919_)
          (let* ((_rebind?6921_ '#f)
                 (_phi6923_ (gx#current-expander-phi))
                 (_ctx6925_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6907
             _stx6919_
             _rebind?6921_
             _phi6923_
             _ctx6925_))))
      (define gx#core-bind-values!__1
        (lambda (_stx6927_ _rebind?6928_)
          (let* ((_phi6930_ (gx#current-expander-phi))
                 (_ctx6932_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6907
             _stx6927_
             _rebind?6928_
             _phi6930_
             _ctx6932_))))
      (define gx#core-bind-values!__2
        (lambda (_stx6934_ _rebind?6935_ _phi6936_)
          (let ((_ctx6938_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6907
             _stx6934_
             _rebind?6935_
             _phi6936_
             _ctx6938_))))
      (define gx#core-bind-values!
        (lambda _g9603_
          (let ((_g9602_ (length _g9603_)))
            (cond ((fx= _g9602_ 1) (apply gx#core-bind-values!__0 _g9603_))
                  ((fx= _g9602_ 2) (apply gx#core-bind-values!__1 _g9603_))
                  ((fx= _g9602_ 3) (apply gx#core-bind-values!__2 _g9603_))
                  ((fx= _g9602_ 4)
                   (apply gx#core-bind-values!__opt-lambda6907 _g9603_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g9603_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6904_)
      (gx#stx-map1
       (lambda (_x6906_)
         (if (gx#identifier? _x6906_) (gx#core-quote-syntax__0 _x6906_) '#f))
       _stx6904_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6897_)
      (if (gx#identifier? _stx6897_)
          (let* ((_bind6899_ (gx#resolve-identifier__0 _stx6897_))
                 (_$e6901_ (not _bind6899_)))
            (if _$e6901_
                _$e6901_
                (##structure-instance-of? _bind6899_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6889_ _form6890_)
      (let ((_bind6892_ (gx#resolve-identifier__0 _id6889_)))
        (if (##structure-instance-of? _bind6892_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6889_)
            (if (not _bind6892_)
                (if (let ((_$e6894_
                           (gx#core-context-rebind?__opt-lambda4761
                            (gx#core-context-top__0))))
                      (if _$e6894_
                          _$e6894_
                          (gx#core-extern-symbol? (gx#stx-e _id6889_))))
                    (gx#core-quote-syntax__0 _id6889_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6890_
                     _id6889_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6890_
                 _id6889_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6846
      (lambda (_id6848_ _rebind?6849_ _phi6850_ _ctx6851_)
        (let* ((_key6853_ (gx#core-identifier-key _id6848_))
               (_eid6855_
                (gx#make-binding-id__opt-lambda6613
                 _key6853_
                 '#f
                 _phi6850_
                 _ctx6851_))
               (_bind6857_
                (if (##structure-instance-of? _ctx6851_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid6855_
                     _key6853_
                     _phi6850_
                     _ctx6851_)
                    (if (##structure-instance-of? _ctx6851_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid6855_
                         _key6853_
                         _phi6850_)
                        (if (##structure-instance-of?
                             _ctx6851_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid6855_
                             _key6853_
                             _phi6850_)
                            (##structure
                             gx#runtime-binding::t
                             _eid6855_
                             _key6853_
                             _phi6850_))))))
          (gx#bind-identifier!__opt-lambda5208
           _id6848_
           _bind6857_
           _rebind?6849_
           _phi6850_
           _ctx6851_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6863_)
          (let* ((_rebind?6865_ '#f)
                 (_phi6867_ (gx#current-expander-phi))
                 (_ctx6869_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6846
             _id6863_
             _rebind?6865_
             _phi6867_
             _ctx6869_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6871_ _rebind?6872_)
          (let* ((_phi6874_ (gx#current-expander-phi))
                 (_ctx6876_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6846
             _id6871_
             _rebind?6872_
             _phi6874_
             _ctx6876_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6878_ _rebind?6879_ _phi6880_)
          (let ((_ctx6882_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6846
             _id6878_
             _rebind?6879_
             _phi6880_
             _ctx6882_))))
      (define gx#core-bind-runtime!
        (lambda _g9605_
          (let ((_g9604_ (length _g9605_)))
            (cond ((fx= _g9604_ 1) (apply gx#core-bind-runtime!__0 _g9605_))
                  ((fx= _g9604_ 2) (apply gx#core-bind-runtime!__1 _g9605_))
                  ((fx= _g9604_ 3) (apply gx#core-bind-runtime!__2 _g9605_))
                  ((fx= _g9604_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6846 _g9605_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g9605_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6801
      (lambda (_id6803_ _eid6804_ _rebind?6805_ _phi6806_ _ctx6807_)
        (let* ((_key6809_ (gx#core-identifier-key _id6803_))
               (_bind6811_
                (if (##structure-instance-of? _ctx6807_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid6804_
                     _key6809_
                     _phi6806_
                     _ctx6807_)
                    (if (##structure-instance-of? _ctx6807_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid6804_
                         _key6809_
                         _phi6806_)
                        (##structure
                         gx#runtime-binding::t
                         _eid6804_
                         _key6809_
                         _phi6806_)))))
          (gx#bind-identifier!__opt-lambda5208
           _id6803_
           _bind6811_
           _rebind?6805_
           _phi6806_
           _ctx6807_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6817_ _eid6818_)
          (let* ((_rebind?6820_ '#f)
                 (_phi6822_ (gx#current-expander-phi))
                 (_ctx6824_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6801
             _id6817_
             _eid6818_
             _rebind?6820_
             _phi6822_
             _ctx6824_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6826_ _eid6827_ _rebind?6828_)
          (let* ((_phi6830_ (gx#current-expander-phi))
                 (_ctx6832_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6801
             _id6826_
             _eid6827_
             _rebind?6828_
             _phi6830_
             _ctx6832_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6834_ _eid6835_ _rebind?6836_ _phi6837_)
          (let ((_ctx6839_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6801
             _id6834_
             _eid6835_
             _rebind?6836_
             _phi6837_
             _ctx6839_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g9607_
          (let ((_g9606_ (length _g9607_)))
            (cond ((fx= _g9606_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g9607_))
                  ((fx= _g9606_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g9607_))
                  ((fx= _g9606_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g9607_))
                  ((fx= _g9606_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6801
                          _g9607_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g9607_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6761
      (lambda (_id6763_ _eid6764_ _rebind?6765_ _phi6766_ _ctx6767_)
        (gx#bind-identifier!__opt-lambda5208
         _id6763_
         (##structure
          gx#extern-binding::t
          _eid6764_
          (gx#core-identifier-key _id6763_)
          _phi6766_)
         _rebind?6765_
         _phi6766_
         _ctx6767_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6772_ _eid6773_)
          (let* ((_rebind?6775_ '#f)
                 (_phi6777_ (gx#current-expander-phi))
                 (_ctx6779_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6761
             _id6772_
             _eid6773_
             _rebind?6775_
             _phi6777_
             _ctx6779_))))
      (define gx#core-bind-extern!__1
        (lambda (_id6781_ _eid6782_ _rebind?6783_)
          (let* ((_phi6785_ (gx#current-expander-phi))
                 (_ctx6787_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6761
             _id6781_
             _eid6782_
             _rebind?6783_
             _phi6785_
             _ctx6787_))))
      (define gx#core-bind-extern!__2
        (lambda (_id6789_ _eid6790_ _rebind?6791_ _phi6792_)
          (let ((_ctx6794_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6761
             _id6789_
             _eid6790_
             _rebind?6791_
             _phi6792_
             _ctx6794_))))
      (define gx#core-bind-extern!
        (lambda _g9609_
          (let ((_g9608_ (length _g9609_)))
            (cond ((fx= _g9608_ 2) (apply gx#core-bind-extern!__0 _g9609_))
                  ((fx= _g9608_ 3) (apply gx#core-bind-extern!__1 _g9609_))
                  ((fx= _g9608_ 4) (apply gx#core-bind-extern!__2 _g9609_))
                  ((fx= _g9608_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6761 _g9609_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g9609_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6715
      (lambda (_id6717_ _e6718_ _rebind?6719_ _phi6720_ _ctx6721_)
        (gx#bind-identifier!__opt-lambda5208
         _id6717_
         (let ((_key6726_ (gx#core-identifier-key _id6717_))
               (_e6727_ (if (let ((_$e6723_
                                   (##structure-instance-of?
                                    _e6718_
                                    'gx#expander::t)))
                              (if _$e6723_
                                  _$e6723_
                                  (##structure-instance-of?
                                   _e6718_
                                   'gx#expander-context::t)))
                            _e6718_
                            (##structure
                             gx#user-expander::t
                             _e6718_
                             _ctx6721_
                             _phi6720_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda6613
             _key6726_
             '#t
             _phi6720_
             _ctx6721_)
            _key6726_
            _phi6720_
            _e6727_))
         _rebind?6719_
         _phi6720_
         _ctx6721_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6732_ _e6733_)
          (let* ((_rebind?6735_ '#f)
                 (_phi6737_ (gx#current-expander-phi))
                 (_ctx6739_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6715
             _id6732_
             _e6733_
             _rebind?6735_
             _phi6737_
             _ctx6739_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6741_ _e6742_ _rebind?6743_)
          (let* ((_phi6745_ (gx#current-expander-phi))
                 (_ctx6747_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6715
             _id6741_
             _e6742_
             _rebind?6743_
             _phi6745_
             _ctx6747_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6749_ _e6750_ _rebind?6751_ _phi6752_)
          (let ((_ctx6754_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6715
             _id6749_
             _e6750_
             _rebind?6751_
             _phi6752_
             _ctx6754_))))
      (define gx#core-bind-syntax!
        (lambda _g9611_
          (let ((_g9610_ (length _g9611_)))
            (cond ((fx= _g9610_ 2) (apply gx#core-bind-syntax!__0 _g9611_))
                  ((fx= _g9610_ 3) (apply gx#core-bind-syntax!__1 _g9611_))
                  ((fx= _g9610_ 4) (apply gx#core-bind-syntax!__2 _g9611_))
                  ((fx= _g9610_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6715 _g9611_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g9611_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6698
      (lambda (_id6700_ _e6701_ _rebind?6702_)
        (gx#core-bind-syntax!__opt-lambda6715
         _id6700_
         _e6701_
         _rebind?6702_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6707_ _e6708_)
          (let ((_rebind?6710_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6698
             _id6707_
             _e6708_
             _rebind?6710_))))
      (define gx#core-bind-root-syntax!
        (lambda _g9613_
          (let ((_g9612_ (length _g9613_)))
            (cond ((fx= _g9612_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g9613_))
                  ((fx= _g9612_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6698 _g9613_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g9613_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda6656
      (lambda (_id6658_ _alias-id6659_ _rebind?6660_ _phi6661_ _ctx6662_)
        (gx#bind-identifier!__opt-lambda5208
         _id6658_
         (let ((_key6664_ (gx#core-identifier-key _id6658_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda6613
             _key6664_
             '#t
             _phi6661_
             _ctx6662_)
            _key6664_
            _phi6661_
            _alias-id6659_))
         _rebind?6660_
         _phi6661_
         _ctx6662_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6669_ _alias-id6670_)
          (let* ((_rebind?6672_ '#f)
                 (_phi6674_ (gx#current-expander-phi))
                 (_ctx6676_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6656
             _id6669_
             _alias-id6670_
             _rebind?6672_
             _phi6674_
             _ctx6676_))))
      (define gx#core-bind-alias!__1
        (lambda (_id6678_ _alias-id6679_ _rebind?6680_)
          (let* ((_phi6682_ (gx#current-expander-phi))
                 (_ctx6684_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6656
             _id6678_
             _alias-id6679_
             _rebind?6680_
             _phi6682_
             _ctx6684_))))
      (define gx#core-bind-alias!__2
        (lambda (_id6686_ _alias-id6687_ _rebind?6688_ _phi6689_)
          (let ((_ctx6691_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6656
             _id6686_
             _alias-id6687_
             _rebind?6688_
             _phi6689_
             _ctx6691_))))
      (define gx#core-bind-alias!
        (lambda _g9615_
          (let ((_g9614_ (length _g9615_)))
            (cond ((fx= _g9614_ 2) (apply gx#core-bind-alias!__0 _g9615_))
                  ((fx= _g9614_ 3) (apply gx#core-bind-alias!__1 _g9615_))
                  ((fx= _g9614_ 4) (apply gx#core-bind-alias!__2 _g9615_))
                  ((fx= _g9614_ 5)
                   (apply gx#core-bind-alias!__opt-lambda6656 _g9615_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g9615_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda6613
      (lambda (_key6615_ _syntax?6616_ _phi6617_ _ctx6618_)
        (if (uninterned-symbol? _key6615_)
            (gensym 'L)
            (if (pair? _key6615_)
                (gensym (car _key6615_))
                (if (##structure-instance-of? _ctx6618_ 'gx#top-context::t)
                    (let ((_ns6620_
                           (gx#core-context-namespace__opt-lambda4744
                            _ctx6618_)))
                      (if (if (fxzero? _phi6617_) (not _syntax?6616_) '#f)
                          (if _ns6620_
                              (make-symbol _ns6620_ '"#" _key6615_)
                              _key6615_)
                          (if _syntax?6616_
                              (make-symbol
                               (let ((_$e6622_ _ns6620_))
                                 (if _$e6622_ _$e6622_ '""))
                               '"[:"
                               (number->string _phi6617_)
                               '":]#"
                               _key6615_)
                              (make-symbol
                               (let ((_$e6625_ _ns6620_))
                                 (if _$e6625_ _$e6625_ '""))
                               '"["
                               (number->string _phi6617_)
                               '"]#"
                               _key6615_))))
                    (gensym _key6615_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key6631_)
          (let* ((_syntax?6633_ '#f)
                 (_phi6635_ (gx#current-expander-phi))
                 (_ctx6637_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6613
             _key6631_
             _syntax?6633_
             _phi6635_
             _ctx6637_))))
      (define gx#make-binding-id__1
        (lambda (_key6639_ _syntax?6640_)
          (let* ((_phi6642_ (gx#current-expander-phi))
                 (_ctx6644_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6613
             _key6639_
             _syntax?6640_
             _phi6642_
             _ctx6644_))))
      (define gx#make-binding-id__2
        (lambda (_key6646_ _syntax?6647_ _phi6648_)
          (let ((_ctx6650_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6613
             _key6646_
             _syntax?6647_
             _phi6648_
             _ctx6650_))))
      (define gx#make-binding-id
        (lambda _g9617_
          (let ((_g9616_ (length _g9617_)))
            (cond ((fx= _g9616_ 1) (apply gx#make-binding-id__0 _g9617_))
                  ((fx= _g9616_ 2) (apply gx#make-binding-id__1 _g9617_))
                  ((fx= _g9616_ 3) (apply gx#make-binding-id__2 _g9617_))
                  ((fx= _g9616_ 4)
                   (apply gx#make-binding-id__opt-lambda6613 _g9617_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g9617_)))))))))
