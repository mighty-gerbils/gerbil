(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx10992_)
      (letrec ((_expand-special10994_
                (lambda (_hd10996_ _K10997_ _rest10998_ _r10999_)
                  (_K10997_
                   _rest10998_
                   (cons (gx#core-expand-top _hd10996_) _r10999_)))))
        (gx#core-expand-block__0 _stx10992_ _expand-special10994_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx10745_)
      (letrec ((_expand-special10747_
                (lambda (_hd10867_ _K10868_ _rest10869_ _r10870_)
                  (let* ((_K10874_
                          (lambda (_e10872_)
                            (_K10868_ _rest10869_ (cons _e10872_ _r10870_))))
                         (_e1087510904_ _hd10867_)
                         (_E1089910908_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1087510904_)))
                         (_E1089510920_
                          (lambda ()
                            (if (gx#stx-pair? _e1087510904_)
                                (let ((_e1090010912_
                                       (gx#syntax-e _e1087510904_)))
                                  (let ((_hd1090110915_ (##car _e1090010912_))
                                        (_tl1090210917_ (##cdr _e1090010912_)))
                                    (if (if (gx#identifier? _hd1090110915_)
                                            (gx#core-identifier=?
                                             _hd1090110915_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K10874_
                                             (gx#core-expand-define-runtime%
                                              _hd10867_))
                                            (_E1089910908_))
                                        (_E1089910908_))))
                                (_E1089910908_))))
                         (_E1089110932_
                          (lambda ()
                            (if (gx#stx-pair? _e1087510904_)
                                (let ((_e1089610924_
                                       (gx#syntax-e _e1087510904_)))
                                  (let ((_hd1089710927_ (##car _e1089610924_))
                                        (_tl1089810929_ (##cdr _e1089610924_)))
                                    (if (if (gx#identifier? _hd1089710927_)
                                            (gx#core-identifier=?
                                             _hd1089710927_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K10874_
                                             (gx#core-expand-define-alias%
                                              _hd10867_))
                                            (_E1089510920_))
                                        (_E1089510920_))))
                                (_E1089510920_))))
                         (_E1088110944_
                          (lambda ()
                            (if (gx#stx-pair? _e1087510904_)
                                (let ((_e1089210936_
                                       (gx#syntax-e _e1087510904_)))
                                  (let ((_hd1089310939_ (##car _e1089210936_))
                                        (_tl1089410941_ (##cdr _e1089210936_)))
                                    (if (if (gx#identifier? _hd1089310939_)
                                            (gx#core-identifier=?
                                             _hd1089310939_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10874_
                                             (gx#core-expand-define-syntax%
                                              _hd10867_))
                                            (_E1089110932_))
                                        (_E1089110932_))))
                                (_E1089110932_))))
                         (_E1087710976_
                          (lambda ()
                            (if (gx#stx-pair? _e1087510904_)
                                (let ((_e1088210948_
                                       (gx#syntax-e _e1087510904_)))
                                  (let ((_hd1088310951_ (##car _e1088210948_))
                                        (_tl1088410953_ (##cdr _e1088210948_)))
                                    (if (if (gx#identifier? _hd1088310951_)
                                            (gx#core-identifier=?
                                             _hd1088310951_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1088410953_)
                                            (let ((_e1088510956_
                                                   (gx#syntax-e
                                                    _tl1088410953_)))
                                              (let ((_hd1088610959_
                                                     (##car _e1088510956_))
                                                    (_tl1088710961_
                                                     (##cdr _e1088510956_)))
                                                (let ((_hd-bind10964_
                                                       _hd1088610959_))
                                                  (if (gx#stx-pair?
                                                       _tl1088710961_)
                                                      (let ((_e1088810966_
                                                             (gx#syntax-e
                                                              _tl1088710961_)))
                                                        (let ((_hd1088910969_
                                                               (##car _e1088810966_))
                                                              (_tl1089010971_
                                                               (##cdr _e1088810966_)))
                                                          (let ((_expr10974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1088910969_))
                    (if (gx#stx-null? _tl1089010971_)
                        (if (gx#core-bind-values? _hd-bind10964_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10964_)
                              (_K10874_ _hd10867_))
                            (_E1088110944_))
                        (_E1088110944_)))))
              (_E1088110944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1088110944_))
                                        (_E1088110944_))))
                                (_E1088110944_))))
                         (_E1087610988_
                          (lambda ()
                            (if (gx#stx-pair? _e1087510904_)
                                (let ((_e1087810980_
                                       (gx#syntax-e _e1087510904_)))
                                  (let ((_hd1087910983_ (##car _e1087810980_))
                                        (_tl1088010985_ (##cdr _e1087810980_)))
                                    (if (if (gx#identifier? _hd1087910983_)
                                            (gx#core-identifier=?
                                             _hd1087910983_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10874_
                                             (gx#core-expand-begin-syntax%
                                              _hd10867_))
                                            (_E1087710976_))
                                        (_E1087710976_))))
                                (_E1087710976_)))))
                    (_E1087610988_))))
               (_eval-body10748_
                (lambda (_rbody10756_)
                  (let _lp10758_ ((_rest10760_ _rbody10756_)
                                  (_body10761_ '())
                                  (_ebody10762_ '()))
                    (let* ((_rest1076310771_ _rest10760_)
                           (_else1076510779_
                            (lambda ()
                              (values _body10761_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody10762_)
                                        (gx#stx-source _stx10745_))))))
                           (_K1076710855_
                            (lambda (_rest10782_ _hd10783_)
                              (let* ((_e1078410801_ _hd10783_)
                                     (_E1079610805_
                                      (lambda ()
                                        (_lp10758_
                                         _rest10782_
                                         (cons _hd10783_ _body10761_)
                                         (cons _hd10783_ _ebody10762_))))
                                     (_E1078610817_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1078410801_)
                                            (let ((_e1079710809_
                                                   (gx#syntax-e
                                                    _e1078410801_)))
                                              (let ((_hd1079810812_
                                                     (##car _e1079710809_))
                                                    (_tl1079910814_
                                                     (##cdr _e1079710809_)))
                                                (if (if (gx#identifier?
                                                         _hd1079810812_)
                                                        (gx#core-identifier=?
                                                         _hd1079810812_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10758_
                                                         _rest10782_
                                                         (cons _hd10783_
                                                               _body10761_)
                                                         _ebody10762_)
                                                        (_E1079610805_))
                                                    (_E1079610805_))))
                                            (_E1079610805_))))
                                     (_E1078510851_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1078410801_)
                                            (let ((_e1078710821_
                                                   (gx#syntax-e
                                                    _e1078410801_)))
                                              (let ((_hd1078810824_
                                                     (##car _e1078710821_))
                                                    (_tl1078910826_
                                                     (##cdr _e1078710821_)))
                                                (if (if (gx#identifier?
                                                         _hd1078810824_)
                                                        (gx#core-identifier=?
                                                         _hd1078810824_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1078910826_)
                                                        (let ((_e1079010829_
                                                               (gx#syntax-e
                                                                _tl1078910826_)))
                                                          (let ((_hd1079110832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1079010829_))
                        (_tl1079210834_ (##cdr _e1079010829_)))
                    (let ((_hd-bind10837_ _hd1079110832_))
                      (if (gx#stx-pair? _tl1079210834_)
                          (let ((_e1079310839_ (gx#syntax-e _tl1079210834_)))
                            (let ((_hd1079410842_ (##car _e1079310839_))
                                  (_tl1079510844_ (##cdr _e1079310839_)))
                              (let ((_expr10847_ _hd1079410842_))
                                (if (gx#stx-null? _tl1079510844_)
                                    (if '#t
                                        (let ((_ehd10849_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind10837_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr10847_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd10783_))))
                                          (_lp10758_
                                           _rest10782_
                                           (cons _ehd10849_ _body10761_)
                                           (cons _ehd10849_ _ebody10762_)))
                                        (_E1078610817_))
                                    (_E1078610817_)))))
                          (_E1078610817_)))))
                (_E1078610817_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1078610817_))))
                                            (_E1078610817_)))))
                                (_E1078510851_)))))
                      (if (##pair? _rest1076310771_)
                          (let ((_hd1076810858_ (##car _rest1076310771_))
                                (_tl1076910860_ (##cdr _rest1076310771_)))
                            (let* ((_hd10863_ _hd1076810858_)
                                   (_rest10865_ _tl1076910860_))
                              (_K1076710855_ _rest10865_ _hd10863_)))
                          (_else1076510779_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody10751_
                   (gx#core-expand-block__1
                    _stx10745_
                    _expand-special10747_
                    '#f))
                  (_g11009_ (_eval-body10748_ _rbody10751_)))
             (begin
               (let ((_g11010_
                      (if (##values? _g11009_) (##vector-length _g11009_) 1)))
                 (if (not (##fx= _g11010_ 2))
                     (error "Context expects 2 values" _g11010_)))
               (let ((_expanded-body10753_ (##vector-ref _g11009_ 0))
                     (_value10754_ (##vector-ref _g11009_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body10753_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value10754_ '())))
                  (gx#stx-source _stx10745_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx10715_)
      (let* ((_e1071610723_ _stx10715_)
             (_E1071810727_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1071610723_)))
             (_E1071710741_
              (lambda ()
                (if (gx#stx-pair? _e1071610723_)
                    (let ((_e1071910731_ (gx#syntax-e _e1071610723_)))
                      (let ((_hd1072010734_ (##car _e1071910731_))
                            (_tl1072110736_ (##cdr _e1071910731_)))
                        (let ((_body10739_ _tl1072110736_))
                          (if (gx#stx-list? _body10739_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body10739_)
                               (gx#stx-source _stx10715_))
                              (_E1071810727_)))))
                    (_E1071810727_)))))
        (_E1071710741_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx10713_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx10713_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx10659_)
      (let* ((_e1066010673_ _stx10659_)
             (_E1066210677_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1066010673_)))
             (_E1066110709_
              (lambda ()
                (if (gx#stx-pair? _e1066010673_)
                    (let ((_e1066310681_ (gx#syntax-e _e1066010673_)))
                      (let ((_hd1066410684_ (##car _e1066310681_))
                            (_tl1066510686_ (##cdr _e1066310681_)))
                        (if (gx#stx-pair? _tl1066510686_)
                            (let ((_e1066610689_ (gx#syntax-e _tl1066510686_)))
                              (let ((_hd1066710692_ (##car _e1066610689_))
                                    (_tl1066810694_ (##cdr _e1066610689_)))
                                (let ((_ann10697_ _hd1066710692_))
                                  (if (gx#stx-pair? _tl1066810694_)
                                      (let ((_e1066910699_
                                             (gx#syntax-e _tl1066810694_)))
                                        (let ((_hd1067010702_
                                               (##car _e1066910699_))
                                              (_tl1067110704_
                                               (##cdr _e1066910699_)))
                                          (let ((_expr10707_ _hd1067010702_))
                                            (if (gx#stx-null? _tl1067110704_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#begin-annotation)
                                                           (cons _ann10697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-expand-expression _expr10707_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10659_))
                                                    (_E1066210677_))
                                                (_E1066210677_)))))
                                      (_E1066210677_)))))
                            (_E1066210677_))))
                    (_E1066210677_)))))
        (_E1066110709_))))
  (define gx#core-expand-local-block
    (lambda (_stx10383_ _body10384_)
      (letrec ((_expand-special10386_
                (lambda (_hd10654_ _K10655_ _rest10656_ _r10657_)
                  (_K10655_
                   '()
                   (cons (_expand-internal10387_ _hd10654_ _rest10656_)
                         _r10657_))))
               (_expand-internal10387_
                (lambda (_hd10650_ _rest10651_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal10389_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd10650_ _rest10651_))
                        (gx#stx-source _stx10383_))
                       _expand-internal-special10388_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj11003 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj11003)
                       __obj11003)))))
               (_expand-internal-special10388_
                (lambda (_hd10545_ _K10546_ _rest10547_ _r10548_)
                  (let* ((_e1054910574_ _hd10545_)
                         (_E1056910578_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1054910574_)))
                         (_E1056510590_
                          (lambda ()
                            (if (gx#stx-pair? _e1054910574_)
                                (let ((_e1057010582_
                                       (gx#syntax-e _e1054910574_)))
                                  (let ((_hd1057110585_ (##car _e1057010582_))
                                        (_tl1057210587_ (##cdr _e1057010582_)))
                                    (if (if (gx#identifier? _hd1057110585_)
                                            (gx#core-identifier=?
                                             _hd1057110585_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K10546_
                                             _rest10547_
                                             (cons (gx#core-expand-declare%
                                                    _hd10545_)
                                                   _r10548_))
                                            (_E1056910578_))
                                        (_E1056910578_))))
                                (_E1056910578_))))
                         (_E1056110602_
                          (lambda ()
                            (if (gx#stx-pair? _e1054910574_)
                                (let ((_e1056610594_
                                       (gx#syntax-e _e1054910574_)))
                                  (let ((_hd1056710597_ (##car _e1056610594_))
                                        (_tl1056810599_ (##cdr _e1056610594_)))
                                    (if (if (gx#identifier? _hd1056710597_)
                                            (gx#core-identifier=?
                                             _hd1056710597_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd10545_)
                                              (_K10546_ _rest10547_ _r10548_))
                                            (_E1056510590_))
                                        (_E1056510590_))))
                                (_E1056510590_))))
                         (_E1055110614_
                          (lambda ()
                            (if (gx#stx-pair? _e1054910574_)
                                (let ((_e1056210606_
                                       (gx#syntax-e _e1054910574_)))
                                  (let ((_hd1056310609_ (##car _e1056210606_))
                                        (_tl1056410611_ (##cdr _e1056210606_)))
                                    (if (if (gx#identifier? _hd1056310609_)
                                            (gx#core-identifier=?
                                             _hd1056310609_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd10545_)
                                              (_K10546_ _rest10547_ _r10548_))
                                            (_E1056110602_))
                                        (_E1056110602_))))
                                (_E1056110602_))))
                         (_E1055010646_
                          (lambda ()
                            (if (gx#stx-pair? _e1054910574_)
                                (let ((_e1055210618_
                                       (gx#syntax-e _e1054910574_)))
                                  (let ((_hd1055310621_ (##car _e1055210618_))
                                        (_tl1055410623_ (##cdr _e1055210618_)))
                                    (if (if (gx#identifier? _hd1055310621_)
                                            (gx#core-identifier=?
                                             _hd1055310621_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1055410623_)
                                            (let ((_e1055510626_
                                                   (gx#syntax-e
                                                    _tl1055410623_)))
                                              (let ((_hd1055610629_
                                                     (##car _e1055510626_))
                                                    (_tl1055710631_
                                                     (##cdr _e1055510626_)))
                                                (let ((_hd-bind10634_
                                                       _hd1055610629_))
                                                  (if (gx#stx-pair?
                                                       _tl1055710631_)
                                                      (let ((_e1055810636_
                                                             (gx#syntax-e
                                                              _tl1055710631_)))
                                                        (let ((_hd1055910639_
                                                               (##car _e1055810636_))
                                                              (_tl1056010641_
                                                               (##cdr _e1055810636_)))
                                                          (let ((_expr10644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1055910639_))
                    (if (gx#stx-null? _tl1056010641_)
                        (if (gx#core-bind-values? _hd-bind10634_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10634_)
                              (_K10546_ _rest10547_ (cons _hd10545_ _r10548_)))
                            (_E1055110614_))
                        (_E1055110614_)))))
              (_E1055110614_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1055110614_))
                                        (_E1055110614_))))
                                (_E1055110614_)))))
                    (_E1055010646_))))
               (_wrap-internal10389_
                (lambda (_rbody10391_)
                  (let _lp10393_ ((_rest10395_ _rbody10391_)
                                  (_decls10396_ '())
                                  (_bind10397_ '())
                                  (_body10398_ '()))
                    (let* ((_e1039910406_ _rest10395_)
                           (_E1040110455_
                            (lambda ()
                              (let* ((_body10450_
                                      (let* ((_body1040910419_ _body10398_)
                                             (_else1041210427_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10398_)
                                                 (gx#stx-source _stx10383_)))))
                                        (let ((_K1041710447_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _stx10383_)))
                                              (_K1041410433_
                                               (lambda (_expr10431_)
                                                 _expr10431_)))
                                          (let ((_try-match1041110443_
                                                 (lambda ()
                                                   (if (##pair? _body1040910419_)
                                                       (let ((_tl1041610438_
                                                              (##cdr _body1040910419_))
                                                             (_hd1041510436_
                                                              (##car _body1040910419_)))
                                                         (if (##null? _tl1041610438_)
                                                             (let ((_expr10441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1041510436_))
                       (_K1041410433_ _expr10441_))
                     (_else1041210427_)))
               (_else1041210427_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (##null? _body1040910419_)
                                                (let () (_K1041710447_))
                                                (_try-match1041110443_))))))
                                     (_body10452_
                                      (if (null? _bind10397_)
                                          _body10450_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind10397_
                                                       (cons _body10450_ '())))
                                           (gx#stx-source _stx10383_)))))
                                (if (null? _decls10396_)
                                    _body10452_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls10396_
                                                 (cons _body10452_ '())))
                                     (gx#stx-source _stx10383_))))))
                           (_E1040010541_
                            (lambda ()
                              (if (gx#stx-pair? _e1039910406_)
                                  (let ((_e1040210459_
                                         (gx#syntax-e _e1039910406_)))
                                    (let ((_hd1040310462_
                                           (##car _e1040210459_))
                                          (_tl1040410464_
                                           (##cdr _e1040210459_)))
                                      (let* ((_hd10467_ _hd1040310462_)
                                             (_rest10469_ _tl1040410464_))
                                        (if '#t
                                            (let* ((_e1047010487_ _hd10467_)
                                                   (_E1048210491_
                                                    (lambda ()
                                                      (if (null? _bind10397_)
                                                          (_lp10393_
                                                           _rest10469_
                                                           _decls10396_
                                                           _bind10397_
                                                           (cons _hd10467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10398_))
                  (_lp10393_
                   _rest10469_
                   _decls10396_
                   (cons (cons '#f (cons _hd10467_ '())) _bind10397_)
                   _body10398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1047210505_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1047010487_)
                                                          (let ((_e1048310495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1047010487_)))
                    (let ((_hd1048410498_ (##car _e1048310495_))
                          (_tl1048510500_ (##cdr _e1048310495_)))
                      (if (if (gx#identifier? _hd1048410498_)
                              (gx#core-identifier=? _hd1048410498_ '%#declare)
                              '#f)
                          (let ((_xdecls10503_ _tl1048510500_))
                            (if '#t
                                (_lp10393_
                                 _rest10469_
                                 (gx#stx-foldr cons _decls10396_ _xdecls10503_)
                                 _bind10397_
                                 _body10398_)
                                (_E1048210491_)))
                          (_E1048210491_))))
                  (_E1048210491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1047110537_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1047010487_)
                                                          (let ((_e1047310509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1047010487_)))
                    (let ((_hd1047410512_ (##car _e1047310509_))
                          (_tl1047510514_ (##cdr _e1047310509_)))
                      (if (if (gx#identifier? _hd1047410512_)
                              (gx#core-identifier=?
                               _hd1047410512_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1047510514_)
                              (let ((_e1047610517_
                                     (gx#syntax-e _tl1047510514_)))
                                (let ((_hd1047710520_ (##car _e1047610517_))
                                      (_tl1047810522_ (##cdr _e1047610517_)))
                                  (let ((_hd-bind10525_ _hd1047710520_))
                                    (if (gx#stx-pair? _tl1047810522_)
                                        (let ((_e1047910527_
                                               (gx#syntax-e _tl1047810522_)))
                                          (let ((_hd1048010530_
                                                 (##car _e1047910527_))
                                                (_tl1048110532_
                                                 (##cdr _e1047910527_)))
                                            (let ((_expr10535_ _hd1048010530_))
                                              (if (gx#stx-null? _tl1048110532_)
                                                  (if '#t
                                                      (_lp10393_
                                                       _rest10469_
                                                       _decls10396_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind10525_)
                           (cons (gx#core-expand-expression _expr10535_) '()))
                     _bind10397_)
               _body10398_)
              (_E1047210505_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1047210505_)))))
                                        (_E1047210505_)))))
                              (_E1047210505_))
                          (_E1047210505_))))
                  (_E1047210505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1047110537_))
                                            (_E1040110455_)))))
                                  (_E1040110455_)))))
                      (_E1040010541_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body10384_)
          (gx#stx-source _stx10383_))
         _expand-special10386_))))
  (define gx#core-expand-declare%
    (lambda (_stx10321_)
      (let* ((_e1032210329_ _stx10321_)
             (_E1032410333_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1032210329_)))
             (_E1032310379_
              (lambda ()
                (if (gx#stx-pair? _e1032210329_)
                    (let ((_e1032510337_ (gx#syntax-e _e1032210329_)))
                      (let ((_hd1032610340_ (##car _e1032510337_))
                            (_tl1032710342_ (##cdr _e1032510337_)))
                        (let ((_body10345_ _tl1032710342_))
                          (if (gx#stx-list? _body10345_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl10347_)
                                   (let* ((_e1034810355_ _decl10347_)
                                          (_E1035010359_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1034810355_)))
                                          (_E1034910375_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1034810355_)
                                                 (let ((_e1035110363_
                                                        (gx#syntax-e
                                                         _e1034810355_)))
                                                   (let ((_hd1035210366_
                                                          (##car _e1035110363_))
                                                         (_tl1035310368_
                                                          (##cdr _e1035110363_)))
                                                     (let* ((_head10371_
                                                             _hd1035210366_)
                                                            (_args10373_
                                                             _tl1035310368_))
                                                       (if (gx#stx-list?
                                                            _args10373_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl10347_)
                                                           (_E1035010359_)))))
                                                 (_E1035010359_)))))
                                     (_E1034910375_)))
                                 _body10345_))
                               (gx#stx-source _stx10321_))
                              (_E1032410333_)))))
                    (_E1032410333_)))))
        (_E1032310379_))))
  (define gx#core-expand-extern%
    (lambda (_stx10205_)
      (let* ((_e1020610213_ _stx10205_)
             (_E1020810217_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1020610213_)))
             (_E1020710317_
              (lambda ()
                (if (gx#stx-pair? _e1020610213_)
                    (let ((_e1020910221_ (gx#syntax-e _e1020610213_)))
                      (let ((_hd1021010224_ (##car _e1020910221_))
                            (_tl1021110226_ (##cdr _e1020910221_)))
                        (let ((_body10229_ _tl1021110226_))
                          (if (gx#stx-list? _body10229_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind10231_)
                                   (let* ((_e1023210242_ _bind10231_)
                                          (_E1023410246_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1023210242_)))
                                          (_E1023310270_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1023210242_)
                                                 (let ((_e1023510250_
                                                        (gx#syntax-e
                                                         _e1023210242_)))
                                                   (let ((_hd1023610253_
                                                          (##car _e1023510250_))
                                                         (_tl1023710255_
                                                          (##cdr _e1023510250_)))
                                                     (let ((_id10258_
                                                            _hd1023610253_))
                                                       (if (gx#stx-pair?
                                                            _tl1023710255_)
                                                           (let ((_e1023810260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1023710255_)))
                     (let ((_hd1023910263_ (##car _e1023810260_))
                           (_tl1024010265_ (##cdr _e1023810260_)))
                       (let ((_eid10268_ _hd1023910263_))
                         (if (gx#stx-null? _tl1024010265_)
                             (if (if (gx#identifier? _id10258_)
                                     (gx#identifier? _eid10268_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id10258_
                                  (gx#stx-e _eid10268_))
                                 (_E1023410246_))
                             (_E1023410246_)))))
                   (_E1023410246_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1023410246_)))))
                                     (_E1023310270_)))
                                 _body10229_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind10274_)
                                     (let* ((_e1027510285_ _bind10274_)
                                            (_E1027710289_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1027510285_)))
                                            (_E1027610313_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1027510285_)
                                                   (let ((_e1027810293_
                                                          (gx#syntax-e
                                                           _e1027510285_)))
                                                     (let ((_hd1027910296_
                                                            (##car _e1027810293_))
                                                           (_tl1028010298_
                                                            (##cdr _e1027810293_)))
                                                       (let ((_id10301_
                                                              _hd1027910296_))
                                                         (if (gx#stx-pair?
                                                              _tl1028010298_)
                                                             (let ((_e1028110303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1028010298_)))
                       (let ((_hd1028210306_ (##car _e1028110303_))
                             (_tl1028310308_ (##cdr _e1028110303_)))
                         (let ((_eid10311_ _hd1028210306_))
                           (if (gx#stx-null? _tl1028310308_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id10301_)
                                         (cons (gx#stx-e _eid10311_) '()))
                                   (_E1027710289_))
                               (_E1027710289_)))))
                     (_E1027710289_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1027710289_)))))
                                       (_E1027610313_)))
                                   _body10229_))
                                 (gx#stx-source _stx10205_)))
                              (_E1020810217_)))))
                    (_E1020810217_)))))
        (_E1020710317_))))
  (define gx#core-expand-define-values%
    (lambda (_stx10151_)
      (let* ((_e1015210165_ _stx10151_)
             (_E1015410169_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1015210165_)))
             (_E1015310201_
              (lambda ()
                (if (gx#stx-pair? _e1015210165_)
                    (let ((_e1015510173_ (gx#syntax-e _e1015210165_)))
                      (let ((_hd1015610176_ (##car _e1015510173_))
                            (_tl1015710178_ (##cdr _e1015510173_)))
                        (if (gx#stx-pair? _tl1015710178_)
                            (let ((_e1015810181_ (gx#syntax-e _tl1015710178_)))
                              (let ((_hd1015910184_ (##car _e1015810181_))
                                    (_tl1016010186_ (##cdr _e1015810181_)))
                                (let ((_hd10189_ _hd1015910184_))
                                  (if (gx#stx-pair? _tl1016010186_)
                                      (let ((_e1016110191_
                                             (gx#syntax-e _tl1016010186_)))
                                        (let ((_hd1016210194_
                                               (##car _e1016110191_))
                                              (_tl1016310196_
                                               (##cdr _e1016110191_)))
                                          (let ((_expr10199_ _hd1016210194_))
                                            (if (gx#stx-null? _tl1016310196_)
                                                (if (gx#core-bind-values?
                                                     _hd10189_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd10189_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10189_)
                           (cons (gx#core-expand-expression _expr10199_) '())))
               (gx#stx-source _stx10151_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1015410169_))
                                                (_E1015410169_)))))
                                      (_E1015410169_)))))
                            (_E1015410169_))))
                    (_E1015410169_)))))
        (_E1015310201_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx10097_)
      (let* ((_e1009810111_ _stx10097_)
             (_E1010010115_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1009810111_)))
             (_E1009910147_
              (lambda ()
                (if (gx#stx-pair? _e1009810111_)
                    (let ((_e1010110119_ (gx#syntax-e _e1009810111_)))
                      (let ((_hd1010210122_ (##car _e1010110119_))
                            (_tl1010310124_ (##cdr _e1010110119_)))
                        (if (gx#stx-pair? _tl1010310124_)
                            (let ((_e1010410127_ (gx#syntax-e _tl1010310124_)))
                              (let ((_hd1010510130_ (##car _e1010410127_))
                                    (_tl1010610132_ (##cdr _e1010410127_)))
                                (let ((_id10135_ _hd1010510130_))
                                  (if (gx#stx-pair? _tl1010610132_)
                                      (let ((_e1010710137_
                                             (gx#syntax-e _tl1010610132_)))
                                        (let ((_hd1010810140_
                                               (##car _e1010710137_))
                                              (_tl1010910142_
                                               (##cdr _e1010710137_)))
                                          (let ((_binding-id10145_
                                                 _hd1010810140_))
                                            (if (gx#stx-null? _tl1010910142_)
                                                (if (if (gx#identifier?
                                                         _id10135_)
                                                        (gx#identifier?
                                                         _binding-id10145_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id10135_
                                                       (gx#stx-e
                                                        _binding-id10145_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10135_)
                           (cons (gx#core-quote-syntax__0 _binding-id10145_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1010010115_))
                                                (_E1010010115_)))))
                                      (_E1010010115_)))))
                            (_E1010010115_))))
                    (_E1010010115_)))))
        (_E1009910147_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx10040_)
      (let* ((_e1004110054_ _stx10040_)
             (_E1004310058_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1004110054_)))
             (_E1004210093_
              (lambda ()
                (if (gx#stx-pair? _e1004110054_)
                    (let ((_e1004410062_ (gx#syntax-e _e1004110054_)))
                      (let ((_hd1004510065_ (##car _e1004410062_))
                            (_tl1004610067_ (##cdr _e1004410062_)))
                        (if (gx#stx-pair? _tl1004610067_)
                            (let ((_e1004710070_ (gx#syntax-e _tl1004610067_)))
                              (let ((_hd1004810073_ (##car _e1004710070_))
                                    (_tl1004910075_ (##cdr _e1004710070_)))
                                (let ((_id10078_ _hd1004810073_))
                                  (if (gx#stx-pair? _tl1004910075_)
                                      (let ((_e1005010080_
                                             (gx#syntax-e _tl1004910075_)))
                                        (let ((_hd1005110083_
                                               (##car _e1005010080_))
                                              (_tl1005210085_
                                               (##cdr _e1005010080_)))
                                          (let ((_expr10088_ _hd1005110083_))
                                            (if (gx#stx-null? _tl1005210085_)
                                                (if (gx#identifier? _id10078_)
                                                    (let ((_g11011_
                                                           (gx#core-expand-expression+1
                                                            _expr10088_)))
                                                      (begin
                                                        (let ((_g11012_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g11011_)
                           (##vector-length _g11011_)
                           1)))
                  (if (not (##fx= _g11012_ 2))
                      (error "Context expects 2 values" _g11012_)))
                (let ((_e-stx10090_ (##vector-ref _g11011_ 0))
                      (_e10091_ (##vector-ref _g11011_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id10078_ _e10091_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id10078_)
                                 (cons _e-stx10090_ '())))
                     (gx#stx-source _stx10040_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1004310058_))
                                                (_E1004310058_)))))
                                      (_E1004310058_)))))
                            (_E1004310058_))))
                    (_E1004310058_)))))
        (_E1004210093_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx9984_)
      (let* ((_e99859998_ _stx9984_)
             (_E998710002_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e99859998_)))
             (_E998610036_
              (lambda ()
                (if (gx#stx-pair? _e99859998_)
                    (let ((_e998810006_ (gx#syntax-e _e99859998_)))
                      (let ((_hd998910009_ (##car _e998810006_))
                            (_tl999010011_ (##cdr _e998810006_)))
                        (if (gx#stx-pair? _tl999010011_)
                            (let ((_e999110014_ (gx#syntax-e _tl999010011_)))
                              (let ((_hd999210017_ (##car _e999110014_))
                                    (_tl999310019_ (##cdr _e999110014_)))
                                (let ((_id10022_ _hd999210017_))
                                  (if (gx#stx-pair? _tl999310019_)
                                      (let ((_e999410024_
                                             (gx#syntax-e _tl999310019_)))
                                        (let ((_hd999510027_
                                               (##car _e999410024_))
                                              (_tl999610029_
                                               (##cdr _e999410024_)))
                                          (let ((_alias-id10032_
                                                 _hd999510027_))
                                            (if (gx#stx-null? _tl999610029_)
                                                (if (if (gx#identifier?
                                                         _id10022_)
                                                        (gx#identifier?
                                                         _alias-id10032_)
                                                        '#f)
                                                    (let ((_alias-id10034_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id10032_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id10022_
                                                         _alias-id10034_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id10022_)
                             (cons _alias-id10034_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E998710002_))
                                                (_E998710002_)))))
                                      (_E998710002_)))))
                            (_E998710002_))))
                    (_E998710002_)))))
        (_E998610036_))))
  (begin
    (define gx#core-expand-lambda%__%
      (lambda (_stx9927_ _wrap?9928_)
        (let* ((_e99299939_ _stx9927_)
               (_E99319943_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e99299939_)))
               (_E99309970_
                (lambda ()
                  (if (gx#stx-pair? _e99299939_)
                      (let ((_e99329947_ (gx#syntax-e _e99299939_)))
                        (let ((_hd99339950_ (##car _e99329947_))
                              (_tl99349952_ (##cdr _e99329947_)))
                          (if (gx#stx-pair? _tl99349952_)
                              (let ((_e99359955_ (gx#syntax-e _tl99349952_)))
                                (let ((_hd99369958_ (##car _e99359955_))
                                      (_tl99379960_ (##cdr _e99359955_)))
                                  (let* ((_hd9963_ _hd99369958_)
                                         (_body9965_ _tl99379960_))
                                    (if (gx#core-bind-values? _hd9963_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0 _hd9963_)
                                             (let ((_body9968_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd9963_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9927_
                         _body9965_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?9928_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body9968_)
                                                    (gx#stx-source _stx9927_))
                                                   _body9968_))))
                                         gx#current-expander-context
                                         (let ((__obj11004
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11004)
                                             __obj11004)))
                                        (_E99319943_)))))
                              (_E99319943_))))
                      (_E99319943_)))))
          (_E99309970_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx9977_)
          (let ((_wrap?9979_ '#t))
            (gx#core-expand-lambda%__% _stx9977_ _wrap?9979_))))
      (define gx#core-expand-lambda%
        (lambda _g11014_
          (let ((_g11013_ (length _g11014_)))
            (cond ((##fx= _g11013_ 1)
                   (apply gx#core-expand-lambda%__0 _g11014_))
                  ((##fx= _g11013_ 2)
                   (apply gx#core-expand-lambda%__% _g11014_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g11014_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx9891_)
      (let* ((_e98929899_ _stx9891_)
             (_E98949903_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98929899_)))
             (_E98939922_
              (lambda ()
                (if (gx#stx-pair? _e98929899_)
                    (let ((_e98959907_ (gx#syntax-e _e98929899_)))
                      (let ((_hd98969910_ (##car _e98959907_))
                            (_tl98979912_ (##cdr _e98959907_)))
                        (let ((_clauses9915_ _tl98979912_))
                          (if (gx#stx-list? _clauses9915_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause9917_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause9917_)
                                     (let ((_$e9919_
                                            (gx#stx-source _clause9917_)))
                                       (if _$e9919_
                                           _$e9919_
                                           (gx#stx-source _stx9891_))))
                                    '#f))
                                 _clauses9915_))
                               (gx#stx-source _stx9891_))
                              (_E98949903_)))))
                    (_E98949903_)))))
        (_E98939922_))))
  (define gx#core-expand-let-values%
    (lambda (_stx9845_)
      (let* ((_e98469856_ _stx9845_)
             (_E98489860_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98469856_)))
             (_E98479887_
              (lambda ()
                (if (gx#stx-pair? _e98469856_)
                    (let ((_e98499864_ (gx#syntax-e _e98469856_)))
                      (let ((_hd98509867_ (##car _e98499864_))
                            (_tl98519869_ (##cdr _e98499864_)))
                        (if (gx#stx-pair? _tl98519869_)
                            (let ((_e98529872_ (gx#syntax-e _tl98519869_)))
                              (let ((_hd98539875_ (##car _e98529872_))
                                    (_tl98549877_ (##cdr _e98529872_)))
                                (let* ((_hd9880_ _hd98539875_)
                                       (_body9882_ _tl98549877_))
                                  (if (gx#core-expand-let-bind? _hd9880_)
                                      (let ((_expressions9884_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd9880_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9880_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9880_
                                                           _expressions9884_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9845_
                         _body9882_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9845_))))
                                         gx#current-expander-context
                                         (let ((__obj11005
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11005)
                                             __obj11005))))
                                      (_E98489860_)))))
                            (_E98489860_))))
                    (_E98489860_)))))
        (_E98479887_))))
  (begin
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx9790_ _form9791_)
        (let* ((_e97929802_ _stx9790_)
               (_E97949806_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e97929802_)))
               (_E97939831_
                (lambda ()
                  (if (gx#stx-pair? _e97929802_)
                      (let ((_e97959810_ (gx#syntax-e _e97929802_)))
                        (let ((_hd97969813_ (##car _e97959810_))
                              (_tl97979815_ (##cdr _e97959810_)))
                          (if (gx#stx-pair? _tl97979815_)
                              (let ((_e97989818_ (gx#syntax-e _tl97979815_)))
                                (let ((_hd97999821_ (##car _e97989818_))
                                      (_tl98009823_ (##cdr _e97989818_)))
                                  (let* ((_hd9826_ _hd97999821_)
                                         (_body9828_ _tl98009823_))
                                    (if (gx#core-expand-let-bind? _hd9826_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9826_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form9791_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9826_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd9826_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9790_
                         _body9828_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9790_))))
                                         gx#current-expander-context
                                         (let ((__obj11006
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11006)
                                             __obj11006)))
                                        (_E97949806_)))))
                              (_E97949806_))))
                      (_E97949806_)))))
          (_E97939831_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx9838_)
          (let ((_form9840_ '%#letrec-values))
            (gx#core-expand-letrec-values%__% _stx9838_ _form9840_))))
      (define gx#core-expand-letrec-values%
        (lambda _g11016_
          (let ((_g11015_ (length _g11016_)))
            (cond ((##fx= _g11015_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g11016_))
                  ((##fx= _g11015_ 2)
                   (apply gx#core-expand-letrec-values%__% _g11016_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g11016_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx9787_)
      (gx#core-expand-letrec-values%__% _stx9787_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx9744_)
      (if (gx#stx-list? _stx9744_)
          (gx#stx-andmap
           (lambda (_bind9746_)
             (let* ((_e97479757_ _bind9746_)
                    (_E97499761_ (lambda () '#f))
                    (_E97489783_
                     (lambda ()
                       (if (gx#stx-pair? _e97479757_)
                           (let ((_e97509765_ (gx#syntax-e _e97479757_)))
                             (let ((_hd97519768_ (##car _e97509765_))
                                   (_tl97529770_ (##cdr _e97509765_)))
                               (let ((_hd9773_ _hd97519768_))
                                 (if (gx#stx-pair? _tl97529770_)
                                     (let ((_e97539775_
                                            (gx#syntax-e _tl97529770_)))
                                       (let ((_hd97549778_ (##car _e97539775_))
                                             (_tl97559780_
                                              (##cdr _e97539775_)))
                                         (if (gx#stx-null? _tl97559780_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd9773_)
                                                 (_E97499761_))
                                             (_E97499761_))))
                                     (_E97499761_)))))
                           (_E97499761_)))))
               (_E97489783_)))
           _stx9744_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind9703_)
      (let* ((_e97049714_ _bind9703_)
             (_E97069718_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97049714_)))
             (_E97059740_
              (lambda ()
                (if (gx#stx-pair? _e97049714_)
                    (let ((_e97079722_ (gx#syntax-e _e97049714_)))
                      (let ((_hd97089725_ (##car _e97079722_))
                            (_tl97099727_ (##cdr _e97079722_)))
                        (if (gx#stx-pair? _tl97099727_)
                            (let ((_e97109730_ (gx#syntax-e _tl97099727_)))
                              (let ((_hd97119733_ (##car _e97109730_))
                                    (_tl97129735_ (##cdr _e97109730_)))
                                (let ((_expr9738_ _hd97119733_))
                                  (if (gx#stx-null? _tl97129735_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9738_)
                                          (_E97069718_))
                                      (_E97069718_)))))
                            (_E97069718_))))
                    (_E97069718_)))))
        (_E97059740_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind9662_)
      (let* ((_e96639673_ _bind9662_)
             (_E96659677_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96639673_)))
             (_E96649699_
              (lambda ()
                (if (gx#stx-pair? _e96639673_)
                    (let ((_e96669681_ (gx#syntax-e _e96639673_)))
                      (let ((_hd96679684_ (##car _e96669681_))
                            (_tl96689686_ (##cdr _e96669681_)))
                        (let ((_hd9689_ _hd96679684_))
                          (if (gx#stx-pair? _tl96689686_)
                              (let ((_e96699691_ (gx#syntax-e _tl96689686_)))
                                (let ((_hd96709694_ (##car _e96699691_))
                                      (_tl96719696_ (##cdr _e96699691_)))
                                  (if (gx#stx-null? _tl96719696_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd9689_)
                                          (_E96659677_))
                                      (_E96659677_))))
                              (_E96659677_)))))
                    (_E96659677_)))))
        (_E96649699_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind9620_ _expr9621_)
      (let* ((_e96229632_ _bind9620_)
             (_E96249636_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96229632_)))
             (_E96239658_
              (lambda ()
                (if (gx#stx-pair? _e96229632_)
                    (let ((_e96259640_ (gx#syntax-e _e96229632_)))
                      (let ((_hd96269643_ (##car _e96259640_))
                            (_tl96279645_ (##cdr _e96259640_)))
                        (let ((_hd9648_ _hd96269643_))
                          (if (gx#stx-pair? _tl96279645_)
                              (let ((_e96289650_ (gx#syntax-e _tl96279645_)))
                                (let ((_hd96299653_ (##car _e96289650_))
                                      (_tl96309655_ (##cdr _e96289650_)))
                                  (if (gx#stx-null? _tl96309655_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd9648_)
                                                (cons _expr9621_ '()))
                                          (_E96249636_))
                                      (_E96249636_))))
                              (_E96249636_)))))
                    (_E96249636_)))))
        (_E96239658_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx9574_)
      (let* ((_e95759585_ _stx9574_)
             (_E95779589_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95759585_)))
             (_E95769616_
              (lambda ()
                (if (gx#stx-pair? _e95759585_)
                    (let ((_e95789593_ (gx#syntax-e _e95759585_)))
                      (let ((_hd95799596_ (##car _e95789593_))
                            (_tl95809598_ (##cdr _e95789593_)))
                        (if (gx#stx-pair? _tl95809598_)
                            (let ((_e95819601_ (gx#syntax-e _tl95809598_)))
                              (let ((_hd95829604_ (##car _e95819601_))
                                    (_tl95839606_ (##cdr _e95819601_)))
                                (let* ((_hd9609_ _hd95829604_)
                                       (_body9611_ _tl95839606_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9609_)
                                      (let ((_expanders9613_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd9609_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd9609_
                                              _expanders9613_)
                                             (gx#core-expand-local-block
                                              _stx9574_
                                              _body9611_)))
                                         gx#current-expander-context
                                         (let ((__obj11007
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11007)
                                             __obj11007))))
                                      (_E95779589_)))))
                            (_E95779589_))))
                    (_E95779589_)))))
        (_E95769616_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx9523_)
      (let* ((_e95249534_ _stx9523_)
             (_E95269538_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95249534_)))
             (_E95259570_
              (lambda ()
                (if (gx#stx-pair? _e95249534_)
                    (let ((_e95279542_ (gx#syntax-e _e95249534_)))
                      (let ((_hd95289545_ (##car _e95279542_))
                            (_tl95299547_ (##cdr _e95279542_)))
                        (if (gx#stx-pair? _tl95299547_)
                            (let ((_e95309550_ (gx#syntax-e _tl95299547_)))
                              (let ((_hd95319553_ (##car _e95309550_))
                                    (_tl95329555_ (##cdr _e95309550_)))
                                (let* ((_hd9558_ _hd95319553_)
                                       (_body9560_ _tl95329555_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9558_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd9558_
                                            (make-list
                                             (gx#stx-length _hd9558_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g95629565_ _g95639567_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g95629565_
                                               _g95639567_
                                               '#t))
                                            _hd9558_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd9558_))
                                           (gx#core-expand-local-block
                                            _stx9523_
                                            _body9560_)))
                                       gx#current-expander-context
                                       (let ((__obj11008
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj11008)
                                           __obj11008)))
                                      (_E95269538_)))))
                            (_E95269538_))))
                    (_E95269538_)))))
        (_E95259570_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx9480_)
      (if (gx#stx-list? _stx9480_)
          (gx#stx-andmap
           (lambda (_bind9482_)
             (let* ((_e94839493_ _bind9482_)
                    (_E94859497_ (lambda () '#f))
                    (_E94849519_
                     (lambda ()
                       (if (gx#stx-pair? _e94839493_)
                           (let ((_e94869501_ (gx#syntax-e _e94839493_)))
                             (let ((_hd94879504_ (##car _e94869501_))
                                   (_tl94889506_ (##cdr _e94869501_)))
                               (let ((_hd9509_ _hd94879504_))
                                 (if (gx#stx-pair? _tl94889506_)
                                     (let ((_e94899511_
                                            (gx#syntax-e _tl94889506_)))
                                       (let ((_hd94909514_ (##car _e94899511_))
                                             (_tl94919516_
                                              (##cdr _e94899511_)))
                                         (if (gx#stx-null? _tl94919516_)
                                             (if '#t
                                                 (gx#identifier? _hd9509_)
                                                 (_E94859497_))
                                             (_E94859497_))))
                                     (_E94859497_)))))
                           (_E94859497_)))))
               (_E94849519_)))
           _stx9480_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind9437_)
      (let* ((_e94389448_ _bind9437_)
             (_E94409452_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e94389448_)))
             (_E94399476_
              (lambda ()
                (if (gx#stx-pair? _e94389448_)
                    (let ((_e94419456_ (gx#syntax-e _e94389448_)))
                      (let ((_hd94429459_ (##car _e94419456_))
                            (_tl94439461_ (##cdr _e94419456_)))
                        (if (gx#stx-pair? _tl94439461_)
                            (let ((_e94449464_ (gx#syntax-e _tl94439461_)))
                              (let ((_hd94459467_ (##car _e94449464_))
                                    (_tl94469469_ (##cdr _e94449464_)))
                                (let ((_expr9472_ _hd94459467_))
                                  (if (gx#stx-null? _tl94469469_)
                                      (if '#t
                                          (let ((_g11017_
                                                 (gx#core-expand-expression+1
                                                  _expr9472_)))
                                            (begin
                                              (let ((_g11018_
                                                     (if (##values? _g11017_)
                                                         (##vector-length
                                                          _g11017_)
                                                         1)))
                                                (if (not (##fx= _g11018_ 2))
                                                    (error "Context expects 2 values"
                                                           _g11018_)))
                                              (let ((_e9474_ (##vector-ref
                                                              _g11017_
                                                              1)))
                                                _e9474_)))
                                          (_E94409452_))
                                      (_E94409452_)))))
                            (_E94409452_))))
                    (_E94409452_)))))
        (_E94399476_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind9382_ _e9383_ _rebind?9384_)
        (let* ((_e93859395_ _bind9382_)
               (_E93879399_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e93859395_)))
               (_E93869421_
                (lambda ()
                  (if (gx#stx-pair? _e93859395_)
                      (let ((_e93889403_ (gx#syntax-e _e93859395_)))
                        (let ((_hd93899406_ (##car _e93889403_))
                              (_tl93909408_ (##cdr _e93889403_)))
                          (let ((_id9411_ _hd93899406_))
                            (if (gx#stx-pair? _tl93909408_)
                                (let ((_e93919413_ (gx#syntax-e _tl93909408_)))
                                  (let ((_hd93929416_ (##car _e93919413_))
                                        (_tl93939418_ (##cdr _e93919413_)))
                                    (if (gx#stx-null? _tl93939418_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id9411_
                                             _e9383_
                                             _rebind?9384_)
                                            (_E93879399_))
                                        (_E93879399_))))
                                (_E93879399_)))))
                      (_E93879399_)))))
          (_E93869421_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind9428_ _e9429_)
          (let ((_rebind?9431_ '#f))
            (gx#core-expand-let-bind-syntax!__%
             _bind9428_
             _e9429_
             _rebind?9431_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g11020_
          (let ((_g11019_ (length _g11020_)))
            (cond ((##fx= _g11019_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g11020_))
                  ((##fx= _g11019_ 3)
                   (apply gx#core-expand-let-bind-syntax!__% _g11020_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g11020_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx9340_)
      (let* ((_e93419351_ _stx9340_)
             (_E93439355_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93419351_)))
             (_E93429377_
              (lambda ()
                (if (gx#stx-pair? _e93419351_)
                    (let ((_e93449359_ (gx#syntax-e _e93419351_)))
                      (let ((_hd93459362_ (##car _e93449359_))
                            (_tl93469364_ (##cdr _e93449359_)))
                        (if (gx#stx-pair? _tl93469364_)
                            (let ((_e93479367_ (gx#syntax-e _tl93469364_)))
                              (let ((_hd93489370_ (##car _e93479367_))
                                    (_tl93499372_ (##cdr _e93479367_)))
                                (let ((_expr9375_ _hd93489370_))
                                  (if (gx#stx-null? _tl93499372_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9375_)
                                          (_E93439355_))
                                      (_E93439355_)))))
                            (_E93439355_))))
                    (_E93439355_)))))
        (_E93429377_))))
  (define gx#core-expand-quote%
    (lambda (_stx9299_)
      (let* ((_e93009310_ _stx9299_)
             (_E93029314_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93009310_)))
             (_E93019336_
              (lambda ()
                (if (gx#stx-pair? _e93009310_)
                    (let ((_e93039318_ (gx#syntax-e _e93009310_)))
                      (let ((_hd93049321_ (##car _e93039318_))
                            (_tl93059323_ (##cdr _e93039318_)))
                        (if (gx#stx-pair? _tl93059323_)
                            (let ((_e93069326_ (gx#syntax-e _tl93059323_)))
                              (let ((_hd93079329_ (##car _e93069326_))
                                    (_tl93089331_ (##cdr _e93069326_)))
                                (let ((_e9334_ _hd93079329_))
                                  (if (gx#stx-null? _tl93089331_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e9334_)
                                                       '()))
                                           (gx#stx-source _stx9299_))
                                          (_E93029314_))
                                      (_E93029314_)))))
                            (_E93029314_))))
                    (_E93029314_)))))
        (_E93019336_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx9258_)
      (let* ((_e92599269_ _stx9258_)
             (_E92619273_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92599269_)))
             (_E92609295_
              (lambda ()
                (if (gx#stx-pair? _e92599269_)
                    (let ((_e92629277_ (gx#syntax-e _e92599269_)))
                      (let ((_hd92639280_ (##car _e92629277_))
                            (_tl92649282_ (##cdr _e92629277_)))
                        (if (gx#stx-pair? _tl92649282_)
                            (let ((_e92659285_ (gx#syntax-e _tl92649282_)))
                              (let ((_hd92669288_ (##car _e92659285_))
                                    (_tl92679290_ (##cdr _e92659285_)))
                                (let ((_e9293_ _hd92669288_))
                                  (if (gx#stx-null? _tl92679290_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e9293_)
                                                       '()))
                                           (gx#stx-source _stx9258_))
                                          (_E92619273_))
                                      (_E92619273_)))))
                            (_E92619273_))))
                    (_E92619273_)))))
        (_E92609295_))))
  (define gx#core-expand-call%
    (lambda (_stx9215_)
      (let* ((_e92169226_ _stx9215_)
             (_E92189230_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92169226_)))
             (_E92179254_
              (lambda ()
                (if (gx#stx-pair? _e92169226_)
                    (let ((_e92199234_ (gx#syntax-e _e92169226_)))
                      (let ((_hd92209237_ (##car _e92199234_))
                            (_tl92219239_ (##cdr _e92199234_)))
                        (if (gx#stx-pair? _tl92219239_)
                            (let ((_e92229242_ (gx#syntax-e _tl92219239_)))
                              (let ((_hd92239245_ (##car _e92229242_))
                                    (_tl92249247_ (##cdr _e92229242_)))
                                (let* ((_rator9250_ _hd92239245_)
                                       (_args9252_ _tl92249247_))
                                  (if (gx#stx-list? _args9252_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator9250_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args9252_))
                                       (gx#stx-source _stx9215_))
                                      (_E92189230_)))))
                            (_E92189230_))))
                    (_E92189230_)))))
        (_E92179254_))))
  (define gx#core-expand-if%
    (lambda (_stx9148_)
      (let* ((_e91499165_ _stx9148_)
             (_E91519169_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91499165_)))
             (_E91509211_
              (lambda ()
                (if (gx#stx-pair? _e91499165_)
                    (let ((_e91529173_ (gx#syntax-e _e91499165_)))
                      (let ((_hd91539176_ (##car _e91529173_))
                            (_tl91549178_ (##cdr _e91529173_)))
                        (if (gx#stx-pair? _tl91549178_)
                            (let ((_e91559181_ (gx#syntax-e _tl91549178_)))
                              (let ((_hd91569184_ (##car _e91559181_))
                                    (_tl91579186_ (##cdr _e91559181_)))
                                (let ((_test9189_ _hd91569184_))
                                  (if (gx#stx-pair? _tl91579186_)
                                      (let ((_e91589191_
                                             (gx#syntax-e _tl91579186_)))
                                        (let ((_hd91599194_
                                               (##car _e91589191_))
                                              (_tl91609196_
                                               (##cdr _e91589191_)))
                                          (let ((_K9199_ _hd91599194_))
                                            (if (gx#stx-pair? _tl91609196_)
                                                (let ((_e91619201_
                                                       (gx#syntax-e
                                                        _tl91609196_)))
                                                  (let ((_hd91629204_
                                                         (##car _e91619201_))
                                                        (_tl91639206_
                                                         (##cdr _e91619201_)))
                                                    (let ((_E9209_ _hd91629204_))
                                                      (if (gx#stx-null?
                                                           _tl91639206_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test9189_)
                                   (cons (gx#core-expand-expression _K9199_)
                                         (cons (gx#core-expand-expression
                                                _E9209_)
                                               '()))))
                       (gx#stx-source _stx9148_))
                      (_E91519169_))
                  (_E91519169_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E91519169_)))))
                                      (_E91519169_)))))
                            (_E91519169_))))
                    (_E91519169_)))))
        (_E91509211_))))
  (define gx#core-expand-ref%
    (lambda (_stx9107_)
      (let* ((_e91089118_ _stx9107_)
             (_E91109122_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91089118_)))
             (_E91099144_
              (lambda ()
                (if (gx#stx-pair? _e91089118_)
                    (let ((_e91119126_ (gx#syntax-e _e91089118_)))
                      (let ((_hd91129129_ (##car _e91119126_))
                            (_tl91139131_ (##cdr _e91119126_)))
                        (if (gx#stx-pair? _tl91139131_)
                            (let ((_e91149134_ (gx#syntax-e _tl91139131_)))
                              (let ((_hd91159137_ (##car _e91149134_))
                                    (_tl91169139_ (##cdr _e91149134_)))
                                (let ((_id9142_ _hd91159137_))
                                  (if (gx#stx-null? _tl91169139_)
                                      (if (gx#core-runtime-ref? _id9142_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id9142_
                                                        _stx9107_)
                                                       '()))
                                           (gx#stx-source _stx9107_))
                                          (_E91109122_))
                                      (_E91109122_)))))
                            (_E91109122_))))
                    (_E91109122_)))))
        (_E91099144_))))
  (define gx#core-expand-setq%
    (lambda (_stx9053_)
      (let* ((_e90549067_ _stx9053_)
             (_E90569071_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e90549067_)))
             (_E90559103_
              (lambda ()
                (if (gx#stx-pair? _e90549067_)
                    (let ((_e90579075_ (gx#syntax-e _e90549067_)))
                      (let ((_hd90589078_ (##car _e90579075_))
                            (_tl90599080_ (##cdr _e90579075_)))
                        (if (gx#stx-pair? _tl90599080_)
                            (let ((_e90609083_ (gx#syntax-e _tl90599080_)))
                              (let ((_hd90619086_ (##car _e90609083_))
                                    (_tl90629088_ (##cdr _e90609083_)))
                                (let ((_id9091_ _hd90619086_))
                                  (if (gx#stx-pair? _tl90629088_)
                                      (let ((_e90639093_
                                             (gx#syntax-e _tl90629088_)))
                                        (let ((_hd90649096_
                                               (##car _e90639093_))
                                              (_tl90659098_
                                               (##cdr _e90639093_)))
                                          (let ((_expr9101_ _hd90649096_))
                                            (if (gx#stx-null? _tl90659098_)
                                                (if (gx#core-runtime-ref?
                                                     _id9091_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id9091_
                          _stx9053_)
                         (cons (gx#core-expand-expression _expr9101_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx9053_))
                                                    (_E90569071_))
                                                (_E90569071_)))))
                                      (_E90569071_)))))
                            (_E90569071_))))
                    (_E90569071_)))))
        (_E90559103_))))
  (define gx#macro-expand-extern
    (lambda (_stx8901_)
      (letrec ((_generate8903_
                (lambda (_body8933_)
                  (let _lp8935_ ((_rest8937_ _body8933_)
                                 (_ns8938_ (gx#core-context-namespace__0))
                                 (_r8939_ '()))
                    (let* ((_e89408955_ _rest8937_)
                           (_E89538959_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e89408955_)))
                           (_E89498963_
                            (lambda ()
                              (if (gx#stx-null? _e89408955_)
                                  (if '#t (reverse _r8939_) (_E89538959_))
                                  (_E89538959_))))
                           (_E89429020_
                            (lambda ()
                              (if (gx#stx-pair? _e89408955_)
                                  (let ((_e89508967_
                                         (gx#syntax-e _e89408955_)))
                                    (let ((_hd89518970_ (##car _e89508967_))
                                          (_tl89528972_ (##cdr _e89508967_)))
                                      (let* ((_hd8975_ _hd89518970_)
                                             (_rest8977_ _tl89528972_))
                                        (if '#t
                                            (if (gx#identifier? _hd8975_)
                                                (_lp8935_
                                                 _rest8977_
                                                 _ns8938_
                                                 (cons (cons _hd8975_
                                                             (cons (if _ns8938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd8975_
                                _ns8938_
                                '"#"
                                _hd8975_)
                               _hd8975_)
                           '()))
               _r8939_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e89788988_ _hd8975_)
                                                       (_E89808992_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e89788988_)))
                                                       (_E89799016_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e89788988_)
                                                              (let ((_e89818996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e89788988_)))
                        (let ((_hd89828999_ (##car _e89818996_))
                              (_tl89839001_ (##cdr _e89818996_)))
                          (let ((_id9004_ _hd89828999_))
                            (if (gx#stx-pair? _tl89839001_)
                                (let ((_e89849006_ (gx#syntax-e _tl89839001_)))
                                  (let ((_hd89859009_ (##car _e89849006_))
                                        (_tl89869011_ (##cdr _e89849006_)))
                                    (let ((_eid9014_ _hd89859009_))
                                      (if (gx#stx-null? _tl89869011_)
                                          (if (if (gx#identifier? _id9004_)
                                                  (gx#identifier? _eid9014_)
                                                  '#f)
                                              (_lp8935_
                                               _rest8977_
                                               _ns8938_
                                               (cons (cons _id9004_
                                                           (cons _eid9014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r8939_))
                                              (_E89808992_))
                                          (_E89808992_)))))
                                (_E89808992_)))))
                      (_E89808992_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E89799016_)))
                                            (_E89498963_)))))
                                  (_E89498963_))))
                           (_E89419049_
                            (lambda ()
                              (if (gx#stx-pair? _e89408955_)
                                  (let ((_e89439024_
                                         (gx#syntax-e _e89408955_)))
                                    (let ((_hd89449027_ (##car _e89439024_))
                                          (_tl89459029_ (##cdr _e89439024_)))
                                      (if (eq? (gx#stx-e _hd89449027_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl89459029_)
                                              (let ((_e89469032_
                                                     (gx#syntax-e
                                                      _tl89459029_)))
                                                (let ((_hd89479035_
                                                       (##car _e89469032_))
                                                      (_tl89489037_
                                                       (##cdr _e89469032_)))
                                                  (let* ((_ns9040_
                                                          _hd89479035_)
                                                         (_rest9042_
                                                          _tl89489037_))
                                                    (if '#t
                                                        (let ((_ns9047_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns9040_)
                           (symbol->string (gx#stx-e _ns9040_))
                           (if (let ((_$e9044_ (gx#stx-string? _ns9040_)))
                                 (if _$e9044_
                                     _$e9044_
                                     (gx#stx-false? _ns9040_)))
                               (gx#stx-e _ns9040_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx8901_
                                _ns9040_)))))
                  (_lp8935_ _rest9042_ _ns9047_ _r8939_))
                (_E89429020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E89429020_))
                                          (_E89429020_))))
                                  (_E89429020_)))))
                      (_E89419049_))))))
        (let* ((_e89048911_ _stx8901_)
               (_E89068915_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e89048911_)))
               (_E89058929_
                (lambda ()
                  (if (gx#stx-pair? _e89048911_)
                      (let ((_e89078919_ (gx#syntax-e _e89048911_)))
                        (let ((_hd89088922_ (##car _e89078919_))
                              (_tl89098924_ (##cdr _e89078919_)))
                          (let ((_body8927_ _tl89098924_))
                            (if (gx#stx-list? _body8927_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate8903_ _body8927_))
                                (_E89068915_)))))
                      (_E89068915_)))))
          (_E89058929_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx8847_)
      (let* ((_e88488861_ _stx8847_)
             (_E88508865_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88488861_)))
             (_E88498897_
              (lambda ()
                (if (gx#stx-pair? _e88488861_)
                    (let ((_e88518869_ (gx#syntax-e _e88488861_)))
                      (let ((_hd88528872_ (##car _e88518869_))
                            (_tl88538874_ (##cdr _e88518869_)))
                        (if (gx#stx-pair? _tl88538874_)
                            (let ((_e88548877_ (gx#syntax-e _tl88538874_)))
                              (let ((_hd88558880_ (##car _e88548877_))
                                    (_tl88568882_ (##cdr _e88548877_)))
                                (let ((_hd8885_ _hd88558880_))
                                  (if (gx#stx-pair? _tl88568882_)
                                      (let ((_e88578887_
                                             (gx#syntax-e _tl88568882_)))
                                        (let ((_hd88588890_
                                               (##car _e88578887_))
                                              (_tl88598892_
                                               (##cdr _e88578887_)))
                                          (let ((_expr8895_ _hd88588890_))
                                            (if (gx#stx-null? _tl88598892_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd8885_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd8885_)
                        (cons _expr8895_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E88508865_))
                                                (_E88508865_)))))
                                      (_E88508865_)))))
                            (_E88508865_))))
                    (_E88508865_)))))
        (_E88498897_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx8793_)
      (let* ((_e87948807_ _stx8793_)
             (_E87968811_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87948807_)))
             (_E87958843_
              (lambda ()
                (if (gx#stx-pair? _e87948807_)
                    (let ((_e87978815_ (gx#syntax-e _e87948807_)))
                      (let ((_hd87988818_ (##car _e87978815_))
                            (_tl87998820_ (##cdr _e87978815_)))
                        (if (gx#stx-pair? _tl87998820_)
                            (let ((_e88008823_ (gx#syntax-e _tl87998820_)))
                              (let ((_hd88018826_ (##car _e88008823_))
                                    (_tl88028828_ (##cdr _e88008823_)))
                                (let ((_hd8831_ _hd88018826_))
                                  (if (gx#stx-pair? _tl88028828_)
                                      (let ((_e88038833_
                                             (gx#syntax-e _tl88028828_)))
                                        (let ((_hd88048836_
                                               (##car _e88038833_))
                                              (_tl88058838_
                                               (##cdr _e88038833_)))
                                          (let ((_expr8841_ _hd88048836_))
                                            (if (gx#stx-null? _tl88058838_)
                                                (if (gx#identifier? _hd8831_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd8831_
                                                                (cons _expr8841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87968811_))
                                                (_E87968811_)))))
                                      (_E87968811_)))))
                            (_E87968811_))))
                    (_E87968811_)))))
        (_E87958843_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx8739_)
      (let* ((_e87408753_ _stx8739_)
             (_E87428757_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87408753_)))
             (_E87418789_
              (lambda ()
                (if (gx#stx-pair? _e87408753_)
                    (let ((_e87438761_ (gx#syntax-e _e87408753_)))
                      (let ((_hd87448764_ (##car _e87438761_))
                            (_tl87458766_ (##cdr _e87438761_)))
                        (if (gx#stx-pair? _tl87458766_)
                            (let ((_e87468769_ (gx#syntax-e _tl87458766_)))
                              (let ((_hd87478772_ (##car _e87468769_))
                                    (_tl87488774_ (##cdr _e87468769_)))
                                (let ((_id8777_ _hd87478772_))
                                  (if (gx#stx-pair? _tl87488774_)
                                      (let ((_e87498779_
                                             (gx#syntax-e _tl87488774_)))
                                        (let ((_hd87508782_
                                               (##car _e87498779_))
                                              (_tl87518784_
                                               (##cdr _e87498779_)))
                                          (let ((_alias-id8787_ _hd87508782_))
                                            (if (gx#stx-null? _tl87518784_)
                                                (if (if (gx#identifier?
                                                         _id8777_)
                                                        (gx#identifier?
                                                         _alias-id8787_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id8777_
                                                                (cons _alias-id8787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87428757_))
                                                (_E87428757_)))))
                                      (_E87428757_)))))
                            (_E87428757_))))
                    (_E87428757_)))))
        (_E87418789_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx8696_)
      (let* ((_e86978707_ _stx8696_)
             (_E86998711_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e86978707_)))
             (_E86988735_
              (lambda ()
                (if (gx#stx-pair? _e86978707_)
                    (let ((_e87008715_ (gx#syntax-e _e86978707_)))
                      (let ((_hd87018718_ (##car _e87008715_))
                            (_tl87028720_ (##cdr _e87008715_)))
                        (if (gx#stx-pair? _tl87028720_)
                            (let ((_e87038723_ (gx#syntax-e _tl87028720_)))
                              (let ((_hd87048726_ (##car _e87038723_))
                                    (_tl87058728_ (##cdr _e87038723_)))
                                (let* ((_hd8731_ _hd87048726_)
                                       (_body8733_ _tl87058728_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd8731_)
                                          (if (gx#stx-list? _body8733_)
                                              (not (gx#stx-null? _body8733_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd8731_)
                                       _body8733_)
                                      (_E86998711_)))))
                            (_E86998711_))))
                    (_E86998711_)))))
        (_E86988735_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx8632_)
      (letrec ((_generate8634_
                (lambda (_clause8664_)
                  (let* ((_e86658672_ _clause8664_)
                         (_E86678676_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx8632_
                             _clause8664_)))
                         (_E86668692_
                          (lambda ()
                            (if (gx#stx-pair? _e86658672_)
                                (let ((_e86688680_ (gx#syntax-e _e86658672_)))
                                  (let ((_hd86698683_ (##car _e86688680_))
                                        (_tl86708685_ (##cdr _e86688680_)))
                                    (let* ((_hd8688_ _hd86698683_)
                                           (_body8690_ _tl86708685_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd8688_)
                                              (if (gx#stx-list? _body8690_)
                                                  (not (gx#stx-null?
                                                        _body8690_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd8688_)
                                                 _body8690_)
                                           (gx#stx-source _clause8664_))
                                          (_E86678676_)))))
                                (_E86678676_)))))
                    (_E86668692_)))))
        (let* ((_e86358642_ _stx8632_)
               (_E86378646_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e86358642_)))
               (_E86368660_
                (lambda ()
                  (if (gx#stx-pair? _e86358642_)
                      (let ((_e86388650_ (gx#syntax-e _e86358642_)))
                        (let ((_hd86398653_ (##car _e86388650_))
                              (_tl86408655_ (##cdr _e86388650_)))
                          (let ((_clauses8658_ _tl86408655_))
                            (if (gx#stx-list? _clauses8658_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate8634_ _clauses8658_))
                                (_E86378646_)))))
                      (_E86378646_)))))
          (_E86368660_)))))
  (begin
    (define gx#macro-expand-let-values__%
      (lambda (_stx8533_ _form8534_)
        (letrec ((_generate8536_
                  (lambda (_bind8579_)
                    (let* ((_e85808590_ _bind8579_)
                           (_E85828594_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx8533_
                               _bind8579_)))
                           (_E85818618_
                            (lambda ()
                              (if (gx#stx-pair? _e85808590_)
                                  (let ((_e85838598_
                                         (gx#syntax-e _e85808590_)))
                                    (let ((_hd85848601_ (##car _e85838598_))
                                          (_tl85858603_ (##cdr _e85838598_)))
                                      (let ((_ids8606_ _hd85848601_))
                                        (if (gx#stx-pair? _tl85858603_)
                                            (let ((_e85868608_
                                                   (gx#syntax-e _tl85858603_)))
                                              (let ((_hd85878611_
                                                     (##car _e85868608_))
                                                    (_tl85888613_
                                                     (##cdr _e85868608_)))
                                                (let ((_expr8616_
                                                       _hd85878611_))
                                                  (if (gx#stx-null?
                                                       _tl85888613_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids8606_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids8606_)
                        (cons _expr8616_ '()))
                  (_E85828594_))
              (_E85828594_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E85828594_)))))
                                  (_E85828594_)))))
                      (_E85818618_)))))
          (let* ((_e85378547_ _stx8533_)
                 (_E85398551_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e85378547_)))
                 (_E85388575_
                  (lambda ()
                    (if (gx#stx-pair? _e85378547_)
                        (let ((_e85408555_ (gx#syntax-e _e85378547_)))
                          (let ((_hd85418558_ (##car _e85408555_))
                                (_tl85428560_ (##cdr _e85408555_)))
                            (if (gx#stx-pair? _tl85428560_)
                                (let ((_e85438563_ (gx#syntax-e _tl85428560_)))
                                  (let ((_hd85448566_ (##car _e85438563_))
                                        (_tl85458568_ (##cdr _e85438563_)))
                                    (let* ((_hd8571_ _hd85448566_)
                                           (_body8573_ _tl85458568_))
                                      (if (if (gx#stx-list? _hd8571_)
                                              (if (gx#stx-list? _body8573_)
                                                  (not (gx#stx-null?
                                                        _body8573_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form8534_
                                           (gx#stx-map1
                                            _generate8536_
                                            _hd8571_)
                                           _body8573_)
                                          (_E85398551_)))))
                                (_E85398551_))))
                        (_E85398551_)))))
            (_E85388575_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx8625_)
          (let ((_form8627_ '%#let-values))
            (gx#macro-expand-let-values__% _stx8625_ _form8627_))))
      (define gx#macro-expand-let-values
        (lambda _g11022_
          (let ((_g11021_ (length _g11022_)))
            (cond ((##fx= _g11021_ 1)
                   (apply gx#macro-expand-let-values__0 _g11022_))
                  ((##fx= _g11021_ 2)
                   (apply gx#macro-expand-let-values__% _g11022_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g11022_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx8530_)
      (gx#macro-expand-let-values__% _stx8530_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx8528_)
      (gx#macro-expand-let-values__% _stx8528_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx8419_)
      (let* ((_e84208446_ _stx8419_)
             (_E84328450_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84208446_)))
             (_E84228492_
              (lambda ()
                (if (gx#stx-pair? _e84208446_)
                    (let ((_e84338454_ (gx#syntax-e _e84208446_)))
                      (let ((_hd84348457_ (##car _e84338454_))
                            (_tl84358459_ (##cdr _e84338454_)))
                        (if (gx#stx-pair? _tl84358459_)
                            (let ((_e84368462_ (gx#syntax-e _tl84358459_)))
                              (let ((_hd84378465_ (##car _e84368462_))
                                    (_tl84388467_ (##cdr _e84368462_)))
                                (let ((_test8470_ _hd84378465_))
                                  (if (gx#stx-pair? _tl84388467_)
                                      (let ((_e84398472_
                                             (gx#syntax-e _tl84388467_)))
                                        (let ((_hd84408475_
                                               (##car _e84398472_))
                                              (_tl84418477_
                                               (##cdr _e84398472_)))
                                          (let ((_K8480_ _hd84408475_))
                                            (if (gx#stx-pair? _tl84418477_)
                                                (let ((_e84428482_
                                                       (gx#syntax-e
                                                        _tl84418477_)))
                                                  (let ((_hd84438485_
                                                         (##car _e84428482_))
                                                        (_tl84448487_
                                                         (##cdr _e84428482_)))
                                                    (let ((_E8490_ _hd84438485_))
                                                      (if (gx#stx-null?
                                                           _tl84448487_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test8470_
                                                               _K8480_
                                                               _E8490_)
                                                              (_E84328450_))
                                                          (_E84328450_)))))
                                                (_E84328450_)))))
                                      (_E84328450_)))))
                            (_E84328450_))))
                    (_E84328450_))))
             (_E84218524_
              (lambda ()
                (if (gx#stx-pair? _e84208446_)
                    (let ((_e84238496_ (gx#syntax-e _e84208446_)))
                      (let ((_hd84248499_ (##car _e84238496_))
                            (_tl84258501_ (##cdr _e84238496_)))
                        (if (gx#stx-pair? _tl84258501_)
                            (let ((_e84268504_ (gx#syntax-e _tl84258501_)))
                              (let ((_hd84278507_ (##car _e84268504_))
                                    (_tl84288509_ (##cdr _e84268504_)))
                                (let ((_test8512_ _hd84278507_))
                                  (if (gx#stx-pair? _tl84288509_)
                                      (let ((_e84298514_
                                             (gx#syntax-e _tl84288509_)))
                                        (let ((_hd84308517_
                                               (##car _e84298514_))
                                              (_tl84318519_
                                               (##cdr _e84298514_)))
                                          (let ((_K8522_ _hd84308517_))
                                            (if (gx#stx-null? _tl84318519_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test8512_
                                                     _K8522_
                                                     '#!void)
                                                    (_E84228492_))
                                                (_E84228492_)))))
                                      (_E84228492_)))))
                            (_E84228492_))))
                    (_E84228492_)))))
        (_E84218524_))))
  (define gx#free-identifier=?
    (lambda (_xid8407_ _yid8408_)
      (let ((_xe8410_ (gx#resolve-identifier__0 _xid8407_))
            (_ye8411_ (gx#resolve-identifier__0 _yid8408_)))
        (if (if _xe8410_ _ye8411_ '#f)
            (let ((_$e8413_ (eq? _xe8410_ _ye8411_)))
              (if _$e8413_
                  _$e8413_
                  (if (##structure-instance-of? _xe8410_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye8411_ 'gx#binding::t)
                          (eq? (##structure-ref _xe8410_ '1 gx#binding::t '#f)
                               (##structure-ref _ye8411_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e8416_ _xe8410_)) (if _$e8416_ _$e8416_ _ye8411_))
                '#f
                (gx#stx-eq? _xid8407_ _yid8408_))))))
  (define gx#bound-identifier=?
    (lambda (_xid8391_ _yid8392_)
      (letrec ((_context8394_
                (lambda (_e8405_)
                  (if (##structure-direct-instance-of?
                       _e8405_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e8405_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks8395_
                (lambda (_e8403_)
                  (if (symbol? _e8403_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e8403_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e8403_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e8403_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap8396_
                (lambda (_e8401_)
                  (if (symbol? _e8401_)
                      _e8401_
                      (gx#syntax-local-unwrap _e8401_)))))
        (let ((_x8398_ (_unwrap8396_ _xid8391_))
              (_y8399_ (_unwrap8396_ _yid8392_)))
          (if (gx#stx-eq? _x8398_ _y8399_)
              (if (eq? (_context8394_ _x8398_) (_context8394_ _y8399_))
                  (equal? (_marks8395_ _x8398_) (_marks8395_ _y8399_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx8389_)
      (if (gx#identifier? _stx8389_) (gx#core-identifier=? _stx8389_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx8387_)
      (if (gx#identifier? _stx8387_)
          (gx#core-identifier=? _stx8387_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x8385_)
      (if (gx#identifier? _x8385_)
          (if (not (gx#underscore? _x8385_)) _x8385_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx8331_ _where8332_)
        (let _lp8334_ ((_rest8336_ (gx#syntax->list _stx8331_)))
          (let* ((_rest83378345_ _rest8336_)
                 (_else83398353_ (lambda () '#t))
                 (_K83418363_
                  (lambda (_rest8356_ _hd8357_)
                    (if (not (gx#identifier? _hd8357_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where8332_
                         _hd8357_)
                        (if (find (lambda (_g83588360_)
                                    (gx#bound-identifier=?
                                     _g83588360_
                                     _hd8357_))
                                  _rest8356_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where8332_
                             _hd8357_)
                            (_lp8334_ _rest8356_))))))
            (if (##pair? _rest83378345_)
                (let ((_hd83428366_ (##car _rest83378345_))
                      (_tl83438368_ (##cdr _rest83378345_)))
                  (let* ((_hd8371_ _hd83428366_) (_rest8373_ _tl83438368_))
                    (_K83418363_ _rest8373_ _hd8371_)))
                (_else83398353_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx8378_)
          (let ((_where8380_ _stx8378_))
            (gx#check-duplicate-identifiers__% _stx8378_ _where8380_))))
      (define gx#check-duplicate-identifiers
        (lambda _g11024_
          (let ((_g11023_ (length _g11024_)))
            (cond ((##fx= _g11023_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g11024_))
                  ((##fx= _g11023_ 2)
                   (apply gx#check-duplicate-identifiers__% _g11024_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g11024_))))))))
  (define gx#core-bind-values?
    (lambda (_stx8323_)
      (gx#stx-andmap
       (lambda (_x8325_)
         (let ((_$e8327_ (gx#identifier? _x8325_)))
           (if _$e8327_ _$e8327_ (gx#stx-false? _x8325_))))
       _stx8323_)))
  (begin
    (define gx#core-bind-values!__%
      (lambda (_stx8287_ _rebind?8288_ _phi8289_ _ctx8290_)
        (gx#stx-for-each1
         (lambda (_id8292_)
           (if (gx#identifier? _id8292_)
               (gx#core-bind-runtime!__%
                _id8292_
                _rebind?8288_
                _phi8289_
                _ctx8290_)
               '#!void))
         _stx8287_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx8297_)
          (let* ((_rebind?8299_ '#f)
                 (_phi8301_ (gx#current-expander-phi))
                 (_ctx8303_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8297_
             _rebind?8299_
             _phi8301_
             _ctx8303_))))
      (define gx#core-bind-values!__1
        (lambda (_stx8305_ _rebind?8306_)
          (let* ((_phi8308_ (gx#current-expander-phi))
                 (_ctx8310_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8305_
             _rebind?8306_
             _phi8308_
             _ctx8310_))))
      (define gx#core-bind-values!__2
        (lambda (_stx8312_ _rebind?8313_ _phi8314_)
          (let ((_ctx8316_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8312_
             _rebind?8313_
             _phi8314_
             _ctx8316_))))
      (define gx#core-bind-values!
        (lambda _g11026_
          (let ((_g11025_ (length _g11026_)))
            (cond ((##fx= _g11025_ 1) (apply gx#core-bind-values!__0 _g11026_))
                  ((##fx= _g11025_ 2) (apply gx#core-bind-values!__1 _g11026_))
                  ((##fx= _g11025_ 3) (apply gx#core-bind-values!__2 _g11026_))
                  ((##fx= _g11025_ 4) (apply gx#core-bind-values!__% _g11026_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g11026_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx8282_)
      (gx#stx-map1
       (lambda (_x8284_)
         (if (gx#identifier? _x8284_) (gx#core-quote-syntax__0 _x8284_) '#f))
       _stx8282_)))
  (define gx#core-runtime-ref?
    (lambda (_stx8275_)
      (if (gx#identifier? _stx8275_)
          (let* ((_bind8277_ (gx#resolve-identifier__0 _stx8275_))
                 (_$e8279_ (not _bind8277_)))
            (if _$e8279_
                _$e8279_
                (##structure-instance-of? _bind8277_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id8267_ _form8268_)
      (let ((_bind8270_ (gx#resolve-identifier__0 _id8267_)))
        (if (##structure-instance-of? _bind8270_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id8267_)
            (if (not _bind8270_)
                (if (let ((_$e8272_
                           (gx#core-context-rebind?__%
                            (gx#core-context-top__0))))
                      (if _$e8272_
                          _$e8272_
                          (gx#core-extern-symbol? (gx#stx-e _id8267_))))
                    (gx#core-quote-syntax__0 _id8267_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form8268_
                     _id8267_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form8268_
                 _id8267_))))))
  (begin
    (define gx#core-bind-runtime!__%
      (lambda (_id8226_ _rebind?8227_ _phi8228_ _ctx8229_)
        (let* ((_key8231_ (gx#core-identifier-key _id8226_))
               (_eid8233_
                (gx#make-binding-id__% _key8231_ '#f _phi8228_ _ctx8229_))
               (_bind8235_
                (if (##structure-instance-of? _ctx8229_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid8233_
                     _key8231_
                     _phi8228_
                     _ctx8229_)
                    (if (##structure-instance-of? _ctx8229_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid8233_
                         _key8231_
                         _phi8228_)
                        (if (##structure-instance-of?
                             _ctx8229_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid8233_
                             _key8231_
                             _phi8228_)
                            (##structure
                             gx#runtime-binding::t
                             _eid8233_
                             _key8231_
                             _phi8228_))))))
          (gx#bind-identifier!__%
           _id8226_
           _bind8235_
           _rebind?8227_
           _phi8228_
           _ctx8229_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id8241_)
          (let* ((_rebind?8243_ '#f)
                 (_phi8245_ (gx#current-expander-phi))
                 (_ctx8247_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8241_
             _rebind?8243_
             _phi8245_
             _ctx8247_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id8249_ _rebind?8250_)
          (let* ((_phi8252_ (gx#current-expander-phi))
                 (_ctx8254_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8249_
             _rebind?8250_
             _phi8252_
             _ctx8254_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id8256_ _rebind?8257_ _phi8258_)
          (let ((_ctx8260_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8256_
             _rebind?8257_
             _phi8258_
             _ctx8260_))))
      (define gx#core-bind-runtime!
        (lambda _g11028_
          (let ((_g11027_ (length _g11028_)))
            (cond ((##fx= _g11027_ 1)
                   (apply gx#core-bind-runtime!__0 _g11028_))
                  ((##fx= _g11027_ 2)
                   (apply gx#core-bind-runtime!__1 _g11028_))
                  ((##fx= _g11027_ 3)
                   (apply gx#core-bind-runtime!__2 _g11028_))
                  ((##fx= _g11027_ 4)
                   (apply gx#core-bind-runtime!__% _g11028_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g11028_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id8181_ _eid8182_ _rebind?8183_ _phi8184_ _ctx8185_)
        (let* ((_key8187_ (gx#core-identifier-key _id8181_))
               (_bind8189_
                (if (##structure-instance-of? _ctx8185_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid8182_
                     _key8187_
                     _phi8184_
                     _ctx8185_)
                    (if (##structure-instance-of? _ctx8185_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid8182_
                         _key8187_
                         _phi8184_)
                        (##structure
                         gx#runtime-binding::t
                         _eid8182_
                         _key8187_
                         _phi8184_)))))
          (gx#bind-identifier!__%
           _id8181_
           _bind8189_
           _rebind?8183_
           _phi8184_
           _ctx8185_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id8195_ _eid8196_)
          (let* ((_rebind?8198_ '#f)
                 (_phi8200_ (gx#current-expander-phi))
                 (_ctx8202_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8195_
             _eid8196_
             _rebind?8198_
             _phi8200_
             _ctx8202_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id8204_ _eid8205_ _rebind?8206_)
          (let* ((_phi8208_ (gx#current-expander-phi))
                 (_ctx8210_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8204_
             _eid8205_
             _rebind?8206_
             _phi8208_
             _ctx8210_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id8212_ _eid8213_ _rebind?8214_ _phi8215_)
          (let ((_ctx8217_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8212_
             _eid8213_
             _rebind?8214_
             _phi8215_
             _ctx8217_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g11030_
          (let ((_g11029_ (length _g11030_)))
            (cond ((##fx= _g11029_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g11030_))
                  ((##fx= _g11029_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g11030_))
                  ((##fx= _g11029_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g11030_))
                  ((##fx= _g11029_ 5)
                   (apply gx#core-bind-runtime-reference!__% _g11030_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g11030_))))))))
  (begin
    (define gx#core-bind-extern!__%
      (lambda (_id8141_ _eid8142_ _rebind?8143_ _phi8144_ _ctx8145_)
        (gx#bind-identifier!__%
         _id8141_
         (##structure
          gx#extern-binding::t
          _eid8142_
          (gx#core-identifier-key _id8141_)
          _phi8144_)
         _rebind?8143_
         _phi8144_
         _ctx8145_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id8150_ _eid8151_)
          (let* ((_rebind?8153_ '#f)
                 (_phi8155_ (gx#current-expander-phi))
                 (_ctx8157_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8150_
             _eid8151_
             _rebind?8153_
             _phi8155_
             _ctx8157_))))
      (define gx#core-bind-extern!__1
        (lambda (_id8159_ _eid8160_ _rebind?8161_)
          (let* ((_phi8163_ (gx#current-expander-phi))
                 (_ctx8165_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8159_
             _eid8160_
             _rebind?8161_
             _phi8163_
             _ctx8165_))))
      (define gx#core-bind-extern!__2
        (lambda (_id8167_ _eid8168_ _rebind?8169_ _phi8170_)
          (let ((_ctx8172_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8167_
             _eid8168_
             _rebind?8169_
             _phi8170_
             _ctx8172_))))
      (define gx#core-bind-extern!
        (lambda _g11032_
          (let ((_g11031_ (length _g11032_)))
            (cond ((##fx= _g11031_ 2) (apply gx#core-bind-extern!__0 _g11032_))
                  ((##fx= _g11031_ 3) (apply gx#core-bind-extern!__1 _g11032_))
                  ((##fx= _g11031_ 4) (apply gx#core-bind-extern!__2 _g11032_))
                  ((##fx= _g11031_ 5) (apply gx#core-bind-extern!__% _g11032_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g11032_))))))))
  (begin
    (define gx#core-bind-syntax!__%
      (lambda (_id8095_ _e8096_ _rebind?8097_ _phi8098_ _ctx8099_)
        (gx#bind-identifier!__%
         _id8095_
         (let ((_key8104_ (gx#core-identifier-key _id8095_))
               (_e8105_ (if (let ((_$e8101_
                                   (##structure-instance-of?
                                    _e8096_
                                    'gx#expander::t)))
                              (if _$e8101_
                                  _$e8101_
                                  (##structure-instance-of?
                                   _e8096_
                                   'gx#expander-context::t)))
                            _e8096_
                            (##structure
                             gx#user-expander::t
                             _e8096_
                             _ctx8099_
                             _phi8098_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key8104_ '#t _phi8098_ _ctx8099_)
            _key8104_
            _phi8098_
            _e8105_))
         _rebind?8097_
         _phi8098_
         _ctx8099_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id8110_ _e8111_)
          (let* ((_rebind?8113_ '#f)
                 (_phi8115_ (gx#current-expander-phi))
                 (_ctx8117_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8110_
             _e8111_
             _rebind?8113_
             _phi8115_
             _ctx8117_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id8119_ _e8120_ _rebind?8121_)
          (let* ((_phi8123_ (gx#current-expander-phi))
                 (_ctx8125_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8119_
             _e8120_
             _rebind?8121_
             _phi8123_
             _ctx8125_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id8127_ _e8128_ _rebind?8129_ _phi8130_)
          (let ((_ctx8132_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8127_
             _e8128_
             _rebind?8129_
             _phi8130_
             _ctx8132_))))
      (define gx#core-bind-syntax!
        (lambda _g11034_
          (let ((_g11033_ (length _g11034_)))
            (cond ((##fx= _g11033_ 2) (apply gx#core-bind-syntax!__0 _g11034_))
                  ((##fx= _g11033_ 3) (apply gx#core-bind-syntax!__1 _g11034_))
                  ((##fx= _g11033_ 4) (apply gx#core-bind-syntax!__2 _g11034_))
                  ((##fx= _g11033_ 5) (apply gx#core-bind-syntax!__% _g11034_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g11034_))))))))
  (begin
    (define gx#core-bind-root-syntax!__%
      (lambda (_id8078_ _e8079_ _rebind?8080_)
        (gx#core-bind-syntax!__%
         _id8078_
         _e8079_
         _rebind?8080_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id8085_ _e8086_)
          (let ((_rebind?8088_ '#f))
            (gx#core-bind-root-syntax!__% _id8085_ _e8086_ _rebind?8088_))))
      (define gx#core-bind-root-syntax!
        (lambda _g11036_
          (let ((_g11035_ (length _g11036_)))
            (cond ((##fx= _g11035_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g11036_))
                  ((##fx= _g11035_ 3)
                   (apply gx#core-bind-root-syntax!__% _g11036_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g11036_))))))))
  (begin
    (define gx#core-bind-alias!__%
      (lambda (_id8036_ _alias-id8037_ _rebind?8038_ _phi8039_ _ctx8040_)
        (gx#bind-identifier!__%
         _id8036_
         (let ((_key8042_ (gx#core-identifier-key _id8036_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key8042_ '#t _phi8039_ _ctx8040_)
            _key8042_
            _phi8039_
            _alias-id8037_))
         _rebind?8038_
         _phi8039_
         _ctx8040_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id8047_ _alias-id8048_)
          (let* ((_rebind?8050_ '#f)
                 (_phi8052_ (gx#current-expander-phi))
                 (_ctx8054_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8047_
             _alias-id8048_
             _rebind?8050_
             _phi8052_
             _ctx8054_))))
      (define gx#core-bind-alias!__1
        (lambda (_id8056_ _alias-id8057_ _rebind?8058_)
          (let* ((_phi8060_ (gx#current-expander-phi))
                 (_ctx8062_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8056_
             _alias-id8057_
             _rebind?8058_
             _phi8060_
             _ctx8062_))))
      (define gx#core-bind-alias!__2
        (lambda (_id8064_ _alias-id8065_ _rebind?8066_ _phi8067_)
          (let ((_ctx8069_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8064_
             _alias-id8065_
             _rebind?8066_
             _phi8067_
             _ctx8069_))))
      (define gx#core-bind-alias!
        (lambda _g11038_
          (let ((_g11037_ (length _g11038_)))
            (cond ((##fx= _g11037_ 2) (apply gx#core-bind-alias!__0 _g11038_))
                  ((##fx= _g11037_ 3) (apply gx#core-bind-alias!__1 _g11038_))
                  ((##fx= _g11037_ 4) (apply gx#core-bind-alias!__2 _g11038_))
                  ((##fx= _g11037_ 5) (apply gx#core-bind-alias!__% _g11038_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g11038_))))))))
  (begin
    (define gx#make-binding-id__%
      (lambda (_key7993_ _syntax?7994_ _phi7995_ _ctx7996_)
        (if (uninterned-symbol? _key7993_)
            (gensym 'L)
            (if (pair? _key7993_)
                (gensym (car _key7993_))
                (if (##structure-instance-of? _ctx7996_ 'gx#top-context::t)
                    (let ((_ns7998_ (gx#core-context-namespace__% _ctx7996_)))
                      (if (if (fxzero? _phi7995_) (not _syntax?7994_) '#f)
                          (if _ns7998_
                              (make-symbol _ns7998_ '"#" _key7993_)
                              _key7993_)
                          (if _syntax?7994_
                              (make-symbol
                               (let ((_$e8000_ _ns7998_))
                                 (if _$e8000_ _$e8000_ '""))
                               '"[:"
                               (number->string _phi7995_)
                               '":]#"
                               _key7993_)
                              (make-symbol
                               (let ((_$e8003_ _ns7998_))
                                 (if _$e8003_ _$e8003_ '""))
                               '"["
                               (number->string _phi7995_)
                               '"]#"
                               _key7993_))))
                    (gensym _key7993_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key8009_)
          (let* ((_syntax?8011_ '#f)
                 (_phi8013_ (gx#current-expander-phi))
                 (_ctx8015_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8009_
             _syntax?8011_
             _phi8013_
             _ctx8015_))))
      (define gx#make-binding-id__1
        (lambda (_key8017_ _syntax?8018_)
          (let* ((_phi8020_ (gx#current-expander-phi))
                 (_ctx8022_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8017_
             _syntax?8018_
             _phi8020_
             _ctx8022_))))
      (define gx#make-binding-id__2
        (lambda (_key8024_ _syntax?8025_ _phi8026_)
          (let ((_ctx8028_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8024_
             _syntax?8025_
             _phi8026_
             _ctx8028_))))
      (define gx#make-binding-id
        (lambda _g11040_
          (let ((_g11039_ (length _g11040_)))
            (cond ((##fx= _g11039_ 1) (apply gx#make-binding-id__0 _g11040_))
                  ((##fx= _g11039_ 2) (apply gx#make-binding-id__1 _g11040_))
                  ((##fx= _g11039_ 3) (apply gx#make-binding-id__2 _g11040_))
                  ((##fx= _g11039_ 4) (apply gx#make-binding-id__% _g11040_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g11040_)))))))))
