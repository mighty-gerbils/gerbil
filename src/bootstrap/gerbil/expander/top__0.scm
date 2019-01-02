(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (not safe))
  (define gx#core-expand-begin%
    (lambda (_stx12553_)
      (letrec ((_expand-special12555_
                (lambda (_hd12557_ _K12558_ _rest12559_ _r12560_)
                  (_K12558_
                   _rest12559_
                   (cons (gx#core-expand-top _hd12557_) _r12560_)))))
        (gx#core-expand-block__0 _stx12553_ _expand-special12555_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx12306_)
      (letrec ((_expand-special12308_
                (lambda (_hd12428_ _K12429_ _rest12430_ _r12431_)
                  (let* ((_K12435_
                          (lambda (_e12433_)
                            (_K12429_ _rest12430_ (cons _e12433_ _r12431_))))
                         (_e1243612465_ _hd12428_)
                         (_E1246012469_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1243612465_)))
                         (_E1245612481_
                          (lambda ()
                            (if (gx#stx-pair? _e1243612465_)
                                (let ((_e1246112473_
                                       (gx#syntax-e _e1243612465_)))
                                  (let ((_hd1246212476_ (##car _e1246112473_))
                                        (_tl1246312478_ (##cdr _e1246112473_)))
                                    (if (and (gx#identifier? _hd1246212476_)
                                             (gx#core-identifier=?
                                              _hd1246212476_
                                              '%#define-runtime))
                                        (if '#t
                                            (_K12435_
                                             (gx#core-expand-define-runtime%
                                              _hd12428_))
                                            (_E1246012469_))
                                        (_E1246012469_))))
                                (_E1246012469_))))
                         (_E1245212493_
                          (lambda ()
                            (if (gx#stx-pair? _e1243612465_)
                                (let ((_e1245712485_
                                       (gx#syntax-e _e1243612465_)))
                                  (let ((_hd1245812488_ (##car _e1245712485_))
                                        (_tl1245912490_ (##cdr _e1245712485_)))
                                    (if (and (gx#identifier? _hd1245812488_)
                                             (gx#core-identifier=?
                                              _hd1245812488_
                                              '%#define-alias))
                                        (if '#t
                                            (_K12435_
                                             (gx#core-expand-define-alias%
                                              _hd12428_))
                                            (_E1245612481_))
                                        (_E1245612481_))))
                                (_E1245612481_))))
                         (_E1244212505_
                          (lambda ()
                            (if (gx#stx-pair? _e1243612465_)
                                (let ((_e1245312497_
                                       (gx#syntax-e _e1243612465_)))
                                  (let ((_hd1245412500_ (##car _e1245312497_))
                                        (_tl1245512502_ (##cdr _e1245312497_)))
                                    (if (and (gx#identifier? _hd1245412500_)
                                             (gx#core-identifier=?
                                              _hd1245412500_
                                              '%#define-syntax))
                                        (if '#t
                                            (_K12435_
                                             (gx#core-expand-define-syntax%
                                              _hd12428_))
                                            (_E1245212493_))
                                        (_E1245212493_))))
                                (_E1245212493_))))
                         (_E1243812537_
                          (lambda ()
                            (if (gx#stx-pair? _e1243612465_)
                                (let ((_e1244312509_
                                       (gx#syntax-e _e1243612465_)))
                                  (let ((_hd1244412512_ (##car _e1244312509_))
                                        (_tl1244512514_ (##cdr _e1244312509_)))
                                    (if (and (gx#identifier? _hd1244412512_)
                                             (gx#core-identifier=?
                                              _hd1244412512_
                                              '%#define-values))
                                        (if (gx#stx-pair? _tl1244512514_)
                                            (let ((_e1244612517_
                                                   (gx#syntax-e
                                                    _tl1244512514_)))
                                              (let ((_hd1244712520_
                                                     (##car _e1244612517_))
                                                    (_tl1244812522_
                                                     (##cdr _e1244612517_)))
                                                (let ((_hd-bind12525_
                                                       _hd1244712520_))
                                                  (if (gx#stx-pair?
                                                       _tl1244812522_)
                                                      (let ((_e1244912527_
                                                             (gx#syntax-e
                                                              _tl1244812522_)))
                                                        (let ((_hd1245012530_
                                                               (##car _e1244912527_))
                                                              (_tl1245112532_
                                                               (##cdr _e1244912527_)))
                                                          (let ((_expr12535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1245012530_))
                    (if (gx#stx-null? _tl1245112532_)
                        (if (gx#core-bind-values? _hd-bind12525_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12525_)
                              (_K12435_ _hd12428_))
                            (_E1244212505_))
                        (_E1244212505_)))))
              (_E1244212505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1244212505_))
                                        (_E1244212505_))))
                                (_E1244212505_))))
                         (_E1243712549_
                          (lambda ()
                            (if (gx#stx-pair? _e1243612465_)
                                (let ((_e1243912541_
                                       (gx#syntax-e _e1243612465_)))
                                  (let ((_hd1244012544_ (##car _e1243912541_))
                                        (_tl1244112546_ (##cdr _e1243912541_)))
                                    (if (and (gx#identifier? _hd1244012544_)
                                             (gx#core-identifier=?
                                              _hd1244012544_
                                              '%#begin-syntax))
                                        (if '#t
                                            (_K12435_
                                             (gx#core-expand-begin-syntax%
                                              _hd12428_))
                                            (_E1243812537_))
                                        (_E1243812537_))))
                                (_E1243812537_)))))
                    (_E1243712549_))))
               (_eval-body12309_
                (lambda (_rbody12317_)
                  (let _lp12319_ ((_rest12321_ _rbody12317_)
                                  (_body12322_ '())
                                  (_ebody12323_ '()))
                    (let* ((_rest1232412332_ _rest12321_)
                           (_else1232612340_
                            (lambda ()
                              (values _body12322_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody12323_)
                                        (gx#stx-source _stx12306_))))))
                           (_K1232812416_
                            (lambda (_rest12343_ _hd12344_)
                              (let* ((_e1234512362_ _hd12344_)
                                     (_E1235712366_
                                      (lambda ()
                                        (_lp12319_
                                         _rest12343_
                                         (cons _hd12344_ _body12322_)
                                         (cons _hd12344_ _ebody12323_))))
                                     (_E1234712378_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1234512362_)
                                            (let ((_e1235812370_
                                                   (gx#syntax-e
                                                    _e1234512362_)))
                                              (let ((_hd1235912373_
                                                     (##car _e1235812370_))
                                                    (_tl1236012375_
                                                     (##cdr _e1235812370_)))
                                                (if (and (gx#identifier?
                                                          _hd1235912373_)
                                                         (gx#core-identifier=?
                                                          _hd1235912373_
                                                          '%#begin-syntax))
                                                    (if '#t
                                                        (_lp12319_
                                                         _rest12343_
                                                         (cons _hd12344_
                                                               _body12322_)
                                                         _ebody12323_)
                                                        (_E1235712366_))
                                                    (_E1235712366_))))
                                            (_E1235712366_))))
                                     (_E1234612412_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1234512362_)
                                            (let ((_e1234812382_
                                                   (gx#syntax-e
                                                    _e1234512362_)))
                                              (let ((_hd1234912385_
                                                     (##car _e1234812382_))
                                                    (_tl1235012387_
                                                     (##cdr _e1234812382_)))
                                                (if (and (gx#identifier?
                                                          _hd1234912385_)
                                                         (gx#core-identifier=?
                                                          _hd1234912385_
                                                          '%#define-values))
                                                    (if (gx#stx-pair?
                                                         _tl1235012387_)
                                                        (let ((_e1235112390_
                                                               (gx#syntax-e
                                                                _tl1235012387_)))
                                                          (let ((_hd1235212393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1235112390_))
                        (_tl1235312395_ (##cdr _e1235112390_)))
                    (let ((_hd-bind12398_ _hd1235212393_))
                      (if (gx#stx-pair? _tl1235312395_)
                          (let ((_e1235412400_ (gx#syntax-e _tl1235312395_)))
                            (let ((_hd1235512403_ (##car _e1235412400_))
                                  (_tl1235612405_ (##cdr _e1235412400_)))
                              (let ((_expr12408_ _hd1235512403_))
                                (if (gx#stx-null? _tl1235612405_)
                                    (if '#t
                                        (let ((_ehd12410_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind12398_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr12408_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd12344_))))
                                          (_lp12319_
                                           _rest12343_
                                           (cons _ehd12410_ _body12322_)
                                           (cons _ehd12410_ _ebody12323_)))
                                        (_E1234712378_))
                                    (_E1234712378_)))))
                          (_E1234712378_)))))
                (_E1234712378_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1234712378_))))
                                            (_E1234712378_)))))
                                (_E1234612412_)))))
                      (if (##pair? _rest1232412332_)
                          (let ((_hd1232912419_ (##car _rest1232412332_))
                                (_tl1233012421_ (##cdr _rest1232412332_)))
                            (let* ((_hd12424_ _hd1232912419_)
                                   (_rest12426_ _tl1233012421_))
                              (_K1232812416_ _rest12426_ _hd12424_)))
                          (_else1232612340_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody12312_
                   (gx#core-expand-block__1
                    _stx12306_
                    _expand-special12308_
                    '#f))
                  (_g12576_ (_eval-body12309_ _rbody12312_)))
             (begin
               (let ((_g12577_
                      (if (##values? _g12576_) (##vector-length _g12576_) 1)))
                 (if (not (##fx= _g12577_ 2))
                     (error "Context expects 2 values" _g12577_)))
               (let ((_expanded-body12314_ (##vector-ref _g12576_ 0))
                     (_value12315_ (##vector-ref _g12576_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body12314_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value12315_ '())))
                  (gx#stx-source _stx12306_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx12276_)
      (let* ((_e1227712284_ _stx12276_)
             (_E1227912288_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1227712284_)))
             (_E1227812302_
              (lambda ()
                (if (gx#stx-pair? _e1227712284_)
                    (let ((_e1228012292_ (gx#syntax-e _e1227712284_)))
                      (let ((_hd1228112295_ (##car _e1228012292_))
                            (_tl1228212297_ (##cdr _e1228012292_)))
                        (let ((_body12300_ _tl1228212297_))
                          (if (gx#stx-list? _body12300_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body12300_)
                               (gx#stx-source _stx12276_))
                              (_E1227912288_)))))
                    (_E1227912288_)))))
        (_E1227812302_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx12274_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx12274_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx12220_)
      (let* ((_e1222112234_ _stx12220_)
             (_E1222312238_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1222112234_)))
             (_E1222212270_
              (lambda ()
                (if (gx#stx-pair? _e1222112234_)
                    (let ((_e1222412242_ (gx#syntax-e _e1222112234_)))
                      (let ((_hd1222512245_ (##car _e1222412242_))
                            (_tl1222612247_ (##cdr _e1222412242_)))
                        (if (gx#stx-pair? _tl1222612247_)
                            (let ((_e1222712250_ (gx#syntax-e _tl1222612247_)))
                              (let ((_hd1222812253_ (##car _e1222712250_))
                                    (_tl1222912255_ (##cdr _e1222712250_)))
                                (let ((_ann12258_ _hd1222812253_))
                                  (if (gx#stx-pair? _tl1222912255_)
                                      (let ((_e1223012260_
                                             (gx#syntax-e _tl1222912255_)))
                                        (let ((_hd1223112263_
                                               (##car _e1223012260_))
                                              (_tl1223212265_
                                               (##cdr _e1223012260_)))
                                          (let ((_expr12268_ _hd1223112263_))
                                            (if (gx#stx-null? _tl1223212265_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#begin-annotation)
                                                           (cons _ann12258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-expand-expression _expr12268_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx12220_))
                                                    (_E1222312238_))
                                                (_E1222312238_)))))
                                      (_E1222312238_)))))
                            (_E1222312238_))))
                    (_E1222312238_)))))
        (_E1222212270_))))
  (define gx#core-expand-local-block
    (lambda (_stx11944_ _body11945_)
      (letrec ((_expand-special11947_
                (lambda (_hd12215_ _K12216_ _rest12217_ _r12218_)
                  (_K12216_
                   '()
                   (cons (_expand-internal11948_ _hd12215_ _rest12217_)
                         _r12218_))))
               (_expand-internal11948_
                (lambda (_hd12211_ _rest12212_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal11950_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd12211_ _rest12212_))
                        (gx#stx-source _stx11944_))
                       _expand-internal-special11949_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj12570 (make-object gx#local-context::t '5)))
                     (gx#local-context:::init!__0 __obj12570)
                     __obj12570))))
               (_expand-internal-special11949_
                (lambda (_hd12106_ _K12107_ _rest12108_ _r12109_)
                  (let* ((_e1211012135_ _hd12106_)
                         (_E1213012139_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1211012135_)))
                         (_E1212612151_
                          (lambda ()
                            (if (gx#stx-pair? _e1211012135_)
                                (let ((_e1213112143_
                                       (gx#syntax-e _e1211012135_)))
                                  (let ((_hd1213212146_ (##car _e1213112143_))
                                        (_tl1213312148_ (##cdr _e1213112143_)))
                                    (if (and (gx#identifier? _hd1213212146_)
                                             (gx#core-identifier=?
                                              _hd1213212146_
                                              '%#declare))
                                        (if '#t
                                            (_K12107_
                                             _rest12108_
                                             (cons (gx#core-expand-declare%
                                                    _hd12106_)
                                                   _r12109_))
                                            (_E1213012139_))
                                        (_E1213012139_))))
                                (_E1213012139_))))
                         (_E1212212163_
                          (lambda ()
                            (if (gx#stx-pair? _e1211012135_)
                                (let ((_e1212712155_
                                       (gx#syntax-e _e1211012135_)))
                                  (let ((_hd1212812158_ (##car _e1212712155_))
                                        (_tl1212912160_ (##cdr _e1212712155_)))
                                    (if (and (gx#identifier? _hd1212812158_)
                                             (gx#core-identifier=?
                                              _hd1212812158_
                                              '%#define-alias))
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd12106_)
                                              (_K12107_ _rest12108_ _r12109_))
                                            (_E1212612151_))
                                        (_E1212612151_))))
                                (_E1212612151_))))
                         (_E1211212175_
                          (lambda ()
                            (if (gx#stx-pair? _e1211012135_)
                                (let ((_e1212312167_
                                       (gx#syntax-e _e1211012135_)))
                                  (let ((_hd1212412170_ (##car _e1212312167_))
                                        (_tl1212512172_ (##cdr _e1212312167_)))
                                    (if (and (gx#identifier? _hd1212412170_)
                                             (gx#core-identifier=?
                                              _hd1212412170_
                                              '%#define-syntax))
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd12106_)
                                              (_K12107_ _rest12108_ _r12109_))
                                            (_E1212212163_))
                                        (_E1212212163_))))
                                (_E1212212163_))))
                         (_E1211112207_
                          (lambda ()
                            (if (gx#stx-pair? _e1211012135_)
                                (let ((_e1211312179_
                                       (gx#syntax-e _e1211012135_)))
                                  (let ((_hd1211412182_ (##car _e1211312179_))
                                        (_tl1211512184_ (##cdr _e1211312179_)))
                                    (if (and (gx#identifier? _hd1211412182_)
                                             (gx#core-identifier=?
                                              _hd1211412182_
                                              '%#define-values))
                                        (if (gx#stx-pair? _tl1211512184_)
                                            (let ((_e1211612187_
                                                   (gx#syntax-e
                                                    _tl1211512184_)))
                                              (let ((_hd1211712190_
                                                     (##car _e1211612187_))
                                                    (_tl1211812192_
                                                     (##cdr _e1211612187_)))
                                                (let ((_hd-bind12195_
                                                       _hd1211712190_))
                                                  (if (gx#stx-pair?
                                                       _tl1211812192_)
                                                      (let ((_e1211912197_
                                                             (gx#syntax-e
                                                              _tl1211812192_)))
                                                        (let ((_hd1212012200_
                                                               (##car _e1211912197_))
                                                              (_tl1212112202_
                                                               (##cdr _e1211912197_)))
                                                          (let ((_expr12205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1212012200_))
                    (if (gx#stx-null? _tl1212112202_)
                        (if (gx#core-bind-values? _hd-bind12195_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12195_)
                              (_K12107_ _rest12108_ (cons _hd12106_ _r12109_)))
                            (_E1211212175_))
                        (_E1211212175_)))))
              (_E1211212175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1211212175_))
                                        (_E1211212175_))))
                                (_E1211212175_)))))
                    (_E1211112207_))))
               (_wrap-internal11950_
                (lambda (_rbody11952_)
                  (let _lp11954_ ((_rest11956_ _rbody11952_)
                                  (_decls11957_ '())
                                  (_bind11958_ '())
                                  (_body11959_ '()))
                    (let* ((_e1196011967_ _rest11956_)
                           (_E1196212016_
                            (lambda ()
                              (let* ((_body12011_
                                      (let* ((_body1197011980_ _body11959_)
                                             (_else1197311988_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body11959_)
                                                 (gx#stx-source _stx11944_)))))
                                        (let ((_K1197812008_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _stx11944_)))
                                              (_K1197511994_
                                               (lambda (_expr11992_)
                                                 _expr11992_)))
                                          (let ((_try-match1197212004_
                                                 (lambda ()
                                                   (if (##pair? _body1197011980_)
                                                       (let ((_tl1197711999_
                                                              (##cdr _body1197011980_))
                                                             (_hd1197611997_
                                                              (##car _body1197011980_)))
                                                         (if (##null? _tl1197711999_)
                                                             (let ((_expr12002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1197611997_))
                       (_K1197511994_ _expr12002_))
                     (_else1197311988_)))
               (_else1197311988_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (##null? _body1197011980_)
                                                (_K1197812008_)
                                                (_try-match1197212004_))))))
                                     (_body12013_
                                      (if (null? _bind11958_)
                                          _body12011_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind11958_
                                                       (cons _body12011_ '())))
                                           (gx#stx-source _stx11944_)))))
                                (if (null? _decls11957_)
                                    _body12013_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls11957_
                                                 (cons _body12013_ '())))
                                     (gx#stx-source _stx11944_))))))
                           (_E1196112102_
                            (lambda ()
                              (if (gx#stx-pair? _e1196011967_)
                                  (let ((_e1196312020_
                                         (gx#syntax-e _e1196011967_)))
                                    (let ((_hd1196412023_
                                           (##car _e1196312020_))
                                          (_tl1196512025_
                                           (##cdr _e1196312020_)))
                                      (let* ((_hd12028_ _hd1196412023_)
                                             (_rest12030_ _tl1196512025_))
                                        (if '#t
                                            (let* ((_e1203112048_ _hd12028_)
                                                   (_E1204312052_
                                                    (lambda ()
                                                      (if (null? _bind11958_)
                                                          (_lp11954_
                                                           _rest12030_
                                                           _decls11957_
                                                           _bind11958_
                                                           (cons _hd12028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body11959_))
                  (_lp11954_
                   _rest12030_
                   _decls11957_
                   (cons (cons '#f (cons _hd12028_ '())) _bind11958_)
                   _body11959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1203312066_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1203112048_)
                                                          (let ((_e1204412056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1203112048_)))
                    (let ((_hd1204512059_ (##car _e1204412056_))
                          (_tl1204612061_ (##cdr _e1204412056_)))
                      (if (and (gx#identifier? _hd1204512059_)
                               (gx#core-identifier=?
                                _hd1204512059_
                                '%#declare))
                          (let ((_xdecls12064_ _tl1204612061_))
                            (if '#t
                                (_lp11954_
                                 _rest12030_
                                 (gx#stx-foldr cons _decls11957_ _xdecls12064_)
                                 _bind11958_
                                 _body11959_)
                                (_E1204312052_)))
                          (_E1204312052_))))
                  (_E1204312052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1203212098_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1203112048_)
                                                          (let ((_e1203412070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1203112048_)))
                    (let ((_hd1203512073_ (##car _e1203412070_))
                          (_tl1203612075_ (##cdr _e1203412070_)))
                      (if (and (gx#identifier? _hd1203512073_)
                               (gx#core-identifier=?
                                _hd1203512073_
                                '%#define-values))
                          (if (gx#stx-pair? _tl1203612075_)
                              (let ((_e1203712078_
                                     (gx#syntax-e _tl1203612075_)))
                                (let ((_hd1203812081_ (##car _e1203712078_))
                                      (_tl1203912083_ (##cdr _e1203712078_)))
                                  (let ((_hd-bind12086_ _hd1203812081_))
                                    (if (gx#stx-pair? _tl1203912083_)
                                        (let ((_e1204012088_
                                               (gx#syntax-e _tl1203912083_)))
                                          (let ((_hd1204112091_
                                                 (##car _e1204012088_))
                                                (_tl1204212093_
                                                 (##cdr _e1204012088_)))
                                            (let ((_expr12096_ _hd1204112091_))
                                              (if (gx#stx-null? _tl1204212093_)
                                                  (if '#t
                                                      (_lp11954_
                                                       _rest12030_
                                                       _decls11957_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind12086_)
                           (cons (gx#core-expand-expression _expr12096_) '()))
                     _bind11958_)
               _body11959_)
              (_E1203312066_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1203312066_)))))
                                        (_E1203312066_)))))
                              (_E1203312066_))
                          (_E1203312066_))))
                  (_E1203312066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1203212098_))
                                            (_E1196212016_)))))
                                  (_E1196212016_)))))
                      (_E1196112102_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body11945_)
          (gx#stx-source _stx11944_))
         _expand-special11947_))))
  (define gx#core-expand-declare%
    (lambda (_stx11882_)
      (let* ((_e1188311890_ _stx11882_)
             (_E1188511894_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1188311890_)))
             (_E1188411940_
              (lambda ()
                (if (gx#stx-pair? _e1188311890_)
                    (let ((_e1188611898_ (gx#syntax-e _e1188311890_)))
                      (let ((_hd1188711901_ (##car _e1188611898_))
                            (_tl1188811903_ (##cdr _e1188611898_)))
                        (let ((_body11906_ _tl1188811903_))
                          (if (gx#stx-list? _body11906_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl11908_)
                                   (let* ((_e1190911916_ _decl11908_)
                                          (_E1191111920_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1190911916_)))
                                          (_E1191011936_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1190911916_)
                                                 (let ((_e1191211924_
                                                        (gx#syntax-e
                                                         _e1190911916_)))
                                                   (let ((_hd1191311927_
                                                          (##car _e1191211924_))
                                                         (_tl1191411929_
                                                          (##cdr _e1191211924_)))
                                                     (let* ((_head11932_
                                                             _hd1191311927_)
                                                            (_args11934_
                                                             _tl1191411929_))
                                                       (if (gx#stx-list?
                                                            _args11934_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl11908_)
                                                           (_E1191111920_)))))
                                                 (_E1191111920_)))))
                                     (_E1191011936_)))
                                 _body11906_))
                               (gx#stx-source _stx11882_))
                              (_E1188511894_)))))
                    (_E1188511894_)))))
        (_E1188411940_))))
  (define gx#core-expand-extern%
    (lambda (_stx11786_)
      (let* ((_e1178711794_ _stx11786_)
             (_E1178911798_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1178711794_)))
             (_E1178811878_
              (lambda ()
                (if (gx#stx-pair? _e1178711794_)
                    (let ((_e1179011802_ (gx#syntax-e _e1178711794_)))
                      (let ((_hd1179111805_ (##car _e1179011802_))
                            (_tl1179211807_ (##cdr _e1179011802_)))
                        (let ((_body11810_ _tl1179211807_))
                          (if '#t
                              (let _lp11812_ ((_rest11814_ _body11810_)
                                              (_r11815_ '()))
                                (let* ((_e1181611830_ _rest11814_)
                                       (_E1182811834_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx11786_)))
                                       (_E1181811838_
                                        (lambda ()
                                          (if (gx#stx-null? _e1181611830_)
                                              (if '#t
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#extern
                                                    (reverse _r11815_))
                                                   (gx#stx-source _stx11786_))
                                                  (_E1182811834_))
                                              (_E1182811834_))))
                                       (_E1181711874_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1181611830_)
                                              (let ((_e1181911842_
                                                     (gx#syntax-e
                                                      _e1181611830_)))
                                                (let ((_hd1182011845_
                                                       (##car _e1181911842_))
                                                      (_tl1182111847_
                                                       (##cdr _e1181911842_)))
                                                  (if (gx#stx-pair?
                                                       _hd1182011845_)
                                                      (let ((_e1182211850_
                                                             (gx#syntax-e
                                                              _hd1182011845_)))
                                                        (let ((_hd1182311853_
                                                               (##car _e1182211850_))
                                                              (_tl1182411855_
                                                               (##cdr _e1182211850_)))
                                                          (let ((_id11858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1182311853_))
                    (if (gx#stx-pair? _tl1182411855_)
                        (let ((_e1182511860_ (gx#syntax-e _tl1182411855_)))
                          (let ((_hd1182611863_ (##car _e1182511860_))
                                (_tl1182711865_ (##cdr _e1182511860_)))
                            (let ((_eid11868_ _hd1182611863_))
                              (if (gx#stx-null? _tl1182711865_)
                                  (let ((_rest11870_ _tl1182111847_))
                                    (if (and (gx#identifier? _id11858_)
                                             (gx#identifier? _eid11868_))
                                        (let ((_eid11872_
                                               (gx#stx-e _eid11868_)))
                                          (gx#core-bind-extern!__0
                                           _id11858_
                                           _eid11872_)
                                          (_lp11812_
                                           _rest11870_
                                           (cons (cons (gx#core-quote-syntax__0
                                                        _id11858_)
                                                       (cons _eid11872_ '()))
                                                 _r11815_)))
                                        (_E1181811838_)))
                                  (_E1181811838_)))))
                        (_E1181811838_)))))
              (_E1181811838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1181811838_)))))
                                  (_E1181711874_)))
                              (_E1178911798_)))))
                    (_E1178911798_)))))
        (_E1178811878_))))
  (define gx#core-expand-define-values%
    (lambda (_stx11732_)
      (let* ((_e1173311746_ _stx11732_)
             (_E1173511750_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1173311746_)))
             (_E1173411782_
              (lambda ()
                (if (gx#stx-pair? _e1173311746_)
                    (let ((_e1173611754_ (gx#syntax-e _e1173311746_)))
                      (let ((_hd1173711757_ (##car _e1173611754_))
                            (_tl1173811759_ (##cdr _e1173611754_)))
                        (if (gx#stx-pair? _tl1173811759_)
                            (let ((_e1173911762_ (gx#syntax-e _tl1173811759_)))
                              (let ((_hd1174011765_ (##car _e1173911762_))
                                    (_tl1174111767_ (##cdr _e1173911762_)))
                                (let ((_hd11770_ _hd1174011765_))
                                  (if (gx#stx-pair? _tl1174111767_)
                                      (let ((_e1174211772_
                                             (gx#syntax-e _tl1174111767_)))
                                        (let ((_hd1174311775_
                                               (##car _e1174211772_))
                                              (_tl1174411777_
                                               (##cdr _e1174211772_)))
                                          (let ((_expr11780_ _hd1174311775_))
                                            (if (gx#stx-null? _tl1174411777_)
                                                (if (gx#core-bind-values?
                                                     _hd11770_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd11770_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11770_)
                           (cons (gx#core-expand-expression _expr11780_) '())))
               (gx#stx-source _stx11732_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1173511750_))
                                                (_E1173511750_)))))
                                      (_E1173511750_)))))
                            (_E1173511750_))))
                    (_E1173511750_)))))
        (_E1173411782_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx11676_)
      (let* ((_e1167711690_ _stx11676_)
             (_E1167911694_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1167711690_)))
             (_E1167811728_
              (lambda ()
                (if (gx#stx-pair? _e1167711690_)
                    (let ((_e1168011698_ (gx#syntax-e _e1167711690_)))
                      (let ((_hd1168111701_ (##car _e1168011698_))
                            (_tl1168211703_ (##cdr _e1168011698_)))
                        (if (gx#stx-pair? _tl1168211703_)
                            (let ((_e1168311706_ (gx#syntax-e _tl1168211703_)))
                              (let ((_hd1168411709_ (##car _e1168311706_))
                                    (_tl1168511711_ (##cdr _e1168311706_)))
                                (let ((_id11714_ _hd1168411709_))
                                  (if (gx#stx-pair? _tl1168511711_)
                                      (let ((_e1168611716_
                                             (gx#syntax-e _tl1168511711_)))
                                        (let ((_hd1168711719_
                                               (##car _e1168611716_))
                                              (_tl1168811721_
                                               (##cdr _e1168611716_)))
                                          (let ((_binding-id11724_
                                                 _hd1168711719_))
                                            (if (gx#stx-null? _tl1168811721_)
                                                (if (and (gx#identifier?
                                                          _id11714_)
                                                         (gx#identifier?
                                                          _binding-id11724_))
                                                    (let ((_eid11726_
                                                           (gx#stx-e
                                                            _binding-id11724_)))
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id11714_
                                                       _eid11726_)
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11714_)
                           (cons _eid11726_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1167911694_))
                                                (_E1167911694_)))))
                                      (_E1167911694_)))))
                            (_E1167911694_))))
                    (_E1167911694_)))))
        (_E1167811728_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx11619_)
      (let* ((_e1162011633_ _stx11619_)
             (_E1162211637_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1162011633_)))
             (_E1162111672_
              (lambda ()
                (if (gx#stx-pair? _e1162011633_)
                    (let ((_e1162311641_ (gx#syntax-e _e1162011633_)))
                      (let ((_hd1162411644_ (##car _e1162311641_))
                            (_tl1162511646_ (##cdr _e1162311641_)))
                        (if (gx#stx-pair? _tl1162511646_)
                            (let ((_e1162611649_ (gx#syntax-e _tl1162511646_)))
                              (let ((_hd1162711652_ (##car _e1162611649_))
                                    (_tl1162811654_ (##cdr _e1162611649_)))
                                (let ((_id11657_ _hd1162711652_))
                                  (if (gx#stx-pair? _tl1162811654_)
                                      (let ((_e1162911659_
                                             (gx#syntax-e _tl1162811654_)))
                                        (let ((_hd1163011662_
                                               (##car _e1162911659_))
                                              (_tl1163111664_
                                               (##cdr _e1162911659_)))
                                          (let ((_expr11667_ _hd1163011662_))
                                            (if (gx#stx-null? _tl1163111664_)
                                                (if (gx#identifier? _id11657_)
                                                    (let ((_g12578_
                                                           (gx#core-expand-expression+1
                                                            _expr11667_)))
                                                      (begin
                                                        (let ((_g12579_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g12578_)
                           (##vector-length _g12578_)
                           1)))
                  (if (not (##fx= _g12579_ 2))
                      (error "Context expects 2 values" _g12579_)))
                (let ((_e-stx11669_ (##vector-ref _g12578_ 0))
                      (_e11670_ (##vector-ref _g12578_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id11657_ _e11670_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id11657_)
                                 (cons _e-stx11669_ '())))
                     (gx#stx-source _stx11619_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1162211637_))
                                                (_E1162211637_)))))
                                      (_E1162211637_)))))
                            (_E1162211637_))))
                    (_E1162211637_)))))
        (_E1162111672_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx11563_)
      (let* ((_e1156411577_ _stx11563_)
             (_E1156611581_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1156411577_)))
             (_E1156511615_
              (lambda ()
                (if (gx#stx-pair? _e1156411577_)
                    (let ((_e1156711585_ (gx#syntax-e _e1156411577_)))
                      (let ((_hd1156811588_ (##car _e1156711585_))
                            (_tl1156911590_ (##cdr _e1156711585_)))
                        (if (gx#stx-pair? _tl1156911590_)
                            (let ((_e1157011593_ (gx#syntax-e _tl1156911590_)))
                              (let ((_hd1157111596_ (##car _e1157011593_))
                                    (_tl1157211598_ (##cdr _e1157011593_)))
                                (let ((_id11601_ _hd1157111596_))
                                  (if (gx#stx-pair? _tl1157211598_)
                                      (let ((_e1157311603_
                                             (gx#syntax-e _tl1157211598_)))
                                        (let ((_hd1157411606_
                                               (##car _e1157311603_))
                                              (_tl1157511608_
                                               (##cdr _e1157311603_)))
                                          (let ((_alias-id11611_
                                                 _hd1157411606_))
                                            (if (gx#stx-null? _tl1157511608_)
                                                (if (and (gx#identifier?
                                                          _id11601_)
                                                         (gx#identifier?
                                                          _alias-id11611_))
                                                    (let ((_alias-id11613_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id11611_)))
                                                      (gx#core-bind-alias!__0
                                                       _id11601_
                                                       _alias-id11613_)
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11601_)
                           (cons _alias-id11613_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1156611581_))
                                                (_E1156611581_)))))
                                      (_E1156611581_)))))
                            (_E1156611581_))))
                    (_E1156611581_)))))
        (_E1156511615_))))
  (define gx#core-expand-lambda%__%
    (lambda (_stx11506_ _wrap?11507_)
      (let* ((_e1150811518_ _stx11506_)
             (_E1151011522_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1150811518_)))
             (_E1150911549_
              (lambda ()
                (if (gx#stx-pair? _e1150811518_)
                    (let ((_e1151111526_ (gx#syntax-e _e1150811518_)))
                      (let ((_hd1151211529_ (##car _e1151111526_))
                            (_tl1151311531_ (##cdr _e1151111526_)))
                        (if (gx#stx-pair? _tl1151311531_)
                            (let ((_e1151411534_ (gx#syntax-e _tl1151311531_)))
                              (let ((_hd1151511537_ (##car _e1151411534_))
                                    (_tl1151611539_ (##cdr _e1151411534_)))
                                (let* ((_hd11542_ _hd1151511537_)
                                       (_body11544_ _tl1151611539_))
                                  (if (gx#core-bind-values? _hd11542_)
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#core-bind-values!__0 _hd11542_)
                                         (let ((_body11547_
                                                (cons (gx#core-quote-bind-values
                                                       _hd11542_)
                                                      (cons (gx#core-expand-local-block
                                                             _stx11506_
                                                             _body11544_)
                                                            '()))))
                                           (if _wrap?11507_
                                               (gx#core-quote-syntax__1
                                                (gx#core-cons
                                                 '%#lambda
                                                 _body11547_)
                                                (gx#stx-source _stx11506_))
                                               _body11547_)))
                                       gx#current-expander-context
                                       (let ((__obj12571
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (gx#local-context:::init!__0
                                          __obj12571)
                                         __obj12571))
                                      (_E1151011522_)))))
                            (_E1151011522_))))
                    (_E1151011522_)))))
        (_E1150911549_))))
  (define gx#core-expand-lambda%__0
    (lambda (_stx11556_)
      (let ((_wrap?11558_ '#t))
        (gx#core-expand-lambda%__% _stx11556_ _wrap?11558_))))
  (define gx#core-expand-lambda%
    (lambda _g12581_
      (let ((_g12580_ (length _g12581_)))
        (cond ((##fx= _g12580_ 1) (apply gx#core-expand-lambda%__0 _g12581_))
              ((##fx= _g12580_ 2) (apply gx#core-expand-lambda%__% _g12581_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-lambda%
                _g12581_))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx11470_)
      (let* ((_e1147111478_ _stx11470_)
             (_E1147311482_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1147111478_)))
             (_E1147211501_
              (lambda ()
                (if (gx#stx-pair? _e1147111478_)
                    (let ((_e1147411486_ (gx#syntax-e _e1147111478_)))
                      (let ((_hd1147511489_ (##car _e1147411486_))
                            (_tl1147611491_ (##cdr _e1147411486_)))
                        (let ((_clauses11494_ _tl1147611491_))
                          (if (gx#stx-list? _clauses11494_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause11496_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause11496_)
                                     (let ((_$e11498_
                                            (gx#stx-source _clause11496_)))
                                       (if _$e11498_
                                           _$e11498_
                                           (gx#stx-source _stx11470_))))
                                    '#f))
                                 _clauses11494_))
                               (gx#stx-source _stx11470_))
                              (_E1147311482_)))))
                    (_E1147311482_)))))
        (_E1147211501_))))
  (define gx#core-expand-let-values%
    (lambda (_stx11424_)
      (let* ((_e1142511435_ _stx11424_)
             (_E1142711439_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1142511435_)))
             (_E1142611466_
              (lambda ()
                (if (gx#stx-pair? _e1142511435_)
                    (let ((_e1142811443_ (gx#syntax-e _e1142511435_)))
                      (let ((_hd1142911446_ (##car _e1142811443_))
                            (_tl1143011448_ (##cdr _e1142811443_)))
                        (if (gx#stx-pair? _tl1143011448_)
                            (let ((_e1143111451_ (gx#syntax-e _tl1143011448_)))
                              (let ((_hd1143211454_ (##car _e1143111451_))
                                    (_tl1143311456_ (##cdr _e1143111451_)))
                                (let* ((_hd11459_ _hd1143211454_)
                                       (_body11461_ _tl1143311456_))
                                  (if (gx#core-expand-let-bind? _hd11459_)
                                      (let ((_expressions11463_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd11459_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd11459_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   '%#let-values)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd11459_
                                                         _expressions11463_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx11424_
                                                               _body11461_)
                                                              '())))
                                            (gx#stx-source _stx11424_)))
                                         gx#current-expander-context
                                         (let ((__obj12572
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12572)
                                           __obj12572)))
                                      (_E1142711439_)))))
                            (_E1142711439_))))
                    (_E1142711439_)))))
        (_E1142611466_))))
  (define gx#core-expand-letrec-values%__%
    (lambda (_stx11369_ _form11370_)
      (let* ((_e1137111381_ _stx11369_)
             (_E1137311385_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1137111381_)))
             (_E1137211410_
              (lambda ()
                (if (gx#stx-pair? _e1137111381_)
                    (let ((_e1137411389_ (gx#syntax-e _e1137111381_)))
                      (let ((_hd1137511392_ (##car _e1137411389_))
                            (_tl1137611394_ (##cdr _e1137411389_)))
                        (if (gx#stx-pair? _tl1137611394_)
                            (let ((_e1137711397_ (gx#syntax-e _tl1137611394_)))
                              (let ((_hd1137811400_ (##car _e1137711397_))
                                    (_tl1137911402_ (##cdr _e1137711397_)))
                                (let* ((_hd11405_ _hd1137811400_)
                                       (_body11407_ _tl1137911402_))
                                  (if (gx#core-expand-let-bind? _hd11405_)
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-for-each1
                                          gx#core-expand-let-bind-values!
                                          _hd11405_)
                                         (gx#core-quote-syntax__1
                                          (cons (gx#core-quote-syntax__0
                                                 _form11370_)
                                                (cons (gx#stx-map2
                                                       gx#core-expand-let-bind-quote
                                                       _hd11405_
                                                       (gx#stx-map1
                                                        gx#core-expand-let-bind-expression
                                                        _hd11405_))
                                                      (cons (gx#core-expand-local-block
                                                             _stx11369_
                                                             _body11407_)
                                                            '())))
                                          (gx#stx-source _stx11369_)))
                                       gx#current-expander-context
                                       (let ((__obj12573
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (gx#local-context:::init!__0
                                          __obj12573)
                                         __obj12573))
                                      (_E1137311385_)))))
                            (_E1137311385_))))
                    (_E1137311385_)))))
        (_E1137211410_))))
  (define gx#core-expand-letrec-values%__0
    (lambda (_stx11417_)
      (let ((_form11419_ '%#letrec-values))
        (gx#core-expand-letrec-values%__% _stx11417_ _form11419_))))
  (define gx#core-expand-letrec-values%
    (lambda _g12583_
      (let ((_g12582_ (length _g12583_)))
        (cond ((##fx= _g12582_ 1)
               (apply gx#core-expand-letrec-values%__0 _g12583_))
              ((##fx= _g12582_ 2)
               (apply gx#core-expand-letrec-values%__% _g12583_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-letrec-values%
                _g12583_))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx11366_)
      (gx#core-expand-letrec-values%__% _stx11366_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx11323_)
      (if (gx#stx-list? _stx11323_)
          (gx#stx-andmap
           (lambda (_bind11325_)
             (let* ((_e1132611336_ _bind11325_)
                    (_E1132811340_ (lambda () '#f))
                    (_E1132711362_
                     (lambda ()
                       (if (gx#stx-pair? _e1132611336_)
                           (let ((_e1132911344_ (gx#syntax-e _e1132611336_)))
                             (let ((_hd1133011347_ (##car _e1132911344_))
                                   (_tl1133111349_ (##cdr _e1132911344_)))
                               (let ((_hd11352_ _hd1133011347_))
                                 (if (gx#stx-pair? _tl1133111349_)
                                     (let ((_e1133211354_
                                            (gx#syntax-e _tl1133111349_)))
                                       (let ((_hd1133311357_
                                              (##car _e1133211354_))
                                             (_tl1133411359_
                                              (##cdr _e1133211354_)))
                                         (if (gx#stx-null? _tl1133411359_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd11352_)
                                                 (_E1132811340_))
                                             (_E1132811340_))))
                                     (_E1132811340_)))))
                           (_E1132811340_)))))
               (_E1132711362_)))
           _stx11323_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind11282_)
      (let* ((_e1128311293_ _bind11282_)
             (_E1128511297_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1128311293_)))
             (_E1128411319_
              (lambda ()
                (if (gx#stx-pair? _e1128311293_)
                    (let ((_e1128611301_ (gx#syntax-e _e1128311293_)))
                      (let ((_hd1128711304_ (##car _e1128611301_))
                            (_tl1128811306_ (##cdr _e1128611301_)))
                        (if (gx#stx-pair? _tl1128811306_)
                            (let ((_e1128911309_ (gx#syntax-e _tl1128811306_)))
                              (let ((_hd1129011312_ (##car _e1128911309_))
                                    (_tl1129111314_ (##cdr _e1128911309_)))
                                (let ((_expr11317_ _hd1129011312_))
                                  (if (gx#stx-null? _tl1129111314_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr11317_)
                                          (_E1128511297_))
                                      (_E1128511297_)))))
                            (_E1128511297_))))
                    (_E1128511297_)))))
        (_E1128411319_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind11241_)
      (let* ((_e1124211252_ _bind11241_)
             (_E1124411256_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1124211252_)))
             (_E1124311278_
              (lambda ()
                (if (gx#stx-pair? _e1124211252_)
                    (let ((_e1124511260_ (gx#syntax-e _e1124211252_)))
                      (let ((_hd1124611263_ (##car _e1124511260_))
                            (_tl1124711265_ (##cdr _e1124511260_)))
                        (let ((_hd11268_ _hd1124611263_))
                          (if (gx#stx-pair? _tl1124711265_)
                              (let ((_e1124811270_
                                     (gx#syntax-e _tl1124711265_)))
                                (let ((_hd1124911273_ (##car _e1124811270_))
                                      (_tl1125011275_ (##cdr _e1124811270_)))
                                  (if (gx#stx-null? _tl1125011275_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd11268_)
                                          (_E1124411256_))
                                      (_E1124411256_))))
                              (_E1124411256_)))))
                    (_E1124411256_)))))
        (_E1124311278_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind11199_ _expr11200_)
      (let* ((_e1120111211_ _bind11199_)
             (_E1120311215_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1120111211_)))
             (_E1120211237_
              (lambda ()
                (if (gx#stx-pair? _e1120111211_)
                    (let ((_e1120411219_ (gx#syntax-e _e1120111211_)))
                      (let ((_hd1120511222_ (##car _e1120411219_))
                            (_tl1120611224_ (##cdr _e1120411219_)))
                        (let ((_hd11227_ _hd1120511222_))
                          (if (gx#stx-pair? _tl1120611224_)
                              (let ((_e1120711229_
                                     (gx#syntax-e _tl1120611224_)))
                                (let ((_hd1120811232_ (##car _e1120711229_))
                                      (_tl1120911234_ (##cdr _e1120711229_)))
                                  (if (gx#stx-null? _tl1120911234_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd11227_)
                                                (cons _expr11200_ '()))
                                          (_E1120311215_))
                                      (_E1120311215_))))
                              (_E1120311215_)))))
                    (_E1120311215_)))))
        (_E1120211237_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx11153_)
      (let* ((_e1115411164_ _stx11153_)
             (_E1115611168_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1115411164_)))
             (_E1115511195_
              (lambda ()
                (if (gx#stx-pair? _e1115411164_)
                    (let ((_e1115711172_ (gx#syntax-e _e1115411164_)))
                      (let ((_hd1115811175_ (##car _e1115711172_))
                            (_tl1115911177_ (##cdr _e1115711172_)))
                        (if (gx#stx-pair? _tl1115911177_)
                            (let ((_e1116011180_ (gx#syntax-e _tl1115911177_)))
                              (let ((_hd1116111183_ (##car _e1116011180_))
                                    (_tl1116211185_ (##cdr _e1116011180_)))
                                (let* ((_hd11188_ _hd1116111183_)
                                       (_body11190_ _tl1116211185_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11188_)
                                      (let ((_expanders11192_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd11188_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd11188_
                                            _expanders11192_)
                                           (gx#core-expand-local-block
                                            _stx11153_
                                            _body11190_))
                                         gx#current-expander-context
                                         (let ((__obj12574
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12574)
                                           __obj12574)))
                                      (_E1115611168_)))))
                            (_E1115611168_))))
                    (_E1115611168_)))))
        (_E1115511195_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx11102_)
      (let* ((_e1110311113_ _stx11102_)
             (_E1110511117_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1110311113_)))
             (_E1110411149_
              (lambda ()
                (if (gx#stx-pair? _e1110311113_)
                    (let ((_e1110611121_ (gx#syntax-e _e1110311113_)))
                      (let ((_hd1110711124_ (##car _e1110611121_))
                            (_tl1110811126_ (##cdr _e1110611121_)))
                        (if (gx#stx-pair? _tl1110811126_)
                            (let ((_e1110911129_ (gx#syntax-e _tl1110811126_)))
                              (let ((_hd1111011132_ (##car _e1110911129_))
                                    (_tl1111111134_ (##cdr _e1110911129_)))
                                (let* ((_hd11137_ _hd1111011132_)
                                       (_body11139_ _tl1111111134_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11137_)
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-for-each2
                                          gx#core-expand-let-bind-syntax!
                                          _hd11137_
                                          (make-list
                                           (gx#stx-length _hd11137_)
                                           '#!void))
                                         (gx#stx-for-each2
                                          (lambda (_g1114111144_ _g1114211146_)
                                            (gx#core-expand-let-bind-syntax!__%
                                             _g1114111144_
                                             _g1114211146_
                                             '#t))
                                          _hd11137_
                                          (gx#stx-map1
                                           gx#core-expand-let-bind-syntax-expression
                                           _hd11137_))
                                         (gx#core-expand-local-block
                                          _stx11102_
                                          _body11139_))
                                       gx#current-expander-context
                                       (let ((__obj12575
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (gx#local-context:::init!__0
                                          __obj12575)
                                         __obj12575))
                                      (_E1110511117_)))))
                            (_E1110511117_))))
                    (_E1110511117_)))))
        (_E1110411149_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx11059_)
      (if (gx#stx-list? _stx11059_)
          (gx#stx-andmap
           (lambda (_bind11061_)
             (let* ((_e1106211072_ _bind11061_)
                    (_E1106411076_ (lambda () '#f))
                    (_E1106311098_
                     (lambda ()
                       (if (gx#stx-pair? _e1106211072_)
                           (let ((_e1106511080_ (gx#syntax-e _e1106211072_)))
                             (let ((_hd1106611083_ (##car _e1106511080_))
                                   (_tl1106711085_ (##cdr _e1106511080_)))
                               (let ((_hd11088_ _hd1106611083_))
                                 (if (gx#stx-pair? _tl1106711085_)
                                     (let ((_e1106811090_
                                            (gx#syntax-e _tl1106711085_)))
                                       (let ((_hd1106911093_
                                              (##car _e1106811090_))
                                             (_tl1107011095_
                                              (##cdr _e1106811090_)))
                                         (if (gx#stx-null? _tl1107011095_)
                                             (if '#t
                                                 (gx#identifier? _hd11088_)
                                                 (_E1106411076_))
                                             (_E1106411076_))))
                                     (_E1106411076_)))))
                           (_E1106411076_)))))
               (_E1106311098_)))
           _stx11059_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind11016_)
      (let* ((_e1101711027_ _bind11016_)
             (_E1101911031_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1101711027_)))
             (_E1101811055_
              (lambda ()
                (if (gx#stx-pair? _e1101711027_)
                    (let ((_e1102011035_ (gx#syntax-e _e1101711027_)))
                      (let ((_hd1102111038_ (##car _e1102011035_))
                            (_tl1102211040_ (##cdr _e1102011035_)))
                        (if (gx#stx-pair? _tl1102211040_)
                            (let ((_e1102311043_ (gx#syntax-e _tl1102211040_)))
                              (let ((_hd1102411046_ (##car _e1102311043_))
                                    (_tl1102511048_ (##cdr _e1102311043_)))
                                (let ((_expr11051_ _hd1102411046_))
                                  (if (gx#stx-null? _tl1102511048_)
                                      (if '#t
                                          (let ((_g12584_
                                                 (gx#core-expand-expression+1
                                                  _expr11051_)))
                                            (begin
                                              (let ((_g12585_
                                                     (if (##values? _g12584_)
                                                         (##vector-length
                                                          _g12584_)
                                                         1)))
                                                (if (not (##fx= _g12585_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12585_)))
                                              (let ((_e11053_
                                                     (##vector-ref
                                                      _g12584_
                                                      1)))
                                                _e11053_)))
                                          (_E1101911031_))
                                      (_E1101911031_)))))
                            (_E1101911031_))))
                    (_E1101911031_)))))
        (_E1101811055_))))
  (define gx#core-expand-let-bind-syntax!__%
    (lambda (_bind10961_ _e10962_ _rebind?10963_)
      (let* ((_e1096410974_ _bind10961_)
             (_E1096610978_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1096410974_)))
             (_E1096511000_
              (lambda ()
                (if (gx#stx-pair? _e1096410974_)
                    (let ((_e1096710982_ (gx#syntax-e _e1096410974_)))
                      (let ((_hd1096810985_ (##car _e1096710982_))
                            (_tl1096910987_ (##cdr _e1096710982_)))
                        (let ((_id10990_ _hd1096810985_))
                          (if (gx#stx-pair? _tl1096910987_)
                              (let ((_e1097010992_
                                     (gx#syntax-e _tl1096910987_)))
                                (let ((_hd1097110995_ (##car _e1097010992_))
                                      (_tl1097210997_ (##cdr _e1097010992_)))
                                  (if (gx#stx-null? _tl1097210997_)
                                      (if '#t
                                          (gx#core-bind-syntax!__1
                                           _id10990_
                                           _e10962_
                                           _rebind?10963_)
                                          (_E1096610978_))
                                      (_E1096610978_))))
                              (_E1096610978_)))))
                    (_E1096610978_)))))
        (_E1096511000_))))
  (define gx#core-expand-let-bind-syntax!__0
    (lambda (_bind11007_ _e11008_)
      (let ((_rebind?11010_ '#f))
        (gx#core-expand-let-bind-syntax!__%
         _bind11007_
         _e11008_
         _rebind?11010_))))
  (define gx#core-expand-let-bind-syntax!
    (lambda _g12587_
      (let ((_g12586_ (length _g12587_)))
        (cond ((##fx= _g12586_ 2)
               (apply gx#core-expand-let-bind-syntax!__0 _g12587_))
              ((##fx= _g12586_ 3)
               (apply gx#core-expand-let-bind-syntax!__% _g12587_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-let-bind-syntax!
                _g12587_))))))
  (define gx#core-expand-expression%
    (lambda (_stx10919_)
      (let* ((_e1092010930_ _stx10919_)
             (_E1092210934_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1092010930_)))
             (_E1092110956_
              (lambda ()
                (if (gx#stx-pair? _e1092010930_)
                    (let ((_e1092310938_ (gx#syntax-e _e1092010930_)))
                      (let ((_hd1092410941_ (##car _e1092310938_))
                            (_tl1092510943_ (##cdr _e1092310938_)))
                        (if (gx#stx-pair? _tl1092510943_)
                            (let ((_e1092610946_ (gx#syntax-e _tl1092510943_)))
                              (let ((_hd1092710949_ (##car _e1092610946_))
                                    (_tl1092810951_ (##cdr _e1092610946_)))
                                (let ((_expr10954_ _hd1092710949_))
                                  (if (gx#stx-null? _tl1092810951_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr10954_)
                                          (_E1092210934_))
                                      (_E1092210934_)))))
                            (_E1092210934_))))
                    (_E1092210934_)))))
        (_E1092110956_))))
  (define gx#core-expand-quote%
    (lambda (_stx10878_)
      (let* ((_e1087910889_ _stx10878_)
             (_E1088110893_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1087910889_)))
             (_E1088010915_
              (lambda ()
                (if (gx#stx-pair? _e1087910889_)
                    (let ((_e1088210897_ (gx#syntax-e _e1087910889_)))
                      (let ((_hd1088310900_ (##car _e1088210897_))
                            (_tl1088410902_ (##cdr _e1088210897_)))
                        (if (gx#stx-pair? _tl1088410902_)
                            (let ((_e1088510905_ (gx#syntax-e _tl1088410902_)))
                              (let ((_hd1088610908_ (##car _e1088510905_))
                                    (_tl1088710910_ (##cdr _e1088510905_)))
                                (let ((_e10913_ _hd1088610908_))
                                  (if (gx#stx-null? _tl1088710910_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e10913_)
                                                       '()))
                                           (gx#stx-source _stx10878_))
                                          (_E1088110893_))
                                      (_E1088110893_)))))
                            (_E1088110893_))))
                    (_E1088110893_)))))
        (_E1088010915_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx10837_)
      (let* ((_e1083810848_ _stx10837_)
             (_E1084010852_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1083810848_)))
             (_E1083910874_
              (lambda ()
                (if (gx#stx-pair? _e1083810848_)
                    (let ((_e1084110856_ (gx#syntax-e _e1083810848_)))
                      (let ((_hd1084210859_ (##car _e1084110856_))
                            (_tl1084310861_ (##cdr _e1084110856_)))
                        (if (gx#stx-pair? _tl1084310861_)
                            (let ((_e1084410864_ (gx#syntax-e _tl1084310861_)))
                              (let ((_hd1084510867_ (##car _e1084410864_))
                                    (_tl1084610869_ (##cdr _e1084410864_)))
                                (let ((_e10872_ _hd1084510867_))
                                  (if (gx#stx-null? _tl1084610869_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e10872_)
                                                       '()))
                                           (gx#stx-source _stx10837_))
                                          (_E1084010852_))
                                      (_E1084010852_)))))
                            (_E1084010852_))))
                    (_E1084010852_)))))
        (_E1083910874_))))
  (define gx#core-expand-call%
    (lambda (_stx10794_)
      (let* ((_e1079510805_ _stx10794_)
             (_E1079710809_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1079510805_)))
             (_E1079610833_
              (lambda ()
                (if (gx#stx-pair? _e1079510805_)
                    (let ((_e1079810813_ (gx#syntax-e _e1079510805_)))
                      (let ((_hd1079910816_ (##car _e1079810813_))
                            (_tl1080010818_ (##cdr _e1079810813_)))
                        (if (gx#stx-pair? _tl1080010818_)
                            (let ((_e1080110821_ (gx#syntax-e _tl1080010818_)))
                              (let ((_hd1080210824_ (##car _e1080110821_))
                                    (_tl1080310826_ (##cdr _e1080110821_)))
                                (let* ((_rator10829_ _hd1080210824_)
                                       (_args10831_ _tl1080310826_))
                                  (if (gx#stx-list? _args10831_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression
                                         _rator10829_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args10831_))
                                       (gx#stx-source _stx10794_))
                                      (_E1079710809_)))))
                            (_E1079710809_))))
                    (_E1079710809_)))))
        (_E1079610833_))))
  (define gx#core-expand-if%
    (lambda (_stx10727_)
      (let* ((_e1072810744_ _stx10727_)
             (_E1073010748_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1072810744_)))
             (_E1072910790_
              (lambda ()
                (if (gx#stx-pair? _e1072810744_)
                    (let ((_e1073110752_ (gx#syntax-e _e1072810744_)))
                      (let ((_hd1073210755_ (##car _e1073110752_))
                            (_tl1073310757_ (##cdr _e1073110752_)))
                        (if (gx#stx-pair? _tl1073310757_)
                            (let ((_e1073410760_ (gx#syntax-e _tl1073310757_)))
                              (let ((_hd1073510763_ (##car _e1073410760_))
                                    (_tl1073610765_ (##cdr _e1073410760_)))
                                (let ((_test10768_ _hd1073510763_))
                                  (if (gx#stx-pair? _tl1073610765_)
                                      (let ((_e1073710770_
                                             (gx#syntax-e _tl1073610765_)))
                                        (let ((_hd1073810773_
                                               (##car _e1073710770_))
                                              (_tl1073910775_
                                               (##cdr _e1073710770_)))
                                          (let ((_K10778_ _hd1073810773_))
                                            (if (gx#stx-pair? _tl1073910775_)
                                                (let ((_e1074010780_
                                                       (gx#syntax-e
                                                        _tl1073910775_)))
                                                  (let ((_hd1074110783_
                                                         (##car _e1074010780_))
                                                        (_tl1074210785_
                                                         (##cdr _e1074010780_)))
                                                    (let ((_E10788_
                                                           _hd1074110783_))
                                                      (if (gx#stx-null?
                                                           _tl1074210785_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test10768_)
                                   (cons (gx#core-expand-expression _K10778_)
                                         (cons (gx#core-expand-expression
                                                _E10788_)
                                               '()))))
                       (gx#stx-source _stx10727_))
                      (_E1073010748_))
                  (_E1073010748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1073010748_)))))
                                      (_E1073010748_)))))
                            (_E1073010748_))))
                    (_E1073010748_)))))
        (_E1072910790_))))
  (define gx#core-expand-ref%
    (lambda (_stx10686_)
      (let* ((_e1068710697_ _stx10686_)
             (_E1068910701_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1068710697_)))
             (_E1068810723_
              (lambda ()
                (if (gx#stx-pair? _e1068710697_)
                    (let ((_e1069010705_ (gx#syntax-e _e1068710697_)))
                      (let ((_hd1069110708_ (##car _e1069010705_))
                            (_tl1069210710_ (##cdr _e1069010705_)))
                        (if (gx#stx-pair? _tl1069210710_)
                            (let ((_e1069310713_ (gx#syntax-e _tl1069210710_)))
                              (let ((_hd1069410716_ (##car _e1069310713_))
                                    (_tl1069510718_ (##cdr _e1069310713_)))
                                (let ((_id10721_ _hd1069410716_))
                                  (if (gx#stx-null? _tl1069510718_)
                                      (if (gx#identifier? _id10721_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id10721_
                                                        _stx10686_)
                                                       '()))
                                           (gx#stx-source _stx10686_))
                                          (_E1068910701_))
                                      (_E1068910701_)))))
                            (_E1068910701_))))
                    (_E1068910701_)))))
        (_E1068810723_))))
  (define gx#core-expand-setq%
    (lambda (_stx10632_)
      (let* ((_e1063310646_ _stx10632_)
             (_E1063510650_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1063310646_)))
             (_E1063410682_
              (lambda ()
                (if (gx#stx-pair? _e1063310646_)
                    (let ((_e1063610654_ (gx#syntax-e _e1063310646_)))
                      (let ((_hd1063710657_ (##car _e1063610654_))
                            (_tl1063810659_ (##cdr _e1063610654_)))
                        (if (gx#stx-pair? _tl1063810659_)
                            (let ((_e1063910662_ (gx#syntax-e _tl1063810659_)))
                              (let ((_hd1064010665_ (##car _e1063910662_))
                                    (_tl1064110667_ (##cdr _e1063910662_)))
                                (let ((_id10670_ _hd1064010665_))
                                  (if (gx#stx-pair? _tl1064110667_)
                                      (let ((_e1064210672_
                                             (gx#syntax-e _tl1064110667_)))
                                        (let ((_hd1064310675_
                                               (##car _e1064210672_))
                                              (_tl1064410677_
                                               (##cdr _e1064210672_)))
                                          (let ((_expr10680_ _hd1064310675_))
                                            (if (gx#stx-null? _tl1064410677_)
                                                (if (gx#identifier? _id10670_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id10670_
                          _stx10632_)
                         (cons (gx#core-expand-expression _expr10680_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10632_))
                                                    (_E1063510650_))
                                                (_E1063510650_)))))
                                      (_E1063510650_)))))
                            (_E1063510650_))))
                    (_E1063510650_)))))
        (_E1063410682_))))
  (define gx#macro-expand-extern
    (lambda (_stx10480_)
      (letrec ((_generate10482_
                (lambda (_body10512_)
                  (let _lp10514_ ((_rest10516_ _body10512_)
                                  (_ns10517_ (gx#core-context-namespace__0))
                                  (_r10518_ '()))
                    (let* ((_e1051910534_ _rest10516_)
                           (_E1053210538_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1051910534_)))
                           (_E1052810542_
                            (lambda ()
                              (if (gx#stx-null? _e1051910534_)
                                  (if '#t (reverse _r10518_) (_E1053210538_))
                                  (_E1053210538_))))
                           (_E1052110599_
                            (lambda ()
                              (if (gx#stx-pair? _e1051910534_)
                                  (let ((_e1052910546_
                                         (gx#syntax-e _e1051910534_)))
                                    (let ((_hd1053010549_
                                           (##car _e1052910546_))
                                          (_tl1053110551_
                                           (##cdr _e1052910546_)))
                                      (let* ((_hd10554_ _hd1053010549_)
                                             (_rest10556_ _tl1053110551_))
                                        (if '#t
                                            (if (gx#identifier? _hd10554_)
                                                (_lp10514_
                                                 _rest10556_
                                                 _ns10517_
                                                 (cons (cons _hd10554_
                                                             (cons (if _ns10517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd10554_
                                _ns10517_
                                '"#"
                                _hd10554_)
                               _hd10554_)
                           '()))
               _r10518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e1055710567_
                                                        _hd10554_)
                                                       (_E1055910571_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1055710567_)))
                                                       (_E1055810595_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1055710567_)
                                                              (let ((_e1056010575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1055710567_)))
                        (let ((_hd1056110578_ (##car _e1056010575_))
                              (_tl1056210580_ (##cdr _e1056010575_)))
                          (let ((_id10583_ _hd1056110578_))
                            (if (gx#stx-pair? _tl1056210580_)
                                (let ((_e1056310585_
                                       (gx#syntax-e _tl1056210580_)))
                                  (let ((_hd1056410588_ (##car _e1056310585_))
                                        (_tl1056510590_ (##cdr _e1056310585_)))
                                    (let ((_eid10593_ _hd1056410588_))
                                      (if (gx#stx-null? _tl1056510590_)
                                          (if (and (gx#identifier? _id10583_)
                                                   (gx#identifier? _eid10593_))
                                              (_lp10514_
                                               _rest10556_
                                               _ns10517_
                                               (cons (cons _id10583_
                                                           (cons _eid10593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r10518_))
                                              (_E1055910571_))
                                          (_E1055910571_)))))
                                (_E1055910571_)))))
                      (_E1055910571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1055810595_)))
                                            (_E1052810542_)))))
                                  (_E1052810542_))))
                           (_E1052010628_
                            (lambda ()
                              (if (gx#stx-pair? _e1051910534_)
                                  (let ((_e1052210603_
                                         (gx#syntax-e _e1051910534_)))
                                    (let ((_hd1052310606_
                                           (##car _e1052210603_))
                                          (_tl1052410608_
                                           (##cdr _e1052210603_)))
                                      (if (eq? (gx#stx-e _hd1052310606_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl1052410608_)
                                              (let ((_e1052510611_
                                                     (gx#syntax-e
                                                      _tl1052410608_)))
                                                (let ((_hd1052610614_
                                                       (##car _e1052510611_))
                                                      (_tl1052710616_
                                                       (##cdr _e1052510611_)))
                                                  (let* ((_ns10619_
                                                          _hd1052610614_)
                                                         (_rest10621_
                                                          _tl1052710616_))
                                                    (if '#t
                                                        (let ((_ns10626_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns10619_)
                           (symbol->string (gx#stx-e _ns10619_))
                           (if (or (gx#stx-string? _ns10619_)
                                   (gx#stx-false? _ns10619_))
                               (gx#stx-e _ns10619_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx10480_
                                _ns10619_)))))
                  (_lp10514_ _rest10621_ _ns10626_ _r10518_))
                (_E1052110599_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1052110599_))
                                          (_E1052110599_))))
                                  (_E1052110599_)))))
                      (_E1052010628_))))))
        (let* ((_e1048310490_ _stx10480_)
               (_E1048510494_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1048310490_)))
               (_E1048410508_
                (lambda ()
                  (if (gx#stx-pair? _e1048310490_)
                      (let ((_e1048610498_ (gx#syntax-e _e1048310490_)))
                        (let ((_hd1048710501_ (##car _e1048610498_))
                              (_tl1048810503_ (##cdr _e1048610498_)))
                          (let ((_body10506_ _tl1048810503_))
                            (if (gx#stx-list? _body10506_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate10482_ _body10506_))
                                (_E1048510494_)))))
                      (_E1048510494_)))))
          (_E1048410508_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx10426_)
      (let* ((_e1042710440_ _stx10426_)
             (_E1042910444_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1042710440_)))
             (_E1042810476_
              (lambda ()
                (if (gx#stx-pair? _e1042710440_)
                    (let ((_e1043010448_ (gx#syntax-e _e1042710440_)))
                      (let ((_hd1043110451_ (##car _e1043010448_))
                            (_tl1043210453_ (##cdr _e1043010448_)))
                        (if (gx#stx-pair? _tl1043210453_)
                            (let ((_e1043310456_ (gx#syntax-e _tl1043210453_)))
                              (let ((_hd1043410459_ (##car _e1043310456_))
                                    (_tl1043510461_ (##cdr _e1043310456_)))
                                (let ((_hd10464_ _hd1043410459_))
                                  (if (gx#stx-pair? _tl1043510461_)
                                      (let ((_e1043610466_
                                             (gx#syntax-e _tl1043510461_)))
                                        (let ((_hd1043710469_
                                               (##car _e1043610466_))
                                              (_tl1043810471_
                                               (##cdr _e1043610466_)))
                                          (let ((_expr10474_ _hd1043710469_))
                                            (if (gx#stx-null? _tl1043810471_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd10464_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd10464_)
                        (cons _expr10474_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1042910444_))
                                                (_E1042910444_)))))
                                      (_E1042910444_)))))
                            (_E1042910444_))))
                    (_E1042910444_)))))
        (_E1042810476_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx10372_)
      (let* ((_e1037310386_ _stx10372_)
             (_E1037510390_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1037310386_)))
             (_E1037410422_
              (lambda ()
                (if (gx#stx-pair? _e1037310386_)
                    (let ((_e1037610394_ (gx#syntax-e _e1037310386_)))
                      (let ((_hd1037710397_ (##car _e1037610394_))
                            (_tl1037810399_ (##cdr _e1037610394_)))
                        (if (gx#stx-pair? _tl1037810399_)
                            (let ((_e1037910402_ (gx#syntax-e _tl1037810399_)))
                              (let ((_hd1038010405_ (##car _e1037910402_))
                                    (_tl1038110407_ (##cdr _e1037910402_)))
                                (let ((_hd10410_ _hd1038010405_))
                                  (if (gx#stx-pair? _tl1038110407_)
                                      (let ((_e1038210412_
                                             (gx#syntax-e _tl1038110407_)))
                                        (let ((_hd1038310415_
                                               (##car _e1038210412_))
                                              (_tl1038410417_
                                               (##cdr _e1038210412_)))
                                          (let ((_expr10420_ _hd1038310415_))
                                            (if (gx#stx-null? _tl1038410417_)
                                                (if (gx#identifier? _hd10410_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd10410_
                                                                (cons _expr10420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1037510390_))
                                                (_E1037510390_)))))
                                      (_E1037510390_)))))
                            (_E1037510390_))))
                    (_E1037510390_)))))
        (_E1037410422_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx10318_)
      (let* ((_e1031910332_ _stx10318_)
             (_E1032110336_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1031910332_)))
             (_E1032010368_
              (lambda ()
                (if (gx#stx-pair? _e1031910332_)
                    (let ((_e1032210340_ (gx#syntax-e _e1031910332_)))
                      (let ((_hd1032310343_ (##car _e1032210340_))
                            (_tl1032410345_ (##cdr _e1032210340_)))
                        (if (gx#stx-pair? _tl1032410345_)
                            (let ((_e1032510348_ (gx#syntax-e _tl1032410345_)))
                              (let ((_hd1032610351_ (##car _e1032510348_))
                                    (_tl1032710353_ (##cdr _e1032510348_)))
                                (let ((_id10356_ _hd1032610351_))
                                  (if (gx#stx-pair? _tl1032710353_)
                                      (let ((_e1032810358_
                                             (gx#syntax-e _tl1032710353_)))
                                        (let ((_hd1032910361_
                                               (##car _e1032810358_))
                                              (_tl1033010363_
                                               (##cdr _e1032810358_)))
                                          (let ((_alias-id10366_
                                                 _hd1032910361_))
                                            (if (gx#stx-null? _tl1033010363_)
                                                (if (and (gx#identifier?
                                                          _id10356_)
                                                         (gx#identifier?
                                                          _alias-id10366_))
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id10356_
                                                                (cons _alias-id10366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1032110336_))
                                                (_E1032110336_)))))
                                      (_E1032110336_)))))
                            (_E1032110336_))))
                    (_E1032110336_)))))
        (_E1032010368_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx10275_)
      (let* ((_e1027610286_ _stx10275_)
             (_E1027810290_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1027610286_)))
             (_E1027710314_
              (lambda ()
                (if (gx#stx-pair? _e1027610286_)
                    (let ((_e1027910294_ (gx#syntax-e _e1027610286_)))
                      (let ((_hd1028010297_ (##car _e1027910294_))
                            (_tl1028110299_ (##cdr _e1027910294_)))
                        (if (gx#stx-pair? _tl1028110299_)
                            (let ((_e1028210302_ (gx#syntax-e _tl1028110299_)))
                              (let ((_hd1028310305_ (##car _e1028210302_))
                                    (_tl1028410307_ (##cdr _e1028210302_)))
                                (let* ((_hd10310_ _hd1028310305_)
                                       (_body10312_ _tl1028410307_))
                                  (if (and (gx#stx-andmap
                                            gx#identifier?
                                            _hd10310_)
                                           (gx#stx-list? _body10312_)
                                           (not (gx#stx-null? _body10312_)))
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd10310_)
                                       _body10312_)
                                      (_E1027810290_)))))
                            (_E1027810290_))))
                    (_E1027810290_)))))
        (_E1027710314_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx10211_)
      (letrec ((_generate10213_
                (lambda (_clause10243_)
                  (let* ((_e1024410251_ _clause10243_)
                         (_E1024610255_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx10211_
                             _clause10243_)))
                         (_E1024510271_
                          (lambda ()
                            (if (gx#stx-pair? _e1024410251_)
                                (let ((_e1024710259_
                                       (gx#syntax-e _e1024410251_)))
                                  (let ((_hd1024810262_ (##car _e1024710259_))
                                        (_tl1024910264_ (##cdr _e1024710259_)))
                                    (let* ((_hd10267_ _hd1024810262_)
                                           (_body10269_ _tl1024910264_))
                                      (if (and (gx#stx-andmap
                                                gx#identifier?
                                                _hd10267_)
                                               (gx#stx-list? _body10269_)
                                               (not (gx#stx-null?
                                                     _body10269_)))
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd10267_)
                                                 _body10269_)
                                           (gx#stx-source _clause10243_))
                                          (_E1024610255_)))))
                                (_E1024610255_)))))
                    (_E1024510271_)))))
        (let* ((_e1021410221_ _stx10211_)
               (_E1021610225_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1021410221_)))
               (_E1021510239_
                (lambda ()
                  (if (gx#stx-pair? _e1021410221_)
                      (let ((_e1021710229_ (gx#syntax-e _e1021410221_)))
                        (let ((_hd1021810232_ (##car _e1021710229_))
                              (_tl1021910234_ (##cdr _e1021710229_)))
                          (let ((_clauses10237_ _tl1021910234_))
                            (if (gx#stx-list? _clauses10237_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate10213_ _clauses10237_))
                                (_E1021610225_)))))
                      (_E1021610225_)))))
          (_E1021510239_)))))
  (define gx#macro-expand-let-values__%
    (lambda (_stx10112_ _form10113_)
      (letrec ((_generate10115_
                (lambda (_bind10158_)
                  (let* ((_e1015910169_ _bind10158_)
                         (_E1016110173_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx10112_
                             _bind10158_)))
                         (_E1016010197_
                          (lambda ()
                            (if (gx#stx-pair? _e1015910169_)
                                (let ((_e1016210177_
                                       (gx#syntax-e _e1015910169_)))
                                  (let ((_hd1016310180_ (##car _e1016210177_))
                                        (_tl1016410182_ (##cdr _e1016210177_)))
                                    (let ((_ids10185_ _hd1016310180_))
                                      (if (gx#stx-pair? _tl1016410182_)
                                          (let ((_e1016510187_
                                                 (gx#syntax-e _tl1016410182_)))
                                            (let ((_hd1016610190_
                                                   (##car _e1016510187_))
                                                  (_tl1016710192_
                                                   (##cdr _e1016510187_)))
                                              (let ((_expr10195_
                                                     _hd1016610190_))
                                                (if (gx#stx-null?
                                                     _tl1016710192_)
                                                    (if (gx#stx-andmap
                                                         gx#identifier?
                                                         _ids10185_)
                                                        (cons (gx#stx-map1
                                                               gx#user-binding-identifier
                                                               _ids10185_)
                                                              (cons _expr10195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (_E1016110173_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1016110173_)))))
                                          (_E1016110173_)))))
                                (_E1016110173_)))))
                    (_E1016010197_)))))
        (let* ((_e1011610126_ _stx10112_)
               (_E1011810130_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1011610126_)))
               (_E1011710154_
                (lambda ()
                  (if (gx#stx-pair? _e1011610126_)
                      (let ((_e1011910134_ (gx#syntax-e _e1011610126_)))
                        (let ((_hd1012010137_ (##car _e1011910134_))
                              (_tl1012110139_ (##cdr _e1011910134_)))
                          (if (gx#stx-pair? _tl1012110139_)
                              (let ((_e1012210142_
                                     (gx#syntax-e _tl1012110139_)))
                                (let ((_hd1012310145_ (##car _e1012210142_))
                                      (_tl1012410147_ (##cdr _e1012210142_)))
                                  (let* ((_hd10150_ _hd1012310145_)
                                         (_body10152_ _tl1012410147_))
                                    (if (and (gx#stx-list? _hd10150_)
                                             (gx#stx-list? _body10152_)
                                             (not (gx#stx-null? _body10152_)))
                                        (gx#core-cons*
                                         _form10113_
                                         (gx#stx-map1
                                          _generate10115_
                                          _hd10150_)
                                         _body10152_)
                                        (_E1011810130_)))))
                              (_E1011810130_))))
                      (_E1011810130_)))))
          (_E1011710154_)))))
  (define gx#macro-expand-let-values__0
    (lambda (_stx10204_)
      (let ((_form10206_ '%#let-values))
        (gx#macro-expand-let-values__% _stx10204_ _form10206_))))
  (define gx#macro-expand-let-values
    (lambda _g12589_
      (let ((_g12588_ (length _g12589_)))
        (cond ((##fx= _g12588_ 1)
               (apply gx#macro-expand-let-values__0 _g12589_))
              ((##fx= _g12588_ 2)
               (apply gx#macro-expand-let-values__% _g12589_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#macro-expand-let-values
                _g12589_))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx10109_)
      (gx#macro-expand-let-values__% _stx10109_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx10107_)
      (gx#macro-expand-let-values__% _stx10107_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx9998_)
      (let* ((_e999910025_ _stx9998_)
             (_E1001110029_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e999910025_)))
             (_E1000110071_
              (lambda ()
                (if (gx#stx-pair? _e999910025_)
                    (let ((_e1001210033_ (gx#syntax-e _e999910025_)))
                      (let ((_hd1001310036_ (##car _e1001210033_))
                            (_tl1001410038_ (##cdr _e1001210033_)))
                        (if (gx#stx-pair? _tl1001410038_)
                            (let ((_e1001510041_ (gx#syntax-e _tl1001410038_)))
                              (let ((_hd1001610044_ (##car _e1001510041_))
                                    (_tl1001710046_ (##cdr _e1001510041_)))
                                (let ((_test10049_ _hd1001610044_))
                                  (if (gx#stx-pair? _tl1001710046_)
                                      (let ((_e1001810051_
                                             (gx#syntax-e _tl1001710046_)))
                                        (let ((_hd1001910054_
                                               (##car _e1001810051_))
                                              (_tl1002010056_
                                               (##cdr _e1001810051_)))
                                          (let ((_K10059_ _hd1001910054_))
                                            (if (gx#stx-pair? _tl1002010056_)
                                                (let ((_e1002110061_
                                                       (gx#syntax-e
                                                        _tl1002010056_)))
                                                  (let ((_hd1002210064_
                                                         (##car _e1002110061_))
                                                        (_tl1002310066_
                                                         (##cdr _e1002110061_)))
                                                    (let ((_E10069_
                                                           _hd1002210064_))
                                                      (if (gx#stx-null?
                                                           _tl1002310066_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test10049_
                                                               _K10059_
                                                               _E10069_)
                                                              (_E1001110029_))
                                                          (_E1001110029_)))))
                                                (_E1001110029_)))))
                                      (_E1001110029_)))))
                            (_E1001110029_))))
                    (_E1001110029_))))
             (_E1000010103_
              (lambda ()
                (if (gx#stx-pair? _e999910025_)
                    (let ((_e1000210075_ (gx#syntax-e _e999910025_)))
                      (let ((_hd1000310078_ (##car _e1000210075_))
                            (_tl1000410080_ (##cdr _e1000210075_)))
                        (if (gx#stx-pair? _tl1000410080_)
                            (let ((_e1000510083_ (gx#syntax-e _tl1000410080_)))
                              (let ((_hd1000610086_ (##car _e1000510083_))
                                    (_tl1000710088_ (##cdr _e1000510083_)))
                                (let ((_test10091_ _hd1000610086_))
                                  (if (gx#stx-pair? _tl1000710088_)
                                      (let ((_e1000810093_
                                             (gx#syntax-e _tl1000710088_)))
                                        (let ((_hd1000910096_
                                               (##car _e1000810093_))
                                              (_tl1001010098_
                                               (##cdr _e1000810093_)))
                                          (let ((_K10101_ _hd1000910096_))
                                            (if (gx#stx-null? _tl1001010098_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test10091_
                                                     _K10101_
                                                     '#!void)
                                                    (_E1000110071_))
                                                (_E1000110071_)))))
                                      (_E1000110071_)))))
                            (_E1000110071_))))
                    (_E1000110071_)))))
        (_E1000010103_))))
  (define gx#free-identifier=?
    (lambda (_xid9986_ _yid9987_)
      (let ((_xe9989_ (gx#resolve-identifier__0 _xid9986_))
            (_ye9990_ (gx#resolve-identifier__0 _yid9987_)))
        (if (and _xe9989_ _ye9990_)
            (let ((_$e9992_ (eq? _xe9989_ _ye9990_)))
              (if _$e9992_
                  _$e9992_
                  (if (##structure-instance-of? _xe9989_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye9990_ 'gx#binding::t)
                          (eq? (##unchecked-structure-ref
                                _xe9989_
                                '1
                                gx#binding::t
                                '#f)
                               (##unchecked-structure-ref
                                _ye9990_
                                '1
                                gx#binding::t
                                '#f))
                          '#f)
                      '#f)))
            (if (or _xe9989_ _ye9990_)
                '#f
                (gx#stx-eq? _xid9986_ _yid9987_))))))
  (define gx#bound-identifier=?
    (lambda (_xid9970_ _yid9971_)
      (letrec ((_context9973_
                (lambda (_e9984_)
                  (if (##structure-direct-instance-of?
                       _e9984_
                       'gx#syntax-quote::t)
                      (##unchecked-structure-ref
                       _e9984_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks9974_
                (lambda (_e9982_)
                  (if (symbol? _e9982_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e9982_
                           'gx#identifier-wrap::t)
                          (##unchecked-structure-ref
                           _e9982_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##unchecked-structure-ref
                           _e9982_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap9975_
                (lambda (_e9980_)
                  (if (symbol? _e9980_)
                      _e9980_
                      (gx#syntax-local-unwrap _e9980_)))))
        (let ((_x9977_ (_unwrap9975_ _xid9970_))
              (_y9978_ (_unwrap9975_ _yid9971_)))
          (if (gx#stx-eq? _x9977_ _y9978_)
              (if (eq? (_context9973_ _x9977_) (_context9973_ _y9978_))
                  (equal? (_marks9974_ _x9977_) (_marks9974_ _y9978_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx9968_)
      (if (gx#identifier? _stx9968_) (gx#core-identifier=? _stx9968_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx9966_)
      (if (gx#identifier? _stx9966_)
          (gx#core-identifier=? _stx9966_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x9964_)
      (if (gx#identifier? _x9964_)
          (if (not (gx#underscore? _x9964_)) _x9964_ '#f)
          '#f)))
  (define gx#check-duplicate-identifiers__%
    (lambda (_stx9910_ _where9911_)
      (let _lp9913_ ((_rest9915_ (gx#syntax->list _stx9910_)))
        (let* ((_rest99169924_ _rest9915_)
               (_else99189932_ (lambda () '#t))
               (_K99209942_
                (lambda (_rest9935_ _hd9936_)
                  (if (not (gx#identifier? _hd9936_))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad identifier"
                       _where9911_
                       _hd9936_)
                      (if (find (lambda (_g99379939_)
                                  (gx#bound-identifier=? _g99379939_ _hd9936_))
                                _rest9935_)
                          (gx#raise-syntax-error
                           '#f
                           '"Duplicate identifier"
                           _where9911_
                           _hd9936_)
                          (_lp9913_ _rest9935_))))))
          (if (##pair? _rest99169924_)
              (let ((_hd99219945_ (##car _rest99169924_))
                    (_tl99229947_ (##cdr _rest99169924_)))
                (let* ((_hd9950_ _hd99219945_) (_rest9952_ _tl99229947_))
                  (_K99209942_ _rest9952_ _hd9950_)))
              (_else99189932_))))))
  (define gx#check-duplicate-identifiers__0
    (lambda (_stx9957_)
      (let ((_where9959_ _stx9957_))
        (gx#check-duplicate-identifiers__% _stx9957_ _where9959_))))
  (define gx#check-duplicate-identifiers
    (lambda _g12591_
      (let ((_g12590_ (length _g12591_)))
        (cond ((##fx= _g12590_ 1)
               (apply gx#check-duplicate-identifiers__0 _g12591_))
              ((##fx= _g12590_ 2)
               (apply gx#check-duplicate-identifiers__% _g12591_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#check-duplicate-identifiers
                _g12591_))))))
  (define gx#core-bind-values?
    (lambda (_stx9902_)
      (gx#stx-andmap
       (lambda (_x9904_)
         (let ((_$e9906_ (gx#identifier? _x9904_)))
           (if _$e9906_ _$e9906_ (gx#stx-false? _x9904_))))
       _stx9902_)))
  (define gx#core-bind-values!__%
    (lambda (_stx9866_ _rebind?9867_ _phi9868_ _ctx9869_)
      (gx#stx-for-each1
       (lambda (_id9871_)
         (if (gx#identifier? _id9871_)
             (gx#core-bind-runtime!__%
              _id9871_
              _rebind?9867_
              _phi9868_
              _ctx9869_)
             '#!void))
       _stx9866_)))
  (define gx#core-bind-values!__0
    (lambda (_stx9876_)
      (let* ((_rebind?9878_ '#f)
             (_phi9880_ (gx#current-expander-phi))
             (_ctx9882_ (gx#current-expander-context)))
        (gx#core-bind-values!__%
         _stx9876_
         _rebind?9878_
         _phi9880_
         _ctx9882_))))
  (define gx#core-bind-values!__1
    (lambda (_stx9884_ _rebind?9885_)
      (let* ((_phi9887_ (gx#current-expander-phi))
             (_ctx9889_ (gx#current-expander-context)))
        (gx#core-bind-values!__%
         _stx9884_
         _rebind?9885_
         _phi9887_
         _ctx9889_))))
  (define gx#core-bind-values!__2
    (lambda (_stx9891_ _rebind?9892_ _phi9893_)
      (let ((_ctx9895_ (gx#current-expander-context)))
        (gx#core-bind-values!__%
         _stx9891_
         _rebind?9892_
         _phi9893_
         _ctx9895_))))
  (define gx#core-bind-values!
    (lambda _g12593_
      (let ((_g12592_ (length _g12593_)))
        (cond ((##fx= _g12592_ 1) (apply gx#core-bind-values!__0 _g12593_))
              ((##fx= _g12592_ 2) (apply gx#core-bind-values!__1 _g12593_))
              ((##fx= _g12592_ 3) (apply gx#core-bind-values!__2 _g12593_))
              ((##fx= _g12592_ 4) (apply gx#core-bind-values!__% _g12593_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-values!
                _g12593_))))))
  (define gx#core-quote-bind-values
    (lambda (_stx9861_)
      (gx#stx-map1
       (lambda (_x9863_)
         (if (gx#identifier? _x9863_) (gx#core-quote-syntax__0 _x9863_) '#f))
       _stx9861_)))
  (define gx#core-runtime-ref?
    (lambda (_stx9854_)
      (if (gx#identifier? _stx9854_)
          (let* ((_bind9856_ (gx#resolve-identifier__0 _stx9854_))
                 (_$e9858_ (not _bind9856_)))
            (if _$e9858_
                _$e9858_
                (##structure-instance-of? _bind9856_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id9846_ _form9847_)
      (let ((_bind9849_ (gx#resolve-identifier__0 _id9846_)))
        (if (##structure-instance-of? _bind9849_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id9846_)
            (if (not _bind9849_)
                (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                        (gx#core-extern-symbol? (gx#stx-e _id9846_)))
                    (gx#core-quote-syntax__0 _id9846_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form9847_
                     _id9846_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form9847_
                 _id9846_))))))
  (define gx#core-bind-runtime!__%
    (lambda (_id9805_ _rebind?9806_ _phi9807_ _ctx9808_)
      (let* ((_key9810_ (gx#core-identifier-key _id9805_))
             (_eid9812_
              (gx#make-binding-id__% _key9810_ '#f _phi9807_ _ctx9808_))
             (_bind9814_
              (if (##structure-instance-of? _ctx9808_ 'gx#module-context::t)
                  (##structure
                   gx#module-binding::t
                   _eid9812_
                   _key9810_
                   _phi9807_
                   _ctx9808_)
                  (if (##structure-instance-of? _ctx9808_ 'gx#top-context::t)
                      (##structure
                       gx#top-binding::t
                       _eid9812_
                       _key9810_
                       _phi9807_)
                      (if (##structure-instance-of?
                           _ctx9808_
                           'gx#local-context::t)
                          (##structure
                           gx#local-binding::t
                           _eid9812_
                           _key9810_
                           _phi9807_)
                          (##structure
                           gx#runtime-binding::t
                           _eid9812_
                           _key9810_
                           _phi9807_))))))
        (gx#bind-identifier!__%
         _id9805_
         _bind9814_
         _rebind?9806_
         _phi9807_
         _ctx9808_))))
  (define gx#core-bind-runtime!__0
    (lambda (_id9820_)
      (let* ((_rebind?9822_ '#f)
             (_phi9824_ (gx#current-expander-phi))
             (_ctx9826_ (gx#current-expander-context)))
        (gx#core-bind-runtime!__%
         _id9820_
         _rebind?9822_
         _phi9824_
         _ctx9826_))))
  (define gx#core-bind-runtime!__1
    (lambda (_id9828_ _rebind?9829_)
      (let* ((_phi9831_ (gx#current-expander-phi))
             (_ctx9833_ (gx#current-expander-context)))
        (gx#core-bind-runtime!__%
         _id9828_
         _rebind?9829_
         _phi9831_
         _ctx9833_))))
  (define gx#core-bind-runtime!__2
    (lambda (_id9835_ _rebind?9836_ _phi9837_)
      (let ((_ctx9839_ (gx#current-expander-context)))
        (gx#core-bind-runtime!__%
         _id9835_
         _rebind?9836_
         _phi9837_
         _ctx9839_))))
  (define gx#core-bind-runtime!
    (lambda _g12595_
      (let ((_g12594_ (length _g12595_)))
        (cond ((##fx= _g12594_ 1) (apply gx#core-bind-runtime!__0 _g12595_))
              ((##fx= _g12594_ 2) (apply gx#core-bind-runtime!__1 _g12595_))
              ((##fx= _g12594_ 3) (apply gx#core-bind-runtime!__2 _g12595_))
              ((##fx= _g12594_ 4) (apply gx#core-bind-runtime!__% _g12595_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-runtime!
                _g12595_))))))
  (define gx#core-bind-runtime-reference!__%
    (lambda (_id9760_ _eid9761_ _rebind?9762_ _phi9763_ _ctx9764_)
      (let* ((_key9766_ (gx#core-identifier-key _id9760_))
             (_bind9768_
              (if (##structure-instance-of? _ctx9764_ 'gx#module-context::t)
                  (##structure
                   gx#module-binding::t
                   _eid9761_
                   _key9766_
                   _phi9763_
                   _ctx9764_)
                  (if (##structure-instance-of? _ctx9764_ 'gx#top-context::t)
                      (##structure
                       gx#top-binding::t
                       _eid9761_
                       _key9766_
                       _phi9763_)
                      (##structure
                       gx#runtime-binding::t
                       _eid9761_
                       _key9766_
                       _phi9763_)))))
        (gx#bind-identifier!__%
         _id9760_
         _bind9768_
         _rebind?9762_
         _phi9763_
         _ctx9764_))))
  (define gx#core-bind-runtime-reference!__0
    (lambda (_id9774_ _eid9775_)
      (let* ((_rebind?9777_ '#f)
             (_phi9779_ (gx#current-expander-phi))
             (_ctx9781_ (gx#current-expander-context)))
        (gx#core-bind-runtime-reference!__%
         _id9774_
         _eid9775_
         _rebind?9777_
         _phi9779_
         _ctx9781_))))
  (define gx#core-bind-runtime-reference!__1
    (lambda (_id9783_ _eid9784_ _rebind?9785_)
      (let* ((_phi9787_ (gx#current-expander-phi))
             (_ctx9789_ (gx#current-expander-context)))
        (gx#core-bind-runtime-reference!__%
         _id9783_
         _eid9784_
         _rebind?9785_
         _phi9787_
         _ctx9789_))))
  (define gx#core-bind-runtime-reference!__2
    (lambda (_id9791_ _eid9792_ _rebind?9793_ _phi9794_)
      (let ((_ctx9796_ (gx#current-expander-context)))
        (gx#core-bind-runtime-reference!__%
         _id9791_
         _eid9792_
         _rebind?9793_
         _phi9794_
         _ctx9796_))))
  (define gx#core-bind-runtime-reference!
    (lambda _g12597_
      (let ((_g12596_ (length _g12597_)))
        (cond ((##fx= _g12596_ 2)
               (apply gx#core-bind-runtime-reference!__0 _g12597_))
              ((##fx= _g12596_ 3)
               (apply gx#core-bind-runtime-reference!__1 _g12597_))
              ((##fx= _g12596_ 4)
               (apply gx#core-bind-runtime-reference!__2 _g12597_))
              ((##fx= _g12596_ 5)
               (apply gx#core-bind-runtime-reference!__% _g12597_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-runtime-reference!
                _g12597_))))))
  (define gx#core-bind-extern!__%
    (lambda (_id9720_ _eid9721_ _rebind?9722_ _phi9723_ _ctx9724_)
      (gx#bind-identifier!__%
       _id9720_
       (##structure
        gx#extern-binding::t
        _eid9721_
        (gx#core-identifier-key _id9720_)
        _phi9723_)
       _rebind?9722_
       _phi9723_
       _ctx9724_)))
  (define gx#core-bind-extern!__0
    (lambda (_id9729_ _eid9730_)
      (let* ((_rebind?9732_ '#f)
             (_phi9734_ (gx#current-expander-phi))
             (_ctx9736_ (gx#current-expander-context)))
        (gx#core-bind-extern!__%
         _id9729_
         _eid9730_
         _rebind?9732_
         _phi9734_
         _ctx9736_))))
  (define gx#core-bind-extern!__1
    (lambda (_id9738_ _eid9739_ _rebind?9740_)
      (let* ((_phi9742_ (gx#current-expander-phi))
             (_ctx9744_ (gx#current-expander-context)))
        (gx#core-bind-extern!__%
         _id9738_
         _eid9739_
         _rebind?9740_
         _phi9742_
         _ctx9744_))))
  (define gx#core-bind-extern!__2
    (lambda (_id9746_ _eid9747_ _rebind?9748_ _phi9749_)
      (let ((_ctx9751_ (gx#current-expander-context)))
        (gx#core-bind-extern!__%
         _id9746_
         _eid9747_
         _rebind?9748_
         _phi9749_
         _ctx9751_))))
  (define gx#core-bind-extern!
    (lambda _g12599_
      (let ((_g12598_ (length _g12599_)))
        (cond ((##fx= _g12598_ 2) (apply gx#core-bind-extern!__0 _g12599_))
              ((##fx= _g12598_ 3) (apply gx#core-bind-extern!__1 _g12599_))
              ((##fx= _g12598_ 4) (apply gx#core-bind-extern!__2 _g12599_))
              ((##fx= _g12598_ 5) (apply gx#core-bind-extern!__% _g12599_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-extern!
                _g12599_))))))
  (define gx#core-bind-syntax!__%
    (lambda (_id9674_ _e9675_ _rebind?9676_ _phi9677_ _ctx9678_)
      (gx#bind-identifier!__%
       _id9674_
       (let ((_key9683_ (gx#core-identifier-key _id9674_))
             (_e9684_ (if (or (##structure-instance-of?
                               _e9675_
                               'gx#expander::t)
                              (##structure-instance-of?
                               _e9675_
                               'gx#expander-context::t))
                          _e9675_
                          (##structure
                           gx#user-expander::t
                           _e9675_
                           _ctx9678_
                           _phi9677_))))
         (##structure
          gx#syntax-binding::t
          (gx#make-binding-id__% _key9683_ '#t _phi9677_ _ctx9678_)
          _key9683_
          _phi9677_
          _e9684_))
       _rebind?9676_
       _phi9677_
       _ctx9678_)))
  (define gx#core-bind-syntax!__0
    (lambda (_id9689_ _e9690_)
      (let* ((_rebind?9692_ '#f)
             (_phi9694_ (gx#current-expander-phi))
             (_ctx9696_ (gx#current-expander-context)))
        (gx#core-bind-syntax!__%
         _id9689_
         _e9690_
         _rebind?9692_
         _phi9694_
         _ctx9696_))))
  (define gx#core-bind-syntax!__1
    (lambda (_id9698_ _e9699_ _rebind?9700_)
      (let* ((_phi9702_ (gx#current-expander-phi))
             (_ctx9704_ (gx#current-expander-context)))
        (gx#core-bind-syntax!__%
         _id9698_
         _e9699_
         _rebind?9700_
         _phi9702_
         _ctx9704_))))
  (define gx#core-bind-syntax!__2
    (lambda (_id9706_ _e9707_ _rebind?9708_ _phi9709_)
      (let ((_ctx9711_ (gx#current-expander-context)))
        (gx#core-bind-syntax!__%
         _id9706_
         _e9707_
         _rebind?9708_
         _phi9709_
         _ctx9711_))))
  (define gx#core-bind-syntax!
    (lambda _g12601_
      (let ((_g12600_ (length _g12601_)))
        (cond ((##fx= _g12600_ 2) (apply gx#core-bind-syntax!__0 _g12601_))
              ((##fx= _g12600_ 3) (apply gx#core-bind-syntax!__1 _g12601_))
              ((##fx= _g12600_ 4) (apply gx#core-bind-syntax!__2 _g12601_))
              ((##fx= _g12600_ 5) (apply gx#core-bind-syntax!__% _g12601_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-syntax!
                _g12601_))))))
  (define gx#core-bind-root-syntax!__%
    (lambda (_id9657_ _e9658_ _rebind?9659_)
      (gx#core-bind-syntax!__%
       _id9657_
       _e9658_
       _rebind?9659_
       '0
       (gx#core-context-root__0))))
  (define gx#core-bind-root-syntax!__0
    (lambda (_id9664_ _e9665_)
      (let ((_rebind?9667_ '#f))
        (gx#core-bind-root-syntax!__% _id9664_ _e9665_ _rebind?9667_))))
  (define gx#core-bind-root-syntax!
    (lambda _g12603_
      (let ((_g12602_ (length _g12603_)))
        (cond ((##fx= _g12602_ 2)
               (apply gx#core-bind-root-syntax!__0 _g12603_))
              ((##fx= _g12602_ 3)
               (apply gx#core-bind-root-syntax!__% _g12603_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-root-syntax!
                _g12603_))))))
  (define gx#core-bind-alias!__%
    (lambda (_id9615_ _alias-id9616_ _rebind?9617_ _phi9618_ _ctx9619_)
      (gx#bind-identifier!__%
       _id9615_
       (let ((_key9621_ (gx#core-identifier-key _id9615_)))
         (##structure
          gx#alias-binding::t
          (gx#make-binding-id__% _key9621_ '#t _phi9618_ _ctx9619_)
          _key9621_
          _phi9618_
          _alias-id9616_))
       _rebind?9617_
       _phi9618_
       _ctx9619_)))
  (define gx#core-bind-alias!__0
    (lambda (_id9626_ _alias-id9627_)
      (let* ((_rebind?9629_ '#f)
             (_phi9631_ (gx#current-expander-phi))
             (_ctx9633_ (gx#current-expander-context)))
        (gx#core-bind-alias!__%
         _id9626_
         _alias-id9627_
         _rebind?9629_
         _phi9631_
         _ctx9633_))))
  (define gx#core-bind-alias!__1
    (lambda (_id9635_ _alias-id9636_ _rebind?9637_)
      (let* ((_phi9639_ (gx#current-expander-phi))
             (_ctx9641_ (gx#current-expander-context)))
        (gx#core-bind-alias!__%
         _id9635_
         _alias-id9636_
         _rebind?9637_
         _phi9639_
         _ctx9641_))))
  (define gx#core-bind-alias!__2
    (lambda (_id9643_ _alias-id9644_ _rebind?9645_ _phi9646_)
      (let ((_ctx9648_ (gx#current-expander-context)))
        (gx#core-bind-alias!__%
         _id9643_
         _alias-id9644_
         _rebind?9645_
         _phi9646_
         _ctx9648_))))
  (define gx#core-bind-alias!
    (lambda _g12605_
      (let ((_g12604_ (length _g12605_)))
        (cond ((##fx= _g12604_ 2) (apply gx#core-bind-alias!__0 _g12605_))
              ((##fx= _g12604_ 3) (apply gx#core-bind-alias!__1 _g12605_))
              ((##fx= _g12604_ 4) (apply gx#core-bind-alias!__2 _g12605_))
              ((##fx= _g12604_ 5) (apply gx#core-bind-alias!__% _g12605_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-alias!
                _g12605_))))))
  (define gx#make-binding-id__%
    (lambda (_key9572_ _syntax?9573_ _phi9574_ _ctx9575_)
      (if (uninterned-symbol? _key9572_)
          (gensym 'L)
          (if (pair? _key9572_)
              (gensym (car _key9572_))
              (if (##structure-instance-of? _ctx9575_ 'gx#top-context::t)
                  (let ((_ns9577_ (gx#core-context-namespace__% _ctx9575_)))
                    (if (and (fxzero? _phi9574_) (not _syntax?9573_))
                        (if _ns9577_
                            (make-symbol _ns9577_ '"#" _key9572_)
                            _key9572_)
                        (if _syntax?9573_
                            (make-symbol
                             (let ((_$e9579_ _ns9577_))
                               (if _$e9579_ _$e9579_ '""))
                             '"[:"
                             (number->string _phi9574_)
                             '":]#"
                             _key9572_)
                            (make-symbol
                             (let ((_$e9582_ _ns9577_))
                               (if _$e9582_ _$e9582_ '""))
                             '"["
                             (number->string _phi9574_)
                             '"]#"
                             _key9572_))))
                  (gensym _key9572_))))))
  (define gx#make-binding-id__0
    (lambda (_key9588_)
      (let* ((_syntax?9590_ '#f)
             (_phi9592_ (gx#current-expander-phi))
             (_ctx9594_ (gx#current-expander-context)))
        (gx#make-binding-id__% _key9588_ _syntax?9590_ _phi9592_ _ctx9594_))))
  (define gx#make-binding-id__1
    (lambda (_key9596_ _syntax?9597_)
      (let* ((_phi9599_ (gx#current-expander-phi))
             (_ctx9601_ (gx#current-expander-context)))
        (gx#make-binding-id__% _key9596_ _syntax?9597_ _phi9599_ _ctx9601_))))
  (define gx#make-binding-id__2
    (lambda (_key9603_ _syntax?9604_ _phi9605_)
      (let ((_ctx9607_ (gx#current-expander-context)))
        (gx#make-binding-id__% _key9603_ _syntax?9604_ _phi9605_ _ctx9607_))))
  (define gx#make-binding-id
    (lambda _g12607_
      (let ((_g12606_ (length _g12607_)))
        (cond ((##fx= _g12606_ 1) (apply gx#make-binding-id__0 _g12607_))
              ((##fx= _g12606_ 2) (apply gx#make-binding-id__1 _g12607_))
              ((##fx= _g12606_ 3) (apply gx#make-binding-id__2 _g12607_))
              ((##fx= _g12606_ 4) (apply gx#make-binding-id__% _g12607_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#make-binding-id
                _g12607_)))))))
