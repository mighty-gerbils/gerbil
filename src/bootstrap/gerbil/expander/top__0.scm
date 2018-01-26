(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx10675_)
      (letrec ((_expand-special10677_
                (lambda (_hd10679_ _K10680_ _rest10681_ _r10682_)
                  (_K10680_
                   _rest10681_
                   (cons (gx#core-expand-top _hd10679_) _r10682_)))))
        (gx#core-expand-block__0 _stx10675_ _expand-special10677_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx10428_)
      (letrec ((_expand-special10430_
                (lambda (_hd10550_ _K10551_ _rest10552_ _r10553_)
                  (let* ((_K10557_
                          (lambda (_e10555_)
                            (_K10551_ _rest10552_ (cons _e10555_ _r10553_))))
                         (_e1055810587_ _hd10550_)
                         (_E1058210591_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1055810587_)))
                         (_E1057810603_
                          (lambda ()
                            (if (gx#stx-pair? _e1055810587_)
                                (let ((_e1058310595_
                                       (gx#syntax-e _e1055810587_)))
                                  (let ((_hd1058410598_ (##car _e1058310595_))
                                        (_tl1058510600_ (##cdr _e1058310595_)))
                                    (if (if (gx#identifier? _hd1058410598_)
                                            (gx#core-identifier=?
                                             _hd1058410598_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K10557_
                                             (gx#core-expand-define-runtime%
                                              _hd10550_))
                                            (_E1058210591_))
                                        (_E1058210591_))))
                                (_E1058210591_))))
                         (_E1057410615_
                          (lambda ()
                            (if (gx#stx-pair? _e1055810587_)
                                (let ((_e1057910607_
                                       (gx#syntax-e _e1055810587_)))
                                  (let ((_hd1058010610_ (##car _e1057910607_))
                                        (_tl1058110612_ (##cdr _e1057910607_)))
                                    (if (if (gx#identifier? _hd1058010610_)
                                            (gx#core-identifier=?
                                             _hd1058010610_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K10557_
                                             (gx#core-expand-define-alias%
                                              _hd10550_))
                                            (_E1057810603_))
                                        (_E1057810603_))))
                                (_E1057810603_))))
                         (_E1056410627_
                          (lambda ()
                            (if (gx#stx-pair? _e1055810587_)
                                (let ((_e1057510619_
                                       (gx#syntax-e _e1055810587_)))
                                  (let ((_hd1057610622_ (##car _e1057510619_))
                                        (_tl1057710624_ (##cdr _e1057510619_)))
                                    (if (if (gx#identifier? _hd1057610622_)
                                            (gx#core-identifier=?
                                             _hd1057610622_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10557_
                                             (gx#core-expand-define-syntax%
                                              _hd10550_))
                                            (_E1057410615_))
                                        (_E1057410615_))))
                                (_E1057410615_))))
                         (_E1056010659_
                          (lambda ()
                            (if (gx#stx-pair? _e1055810587_)
                                (let ((_e1056510631_
                                       (gx#syntax-e _e1055810587_)))
                                  (let ((_hd1056610634_ (##car _e1056510631_))
                                        (_tl1056710636_ (##cdr _e1056510631_)))
                                    (if (if (gx#identifier? _hd1056610634_)
                                            (gx#core-identifier=?
                                             _hd1056610634_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1056710636_)
                                            (let ((_e1056810639_
                                                   (gx#syntax-e
                                                    _tl1056710636_)))
                                              (let ((_hd1056910642_
                                                     (##car _e1056810639_))
                                                    (_tl1057010644_
                                                     (##cdr _e1056810639_)))
                                                (let ((_hd-bind10647_
                                                       _hd1056910642_))
                                                  (if (gx#stx-pair?
                                                       _tl1057010644_)
                                                      (let ((_e1057110649_
                                                             (gx#syntax-e
                                                              _tl1057010644_)))
                                                        (let ((_hd1057210652_
                                                               (##car _e1057110649_))
                                                              (_tl1057310654_
                                                               (##cdr _e1057110649_)))
                                                          (let ((_expr10657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1057210652_))
                    (if (gx#stx-null? _tl1057310654_)
                        (if (gx#core-bind-values? _hd-bind10647_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10647_)
                              (_K10557_ _hd10550_))
                            (_E1056410627_))
                        (_E1056410627_)))))
              (_E1056410627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1056410627_))
                                        (_E1056410627_))))
                                (_E1056410627_))))
                         (_E1055910671_
                          (lambda ()
                            (if (gx#stx-pair? _e1055810587_)
                                (let ((_e1056110663_
                                       (gx#syntax-e _e1055810587_)))
                                  (let ((_hd1056210666_ (##car _e1056110663_))
                                        (_tl1056310668_ (##cdr _e1056110663_)))
                                    (if (if (gx#identifier? _hd1056210666_)
                                            (gx#core-identifier=?
                                             _hd1056210666_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10557_
                                             (gx#core-expand-begin-syntax%
                                              _hd10550_))
                                            (_E1056010659_))
                                        (_E1056010659_))))
                                (_E1056010659_)))))
                    (_E1055910671_))))
               (_eval-body10431_
                (lambda (_rbody10439_)
                  (let _lp10441_ ((_rest10443_ _rbody10439_)
                                  (_body10444_ '())
                                  (_ebody10445_ '()))
                    (let* ((_rest1044610454_ _rest10443_)
                           (_E1044910458_
                            (lambda ()
                              (error '"No clause matching" _rest1044610454_)))
                           (_else1044810462_
                            (lambda ()
                              (values _body10444_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody10445_)
                                        (gx#stx-source _stx10428_))))))
                           (_K1045010538_
                            (lambda (_rest10465_ _hd10466_)
                              (let* ((_e1046710484_ _hd10466_)
                                     (_E1047910488_
                                      (lambda ()
                                        (_lp10441_
                                         _rest10465_
                                         (cons _hd10466_ _body10444_)
                                         (cons _hd10466_ _ebody10445_))))
                                     (_E1046910500_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1046710484_)
                                            (let ((_e1048010492_
                                                   (gx#syntax-e
                                                    _e1046710484_)))
                                              (let ((_hd1048110495_
                                                     (##car _e1048010492_))
                                                    (_tl1048210497_
                                                     (##cdr _e1048010492_)))
                                                (if (if (gx#identifier?
                                                         _hd1048110495_)
                                                        (gx#core-identifier=?
                                                         _hd1048110495_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10441_
                                                         _rest10465_
                                                         (cons _hd10466_
                                                               _body10444_)
                                                         _ebody10445_)
                                                        (_E1047910488_))
                                                    (_E1047910488_))))
                                            (_E1047910488_))))
                                     (_E1046810534_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1046710484_)
                                            (let ((_e1047010504_
                                                   (gx#syntax-e
                                                    _e1046710484_)))
                                              (let ((_hd1047110507_
                                                     (##car _e1047010504_))
                                                    (_tl1047210509_
                                                     (##cdr _e1047010504_)))
                                                (if (if (gx#identifier?
                                                         _hd1047110507_)
                                                        (gx#core-identifier=?
                                                         _hd1047110507_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1047210509_)
                                                        (let ((_e1047310512_
                                                               (gx#syntax-e
                                                                _tl1047210509_)))
                                                          (let ((_hd1047410515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1047310512_))
                        (_tl1047510517_ (##cdr _e1047310512_)))
                    (let ((_hd-bind10520_ _hd1047410515_))
                      (if (gx#stx-pair? _tl1047510517_)
                          (let ((_e1047610522_ (gx#syntax-e _tl1047510517_)))
                            (let ((_hd1047710525_ (##car _e1047610522_))
                                  (_tl1047810527_ (##cdr _e1047610522_)))
                              (let ((_expr10530_ _hd1047710525_))
                                (if (gx#stx-null? _tl1047810527_)
                                    (if '#t
                                        (let ((_ehd10532_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind10520_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr10530_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd10466_))))
                                          (_lp10441_
                                           _rest10465_
                                           (cons _ehd10532_ _body10444_)
                                           (cons _ehd10532_ _ebody10445_)))
                                        (_E1046910500_))
                                    (_E1046910500_)))))
                          (_E1046910500_)))))
                (_E1046910500_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1046910500_))))
                                            (_E1046910500_)))))
                                (_E1046810534_)))))
                      (if (##pair? _rest1044610454_)
                          (let ((_hd1045110541_ (##car _rest1044610454_))
                                (_tl1045210543_ (##cdr _rest1044610454_)))
                            (let* ((_hd10546_ _hd1045110541_)
                                   (_rest10548_ _tl1045210543_))
                              (_K1045010538_ _rest10548_ _hd10546_)))
                          (_else1044810462_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody10434_
                   (gx#core-expand-block__1
                    _stx10428_
                    _expand-special10430_
                    '#f))
                  (_g10689_ (_eval-body10431_ _rbody10434_)))
             (begin
               (let ((_g10690_ (values-count _g10689_)))
                 (if (not (fx= _g10690_ 2))
                     (error "Context expects 2 values" _g10690_)))
               (let ((_expanded-body10436_ (values-ref _g10689_ 0))
                     (_value10437_ (values-ref _g10689_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body10436_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value10437_ '())))
                  (gx#stx-source _stx10428_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx10398_)
      (let* ((_e1039910406_ _stx10398_)
             (_E1040110410_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1039910406_)))
             (_E1040010424_
              (lambda ()
                (if (gx#stx-pair? _e1039910406_)
                    (let ((_e1040210414_ (gx#syntax-e _e1039910406_)))
                      (let ((_hd1040310417_ (##car _e1040210414_))
                            (_tl1040410419_ (##cdr _e1040210414_)))
                        (let ((_body10422_ _tl1040410419_))
                          (if (gx#stx-list? _body10422_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body10422_)
                               (gx#stx-source _stx10398_))
                              (_E1040110410_)))))
                    (_E1040110410_)))))
        (_E1040010424_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx10396_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx10396_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx10384_)
      (let* ((_e1038510388_ _stx10384_)
             (_E1038610392_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1038510388_))))
        (_E1038610392_))))
  (define gx#core-expand-local-block
    (lambda (_stx10108_ _body10109_)
      (letrec ((_expand-special10111_
                (lambda (_hd10379_ _K10380_ _rest10381_ _r10382_)
                  (_K10380_
                   '()
                   (cons (_expand-internal10112_ _hd10379_ _rest10381_)
                         _r10382_))))
               (_expand-internal10112_
                (lambda (_hd10375_ _rest10376_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal10114_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons* '%#begin _hd10375_ _rest10376_)
                        (gx#stx-source _stx10108_))
                       _expand-internal-special10113_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj10683 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj10683)
                       __obj10683)))))
               (_expand-internal-special10113_
                (lambda (_hd10270_ _K10271_ _rest10272_ _r10273_)
                  (let* ((_e1027410299_ _hd10270_)
                         (_E1029410303_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1027410299_)))
                         (_E1029010315_
                          (lambda ()
                            (if (gx#stx-pair? _e1027410299_)
                                (let ((_e1029510307_
                                       (gx#syntax-e _e1027410299_)))
                                  (let ((_hd1029610310_ (##car _e1029510307_))
                                        (_tl1029710312_ (##cdr _e1029510307_)))
                                    (if (if (gx#identifier? _hd1029610310_)
                                            (gx#core-identifier=?
                                             _hd1029610310_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K10271_
                                             _rest10272_
                                             (cons (gx#core-expand-declare%
                                                    _hd10270_)
                                                   _r10273_))
                                            (_E1029410303_))
                                        (_E1029410303_))))
                                (_E1029410303_))))
                         (_E1028610327_
                          (lambda ()
                            (if (gx#stx-pair? _e1027410299_)
                                (let ((_e1029110319_
                                       (gx#syntax-e _e1027410299_)))
                                  (let ((_hd1029210322_ (##car _e1029110319_))
                                        (_tl1029310324_ (##cdr _e1029110319_)))
                                    (if (if (gx#identifier? _hd1029210322_)
                                            (gx#core-identifier=?
                                             _hd1029210322_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd10270_)
                                              (_K10271_ _rest10272_ _r10273_))
                                            (_E1029010315_))
                                        (_E1029010315_))))
                                (_E1029010315_))))
                         (_E1027610339_
                          (lambda ()
                            (if (gx#stx-pair? _e1027410299_)
                                (let ((_e1028710331_
                                       (gx#syntax-e _e1027410299_)))
                                  (let ((_hd1028810334_ (##car _e1028710331_))
                                        (_tl1028910336_ (##cdr _e1028710331_)))
                                    (if (if (gx#identifier? _hd1028810334_)
                                            (gx#core-identifier=?
                                             _hd1028810334_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd10270_)
                                              (_K10271_ _rest10272_ _r10273_))
                                            (_E1028610327_))
                                        (_E1028610327_))))
                                (_E1028610327_))))
                         (_E1027510371_
                          (lambda ()
                            (if (gx#stx-pair? _e1027410299_)
                                (let ((_e1027710343_
                                       (gx#syntax-e _e1027410299_)))
                                  (let ((_hd1027810346_ (##car _e1027710343_))
                                        (_tl1027910348_ (##cdr _e1027710343_)))
                                    (if (if (gx#identifier? _hd1027810346_)
                                            (gx#core-identifier=?
                                             _hd1027810346_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1027910348_)
                                            (let ((_e1028010351_
                                                   (gx#syntax-e
                                                    _tl1027910348_)))
                                              (let ((_hd1028110354_
                                                     (##car _e1028010351_))
                                                    (_tl1028210356_
                                                     (##cdr _e1028010351_)))
                                                (let ((_hd-bind10359_
                                                       _hd1028110354_))
                                                  (if (gx#stx-pair?
                                                       _tl1028210356_)
                                                      (let ((_e1028310361_
                                                             (gx#syntax-e
                                                              _tl1028210356_)))
                                                        (let ((_hd1028410364_
                                                               (##car _e1028310361_))
                                                              (_tl1028510366_
                                                               (##cdr _e1028310361_)))
                                                          (let ((_expr10369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1028410364_))
                    (if (gx#stx-null? _tl1028510366_)
                        (if (gx#core-bind-values? _hd-bind10359_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10359_)
                              (_K10271_ _rest10272_ (cons _hd10270_ _r10273_)))
                            (_E1027610339_))
                        (_E1027610339_)))))
              (_E1027610339_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1027610339_))
                                        (_E1027610339_))))
                                (_E1027610339_)))))
                    (_E1027510371_))))
               (_wrap-internal10114_
                (lambda (_rbody10116_)
                  (let _lp10118_ ((_rest10120_ _rbody10116_)
                                  (_decls10121_ '())
                                  (_bind10122_ '())
                                  (_body10123_ '()))
                    (let* ((_e1012410131_ _rest10120_)
                           (_E1012610180_
                            (lambda ()
                              (let* ((_body10175_
                                      (let* ((_body1013410144_ _body10123_)
                                             (_E1013810148_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _body1013410144_)))
                                             (_else1013710152_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10123_)
                                                 (gx#stx-source _stx10108_))))
                                             (_try-match1013610168_
                                              (lambda ()
                                                (let ((_K1013910158_
                                                       (lambda (_expr10156_)
                                                         _expr10156_)))
                                                  (if (##pair? _body1013410144_)
                                                      (let ((_hd1014010161_
                                                             (##car _body1013410144_))
                                                            (_tl1014110163_
                                                             (##cdr _body1013410144_)))
                                                        (let ((_expr10166_
                                                               _hd1014010161_))
                                                          (if (##null? _tl1014110163_)
                                                              (_K1013910158_
                                                               _expr10166_)
                                                              (_else1013710152_))))
                                                      (_else1013710152_)))))
                                             (_K1014210172_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx10108_))))
                                        (if (##null? _body1013410144_)
                                            (_K1014210172_)
                                            (_try-match1013610168_))))
                                     (_body10177_
                                      (if (null? _bind10122_)
                                          _body10175_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind10122_
                                                       (cons _body10175_ '())))
                                           (gx#stx-source _stx10108_)))))
                                (if (null? _decls10121_)
                                    _body10177_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls10121_
                                                 (cons _body10177_ '())))
                                     (gx#stx-source _stx10108_))))))
                           (_E1012510266_
                            (lambda ()
                              (if (gx#stx-pair? _e1012410131_)
                                  (let ((_e1012710184_
                                         (gx#syntax-e _e1012410131_)))
                                    (let ((_hd1012810187_
                                           (##car _e1012710184_))
                                          (_tl1012910189_
                                           (##cdr _e1012710184_)))
                                      (let* ((_hd10192_ _hd1012810187_)
                                             (_rest10194_ _tl1012910189_))
                                        (if '#t
                                            (let* ((_e1019510212_ _hd10192_)
                                                   (_E1020710216_
                                                    (lambda ()
                                                      (if (null? _bind10122_)
                                                          (_lp10118_
                                                           _rest10194_
                                                           _decls10121_
                                                           _bind10122_
                                                           (cons _hd10192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10123_))
                  (_lp10118_
                   _rest10194_
                   _decls10121_
                   (cons (cons '#f (cons _hd10192_ '())) _bind10122_)
                   _body10123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1019710230_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1019510212_)
                                                          (let ((_e1020810220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1019510212_)))
                    (let ((_hd1020910223_ (##car _e1020810220_))
                          (_tl1021010225_ (##cdr _e1020810220_)))
                      (if (if (gx#identifier? _hd1020910223_)
                              (gx#core-identifier=? _hd1020910223_ '%#declare)
                              '#f)
                          (let ((_xdecls10228_ _tl1021010225_))
                            (if '#t
                                (_lp10118_
                                 _rest10194_
                                 (gx#stx-foldr cons _decls10121_ _xdecls10228_)
                                 _bind10122_
                                 _body10123_)
                                (_E1020710216_)))
                          (_E1020710216_))))
                  (_E1020710216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1019610262_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1019510212_)
                                                          (let ((_e1019810234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1019510212_)))
                    (let ((_hd1019910237_ (##car _e1019810234_))
                          (_tl1020010239_ (##cdr _e1019810234_)))
                      (if (if (gx#identifier? _hd1019910237_)
                              (gx#core-identifier=?
                               _hd1019910237_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1020010239_)
                              (let ((_e1020110242_
                                     (gx#syntax-e _tl1020010239_)))
                                (let ((_hd1020210245_ (##car _e1020110242_))
                                      (_tl1020310247_ (##cdr _e1020110242_)))
                                  (let ((_hd-bind10250_ _hd1020210245_))
                                    (if (gx#stx-pair? _tl1020310247_)
                                        (let ((_e1020410252_
                                               (gx#syntax-e _tl1020310247_)))
                                          (let ((_hd1020510255_
                                                 (##car _e1020410252_))
                                                (_tl1020610257_
                                                 (##cdr _e1020410252_)))
                                            (let ((_expr10260_ _hd1020510255_))
                                              (if (gx#stx-null? _tl1020610257_)
                                                  (if '#t
                                                      (_lp10118_
                                                       _rest10194_
                                                       _decls10121_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind10250_)
                           (cons (gx#core-expand-expression _expr10260_) '()))
                     _bind10122_)
               _body10123_)
              (_E1019710230_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1019710230_)))))
                                        (_E1019710230_)))))
                              (_E1019710230_))
                          (_E1019710230_))))
                  (_E1019710230_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1019610262_))
                                            (_E1012610180_)))))
                                  (_E1012610180_)))))
                      (_E1012510266_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body10109_)
          (gx#stx-source _stx10108_))
         _expand-special10111_))))
  (define gx#core-expand-declare%
    (lambda (_stx10046_)
      (let* ((_e1004710054_ _stx10046_)
             (_E1004910058_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1004710054_)))
             (_E1004810104_
              (lambda ()
                (if (gx#stx-pair? _e1004710054_)
                    (let ((_e1005010062_ (gx#syntax-e _e1004710054_)))
                      (let ((_hd1005110065_ (##car _e1005010062_))
                            (_tl1005210067_ (##cdr _e1005010062_)))
                        (let ((_body10070_ _tl1005210067_))
                          (if (gx#stx-list? _body10070_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl10072_)
                                   (let* ((_e1007310080_ _decl10072_)
                                          (_E1007510084_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1007310080_)))
                                          (_E1007410100_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1007310080_)
                                                 (let ((_e1007610088_
                                                        (gx#syntax-e
                                                         _e1007310080_)))
                                                   (let ((_hd1007710091_
                                                          (##car _e1007610088_))
                                                         (_tl1007810093_
                                                          (##cdr _e1007610088_)))
                                                     (let* ((_head10096_
                                                             _hd1007710091_)
                                                            (_args10098_
                                                             _tl1007810093_))
                                                       (if (gx#stx-list?
                                                            _args10098_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl10072_)
                                                           (_E1007510084_)))))
                                                 (_E1007510084_)))))
                                     (_E1007410100_)))
                                 _body10070_))
                               (gx#stx-source _stx10046_))
                              (_E1004910058_)))))
                    (_E1004910058_)))))
        (_E1004810104_))))
  (define gx#core-expand-extern%
    (lambda (_stx9930_)
      (let* ((_e99319938_ _stx9930_)
             (_E99339942_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e99319938_)))
             (_E993210042_
              (lambda ()
                (if (gx#stx-pair? _e99319938_)
                    (let ((_e99349946_ (gx#syntax-e _e99319938_)))
                      (let ((_hd99359949_ (##car _e99349946_))
                            (_tl99369951_ (##cdr _e99349946_)))
                        (let ((_body9954_ _tl99369951_))
                          (if (gx#stx-list? _body9954_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind9956_)
                                   (let* ((_e99579967_ _bind9956_)
                                          (_E99599971_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e99579967_)))
                                          (_E99589995_
                                           (lambda ()
                                             (if (gx#stx-pair? _e99579967_)
                                                 (let ((_e99609975_
                                                        (gx#syntax-e
                                                         _e99579967_)))
                                                   (let ((_hd99619978_
                                                          (##car _e99609975_))
                                                         (_tl99629980_
                                                          (##cdr _e99609975_)))
                                                     (let ((_id9983_
                                                            _hd99619978_))
                                                       (if (gx#stx-pair?
                                                            _tl99629980_)
                                                           (let ((_e99639985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl99629980_)))
                     (let ((_hd99649988_ (##car _e99639985_))
                           (_tl99659990_ (##cdr _e99639985_)))
                       (let ((_eid9993_ _hd99649988_))
                         (if (gx#stx-null? _tl99659990_)
                             (if (if (gx#identifier? _id9983_)
                                     (gx#identifier? _eid9993_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id9983_
                                  (gx#stx-e _eid9993_))
                                 (_E99599971_))
                             (_E99599971_)))))
                   (_E99599971_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E99599971_)))))
                                     (_E99589995_)))
                                 _body9954_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind9999_)
                                     (let* ((_e1000010010_ _bind9999_)
                                            (_E1000210014_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1000010010_)))
                                            (_E1000110038_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1000010010_)
                                                   (let ((_e1000310018_
                                                          (gx#syntax-e
                                                           _e1000010010_)))
                                                     (let ((_hd1000410021_
                                                            (##car _e1000310018_))
                                                           (_tl1000510023_
                                                            (##cdr _e1000310018_)))
                                                       (let ((_id10026_
                                                              _hd1000410021_))
                                                         (if (gx#stx-pair?
                                                              _tl1000510023_)
                                                             (let ((_e1000610028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1000510023_)))
                       (let ((_hd1000710031_ (##car _e1000610028_))
                             (_tl1000810033_ (##cdr _e1000610028_)))
                         (let ((_eid10036_ _hd1000710031_))
                           (if (gx#stx-null? _tl1000810033_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id10026_)
                                         (cons (gx#stx-e _eid10036_) '()))
                                   (_E1000210014_))
                               (_E1000210014_)))))
                     (_E1000210014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1000210014_)))))
                                       (_E1000110038_)))
                                   _body9954_))
                                 (gx#stx-source _stx9930_)))
                              (_E99339942_)))))
                    (_E99339942_)))))
        (_E993210042_))))
  (define gx#core-expand-define-values%
    (lambda (_stx9876_)
      (let* ((_e98779890_ _stx9876_)
             (_E98799894_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98779890_)))
             (_E98789926_
              (lambda ()
                (if (gx#stx-pair? _e98779890_)
                    (let ((_e98809898_ (gx#syntax-e _e98779890_)))
                      (let ((_hd98819901_ (##car _e98809898_))
                            (_tl98829903_ (##cdr _e98809898_)))
                        (if (gx#stx-pair? _tl98829903_)
                            (let ((_e98839906_ (gx#syntax-e _tl98829903_)))
                              (let ((_hd98849909_ (##car _e98839906_))
                                    (_tl98859911_ (##cdr _e98839906_)))
                                (let ((_hd9914_ _hd98849909_))
                                  (if (gx#stx-pair? _tl98859911_)
                                      (let ((_e98869916_
                                             (gx#syntax-e _tl98859911_)))
                                        (let ((_hd98879919_
                                               (##car _e98869916_))
                                              (_tl98889921_
                                               (##cdr _e98869916_)))
                                          (let ((_expr9924_ _hd98879919_))
                                            (if (gx#stx-null? _tl98889921_)
                                                (if (gx#core-bind-values?
                                                     _hd9914_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd9914_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd9914_)
                           (cons (gx#core-expand-expression _expr9924_) '())))
               (gx#stx-source _stx9876_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98799894_))
                                                (_E98799894_)))))
                                      (_E98799894_)))))
                            (_E98799894_))))
                    (_E98799894_)))))
        (_E98789926_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx9822_)
      (let* ((_e98239836_ _stx9822_)
             (_E98259840_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98239836_)))
             (_E98249872_
              (lambda ()
                (if (gx#stx-pair? _e98239836_)
                    (let ((_e98269844_ (gx#syntax-e _e98239836_)))
                      (let ((_hd98279847_ (##car _e98269844_))
                            (_tl98289849_ (##cdr _e98269844_)))
                        (if (gx#stx-pair? _tl98289849_)
                            (let ((_e98299852_ (gx#syntax-e _tl98289849_)))
                              (let ((_hd98309855_ (##car _e98299852_))
                                    (_tl98319857_ (##cdr _e98299852_)))
                                (let ((_id9860_ _hd98309855_))
                                  (if (gx#stx-pair? _tl98319857_)
                                      (let ((_e98329862_
                                             (gx#syntax-e _tl98319857_)))
                                        (let ((_hd98339865_
                                               (##car _e98329862_))
                                              (_tl98349867_
                                               (##cdr _e98329862_)))
                                          (let ((_binding-id9870_
                                                 _hd98339865_))
                                            (if (gx#stx-null? _tl98349867_)
                                                (if (if (gx#identifier?
                                                         _id9860_)
                                                        (gx#identifier?
                                                         _binding-id9870_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id9860_
                                                       (gx#stx-e
                                                        _binding-id9870_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id9860_)
                           (cons (gx#core-quote-syntax__0 _binding-id9870_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98259840_))
                                                (_E98259840_)))))
                                      (_E98259840_)))))
                            (_E98259840_))))
                    (_E98259840_)))))
        (_E98249872_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx9765_)
      (let* ((_e97669779_ _stx9765_)
             (_E97689783_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97669779_)))
             (_E97679818_
              (lambda ()
                (if (gx#stx-pair? _e97669779_)
                    (let ((_e97699787_ (gx#syntax-e _e97669779_)))
                      (let ((_hd97709790_ (##car _e97699787_))
                            (_tl97719792_ (##cdr _e97699787_)))
                        (if (gx#stx-pair? _tl97719792_)
                            (let ((_e97729795_ (gx#syntax-e _tl97719792_)))
                              (let ((_hd97739798_ (##car _e97729795_))
                                    (_tl97749800_ (##cdr _e97729795_)))
                                (let ((_id9803_ _hd97739798_))
                                  (if (gx#stx-pair? _tl97749800_)
                                      (let ((_e97759805_
                                             (gx#syntax-e _tl97749800_)))
                                        (let ((_hd97769808_
                                               (##car _e97759805_))
                                              (_tl97779810_
                                               (##cdr _e97759805_)))
                                          (let ((_expr9813_ _hd97769808_))
                                            (if (gx#stx-null? _tl97779810_)
                                                (if (gx#identifier? _id9803_)
                                                    (let ((_g10691_
                                                           (gx#core-expand-expression+1
                                                            _expr9813_)))
                                                      (begin
                                                        (let ((_g10692_
                                                               (values-count
                                                                _g10691_)))
                                                          (if (not (fx= _g10692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10692_)))
                (let ((_e-stx9815_ (values-ref _g10691_ 0))
                      (_e9816_ (values-ref _g10691_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id9803_ _e9816_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id9803_)
                                 (cons _e-stx9815_ '())))
                     (gx#stx-source _stx9765_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97689783_))
                                                (_E97689783_)))))
                                      (_E97689783_)))))
                            (_E97689783_))))
                    (_E97689783_)))))
        (_E97679818_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx9709_)
      (let* ((_e97109723_ _stx9709_)
             (_E97129727_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97109723_)))
             (_E97119761_
              (lambda ()
                (if (gx#stx-pair? _e97109723_)
                    (let ((_e97139731_ (gx#syntax-e _e97109723_)))
                      (let ((_hd97149734_ (##car _e97139731_))
                            (_tl97159736_ (##cdr _e97139731_)))
                        (if (gx#stx-pair? _tl97159736_)
                            (let ((_e97169739_ (gx#syntax-e _tl97159736_)))
                              (let ((_hd97179742_ (##car _e97169739_))
                                    (_tl97189744_ (##cdr _e97169739_)))
                                (let ((_id9747_ _hd97179742_))
                                  (if (gx#stx-pair? _tl97189744_)
                                      (let ((_e97199749_
                                             (gx#syntax-e _tl97189744_)))
                                        (let ((_hd97209752_
                                               (##car _e97199749_))
                                              (_tl97219754_
                                               (##cdr _e97199749_)))
                                          (let ((_alias-id9757_ _hd97209752_))
                                            (if (gx#stx-null? _tl97219754_)
                                                (if (if (gx#identifier?
                                                         _id9747_)
                                                        (gx#identifier?
                                                         _alias-id9757_)
                                                        '#f)
                                                    (let ((_alias-id9759_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id9757_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id9747_
                                                         _alias-id9759_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id9747_)
                             (cons _alias-id9759_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97129727_))
                                                (_E97129727_)))))
                                      (_E97129727_)))))
                            (_E97129727_))))
                    (_E97129727_)))))
        (_E97119761_))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda9650
      (lambda (_stx9652_ _wrap?9653_)
        (let* ((_e96549664_ _stx9652_)
               (_E96569668_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e96549664_)))
               (_E96559695_
                (lambda ()
                  (if (gx#stx-pair? _e96549664_)
                      (let ((_e96579672_ (gx#syntax-e _e96549664_)))
                        (let ((_hd96589675_ (##car _e96579672_))
                              (_tl96599677_ (##cdr _e96579672_)))
                          (if (gx#stx-pair? _tl96599677_)
                              (let ((_e96609680_ (gx#syntax-e _tl96599677_)))
                                (let ((_hd96619683_ (##car _e96609680_))
                                      (_tl96629685_ (##cdr _e96609680_)))
                                  (let* ((_hd9688_ _hd96619683_)
                                         (_body9690_ _tl96629685_))
                                    (if (gx#core-bind-values? _hd9688_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0 _hd9688_)
                                             (let ((_body9693_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd9688_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9652_
                         _body9690_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?9653_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body9693_)
                                                    (gx#stx-source _stx9652_))
                                                   _body9693_))))
                                         gx#current-expander-context
                                         (let ((__obj10684
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10684)
                                             __obj10684)))
                                        (_E96569668_)))))
                              (_E96569668_))))
                      (_E96569668_)))))
          (_E96559695_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx9702_)
          (let ((_wrap?9704_ '#t))
            (gx#core-expand-lambda%__opt-lambda9650 _stx9702_ _wrap?9704_))))
      (define gx#core-expand-lambda%
        (lambda _g10694_
          (let ((_g10693_ (length _g10694_)))
            (cond ((fx= _g10693_ 1) (apply gx#core-expand-lambda%__0 _g10694_))
                  ((fx= _g10693_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda9650 _g10694_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g10694_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx9616_)
      (let* ((_e96179624_ _stx9616_)
             (_E96199628_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96179624_)))
             (_E96189647_
              (lambda ()
                (if (gx#stx-pair? _e96179624_)
                    (let ((_e96209632_ (gx#syntax-e _e96179624_)))
                      (let ((_hd96219635_ (##car _e96209632_))
                            (_tl96229637_ (##cdr _e96209632_)))
                        (let ((_clauses9640_ _tl96229637_))
                          (if (gx#stx-list? _clauses9640_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause9642_)
                                   (gx#core-expand-lambda%__opt-lambda9650
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause9642_)
                                     (let ((_$e9644_
                                            (gx#stx-source _clause9642_)))
                                       (if _$e9644_
                                           _$e9644_
                                           (gx#stx-source _stx9616_))))
                                    '#f))
                                 _clauses9640_))
                               (gx#stx-source _stx9616_))
                              (_E96199628_)))))
                    (_E96199628_)))))
        (_E96189647_))))
  (define gx#core-expand-let-values%
    (lambda (_stx9570_)
      (let* ((_e95719581_ _stx9570_)
             (_E95739585_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95719581_)))
             (_E95729612_
              (lambda ()
                (if (gx#stx-pair? _e95719581_)
                    (let ((_e95749589_ (gx#syntax-e _e95719581_)))
                      (let ((_hd95759592_ (##car _e95749589_))
                            (_tl95769594_ (##cdr _e95749589_)))
                        (if (gx#stx-pair? _tl95769594_)
                            (let ((_e95779597_ (gx#syntax-e _tl95769594_)))
                              (let ((_hd95789600_ (##car _e95779597_))
                                    (_tl95799602_ (##cdr _e95779597_)))
                                (let* ((_hd9605_ _hd95789600_)
                                       (_body9607_ _tl95799602_))
                                  (if (gx#core-expand-let-bind? _hd9605_)
                                      (let ((_expressions9609_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd9605_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9605_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9605_
                                                           _expressions9609_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9570_
                         _body9607_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9570_))))
                                         gx#current-expander-context
                                         (let ((__obj10685
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10685)
                                             __obj10685))))
                                      (_E95739585_)))))
                            (_E95739585_))))
                    (_E95739585_)))))
        (_E95729612_))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda9513
      (lambda (_stx9515_ _form9516_)
        (let* ((_e95179527_ _stx9515_)
               (_E95199531_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e95179527_)))
               (_E95189556_
                (lambda ()
                  (if (gx#stx-pair? _e95179527_)
                      (let ((_e95209535_ (gx#syntax-e _e95179527_)))
                        (let ((_hd95219538_ (##car _e95209535_))
                              (_tl95229540_ (##cdr _e95209535_)))
                          (if (gx#stx-pair? _tl95229540_)
                              (let ((_e95239543_ (gx#syntax-e _tl95229540_)))
                                (let ((_hd95249546_ (##car _e95239543_))
                                      (_tl95259548_ (##cdr _e95239543_)))
                                  (let* ((_hd9551_ _hd95249546_)
                                         (_body9553_ _tl95259548_))
                                    (if (gx#core-expand-let-bind? _hd9551_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9551_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form9516_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9551_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd9551_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9515_
                         _body9553_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9515_))))
                                         gx#current-expander-context
                                         (let ((__obj10686
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10686)
                                             __obj10686)))
                                        (_E95199531_)))))
                              (_E95199531_))))
                      (_E95199531_)))))
          (_E95189556_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx9563_)
          (let ((_form9565_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda9513
             _stx9563_
             _form9565_))))
      (define gx#core-expand-letrec-values%
        (lambda _g10696_
          (let ((_g10695_ (length _g10696_)))
            (cond ((fx= _g10695_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g10696_))
                  ((fx= _g10695_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda9513
                          _g10696_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g10696_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx9512_)
      (gx#core-expand-letrec-values%__opt-lambda9513
       _stx9512_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx9469_)
      (if (gx#stx-list? _stx9469_)
          (gx#stx-andmap
           (lambda (_bind9471_)
             (let* ((_e94729482_ _bind9471_)
                    (_E94749486_ (lambda () '#f))
                    (_E94739508_
                     (lambda ()
                       (if (gx#stx-pair? _e94729482_)
                           (let ((_e94759490_ (gx#syntax-e _e94729482_)))
                             (let ((_hd94769493_ (##car _e94759490_))
                                   (_tl94779495_ (##cdr _e94759490_)))
                               (let ((_hd9498_ _hd94769493_))
                                 (if (gx#stx-pair? _tl94779495_)
                                     (let ((_e94789500_
                                            (gx#syntax-e _tl94779495_)))
                                       (let ((_hd94799503_ (##car _e94789500_))
                                             (_tl94809505_
                                              (##cdr _e94789500_)))
                                         (if (gx#stx-null? _tl94809505_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd9498_)
                                                 (_E94749486_))
                                             (_E94749486_))))
                                     (_E94749486_)))))
                           (_E94749486_)))))
               (_E94739508_)))
           _stx9469_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind9428_)
      (let* ((_e94299439_ _bind9428_)
             (_E94319443_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e94299439_)))
             (_E94309465_
              (lambda ()
                (if (gx#stx-pair? _e94299439_)
                    (let ((_e94329447_ (gx#syntax-e _e94299439_)))
                      (let ((_hd94339450_ (##car _e94329447_))
                            (_tl94349452_ (##cdr _e94329447_)))
                        (if (gx#stx-pair? _tl94349452_)
                            (let ((_e94359455_ (gx#syntax-e _tl94349452_)))
                              (let ((_hd94369458_ (##car _e94359455_))
                                    (_tl94379460_ (##cdr _e94359455_)))
                                (let ((_expr9463_ _hd94369458_))
                                  (if (gx#stx-null? _tl94379460_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9463_)
                                          (_E94319443_))
                                      (_E94319443_)))))
                            (_E94319443_))))
                    (_E94319443_)))))
        (_E94309465_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind9387_)
      (let* ((_e93889398_ _bind9387_)
             (_E93909402_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93889398_)))
             (_E93899424_
              (lambda ()
                (if (gx#stx-pair? _e93889398_)
                    (let ((_e93919406_ (gx#syntax-e _e93889398_)))
                      (let ((_hd93929409_ (##car _e93919406_))
                            (_tl93939411_ (##cdr _e93919406_)))
                        (let ((_hd9414_ _hd93929409_))
                          (if (gx#stx-pair? _tl93939411_)
                              (let ((_e93949416_ (gx#syntax-e _tl93939411_)))
                                (let ((_hd93959419_ (##car _e93949416_))
                                      (_tl93969421_ (##cdr _e93949416_)))
                                  (if (gx#stx-null? _tl93969421_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd9414_)
                                          (_E93909402_))
                                      (_E93909402_))))
                              (_E93909402_)))))
                    (_E93909402_)))))
        (_E93899424_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind9345_ _expr9346_)
      (let* ((_e93479357_ _bind9345_)
             (_E93499361_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93479357_)))
             (_E93489383_
              (lambda ()
                (if (gx#stx-pair? _e93479357_)
                    (let ((_e93509365_ (gx#syntax-e _e93479357_)))
                      (let ((_hd93519368_ (##car _e93509365_))
                            (_tl93529370_ (##cdr _e93509365_)))
                        (let ((_hd9373_ _hd93519368_))
                          (if (gx#stx-pair? _tl93529370_)
                              (let ((_e93539375_ (gx#syntax-e _tl93529370_)))
                                (let ((_hd93549378_ (##car _e93539375_))
                                      (_tl93559380_ (##cdr _e93539375_)))
                                  (if (gx#stx-null? _tl93559380_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd9373_)
                                                (cons _expr9346_ '()))
                                          (_E93499361_))
                                      (_E93499361_))))
                              (_E93499361_)))))
                    (_E93499361_)))))
        (_E93489383_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx9299_)
      (let* ((_e93009310_ _stx9299_)
             (_E93029314_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93009310_)))
             (_E93019341_
              (lambda ()
                (if (gx#stx-pair? _e93009310_)
                    (let ((_e93039318_ (gx#syntax-e _e93009310_)))
                      (let ((_hd93049321_ (##car _e93039318_))
                            (_tl93059323_ (##cdr _e93039318_)))
                        (if (gx#stx-pair? _tl93059323_)
                            (let ((_e93069326_ (gx#syntax-e _tl93059323_)))
                              (let ((_hd93079329_ (##car _e93069326_))
                                    (_tl93089331_ (##cdr _e93069326_)))
                                (let* ((_hd9334_ _hd93079329_)
                                       (_body9336_ _tl93089331_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9334_)
                                      (let ((_expanders9338_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd9334_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd9334_
                                              _expanders9338_)
                                             (gx#core-expand-local-block
                                              _stx9299_
                                              _body9336_)))
                                         gx#current-expander-context
                                         (let ((__obj10687
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10687)
                                             __obj10687))))
                                      (_E93029314_)))))
                            (_E93029314_))))
                    (_E93029314_)))))
        (_E93019341_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx9248_)
      (let* ((_e92499259_ _stx9248_)
             (_E92519263_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92499259_)))
             (_E92509295_
              (lambda ()
                (if (gx#stx-pair? _e92499259_)
                    (let ((_e92529267_ (gx#syntax-e _e92499259_)))
                      (let ((_hd92539270_ (##car _e92529267_))
                            (_tl92549272_ (##cdr _e92529267_)))
                        (if (gx#stx-pair? _tl92549272_)
                            (let ((_e92559275_ (gx#syntax-e _tl92549272_)))
                              (let ((_hd92569278_ (##car _e92559275_))
                                    (_tl92579280_ (##cdr _e92559275_)))
                                (let* ((_hd9283_ _hd92569278_)
                                       (_body9285_ _tl92579280_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9283_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd9283_
                                            (make-list
                                             (gx#stx-length _hd9283_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g92879290_ _g92889292_)
                                              (gx#core-expand-let-bind-syntax!__opt-lambda9105
                                               _g92879290_
                                               _g92889292_
                                               '#t))
                                            _hd9283_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd9283_))
                                           (gx#core-expand-local-block
                                            _stx9248_
                                            _body9285_)))
                                       gx#current-expander-context
                                       (let ((__obj10688
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj10688)
                                           __obj10688)))
                                      (_E92519263_)))))
                            (_E92519263_))))
                    (_E92519263_)))))
        (_E92509295_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx9205_)
      (if (gx#stx-list? _stx9205_)
          (gx#stx-andmap
           (lambda (_bind9207_)
             (let* ((_e92089218_ _bind9207_)
                    (_E92109222_ (lambda () '#f))
                    (_E92099244_
                     (lambda ()
                       (if (gx#stx-pair? _e92089218_)
                           (let ((_e92119226_ (gx#syntax-e _e92089218_)))
                             (let ((_hd92129229_ (##car _e92119226_))
                                   (_tl92139231_ (##cdr _e92119226_)))
                               (let ((_hd9234_ _hd92129229_))
                                 (if (gx#stx-pair? _tl92139231_)
                                     (let ((_e92149236_
                                            (gx#syntax-e _tl92139231_)))
                                       (let ((_hd92159239_ (##car _e92149236_))
                                             (_tl92169241_
                                              (##cdr _e92149236_)))
                                         (if (gx#stx-null? _tl92169241_)
                                             (if '#t
                                                 (gx#identifier? _hd9234_)
                                                 (_E92109222_))
                                             (_E92109222_))))
                                     (_E92109222_)))))
                           (_E92109222_)))))
               (_E92099244_)))
           _stx9205_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind9162_)
      (let* ((_e91639173_ _bind9162_)
             (_E91659177_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91639173_)))
             (_E91649201_
              (lambda ()
                (if (gx#stx-pair? _e91639173_)
                    (let ((_e91669181_ (gx#syntax-e _e91639173_)))
                      (let ((_hd91679184_ (##car _e91669181_))
                            (_tl91689186_ (##cdr _e91669181_)))
                        (if (gx#stx-pair? _tl91689186_)
                            (let ((_e91699189_ (gx#syntax-e _tl91689186_)))
                              (let ((_hd91709192_ (##car _e91699189_))
                                    (_tl91719194_ (##cdr _e91699189_)))
                                (let ((_expr9197_ _hd91709192_))
                                  (if (gx#stx-null? _tl91719194_)
                                      (if '#t
                                          (let ((_g10697_
                                                 (gx#core-expand-expression+1
                                                  _expr9197_)))
                                            (begin
                                              (let ((_g10698_
                                                     (values-count _g10697_)))
                                                (if (not (fx= _g10698_ 2))
                                                    (error "Context expects 2 values"
                                                           _g10698_)))
                                              (let ((_e9199_ (values-ref
                                                              _g10697_
                                                              1)))
                                                _e9199_)))
                                          (_E91659177_))
                                      (_E91659177_)))))
                            (_E91659177_))))
                    (_E91659177_)))))
        (_E91649201_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda9105
      (lambda (_bind9107_ _e9108_ _rebind?9109_)
        (let* ((_e91109120_ _bind9107_)
               (_E91129124_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e91109120_)))
               (_E91119146_
                (lambda ()
                  (if (gx#stx-pair? _e91109120_)
                      (let ((_e91139128_ (gx#syntax-e _e91109120_)))
                        (let ((_hd91149131_ (##car _e91139128_))
                              (_tl91159133_ (##cdr _e91139128_)))
                          (let ((_id9136_ _hd91149131_))
                            (if (gx#stx-pair? _tl91159133_)
                                (let ((_e91169138_ (gx#syntax-e _tl91159133_)))
                                  (let ((_hd91179141_ (##car _e91169138_))
                                        (_tl91189143_ (##cdr _e91169138_)))
                                    (if (gx#stx-null? _tl91189143_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id9136_
                                             _e9108_
                                             _rebind?9109_)
                                            (_E91129124_))
                                        (_E91129124_))))
                                (_E91129124_)))))
                      (_E91129124_)))))
          (_E91119146_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind9153_ _e9154_)
          (let ((_rebind?9156_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda9105
             _bind9153_
             _e9154_
             _rebind?9156_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g10700_
          (let ((_g10699_ (length _g10700_)))
            (cond ((fx= _g10699_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g10700_))
                  ((fx= _g10699_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda9105
                          _g10700_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g10700_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx9065_)
      (let* ((_e90669076_ _stx9065_)
             (_E90689080_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e90669076_)))
             (_E90679102_
              (lambda ()
                (if (gx#stx-pair? _e90669076_)
                    (let ((_e90699084_ (gx#syntax-e _e90669076_)))
                      (let ((_hd90709087_ (##car _e90699084_))
                            (_tl90719089_ (##cdr _e90699084_)))
                        (if (gx#stx-pair? _tl90719089_)
                            (let ((_e90729092_ (gx#syntax-e _tl90719089_)))
                              (let ((_hd90739095_ (##car _e90729092_))
                                    (_tl90749097_ (##cdr _e90729092_)))
                                (let ((_expr9100_ _hd90739095_))
                                  (if (gx#stx-null? _tl90749097_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9100_)
                                          (_E90689080_))
                                      (_E90689080_)))))
                            (_E90689080_))))
                    (_E90689080_)))))
        (_E90679102_))))
  (define gx#core-expand-quote%
    (lambda (_stx9024_)
      (let* ((_e90259035_ _stx9024_)
             (_E90279039_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e90259035_)))
             (_E90269061_
              (lambda ()
                (if (gx#stx-pair? _e90259035_)
                    (let ((_e90289043_ (gx#syntax-e _e90259035_)))
                      (let ((_hd90299046_ (##car _e90289043_))
                            (_tl90309048_ (##cdr _e90289043_)))
                        (if (gx#stx-pair? _tl90309048_)
                            (let ((_e90319051_ (gx#syntax-e _tl90309048_)))
                              (let ((_hd90329054_ (##car _e90319051_))
                                    (_tl90339056_ (##cdr _e90319051_)))
                                (let ((_e9059_ _hd90329054_))
                                  (if (gx#stx-null? _tl90339056_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e9059_)
                                                       '()))
                                           (gx#stx-source _stx9024_))
                                          (_E90279039_))
                                      (_E90279039_)))))
                            (_E90279039_))))
                    (_E90279039_)))))
        (_E90269061_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx8983_)
      (let* ((_e89848994_ _stx8983_)
             (_E89868998_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e89848994_)))
             (_E89859020_
              (lambda ()
                (if (gx#stx-pair? _e89848994_)
                    (let ((_e89879002_ (gx#syntax-e _e89848994_)))
                      (let ((_hd89889005_ (##car _e89879002_))
                            (_tl89899007_ (##cdr _e89879002_)))
                        (if (gx#stx-pair? _tl89899007_)
                            (let ((_e89909010_ (gx#syntax-e _tl89899007_)))
                              (let ((_hd89919013_ (##car _e89909010_))
                                    (_tl89929015_ (##cdr _e89909010_)))
                                (let ((_e9018_ _hd89919013_))
                                  (if (gx#stx-null? _tl89929015_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e9018_)
                                                       '()))
                                           (gx#stx-source _stx8983_))
                                          (_E89868998_))
                                      (_E89868998_)))))
                            (_E89868998_))))
                    (_E89868998_)))))
        (_E89859020_))))
  (define gx#core-expand-call%
    (lambda (_stx8940_)
      (let* ((_e89418951_ _stx8940_)
             (_E89438955_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e89418951_)))
             (_E89428979_
              (lambda ()
                (if (gx#stx-pair? _e89418951_)
                    (let ((_e89448959_ (gx#syntax-e _e89418951_)))
                      (let ((_hd89458962_ (##car _e89448959_))
                            (_tl89468964_ (##cdr _e89448959_)))
                        (if (gx#stx-pair? _tl89468964_)
                            (let ((_e89478967_ (gx#syntax-e _tl89468964_)))
                              (let ((_hd89488970_ (##car _e89478967_))
                                    (_tl89498972_ (##cdr _e89478967_)))
                                (let* ((_rator8975_ _hd89488970_)
                                       (_args8977_ _tl89498972_))
                                  (if (gx#stx-list? _args8977_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator8975_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args8977_))
                                       (gx#stx-source _stx8940_))
                                      (_E89438955_)))))
                            (_E89438955_))))
                    (_E89438955_)))))
        (_E89428979_))))
  (define gx#core-expand-if%
    (lambda (_stx8873_)
      (let* ((_e88748890_ _stx8873_)
             (_E88768894_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88748890_)))
             (_E88758936_
              (lambda ()
                (if (gx#stx-pair? _e88748890_)
                    (let ((_e88778898_ (gx#syntax-e _e88748890_)))
                      (let ((_hd88788901_ (##car _e88778898_))
                            (_tl88798903_ (##cdr _e88778898_)))
                        (if (gx#stx-pair? _tl88798903_)
                            (let ((_e88808906_ (gx#syntax-e _tl88798903_)))
                              (let ((_hd88818909_ (##car _e88808906_))
                                    (_tl88828911_ (##cdr _e88808906_)))
                                (let ((_test8914_ _hd88818909_))
                                  (if (gx#stx-pair? _tl88828911_)
                                      (let ((_e88838916_
                                             (gx#syntax-e _tl88828911_)))
                                        (let ((_hd88848919_
                                               (##car _e88838916_))
                                              (_tl88858921_
                                               (##cdr _e88838916_)))
                                          (let ((_K8924_ _hd88848919_))
                                            (if (gx#stx-pair? _tl88858921_)
                                                (let ((_e88868926_
                                                       (gx#syntax-e
                                                        _tl88858921_)))
                                                  (let ((_hd88878929_
                                                         (##car _e88868926_))
                                                        (_tl88888931_
                                                         (##cdr _e88868926_)))
                                                    (let ((_E8934_ _hd88878929_))
                                                      (if (gx#stx-null?
                                                           _tl88888931_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test8914_)
                                   (cons (gx#core-expand-expression _K8924_)
                                         (cons (gx#core-expand-expression
                                                _E8934_)
                                               '()))))
                       (gx#stx-source _stx8873_))
                      (_E88768894_))
                  (_E88768894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E88768894_)))))
                                      (_E88768894_)))))
                            (_E88768894_))))
                    (_E88768894_)))))
        (_E88758936_))))
  (define gx#core-expand-ref%
    (lambda (_stx8832_)
      (let* ((_e88338843_ _stx8832_)
             (_E88358847_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88338843_)))
             (_E88348869_
              (lambda ()
                (if (gx#stx-pair? _e88338843_)
                    (let ((_e88368851_ (gx#syntax-e _e88338843_)))
                      (let ((_hd88378854_ (##car _e88368851_))
                            (_tl88388856_ (##cdr _e88368851_)))
                        (if (gx#stx-pair? _tl88388856_)
                            (let ((_e88398859_ (gx#syntax-e _tl88388856_)))
                              (let ((_hd88408862_ (##car _e88398859_))
                                    (_tl88418864_ (##cdr _e88398859_)))
                                (let ((_id8867_ _hd88408862_))
                                  (if (gx#stx-null? _tl88418864_)
                                      (if (gx#core-runtime-ref? _id8867_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id8867_
                                                        _stx8832_)
                                                       '()))
                                           (gx#stx-source _stx8832_))
                                          (_E88358847_))
                                      (_E88358847_)))))
                            (_E88358847_))))
                    (_E88358847_)))))
        (_E88348869_))))
  (define gx#core-expand-setq%
    (lambda (_stx8778_)
      (let* ((_e87798792_ _stx8778_)
             (_E87818796_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87798792_)))
             (_E87808828_
              (lambda ()
                (if (gx#stx-pair? _e87798792_)
                    (let ((_e87828800_ (gx#syntax-e _e87798792_)))
                      (let ((_hd87838803_ (##car _e87828800_))
                            (_tl87848805_ (##cdr _e87828800_)))
                        (if (gx#stx-pair? _tl87848805_)
                            (let ((_e87858808_ (gx#syntax-e _tl87848805_)))
                              (let ((_hd87868811_ (##car _e87858808_))
                                    (_tl87878813_ (##cdr _e87858808_)))
                                (let ((_id8816_ _hd87868811_))
                                  (if (gx#stx-pair? _tl87878813_)
                                      (let ((_e87888818_
                                             (gx#syntax-e _tl87878813_)))
                                        (let ((_hd87898821_
                                               (##car _e87888818_))
                                              (_tl87908823_
                                               (##cdr _e87888818_)))
                                          (let ((_expr8826_ _hd87898821_))
                                            (if (gx#stx-null? _tl87908823_)
                                                (if (gx#core-runtime-ref?
                                                     _id8816_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id8816_
                          _stx8778_)
                         (cons (gx#core-expand-expression _expr8826_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx8778_))
                                                    (_E87818796_))
                                                (_E87818796_)))))
                                      (_E87818796_)))))
                            (_E87818796_))))
                    (_E87818796_)))))
        (_E87808828_))))
  (define gx#macro-expand-extern
    (lambda (_stx8626_)
      (letrec ((_generate8628_
                (lambda (_body8658_)
                  (let _lp8660_ ((_rest8662_ _body8658_)
                                 (_ns8663_ (gx#core-context-namespace__0))
                                 (_r8664_ '()))
                    (let* ((_e86658680_ _rest8662_)
                           (_E86788684_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e86658680_)))
                           (_E86748688_
                            (lambda ()
                              (if (gx#stx-null? _e86658680_)
                                  (if '#t (reverse _r8664_) (_E86788684_))
                                  (_E86788684_))))
                           (_E86678745_
                            (lambda ()
                              (if (gx#stx-pair? _e86658680_)
                                  (let ((_e86758692_
                                         (gx#syntax-e _e86658680_)))
                                    (let ((_hd86768695_ (##car _e86758692_))
                                          (_tl86778697_ (##cdr _e86758692_)))
                                      (let* ((_hd8700_ _hd86768695_)
                                             (_rest8702_ _tl86778697_))
                                        (if '#t
                                            (if (gx#identifier? _hd8700_)
                                                (_lp8660_
                                                 _rest8702_
                                                 _ns8663_
                                                 (cons (cons _hd8700_
                                                             (cons (if _ns8663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd8700_
                                _ns8663_
                                '"#"
                                _hd8700_)
                               _hd8700_)
                           '()))
               _r8664_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e87038713_ _hd8700_)
                                                       (_E87058717_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e87038713_)))
                                                       (_E87048741_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e87038713_)
                                                              (let ((_e87068721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e87038713_)))
                        (let ((_hd87078724_ (##car _e87068721_))
                              (_tl87088726_ (##cdr _e87068721_)))
                          (let ((_id8729_ _hd87078724_))
                            (if (gx#stx-pair? _tl87088726_)
                                (let ((_e87098731_ (gx#syntax-e _tl87088726_)))
                                  (let ((_hd87108734_ (##car _e87098731_))
                                        (_tl87118736_ (##cdr _e87098731_)))
                                    (let ((_eid8739_ _hd87108734_))
                                      (if (gx#stx-null? _tl87118736_)
                                          (if (if (gx#identifier? _id8729_)
                                                  (gx#identifier? _eid8739_)
                                                  '#f)
                                              (_lp8660_
                                               _rest8702_
                                               _ns8663_
                                               (cons (cons _id8729_
                                                           (cons _eid8739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r8664_))
                                              (_E87058717_))
                                          (_E87058717_)))))
                                (_E87058717_)))))
                      (_E87058717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E87048741_)))
                                            (_E86748688_)))))
                                  (_E86748688_))))
                           (_E86668774_
                            (lambda ()
                              (if (gx#stx-pair? _e86658680_)
                                  (let ((_e86688749_
                                         (gx#syntax-e _e86658680_)))
                                    (let ((_hd86698752_ (##car _e86688749_))
                                          (_tl86708754_ (##cdr _e86688749_)))
                                      (if (eq? (gx#stx-e _hd86698752_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl86708754_)
                                              (let ((_e86718757_
                                                     (gx#syntax-e
                                                      _tl86708754_)))
                                                (let ((_hd86728760_
                                                       (##car _e86718757_))
                                                      (_tl86738762_
                                                       (##cdr _e86718757_)))
                                                  (let* ((_ns8765_
                                                          _hd86728760_)
                                                         (_rest8767_
                                                          _tl86738762_))
                                                    (if '#t
                                                        (let ((_ns8772_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns8765_)
                           (symbol->string (gx#stx-e _ns8765_))
                           (if (let ((_$e8769_ (gx#stx-string? _ns8765_)))
                                 (if _$e8769_
                                     _$e8769_
                                     (gx#stx-false? _ns8765_)))
                               (gx#stx-e _ns8765_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx8626_
                                _ns8765_)))))
                  (_lp8660_ _rest8767_ _ns8772_ _r8664_))
                (_E86678745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86678745_))
                                          (_E86678745_))))
                                  (_E86678745_)))))
                      (_E86668774_))))))
        (let* ((_e86298636_ _stx8626_)
               (_E86318640_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e86298636_)))
               (_E86308654_
                (lambda ()
                  (if (gx#stx-pair? _e86298636_)
                      (let ((_e86328644_ (gx#syntax-e _e86298636_)))
                        (let ((_hd86338647_ (##car _e86328644_))
                              (_tl86348649_ (##cdr _e86328644_)))
                          (let ((_body8652_ _tl86348649_))
                            (if (gx#stx-list? _body8652_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate8628_ _body8652_))
                                (_E86318640_)))))
                      (_E86318640_)))))
          (_E86308654_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx8572_)
      (let* ((_e85738586_ _stx8572_)
             (_E85758590_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e85738586_)))
             (_E85748622_
              (lambda ()
                (if (gx#stx-pair? _e85738586_)
                    (let ((_e85768594_ (gx#syntax-e _e85738586_)))
                      (let ((_hd85778597_ (##car _e85768594_))
                            (_tl85788599_ (##cdr _e85768594_)))
                        (if (gx#stx-pair? _tl85788599_)
                            (let ((_e85798602_ (gx#syntax-e _tl85788599_)))
                              (let ((_hd85808605_ (##car _e85798602_))
                                    (_tl85818607_ (##cdr _e85798602_)))
                                (let ((_hd8610_ _hd85808605_))
                                  (if (gx#stx-pair? _tl85818607_)
                                      (let ((_e85828612_
                                             (gx#syntax-e _tl85818607_)))
                                        (let ((_hd85838615_
                                               (##car _e85828612_))
                                              (_tl85848617_
                                               (##cdr _e85828612_)))
                                          (let ((_expr8620_ _hd85838615_))
                                            (if (gx#stx-null? _tl85848617_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd8610_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd8610_)
                        (cons _expr8620_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E85758590_))
                                                (_E85758590_)))))
                                      (_E85758590_)))))
                            (_E85758590_))))
                    (_E85758590_)))))
        (_E85748622_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx8518_)
      (let* ((_e85198532_ _stx8518_)
             (_E85218536_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e85198532_)))
             (_E85208568_
              (lambda ()
                (if (gx#stx-pair? _e85198532_)
                    (let ((_e85228540_ (gx#syntax-e _e85198532_)))
                      (let ((_hd85238543_ (##car _e85228540_))
                            (_tl85248545_ (##cdr _e85228540_)))
                        (if (gx#stx-pair? _tl85248545_)
                            (let ((_e85258548_ (gx#syntax-e _tl85248545_)))
                              (let ((_hd85268551_ (##car _e85258548_))
                                    (_tl85278553_ (##cdr _e85258548_)))
                                (let ((_hd8556_ _hd85268551_))
                                  (if (gx#stx-pair? _tl85278553_)
                                      (let ((_e85288558_
                                             (gx#syntax-e _tl85278553_)))
                                        (let ((_hd85298561_
                                               (##car _e85288558_))
                                              (_tl85308563_
                                               (##cdr _e85288558_)))
                                          (let ((_expr8566_ _hd85298561_))
                                            (if (gx#stx-null? _tl85308563_)
                                                (if (gx#identifier? _hd8556_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd8556_
                                                                (cons _expr8566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E85218536_))
                                                (_E85218536_)))))
                                      (_E85218536_)))))
                            (_E85218536_))))
                    (_E85218536_)))))
        (_E85208568_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx8464_)
      (let* ((_e84658478_ _stx8464_)
             (_E84678482_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84658478_)))
             (_E84668514_
              (lambda ()
                (if (gx#stx-pair? _e84658478_)
                    (let ((_e84688486_ (gx#syntax-e _e84658478_)))
                      (let ((_hd84698489_ (##car _e84688486_))
                            (_tl84708491_ (##cdr _e84688486_)))
                        (if (gx#stx-pair? _tl84708491_)
                            (let ((_e84718494_ (gx#syntax-e _tl84708491_)))
                              (let ((_hd84728497_ (##car _e84718494_))
                                    (_tl84738499_ (##cdr _e84718494_)))
                                (let ((_id8502_ _hd84728497_))
                                  (if (gx#stx-pair? _tl84738499_)
                                      (let ((_e84748504_
                                             (gx#syntax-e _tl84738499_)))
                                        (let ((_hd84758507_
                                               (##car _e84748504_))
                                              (_tl84768509_
                                               (##cdr _e84748504_)))
                                          (let ((_alias-id8512_ _hd84758507_))
                                            (if (gx#stx-null? _tl84768509_)
                                                (if (if (gx#identifier?
                                                         _id8502_)
                                                        (gx#identifier?
                                                         _alias-id8512_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id8502_
                                                                (cons _alias-id8512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E84678482_))
                                                (_E84678482_)))))
                                      (_E84678482_)))))
                            (_E84678482_))))
                    (_E84678482_)))))
        (_E84668514_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx8421_)
      (let* ((_e84228432_ _stx8421_)
             (_E84248436_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84228432_)))
             (_E84238460_
              (lambda ()
                (if (gx#stx-pair? _e84228432_)
                    (let ((_e84258440_ (gx#syntax-e _e84228432_)))
                      (let ((_hd84268443_ (##car _e84258440_))
                            (_tl84278445_ (##cdr _e84258440_)))
                        (if (gx#stx-pair? _tl84278445_)
                            (let ((_e84288448_ (gx#syntax-e _tl84278445_)))
                              (let ((_hd84298451_ (##car _e84288448_))
                                    (_tl84308453_ (##cdr _e84288448_)))
                                (let* ((_hd8456_ _hd84298451_)
                                       (_body8458_ _tl84308453_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd8456_)
                                          (if (gx#stx-list? _body8458_)
                                              (not (gx#stx-null? _body8458_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd8456_)
                                       _body8458_)
                                      (_E84248436_)))))
                            (_E84248436_))))
                    (_E84248436_)))))
        (_E84238460_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx8357_)
      (letrec ((_generate8359_
                (lambda (_clause8389_)
                  (let* ((_e83908397_ _clause8389_)
                         (_E83928401_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx8357_
                             _clause8389_)))
                         (_E83918417_
                          (lambda ()
                            (if (gx#stx-pair? _e83908397_)
                                (let ((_e83938405_ (gx#syntax-e _e83908397_)))
                                  (let ((_hd83948408_ (##car _e83938405_))
                                        (_tl83958410_ (##cdr _e83938405_)))
                                    (let* ((_hd8413_ _hd83948408_)
                                           (_body8415_ _tl83958410_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd8413_)
                                              (if (gx#stx-list? _body8415_)
                                                  (not (gx#stx-null?
                                                        _body8415_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd8413_)
                                                 _body8415_)
                                           (gx#stx-source _clause8389_))
                                          (_E83928401_)))))
                                (_E83928401_)))))
                    (_E83918417_)))))
        (let* ((_e83608367_ _stx8357_)
               (_E83628371_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e83608367_)))
               (_E83618385_
                (lambda ()
                  (if (gx#stx-pair? _e83608367_)
                      (let ((_e83638375_ (gx#syntax-e _e83608367_)))
                        (let ((_hd83648378_ (##car _e83638375_))
                              (_tl83658380_ (##cdr _e83638375_)))
                          (let ((_clauses8383_ _tl83658380_))
                            (if (gx#stx-list? _clauses8383_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate8359_ _clauses8383_))
                                (_E83628371_)))))
                      (_E83628371_)))))
          (_E83618385_)))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda8256
      (lambda (_stx8258_ _form8259_)
        (letrec ((_generate8261_
                  (lambda (_bind8304_)
                    (let* ((_e83058315_ _bind8304_)
                           (_E83078319_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx8258_
                               _bind8304_)))
                           (_E83068343_
                            (lambda ()
                              (if (gx#stx-pair? _e83058315_)
                                  (let ((_e83088323_
                                         (gx#syntax-e _e83058315_)))
                                    (let ((_hd83098326_ (##car _e83088323_))
                                          (_tl83108328_ (##cdr _e83088323_)))
                                      (let ((_ids8331_ _hd83098326_))
                                        (if (gx#stx-pair? _tl83108328_)
                                            (let ((_e83118333_
                                                   (gx#syntax-e _tl83108328_)))
                                              (let ((_hd83128336_
                                                     (##car _e83118333_))
                                                    (_tl83138338_
                                                     (##cdr _e83118333_)))
                                                (let ((_expr8341_
                                                       _hd83128336_))
                                                  (if (gx#stx-null?
                                                       _tl83138338_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids8331_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids8331_)
                        (cons _expr8341_ '()))
                  (_E83078319_))
              (_E83078319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E83078319_)))))
                                  (_E83078319_)))))
                      (_E83068343_)))))
          (let* ((_e82628272_ _stx8258_)
                 (_E82648276_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e82628272_)))
                 (_E82638300_
                  (lambda ()
                    (if (gx#stx-pair? _e82628272_)
                        (let ((_e82658280_ (gx#syntax-e _e82628272_)))
                          (let ((_hd82668283_ (##car _e82658280_))
                                (_tl82678285_ (##cdr _e82658280_)))
                            (if (gx#stx-pair? _tl82678285_)
                                (let ((_e82688288_ (gx#syntax-e _tl82678285_)))
                                  (let ((_hd82698291_ (##car _e82688288_))
                                        (_tl82708293_ (##cdr _e82688288_)))
                                    (let* ((_hd8296_ _hd82698291_)
                                           (_body8298_ _tl82708293_))
                                      (if (if (gx#stx-list? _hd8296_)
                                              (if (gx#stx-list? _body8298_)
                                                  (not (gx#stx-null?
                                                        _body8298_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form8259_
                                           (gx#stx-map1
                                            _generate8261_
                                            _hd8296_)
                                           _body8298_)
                                          (_E82648276_)))))
                                (_E82648276_))))
                        (_E82648276_)))))
            (_E82638300_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx8350_)
          (let ((_form8352_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda8256
             _stx8350_
             _form8352_))))
      (define gx#macro-expand-let-values
        (lambda _g10702_
          (let ((_g10701_ (length _g10702_)))
            (cond ((fx= _g10701_ 1)
                   (apply gx#macro-expand-let-values__0 _g10702_))
                  ((fx= _g10701_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda8256 _g10702_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g10702_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx8255_)
      (gx#macro-expand-let-values__opt-lambda8256 _stx8255_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx8253_)
      (gx#macro-expand-let-values__opt-lambda8256
       _stx8253_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx8144_)
      (let* ((_e81458171_ _stx8144_)
             (_E81578175_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81458171_)))
             (_E81478217_
              (lambda ()
                (if (gx#stx-pair? _e81458171_)
                    (let ((_e81588179_ (gx#syntax-e _e81458171_)))
                      (let ((_hd81598182_ (##car _e81588179_))
                            (_tl81608184_ (##cdr _e81588179_)))
                        (if (gx#stx-pair? _tl81608184_)
                            (let ((_e81618187_ (gx#syntax-e _tl81608184_)))
                              (let ((_hd81628190_ (##car _e81618187_))
                                    (_tl81638192_ (##cdr _e81618187_)))
                                (let ((_test8195_ _hd81628190_))
                                  (if (gx#stx-pair? _tl81638192_)
                                      (let ((_e81648197_
                                             (gx#syntax-e _tl81638192_)))
                                        (let ((_hd81658200_
                                               (##car _e81648197_))
                                              (_tl81668202_
                                               (##cdr _e81648197_)))
                                          (let ((_K8205_ _hd81658200_))
                                            (if (gx#stx-pair? _tl81668202_)
                                                (let ((_e81678207_
                                                       (gx#syntax-e
                                                        _tl81668202_)))
                                                  (let ((_hd81688210_
                                                         (##car _e81678207_))
                                                        (_tl81698212_
                                                         (##cdr _e81678207_)))
                                                    (let ((_E8215_ _hd81688210_))
                                                      (if (gx#stx-null?
                                                           _tl81698212_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test8195_
                                                               _K8205_
                                                               _E8215_)
                                                              (_E81578175_))
                                                          (_E81578175_)))))
                                                (_E81578175_)))))
                                      (_E81578175_)))))
                            (_E81578175_))))
                    (_E81578175_))))
             (_E81468249_
              (lambda ()
                (if (gx#stx-pair? _e81458171_)
                    (let ((_e81488221_ (gx#syntax-e _e81458171_)))
                      (let ((_hd81498224_ (##car _e81488221_))
                            (_tl81508226_ (##cdr _e81488221_)))
                        (if (gx#stx-pair? _tl81508226_)
                            (let ((_e81518229_ (gx#syntax-e _tl81508226_)))
                              (let ((_hd81528232_ (##car _e81518229_))
                                    (_tl81538234_ (##cdr _e81518229_)))
                                (let ((_test8237_ _hd81528232_))
                                  (if (gx#stx-pair? _tl81538234_)
                                      (let ((_e81548239_
                                             (gx#syntax-e _tl81538234_)))
                                        (let ((_hd81558242_
                                               (##car _e81548239_))
                                              (_tl81568244_
                                               (##cdr _e81548239_)))
                                          (let ((_K8247_ _hd81558242_))
                                            (if (gx#stx-null? _tl81568244_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test8237_
                                                     _K8247_
                                                     '#!void)
                                                    (_E81478217_))
                                                (_E81478217_)))))
                                      (_E81478217_)))))
                            (_E81478217_))))
                    (_E81478217_)))))
        (_E81468249_))))
  (define gx#free-identifier=?
    (lambda (_xid8132_ _yid8133_)
      (let ((_xe8135_ (gx#resolve-identifier__0 _xid8132_))
            (_ye8136_ (gx#resolve-identifier__0 _yid8133_)))
        (if (if _xe8135_ _ye8136_ '#f)
            (let ((_$e8138_ (eq? _xe8135_ _ye8136_)))
              (if _$e8138_
                  _$e8138_
                  (if (##structure-instance-of? _xe8135_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye8136_ 'gx#binding::t)
                          (eq? (##structure-ref _xe8135_ '1 gx#binding::t '#f)
                               (##structure-ref _ye8136_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e8141_ _xe8135_)) (if _$e8141_ _$e8141_ _ye8136_))
                '#f
                (gx#stx-eq? _xid8132_ _yid8133_))))))
  (define gx#bound-identifier=?
    (lambda (_xid8116_ _yid8117_)
      (letrec ((_context8119_
                (lambda (_e8130_)
                  (if (##structure-direct-instance-of?
                       _e8130_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e8130_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks8120_
                (lambda (_e8128_)
                  (if (symbol? _e8128_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e8128_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e8128_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e8128_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap8121_
                (lambda (_e8126_)
                  (if (symbol? _e8126_)
                      _e8126_
                      (gx#syntax-local-unwrap _e8126_)))))
        (let ((_x8123_ (_unwrap8121_ _xid8116_))
              (_y8124_ (_unwrap8121_ _yid8117_)))
          (if (gx#stx-eq? _x8123_ _y8124_)
              (if (eq? (_context8119_ _x8123_) (_context8119_ _y8124_))
                  (andmap eq? (_marks8120_ _x8123_) (_marks8120_ _y8124_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx8114_)
      (if (gx#identifier? _stx8114_) (gx#core-identifier=? _stx8114_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx8112_)
      (if (gx#identifier? _stx8112_)
          (gx#core-identifier=? _stx8112_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x8110_)
      (if (gx#identifier? _x8110_)
          (if (not (gx#underscore? _x8110_)) _x8110_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda8054
      (lambda (_stx8056_ _where8057_)
        (let _lp8059_ ((_rest8061_ (gx#syntax->list _stx8056_)))
          (let* ((_rest80628070_ _rest8061_)
                 (_E80658074_
                  (lambda () (error '"No clause matching" _rest80628070_)))
                 (_else80648078_ (lambda () '#t))
                 (_K80668088_
                  (lambda (_rest8081_ _hd8082_)
                    (if (not (gx#identifier? _hd8082_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where8057_
                         _hd8082_)
                        (if (find (lambda (_g80838085_)
                                    (gx#bound-identifier=?
                                     _g80838085_
                                     _hd8082_))
                                  _rest8081_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where8057_
                             _hd8082_)
                            (_lp8059_ _rest8081_))))))
            (if (##pair? _rest80628070_)
                (let ((_hd80678091_ (##car _rest80628070_))
                      (_tl80688093_ (##cdr _rest80628070_)))
                  (let* ((_hd8096_ _hd80678091_) (_rest8098_ _tl80688093_))
                    (_K80668088_ _rest8098_ _hd8096_)))
                (_else80648078_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx8103_)
          (let ((_where8105_ _stx8103_))
            (gx#check-duplicate-identifiers__opt-lambda8054
             _stx8103_
             _where8105_))))
      (define gx#check-duplicate-identifiers
        (lambda _g10704_
          (let ((_g10703_ (length _g10704_)))
            (cond ((fx= _g10703_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g10704_))
                  ((fx= _g10703_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda8054
                          _g10704_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g10704_))))))))
  (define gx#core-bind-values?
    (lambda (_stx8048_)
      (gx#stx-andmap
       (lambda (_x8050_)
         (let ((_$e8052_ (gx#identifier? _x8050_)))
           (if _$e8052_ _$e8052_ (gx#stx-false? _x8050_))))
       _stx8048_)))
  (begin
    (define gx#core-bind-values!__opt-lambda8010
      (lambda (_stx8012_ _rebind?8013_ _phi8014_ _ctx8015_)
        (gx#stx-for-each1
         (lambda (_id8017_)
           (if (gx#identifier? _id8017_)
               (gx#core-bind-runtime!__opt-lambda7949
                _id8017_
                _rebind?8013_
                _phi8014_
                _ctx8015_)
               '#!void))
         _stx8012_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx8022_)
          (let* ((_rebind?8024_ '#f)
                 (_phi8026_ (gx#current-expander-phi))
                 (_ctx8028_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda8010
             _stx8022_
             _rebind?8024_
             _phi8026_
             _ctx8028_))))
      (define gx#core-bind-values!__1
        (lambda (_stx8030_ _rebind?8031_)
          (let* ((_phi8033_ (gx#current-expander-phi))
                 (_ctx8035_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda8010
             _stx8030_
             _rebind?8031_
             _phi8033_
             _ctx8035_))))
      (define gx#core-bind-values!__2
        (lambda (_stx8037_ _rebind?8038_ _phi8039_)
          (let ((_ctx8041_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda8010
             _stx8037_
             _rebind?8038_
             _phi8039_
             _ctx8041_))))
      (define gx#core-bind-values!
        (lambda _g10706_
          (let ((_g10705_ (length _g10706_)))
            (cond ((fx= _g10705_ 1) (apply gx#core-bind-values!__0 _g10706_))
                  ((fx= _g10705_ 2) (apply gx#core-bind-values!__1 _g10706_))
                  ((fx= _g10705_ 3) (apply gx#core-bind-values!__2 _g10706_))
                  ((fx= _g10705_ 4)
                   (apply gx#core-bind-values!__opt-lambda8010 _g10706_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g10706_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx8007_)
      (gx#stx-map1
       (lambda (_x8009_)
         (if (gx#identifier? _x8009_) (gx#core-quote-syntax__0 _x8009_) '#f))
       _stx8007_)))
  (define gx#core-runtime-ref?
    (lambda (_stx8000_)
      (if (gx#identifier? _stx8000_)
          (let* ((_bind8002_ (gx#resolve-identifier__0 _stx8000_))
                 (_$e8004_ (not _bind8002_)))
            (if _$e8004_
                _$e8004_
                (##structure-instance-of? _bind8002_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id7992_ _form7993_)
      (let ((_bind7995_ (gx#resolve-identifier__0 _id7992_)))
        (if (##structure-instance-of? _bind7995_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id7992_)
            (if (not _bind7995_)
                (if (let ((_$e7997_
                           (gx#core-context-rebind?__opt-lambda4765
                            (gx#core-context-top__0))))
                      (if _$e7997_
                          _$e7997_
                          (gx#core-extern-symbol? (gx#stx-e _id7992_))))
                    (gx#core-quote-syntax__0 _id7992_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form7993_
                     _id7992_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form7993_
                 _id7992_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda7949
      (lambda (_id7951_ _rebind?7952_ _phi7953_ _ctx7954_)
        (let* ((_key7956_ (gx#core-identifier-key _id7951_))
               (_eid7958_
                (gx#make-binding-id__opt-lambda7716
                 _key7956_
                 '#f
                 _phi7953_
                 _ctx7954_))
               (_bind7960_
                (if (##structure-instance-of? _ctx7954_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid7958_
                     _key7956_
                     _phi7953_
                     _ctx7954_)
                    (if (##structure-instance-of? _ctx7954_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid7958_
                         _key7956_
                         _phi7953_)
                        (if (##structure-instance-of?
                             _ctx7954_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid7958_
                             _key7956_
                             _phi7953_)
                            (##structure
                             gx#runtime-binding::t
                             _eid7958_
                             _key7956_
                             _phi7953_))))))
          (gx#bind-identifier!__opt-lambda5212
           _id7951_
           _bind7960_
           _rebind?7952_
           _phi7953_
           _ctx7954_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id7966_)
          (let* ((_rebind?7968_ '#f)
                 (_phi7970_ (gx#current-expander-phi))
                 (_ctx7972_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda7949
             _id7966_
             _rebind?7968_
             _phi7970_
             _ctx7972_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id7974_ _rebind?7975_)
          (let* ((_phi7977_ (gx#current-expander-phi))
                 (_ctx7979_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda7949
             _id7974_
             _rebind?7975_
             _phi7977_
             _ctx7979_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id7981_ _rebind?7982_ _phi7983_)
          (let ((_ctx7985_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda7949
             _id7981_
             _rebind?7982_
             _phi7983_
             _ctx7985_))))
      (define gx#core-bind-runtime!
        (lambda _g10708_
          (let ((_g10707_ (length _g10708_)))
            (cond ((fx= _g10707_ 1) (apply gx#core-bind-runtime!__0 _g10708_))
                  ((fx= _g10707_ 2) (apply gx#core-bind-runtime!__1 _g10708_))
                  ((fx= _g10707_ 3) (apply gx#core-bind-runtime!__2 _g10708_))
                  ((fx= _g10707_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda7949 _g10708_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g10708_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda7904
      (lambda (_id7906_ _eid7907_ _rebind?7908_ _phi7909_ _ctx7910_)
        (let* ((_key7912_ (gx#core-identifier-key _id7906_))
               (_bind7914_
                (if (##structure-instance-of? _ctx7910_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid7907_
                     _key7912_
                     _phi7909_
                     _ctx7910_)
                    (if (##structure-instance-of? _ctx7910_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid7907_
                         _key7912_
                         _phi7909_)
                        (##structure
                         gx#runtime-binding::t
                         _eid7907_
                         _key7912_
                         _phi7909_)))))
          (gx#bind-identifier!__opt-lambda5212
           _id7906_
           _bind7914_
           _rebind?7908_
           _phi7909_
           _ctx7910_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id7920_ _eid7921_)
          (let* ((_rebind?7923_ '#f)
                 (_phi7925_ (gx#current-expander-phi))
                 (_ctx7927_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda7904
             _id7920_
             _eid7921_
             _rebind?7923_
             _phi7925_
             _ctx7927_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id7929_ _eid7930_ _rebind?7931_)
          (let* ((_phi7933_ (gx#current-expander-phi))
                 (_ctx7935_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda7904
             _id7929_
             _eid7930_
             _rebind?7931_
             _phi7933_
             _ctx7935_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id7937_ _eid7938_ _rebind?7939_ _phi7940_)
          (let ((_ctx7942_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda7904
             _id7937_
             _eid7938_
             _rebind?7939_
             _phi7940_
             _ctx7942_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g10710_
          (let ((_g10709_ (length _g10710_)))
            (cond ((fx= _g10709_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g10710_))
                  ((fx= _g10709_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g10710_))
                  ((fx= _g10709_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g10710_))
                  ((fx= _g10709_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda7904
                          _g10710_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g10710_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda7864
      (lambda (_id7866_ _eid7867_ _rebind?7868_ _phi7869_ _ctx7870_)
        (gx#bind-identifier!__opt-lambda5212
         _id7866_
         (##structure
          gx#extern-binding::t
          _eid7867_
          (gx#core-identifier-key _id7866_)
          _phi7869_)
         _rebind?7868_
         _phi7869_
         _ctx7870_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id7875_ _eid7876_)
          (let* ((_rebind?7878_ '#f)
                 (_phi7880_ (gx#current-expander-phi))
                 (_ctx7882_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda7864
             _id7875_
             _eid7876_
             _rebind?7878_
             _phi7880_
             _ctx7882_))))
      (define gx#core-bind-extern!__1
        (lambda (_id7884_ _eid7885_ _rebind?7886_)
          (let* ((_phi7888_ (gx#current-expander-phi))
                 (_ctx7890_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda7864
             _id7884_
             _eid7885_
             _rebind?7886_
             _phi7888_
             _ctx7890_))))
      (define gx#core-bind-extern!__2
        (lambda (_id7892_ _eid7893_ _rebind?7894_ _phi7895_)
          (let ((_ctx7897_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda7864
             _id7892_
             _eid7893_
             _rebind?7894_
             _phi7895_
             _ctx7897_))))
      (define gx#core-bind-extern!
        (lambda _g10712_
          (let ((_g10711_ (length _g10712_)))
            (cond ((fx= _g10711_ 2) (apply gx#core-bind-extern!__0 _g10712_))
                  ((fx= _g10711_ 3) (apply gx#core-bind-extern!__1 _g10712_))
                  ((fx= _g10711_ 4) (apply gx#core-bind-extern!__2 _g10712_))
                  ((fx= _g10711_ 5)
                   (apply gx#core-bind-extern!__opt-lambda7864 _g10712_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g10712_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda7818
      (lambda (_id7820_ _e7821_ _rebind?7822_ _phi7823_ _ctx7824_)
        (gx#bind-identifier!__opt-lambda5212
         _id7820_
         (let ((_key7829_ (gx#core-identifier-key _id7820_))
               (_e7830_ (if (let ((_$e7826_
                                   (##structure-instance-of?
                                    _e7821_
                                    'gx#expander::t)))
                              (if _$e7826_
                                  _$e7826_
                                  (##structure-instance-of?
                                   _e7821_
                                   'gx#expander-context::t)))
                            _e7821_
                            (##structure
                             gx#user-expander::t
                             _e7821_
                             _ctx7824_
                             _phi7823_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda7716
             _key7829_
             '#t
             _phi7823_
             _ctx7824_)
            _key7829_
            _phi7823_
            _e7830_))
         _rebind?7822_
         _phi7823_
         _ctx7824_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id7835_ _e7836_)
          (let* ((_rebind?7838_ '#f)
                 (_phi7840_ (gx#current-expander-phi))
                 (_ctx7842_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda7818
             _id7835_
             _e7836_
             _rebind?7838_
             _phi7840_
             _ctx7842_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id7844_ _e7845_ _rebind?7846_)
          (let* ((_phi7848_ (gx#current-expander-phi))
                 (_ctx7850_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda7818
             _id7844_
             _e7845_
             _rebind?7846_
             _phi7848_
             _ctx7850_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id7852_ _e7853_ _rebind?7854_ _phi7855_)
          (let ((_ctx7857_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda7818
             _id7852_
             _e7853_
             _rebind?7854_
             _phi7855_
             _ctx7857_))))
      (define gx#core-bind-syntax!
        (lambda _g10714_
          (let ((_g10713_ (length _g10714_)))
            (cond ((fx= _g10713_ 2) (apply gx#core-bind-syntax!__0 _g10714_))
                  ((fx= _g10713_ 3) (apply gx#core-bind-syntax!__1 _g10714_))
                  ((fx= _g10713_ 4) (apply gx#core-bind-syntax!__2 _g10714_))
                  ((fx= _g10713_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda7818 _g10714_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g10714_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda7801
      (lambda (_id7803_ _e7804_ _rebind?7805_)
        (gx#core-bind-syntax!__opt-lambda7818
         _id7803_
         _e7804_
         _rebind?7805_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id7810_ _e7811_)
          (let ((_rebind?7813_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda7801
             _id7810_
             _e7811_
             _rebind?7813_))))
      (define gx#core-bind-root-syntax!
        (lambda _g10716_
          (let ((_g10715_ (length _g10716_)))
            (cond ((fx= _g10715_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g10716_))
                  ((fx= _g10715_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda7801 _g10716_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g10716_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda7759
      (lambda (_id7761_ _alias-id7762_ _rebind?7763_ _phi7764_ _ctx7765_)
        (gx#bind-identifier!__opt-lambda5212
         _id7761_
         (let ((_key7767_ (gx#core-identifier-key _id7761_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda7716
             _key7767_
             '#t
             _phi7764_
             _ctx7765_)
            _key7767_
            _phi7764_
            _alias-id7762_))
         _rebind?7763_
         _phi7764_
         _ctx7765_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id7772_ _alias-id7773_)
          (let* ((_rebind?7775_ '#f)
                 (_phi7777_ (gx#current-expander-phi))
                 (_ctx7779_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda7759
             _id7772_
             _alias-id7773_
             _rebind?7775_
             _phi7777_
             _ctx7779_))))
      (define gx#core-bind-alias!__1
        (lambda (_id7781_ _alias-id7782_ _rebind?7783_)
          (let* ((_phi7785_ (gx#current-expander-phi))
                 (_ctx7787_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda7759
             _id7781_
             _alias-id7782_
             _rebind?7783_
             _phi7785_
             _ctx7787_))))
      (define gx#core-bind-alias!__2
        (lambda (_id7789_ _alias-id7790_ _rebind?7791_ _phi7792_)
          (let ((_ctx7794_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda7759
             _id7789_
             _alias-id7790_
             _rebind?7791_
             _phi7792_
             _ctx7794_))))
      (define gx#core-bind-alias!
        (lambda _g10718_
          (let ((_g10717_ (length _g10718_)))
            (cond ((fx= _g10717_ 2) (apply gx#core-bind-alias!__0 _g10718_))
                  ((fx= _g10717_ 3) (apply gx#core-bind-alias!__1 _g10718_))
                  ((fx= _g10717_ 4) (apply gx#core-bind-alias!__2 _g10718_))
                  ((fx= _g10717_ 5)
                   (apply gx#core-bind-alias!__opt-lambda7759 _g10718_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g10718_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda7716
      (lambda (_key7718_ _syntax?7719_ _phi7720_ _ctx7721_)
        (if (uninterned-symbol? _key7718_)
            (gensym 'L)
            (if (pair? _key7718_)
                (gensym (car _key7718_))
                (if (##structure-instance-of? _ctx7721_ 'gx#top-context::t)
                    (let ((_ns7723_
                           (gx#core-context-namespace__opt-lambda4748
                            _ctx7721_)))
                      (if (if (fxzero? _phi7720_) (not _syntax?7719_) '#f)
                          (if _ns7723_
                              (make-symbol _ns7723_ '"#" _key7718_)
                              _key7718_)
                          (if _syntax?7719_
                              (make-symbol
                               (let ((_$e7725_ _ns7723_))
                                 (if _$e7725_ _$e7725_ '""))
                               '"[:"
                               (number->string _phi7720_)
                               '":]#"
                               _key7718_)
                              (make-symbol
                               (let ((_$e7728_ _ns7723_))
                                 (if _$e7728_ _$e7728_ '""))
                               '"["
                               (number->string _phi7720_)
                               '"]#"
                               _key7718_))))
                    (gensym _key7718_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key7734_)
          (let* ((_syntax?7736_ '#f)
                 (_phi7738_ (gx#current-expander-phi))
                 (_ctx7740_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda7716
             _key7734_
             _syntax?7736_
             _phi7738_
             _ctx7740_))))
      (define gx#make-binding-id__1
        (lambda (_key7742_ _syntax?7743_)
          (let* ((_phi7745_ (gx#current-expander-phi))
                 (_ctx7747_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda7716
             _key7742_
             _syntax?7743_
             _phi7745_
             _ctx7747_))))
      (define gx#make-binding-id__2
        (lambda (_key7749_ _syntax?7750_ _phi7751_)
          (let ((_ctx7753_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda7716
             _key7749_
             _syntax?7750_
             _phi7751_
             _ctx7753_))))
      (define gx#make-binding-id
        (lambda _g10720_
          (let ((_g10719_ (length _g10720_)))
            (cond ((fx= _g10719_ 1) (apply gx#make-binding-id__0 _g10720_))
                  ((fx= _g10719_ 2) (apply gx#make-binding-id__1 _g10720_))
                  ((fx= _g10719_ 3) (apply gx#make-binding-id__2 _g10720_))
                  ((fx= _g10719_ 4)
                   (apply gx#make-binding-id__opt-lambda7716 _g10720_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g10720_)))))))))
