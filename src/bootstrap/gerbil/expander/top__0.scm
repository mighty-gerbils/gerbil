(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx8500_)
      (let ((_expand-special8502_
             (lambda (_hd8504_ _K8505_ _rest8506_ _r8507_)
               (_K8505_ _rest8506_
                        (cons (gx#core-expand-top _hd8504_) _r8507_)))))
        (gx#core-expand-block__0 _stx8500_ _expand-special8502_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8253_)
      (let ((_expand-special8255_
             (lambda (_hd8375_ _K8376_ _rest8377_ _r8378_)
               (let ((_K8382_ (lambda (_e8380_)
                                (_K8376_ _rest8377_ (cons _e8380_ _r8378_)))))
                 (let ((_e83838412_ _hd8375_))
                   (let ((_E84078416_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e83838412_))))
                     (let ((_E84038428_
                            (lambda ()
                              (if (gx#stx-pair? _e83838412_)
                                  (let ((_e84088420_
                                         (gx#syntax-e _e83838412_)))
                                    (let ((_hd84098423_ (##car _e84088420_))
                                          (_tl84108425_ (##cdr _e84088420_)))
                                      (if (if (gx#identifier? _hd84098423_)
                                              (gx#core-identifier=?
                                               _hd84098423_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K8382_ (gx#core-expand-define-runtime%
                                                        _hd8375_))
                                              (_E84078416_))
                                          (_E84078416_))))
                                  (_E84078416_)))))
                       (let ((_E83998440_
                              (lambda ()
                                (if (gx#stx-pair? _e83838412_)
                                    (let ((_e84048432_
                                           (gx#syntax-e _e83838412_)))
                                      (let ((_hd84058435_ (##car _e84048432_))
                                            (_tl84068437_ (##cdr _e84048432_)))
                                        (if (if (gx#identifier? _hd84058435_)
                                                (gx#core-identifier=?
                                                 _hd84058435_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K8382_ (gx#core-expand-define-alias%
                                                          _hd8375_))
                                                (_E84038428_))
                                            (_E84038428_))))
                                    (_E84038428_)))))
                         (let ((_E83898452_
                                (lambda ()
                                  (if (gx#stx-pair? _e83838412_)
                                      (let ((_e84008444_
                                             (gx#syntax-e _e83838412_)))
                                        (let ((_hd84018447_
                                               (##car _e84008444_))
                                              (_tl84028449_
                                               (##cdr _e84008444_)))
                                          (if (if (gx#identifier? _hd84018447_)
                                                  (gx#core-identifier=?
                                                   _hd84018447_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K8382_ (gx#core-expand-define-syntax%
                                                            _hd8375_))
                                                  (_E83998440_))
                                              (_E83998440_))))
                                      (_E83998440_)))))
                           (let ((_E83858484_
                                  (lambda ()
                                    (if (gx#stx-pair? _e83838412_)
                                        (let ((_e83908456_
                                               (gx#syntax-e _e83838412_)))
                                          (let ((_hd83918459_
                                                 (##car _e83908456_))
                                                (_tl83928461_
                                                 (##cdr _e83908456_)))
                                            (if (if (gx#identifier?
                                                     _hd83918459_)
                                                    (gx#core-identifier=?
                                                     _hd83918459_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl83928461_)
                                                    (let ((_e83938464_
                                                           (gx#syntax-e
                                                            _tl83928461_)))
                                                      (let ((_hd83948467_
                                                             (##car _e83938464_))
                                                            (_tl83958469_
                                                             (##cdr _e83938464_)))
                                                        (let ((_hd-bind8472_
                                                               _hd83948467_))
                                                          (if (gx#stx-pair?
                                                               _tl83958469_)
                                                              (let ((_e83968474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl83958469_)))
                        (let ((_hd83978477_ (##car _e83968474_))
                              (_tl83988479_ (##cdr _e83968474_)))
                          (let ((_expr8482_ _hd83978477_))
                            (if (gx#stx-null? _tl83988479_)
                                (if (gx#core-bind-values? _hd-bind8472_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind8472_)
                                      (_K8382_ _hd8375_))
                                    (_E83898452_))
                                (_E83898452_)))))
                      (_E83898452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E83898452_))
                                                (_E83898452_))))
                                        (_E83898452_)))))
                             (let ((_E83848496_
                                    (lambda ()
                                      (if (gx#stx-pair? _e83838412_)
                                          (let ((_e83868488_
                                                 (gx#syntax-e _e83838412_)))
                                            (let ((_hd83878491_
                                                   (##car _e83868488_))
                                                  (_tl83888493_
                                                   (##cdr _e83868488_)))
                                              (if (if (gx#identifier?
                                                       _hd83878491_)
                                                      (gx#core-identifier=?
                                                       _hd83878491_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K8382_ (gx#core-expand-begin-syntax%
                                                                _hd8375_))
                                                      (_E83858484_))
                                                  (_E83858484_))))
                                          (_E83858484_)))))
                               (let () (_E83848496_)))))))))))))
        (let ((_eval-body8256_
               (lambda (_rbody8264_)
                 ((letrec ((_lp8266_
                            (lambda (_rest8268_ _body8269_ _ebody8270_)
                              (let ((_rest82718279_ _rest8268_))
                                (let ((_E82748283_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest82718279_))))
                                  (let ((_else82738287_
                                         (lambda ()
                                           (values _body8269_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody8270_)
                                                     (gx#stx-source
                                                      _stx8253_)))))))
                                    (let ((_K82758363_
                                           (lambda (_rest8290_ _hd8291_)
                                             (let ((_e82928309_ _hd8291_))
                                               (let ((_E83048313_
                                                      (lambda ()
                                                        (_lp8266_
                                                         _rest8290_
                                                         (cons _hd8291_
                                                               _body8269_)
                                                         (cons _hd8291_
                                                               _ebody8270_)))))
                                                 (let ((_E82948325_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e82928309_)
                                                              (let ((_e83058317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e82928309_)))
                        (let ((_hd83068320_ (##car _e83058317_))
                              (_tl83078322_ (##cdr _e83058317_)))
                          (if (if (gx#identifier? _hd83068320_)
                                  (gx#core-identifier=?
                                   _hd83068320_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp8266_
                                   _rest8290_
                                   (cons _hd8291_ _body8269_)
                                   _ebody8270_)
                                  (_E83048313_))
                              (_E83048313_))))
                      (_E83048313_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E82938359_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e82928309_)
                        (let ((_e82958329_ (gx#syntax-e _e82928309_)))
                          (let ((_hd82968332_ (##car _e82958329_))
                                (_tl82978334_ (##cdr _e82958329_)))
                            (if (if (gx#identifier? _hd82968332_)
                                    (gx#core-identifier=?
                                     _hd82968332_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl82978334_)
                                    (let ((_e82988337_
                                           (gx#syntax-e _tl82978334_)))
                                      (let ((_hd82998340_ (##car _e82988337_))
                                            (_tl83008342_ (##cdr _e82988337_)))
                                        (let ((_hd-bind8345_ _hd82998340_))
                                          (if (gx#stx-pair? _tl83008342_)
                                              (let ((_e83018347_
                                                     (gx#syntax-e
                                                      _tl83008342_)))
                                                (let ((_hd83028350_
                                                       (##car _e83018347_))
                                                      (_tl83038352_
                                                       (##cdr _e83018347_)))
                                                  (let ((_expr8355_
                                                         _hd83028350_))
                                                    (if (gx#stx-null?
                                                         _tl83038352_)
                                                        (if '#t
                                                            (let ((_ehd8357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind8345_)
                                        (cons (gx#core-expand-expression
                                               _expr8355_)
                                              '())))
                            (gx#stx-source _hd8291_))))
                      (_lp8266_
                       _rest8290_
                       (cons _ehd8357_ _body8269_)
                       (cons _ehd8357_ _ebody8270_)))
                    (_E82948325_))
                (_E82948325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E82948325_)))))
                                    (_E82948325_))
                                (_E82948325_))))
                        (_E82948325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E82938359_)))))))))
                                      (if (##pair? _rest82718279_)
                                          (let ((_hd82768366_
                                                 (##car _rest82718279_))
                                                (_tl82778368_
                                                 (##cdr _rest82718279_)))
                                            (let ((_hd8371_ _hd82768366_))
                                              (let ((_rest8373_ _tl82778368_))
                                                (_K82758363_
                                                 _rest8373_
                                                 _hd8371_))))
                                          (_else82738287_)))))))))
                    _lp8266_)
                  _rbody8264_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody8259_
                    (gx#core-expand-block__1
                     _stx8253_
                     _expand-special8255_
                     '#f)))
               (let ((_g8514_ (_eval-body8256_ _rbody8259_)))
                 (begin
                   (let ((_g8515_ (values-count _g8514_)))
                     (if (not (fx= _g8515_ 2))
                         (error "Context expects 2 values" _g8515_)))
                   (let ((_expanded-body8261_ (values-ref _g8514_ 0))
                         (_value8262_ (values-ref _g8514_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body8261_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value8262_ '())))
                      (gx#stx-source _stx8253_)))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8223_)
      (let ((_e82248231_ _stx8223_))
        (let ((_E82268235_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82248231_))))
          (let ((_E82258249_
                 (lambda ()
                   (if (gx#stx-pair? _e82248231_)
                       (let ((_e82278239_ (gx#syntax-e _e82248231_)))
                         (let ((_hd82288242_ (##car _e82278239_))
                               (_tl82298244_ (##cdr _e82278239_)))
                           (let ((_body8247_ _tl82298244_))
                             (if (gx#stx-list? _body8247_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body8247_)
                                  (gx#stx-source _stx8223_))
                                 (_E82268235_)))))
                       (_E82268235_)))))
            (let () (_E82258249_)))))))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8211_)
      (let ((_e82128215_ _stx8211_))
        (let ((_E82138219_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82128215_))))
          (let () (_E82138219_))))))
  (define gx#core-expand-local-block
    (lambda (_stx7935_ _body7936_)
      (let ((_expand-internal-special7940_
             (lambda (_hd8097_ _K8098_ _rest8099_ _r8100_)
               (let ((_e81018126_ _hd8097_))
                 (let ((_E81218130_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e81018126_))))
                   (let ((_E81178142_
                          (lambda ()
                            (if (gx#stx-pair? _e81018126_)
                                (let ((_e81228134_ (gx#syntax-e _e81018126_)))
                                  (let ((_hd81238137_ (##car _e81228134_))
                                        (_tl81248139_ (##cdr _e81228134_)))
                                    (if (if (gx#identifier? _hd81238137_)
                                            (gx#core-identifier=?
                                             _hd81238137_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8098_ _rest8099_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8097_)
                                                           _r8100_))
                                            (_E81218130_))
                                        (_E81218130_))))
                                (_E81218130_)))))
                     (let ((_E81138154_
                            (lambda ()
                              (if (gx#stx-pair? _e81018126_)
                                  (let ((_e81188146_
                                         (gx#syntax-e _e81018126_)))
                                    (let ((_hd81198149_ (##car _e81188146_))
                                          (_tl81208151_ (##cdr _e81188146_)))
                                      (if (if (gx#identifier? _hd81198149_)
                                              (gx#core-identifier=?
                                               _hd81198149_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd8097_)
                                                (_K8098_ _rest8099_ _r8100_))
                                              (_E81178142_))
                                          (_E81178142_))))
                                  (_E81178142_)))))
                       (let ((_E81038166_
                              (lambda ()
                                (if (gx#stx-pair? _e81018126_)
                                    (let ((_e81148158_
                                           (gx#syntax-e _e81018126_)))
                                      (let ((_hd81158161_ (##car _e81148158_))
                                            (_tl81168163_ (##cdr _e81148158_)))
                                        (if (if (gx#identifier? _hd81158161_)
                                                (gx#core-identifier=?
                                                 _hd81158161_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd8097_)
                                                  (_K8098_ _rest8099_ _r8100_))
                                                (_E81138154_))
                                            (_E81138154_))))
                                    (_E81138154_)))))
                         (let ((_E81028198_
                                (lambda ()
                                  (if (gx#stx-pair? _e81018126_)
                                      (let ((_e81048170_
                                             (gx#syntax-e _e81018126_)))
                                        (let ((_hd81058173_
                                               (##car _e81048170_))
                                              (_tl81068175_
                                               (##cdr _e81048170_)))
                                          (if (if (gx#identifier? _hd81058173_)
                                                  (gx#core-identifier=?
                                                   _hd81058173_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl81068175_)
                                                  (let ((_e81078178_
                                                         (gx#syntax-e
                                                          _tl81068175_)))
                                                    (let ((_hd81088181_
                                                           (##car _e81078178_))
                                                          (_tl81098183_
                                                           (##cdr _e81078178_)))
                                                      (let ((_hd-bind8186_
                                                             _hd81088181_))
                                                        (if (gx#stx-pair?
                                                             _tl81098183_)
                                                            (let ((_e81108188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl81098183_)))
                      (let ((_hd81118191_ (##car _e81108188_))
                            (_tl81128193_ (##cdr _e81108188_)))
                        (let ((_expr8196_ _hd81118191_))
                          (if (gx#stx-null? _tl81128193_)
                              (if (gx#core-bind-values? _hd-bind8186_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind8186_)
                                    (_K8098_ _rest8099_
                                             (cons _hd8097_ _r8100_)))
                                  (_E81038166_))
                              (_E81038166_)))))
                    (_E81038166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E81038166_))
                                              (_E81038166_))))
                                      (_E81038166_)))))
                           (let () (_E81028198_)))))))))))
        (let ((_wrap-internal7941_
               (lambda (_rbody7943_)
                 ((letrec ((_lp7945_
                            (lambda (_rest7947_
                                     _decls7948_
                                     _bind7949_
                                     _body7950_)
                              (let ((_e79517958_ _rest7947_))
                                (let ((_E79538007_
                                       (lambda ()
                                         (let ((_body8002_
                                                (let ((_body79617971_
                                                       _body7950_))
                                                  (let ((_E79657975_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body79617971_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else79647979_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body7950_)
                                                              (gx#stx-source
                                                               _stx7935_)))))
                                                      (let ((_try-match79637995_
                                                             (lambda ()
                                                               (let ((_K79667985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr7983_) _expr7983_)))
                         (if (##pair? _body79617971_)
                             (let ((_hd79677988_ (##car _body79617971_))
                                   (_tl79687990_ (##cdr _body79617971_)))
                               (let ((_expr7993_ _hd79677988_))
                                 (if (##null? _tl79687990_)
                                     (_K79667985_ _expr7993_)
                                     (_else79647979_))))
                             (_else79647979_))))))
                (let ((_K79697999_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx7935_))))
                  (if (##null? _body79617971_)
                      (_K79697999_)
                      (_try-match79637995_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body8004_
                                                  (if (null? _bind7949_)
                                                      _body8002_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind7949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body8002_ '())))
               (gx#stx-source _stx7935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls7948_)
                                                   _body8004_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls7948_
                                                                (cons _body8004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx7935_)))))))))
                                  (let ((_E79528093_
                                         (lambda ()
                                           (if (gx#stx-pair? _e79517958_)
                                               (let ((_e79548011_
                                                      (gx#syntax-e
                                                       _e79517958_)))
                                                 (let ((_hd79558014_
                                                        (##car _e79548011_))
                                                       (_tl79568016_
                                                        (##cdr _e79548011_)))
                                                   (let ((_hd8019_
                                                          _hd79558014_))
                                                     (let ((_rest8021_
                                                            _tl79568016_))
                                                       (if '#t
                                                           (let ((_e80228039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8019_))
                     (let ((_E80348043_
                            (lambda ()
                              (if (null? _bind7949_)
                                  (_lp7945_
                                   _rest8021_
                                   _decls7948_
                                   _bind7949_
                                   (cons _hd8019_ _body7950_))
                                  (_lp7945_
                                   _rest8021_
                                   _decls7948_
                                   (cons (cons '#f (cons _hd8019_ '()))
                                         _bind7949_)
                                   _body7950_)))))
                       (let ((_E80248057_
                              (lambda ()
                                (if (gx#stx-pair? _e80228039_)
                                    (let ((_e80358047_
                                           (gx#syntax-e _e80228039_)))
                                      (let ((_hd80368050_ (##car _e80358047_))
                                            (_tl80378052_ (##cdr _e80358047_)))
                                        (if (if (gx#identifier? _hd80368050_)
                                                (gx#core-identifier=?
                                                 _hd80368050_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls8055_ _tl80378052_))
                                              (if '#t
                                                  (_lp7945_
                                                   _rest8021_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls7948_
                                                    _xdecls8055_)
                                                   _bind7949_
                                                   _body7950_)
                                                  (_E80348043_)))
                                            (_E80348043_))))
                                    (_E80348043_)))))
                         (let ((_E80238089_
                                (lambda ()
                                  (if (gx#stx-pair? _e80228039_)
                                      (let ((_e80258061_
                                             (gx#syntax-e _e80228039_)))
                                        (let ((_hd80268064_
                                               (##car _e80258061_))
                                              (_tl80278066_
                                               (##cdr _e80258061_)))
                                          (if (if (gx#identifier? _hd80268064_)
                                                  (gx#core-identifier=?
                                                   _hd80268064_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl80278066_)
                                                  (let ((_e80288069_
                                                         (gx#syntax-e
                                                          _tl80278066_)))
                                                    (let ((_hd80298072_
                                                           (##car _e80288069_))
                                                          (_tl80308074_
                                                           (##cdr _e80288069_)))
                                                      (let ((_hd-bind8077_
                                                             _hd80298072_))
                                                        (if (gx#stx-pair?
                                                             _tl80308074_)
                                                            (let ((_e80318079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl80308074_)))
                      (let ((_hd80328082_ (##car _e80318079_))
                            (_tl80338084_ (##cdr _e80318079_)))
                        (let ((_expr8087_ _hd80328082_))
                          (if (gx#stx-null? _tl80338084_)
                              (if '#t
                                  (_lp7945_
                                   _rest8021_
                                   _decls7948_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind8077_)
                                               (cons (gx#core-expand-expression
                                                      _expr8087_)
                                                     '()))
                                         _bind7949_)
                                   _body7950_)
                                  (_E80248057_))
                              (_E80248057_)))))
                    (_E80248057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E80248057_))
                                              (_E80248057_))))
                                      (_E80248057_)))))
                           (let () (_E80238089_))))))
                   (_E79538007_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E79538007_)))))
                                    (let () (_E79528093_))))))))
                    _lp7945_)
                  _rbody7943_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal7939_
                 (lambda (_hd8202_ _rest8203_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal7941_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd8202_ _rest8203_)
                         (gx#stx-source _stx7935_))
                        _expand-internal-special7940_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj8508 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj8508)
                        __obj8508))))))
            (let ((_expand-special7938_
                   (lambda (_hd8206_ _K8207_ _rest8208_ _r8209_)
                     (_K8207_ '()
                              (cons (_expand-internal7939_ _hd8206_ _rest8208_)
                                    _r8209_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body7936_)
                (gx#stx-source _stx7935_))
               _expand-special7938_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx7873_)
      (let ((_e78747881_ _stx7873_))
        (let ((_E78767885_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78747881_))))
          (let ((_E78757931_
                 (lambda ()
                   (if (gx#stx-pair? _e78747881_)
                       (let ((_e78777889_ (gx#syntax-e _e78747881_)))
                         (let ((_hd78787892_ (##car _e78777889_))
                               (_tl78797894_ (##cdr _e78777889_)))
                           (let ((_body7897_ _tl78797894_))
                             (if (gx#stx-list? _body7897_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl7899_)
                                      (let ((_e79007907_ _decl7899_))
                                        (let ((_E79027911_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e79007907_))))
                                          (let ((_E79017927_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e79007907_)
                                                       (let ((_e79037915_
                                                              (gx#syntax-e
                                                               _e79007907_)))
                                                         (let ((_hd79047918_
                                                                (##car _e79037915_))
                                                               (_tl79057920_
                                                                (##cdr _e79037915_)))
                                                           (let ((_head7923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd79047918_))
                     (let ((_args7925_ _tl79057920_))
                       (if (gx#stx-list? _args7925_)
                           (gx#stx-map1 gx#core-quote-syntax _decl7899_)
                           (_E79027911_))))))
               (_E79027911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E79017927_))))))
                                    _body7897_))
                                  (gx#stx-source _stx7873_))
                                 (_E78767885_)))))
                       (_E78767885_)))))
            (let () (_E78757931_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx7757_)
      (let ((_e77587765_ _stx7757_))
        (let ((_E77607769_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77587765_))))
          (let ((_E77597869_
                 (lambda ()
                   (if (gx#stx-pair? _e77587765_)
                       (let ((_e77617773_ (gx#syntax-e _e77587765_)))
                         (let ((_hd77627776_ (##car _e77617773_))
                               (_tl77637778_ (##cdr _e77617773_)))
                           (let ((_body7781_ _tl77637778_))
                             (if (gx#stx-list? _body7781_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind7783_)
                                      (let ((_e77847794_ _bind7783_))
                                        (let ((_E77867798_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e77847794_))))
                                          (let ((_E77857822_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e77847794_)
                                                       (let ((_e77877802_
                                                              (gx#syntax-e
                                                               _e77847794_)))
                                                         (let ((_hd77887805_
                                                                (##car _e77877802_))
                                                               (_tl77897807_
                                                                (##cdr _e77877802_)))
                                                           (let ((_id7810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd77887805_))
                     (if (gx#stx-pair? _tl77897807_)
                         (let ((_e77907812_ (gx#syntax-e _tl77897807_)))
                           (let ((_hd77917815_ (##car _e77907812_))
                                 (_tl77927817_ (##cdr _e77907812_)))
                             (let ((_eid7820_ _hd77917815_))
                               (if (gx#stx-null? _tl77927817_)
                                   (if (if (gx#identifier? _id7810_)
                                           (gx#identifier? _eid7820_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id7810_
                                        (gx#stx-e _eid7820_))
                                       (_E77867798_))
                                   (_E77867798_)))))
                         (_E77867798_)))))
               (_E77867798_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E77857822_))))))
                                    _body7781_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind7826_)
                                        (let ((_e78277837_ _bind7826_))
                                          (let ((_E78297841_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e78277837_))))
                                            (let ((_E78287865_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e78277837_)
                                                         (let ((_e78307845_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e78277837_)))
                   (let ((_hd78317848_ (##car _e78307845_))
                         (_tl78327850_ (##cdr _e78307845_)))
                     (let ((_id7853_ _hd78317848_))
                       (if (gx#stx-pair? _tl78327850_)
                           (let ((_e78337855_ (gx#syntax-e _tl78327850_)))
                             (let ((_hd78347858_ (##car _e78337855_))
                                   (_tl78357860_ (##cdr _e78337855_)))
                               (let ((_eid7863_ _hd78347858_))
                                 (if (gx#stx-null? _tl78357860_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id7853_)
                                               (cons (gx#stx-e _eid7863_) '()))
                                         (_E78297841_))
                                     (_E78297841_)))))
                           (_E78297841_)))))
                 (_E78297841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E78287865_))))))
                                      _body7781_))
                                    (gx#stx-source _stx7757_)))
                                 (_E77607769_)))))
                       (_E77607769_)))))
            (let () (_E77597869_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx7703_)
      (let ((_e77047717_ _stx7703_))
        (let ((_E77067721_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77047717_))))
          (let ((_E77057753_
                 (lambda ()
                   (if (gx#stx-pair? _e77047717_)
                       (let ((_e77077725_ (gx#syntax-e _e77047717_)))
                         (let ((_hd77087728_ (##car _e77077725_))
                               (_tl77097730_ (##cdr _e77077725_)))
                           (if (gx#stx-pair? _tl77097730_)
                               (let ((_e77107733_ (gx#syntax-e _tl77097730_)))
                                 (let ((_hd77117736_ (##car _e77107733_))
                                       (_tl77127738_ (##cdr _e77107733_)))
                                   (let ((_hd7741_ _hd77117736_))
                                     (if (gx#stx-pair? _tl77127738_)
                                         (let ((_e77137743_
                                                (gx#syntax-e _tl77127738_)))
                                           (let ((_hd77147746_
                                                  (##car _e77137743_))
                                                 (_tl77157748_
                                                  (##cdr _e77137743_)))
                                             (let ((_expr7751_ _hd77147746_))
                                               (if (gx#stx-null? _tl77157748_)
                                                   (if (gx#core-bind-values?
                                                        _hd7741_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd7741_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd7741_)
                              (cons (gx#core-expand-expression _expr7751_)
                                    '())))
                  (gx#stx-source _stx7703_)))
               (_E77067721_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E77067721_)))))
                                         (_E77067721_)))))
                               (_E77067721_))))
                       (_E77067721_)))))
            (let () (_E77057753_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx7649_)
      (let ((_e76507663_ _stx7649_))
        (let ((_E76527667_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76507663_))))
          (let ((_E76517699_
                 (lambda ()
                   (if (gx#stx-pair? _e76507663_)
                       (let ((_e76537671_ (gx#syntax-e _e76507663_)))
                         (let ((_hd76547674_ (##car _e76537671_))
                               (_tl76557676_ (##cdr _e76537671_)))
                           (if (gx#stx-pair? _tl76557676_)
                               (let ((_e76567679_ (gx#syntax-e _tl76557676_)))
                                 (let ((_hd76577682_ (##car _e76567679_))
                                       (_tl76587684_ (##cdr _e76567679_)))
                                   (let ((_id7687_ _hd76577682_))
                                     (if (gx#stx-pair? _tl76587684_)
                                         (let ((_e76597689_
                                                (gx#syntax-e _tl76587684_)))
                                           (let ((_hd76607692_
                                                  (##car _e76597689_))
                                                 (_tl76617694_
                                                  (##cdr _e76597689_)))
                                             (let ((_binding-id7697_
                                                    _hd76607692_))
                                               (if (gx#stx-null? _tl76617694_)
                                                   (if (if (gx#identifier?
                                                            _id7687_)
                                                           (gx#identifier?
                                                            _binding-id7697_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id7687_
                                                          (gx#stx-e
                                                           _binding-id7697_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id7687_)
                              (cons (gx#core-quote-syntax__0 _binding-id7697_)
                                    '())))))
               (_E76527667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E76527667_)))))
                                         (_E76527667_)))))
                               (_E76527667_))))
                       (_E76527667_)))))
            (let () (_E76517699_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx7592_)
      (let ((_e75937606_ _stx7592_))
        (let ((_E75957610_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75937606_))))
          (let ((_E75947645_
                 (lambda ()
                   (if (gx#stx-pair? _e75937606_)
                       (let ((_e75967614_ (gx#syntax-e _e75937606_)))
                         (let ((_hd75977617_ (##car _e75967614_))
                               (_tl75987619_ (##cdr _e75967614_)))
                           (if (gx#stx-pair? _tl75987619_)
                               (let ((_e75997622_ (gx#syntax-e _tl75987619_)))
                                 (let ((_hd76007625_ (##car _e75997622_))
                                       (_tl76017627_ (##cdr _e75997622_)))
                                   (let ((_id7630_ _hd76007625_))
                                     (if (gx#stx-pair? _tl76017627_)
                                         (let ((_e76027632_
                                                (gx#syntax-e _tl76017627_)))
                                           (let ((_hd76037635_
                                                  (##car _e76027632_))
                                                 (_tl76047637_
                                                  (##cdr _e76027632_)))
                                             (let ((_expr7640_ _hd76037635_))
                                               (if (gx#stx-null? _tl76047637_)
                                                   (if (gx#identifier?
                                                        _id7630_)
                                                       (let ((_g8516_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr7640_)))
                 (begin
                   (let ((_g8517_ (values-count _g8516_)))
                     (if (not (fx= _g8517_ 2))
                         (error "Context expects 2 values" _g8517_)))
                   (let ((_e-stx7642_ (values-ref _g8516_ 0))
                         (_e7643_ (values-ref _g8516_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id7630_ _e7643_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id7630_)
                                    (cons _e-stx7642_ '())))
                        (gx#stx-source _stx7592_))))))
               (_E75957610_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E75957610_)))))
                                         (_E75957610_)))))
                               (_E75957610_))))
                       (_E75957610_)))))
            (let () (_E75947645_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx7536_)
      (let ((_e75377550_ _stx7536_))
        (let ((_E75397554_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75377550_))))
          (let ((_E75387588_
                 (lambda ()
                   (if (gx#stx-pair? _e75377550_)
                       (let ((_e75407558_ (gx#syntax-e _e75377550_)))
                         (let ((_hd75417561_ (##car _e75407558_))
                               (_tl75427563_ (##cdr _e75407558_)))
                           (if (gx#stx-pair? _tl75427563_)
                               (let ((_e75437566_ (gx#syntax-e _tl75427563_)))
                                 (let ((_hd75447569_ (##car _e75437566_))
                                       (_tl75457571_ (##cdr _e75437566_)))
                                   (let ((_id7574_ _hd75447569_))
                                     (if (gx#stx-pair? _tl75457571_)
                                         (let ((_e75467576_
                                                (gx#syntax-e _tl75457571_)))
                                           (let ((_hd75477579_
                                                  (##car _e75467576_))
                                                 (_tl75487581_
                                                  (##cdr _e75467576_)))
                                             (let ((_alias-id7584_
                                                    _hd75477579_))
                                               (if (gx#stx-null? _tl75487581_)
                                                   (if (if (gx#identifier?
                                                            _id7574_)
                                                           (gx#identifier?
                                                            _alias-id7584_)
                                                           '#f)
                                                       (let ((_alias-id7586_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id7584_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id7574_
                                                            _alias-id7586_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id7574_)
                                (cons _alias-id7586_ '()))))))
               (_E75397554_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E75397554_)))))
                                         (_E75397554_)))))
                               (_E75397554_))))
                       (_E75397554_)))))
            (let () (_E75387588_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda7477
      (lambda (_stx7479_ _wrap?7480_)
        (let ((_e74817491_ _stx7479_))
          (let ((_E74837495_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e74817491_))))
            (let ((_E74827522_
                   (lambda ()
                     (if (gx#stx-pair? _e74817491_)
                         (let ((_e74847499_ (gx#syntax-e _e74817491_)))
                           (let ((_hd74857502_ (##car _e74847499_))
                                 (_tl74867504_ (##cdr _e74847499_)))
                             (if (gx#stx-pair? _tl74867504_)
                                 (let ((_e74877507_
                                        (gx#syntax-e _tl74867504_)))
                                   (let ((_hd74887510_ (##car _e74877507_))
                                         (_tl74897512_ (##cdr _e74877507_)))
                                     (let ((_hd7515_ _hd74887510_))
                                       (let ((_body7517_ _tl74897512_))
                                         (if (gx#core-bind-values? _hd7515_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd7515_)
                                                  (let ((_body7520_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd7515_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7479_
                              _body7517_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?7480_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body7520_)
                                                         (gx#stx-source
                                                          _stx7479_))
                                                        _body7520_))))
                                              gx#current-expander-context
                                              (let ((__obj8509
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8509)
                                                  __obj8509)))
                                             (_E74837495_))))))
                                 (_E74837495_))))
                         (_E74837495_)))))
              (let () (_E74827522_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx7529_)
          (let ((_wrap?7531_ '#t))
            (gx#core-expand-lambda%__opt-lambda7477 _stx7529_ _wrap?7531_))))
      (define gx#core-expand-lambda%
        (lambda _g8519_
          (let ((_g8518_ (length _g8519_)))
            (cond ((fx= _g8518_ 1) (apply gx#core-expand-lambda%__0 _g8519_))
                  ((fx= _g8518_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda7477 _g8519_))
                  (else (error "No clause matching arguments" _g8519_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx7443_)
      (let ((_e74447451_ _stx7443_))
        (let ((_E74467455_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74447451_))))
          (let ((_E74457474_
                 (lambda ()
                   (if (gx#stx-pair? _e74447451_)
                       (let ((_e74477459_ (gx#syntax-e _e74447451_)))
                         (let ((_hd74487462_ (##car _e74477459_))
                               (_tl74497464_ (##cdr _e74477459_)))
                           (let ((_clauses7467_ _tl74497464_))
                             (if (gx#stx-list? _clauses7467_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause7469_)
                                      (gx#core-expand-lambda%__opt-lambda7477
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause7469_)
                                        (let ((_$e7471_
                                               (gx#stx-source _clause7469_)))
                                          (if _$e7471_
                                              _$e7471_
                                              (gx#stx-source _stx7443_))))
                                       '#f))
                                    _clauses7467_))
                                  (gx#stx-source _stx7443_))
                                 (_E74467455_)))))
                       (_E74467455_)))))
            (let () (_E74457474_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx7397_)
      (let ((_e73987408_ _stx7397_))
        (let ((_E74007412_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73987408_))))
          (let ((_E73997439_
                 (lambda ()
                   (if (gx#stx-pair? _e73987408_)
                       (let ((_e74017416_ (gx#syntax-e _e73987408_)))
                         (let ((_hd74027419_ (##car _e74017416_))
                               (_tl74037421_ (##cdr _e74017416_)))
                           (if (gx#stx-pair? _tl74037421_)
                               (let ((_e74047424_ (gx#syntax-e _tl74037421_)))
                                 (let ((_hd74057427_ (##car _e74047424_))
                                       (_tl74067429_ (##cdr _e74047424_)))
                                   (let ((_hd7432_ _hd74057427_))
                                     (let ((_body7434_ _tl74067429_))
                                       (if (gx#core-expand-let-bind? _hd7432_)
                                           (let ((_expressions7436_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd7432_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7432_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7432_
                                                                _expressions7436_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7397_
                              _body7434_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7397_))))
                                              gx#current-expander-context
                                              (let ((__obj8510
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8510)
                                                  __obj8510))))
                                           (_E74007412_))))))
                               (_E74007412_))))
                       (_E74007412_)))))
            (let () (_E73997439_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7340
      (lambda (_stx7342_ _form7343_)
        (let ((_e73447354_ _stx7342_))
          (let ((_E73467358_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e73447354_))))
            (let ((_E73457383_
                   (lambda ()
                     (if (gx#stx-pair? _e73447354_)
                         (let ((_e73477362_ (gx#syntax-e _e73447354_)))
                           (let ((_hd73487365_ (##car _e73477362_))
                                 (_tl73497367_ (##cdr _e73477362_)))
                             (if (gx#stx-pair? _tl73497367_)
                                 (let ((_e73507370_
                                        (gx#syntax-e _tl73497367_)))
                                   (let ((_hd73517373_ (##car _e73507370_))
                                         (_tl73527375_ (##cdr _e73507370_)))
                                     (let ((_hd7378_ _hd73517373_))
                                       (let ((_body7380_ _tl73527375_))
                                         (if (gx#core-expand-let-bind?
                                              _hd7378_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7378_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form7343_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7378_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd7378_))
                       (cons (gx#core-expand-local-block _stx7342_ _body7380_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7342_))))
                                              gx#current-expander-context
                                              (let ((__obj8511
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8511)
                                                  __obj8511)))
                                             (_E73467358_))))))
                                 (_E73467358_))))
                         (_E73467358_)))))
              (let () (_E73457383_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7390_)
          (let ((_form7392_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7340
             _stx7390_
             _form7392_))))
      (define gx#core-expand-letrec-values%
        (lambda _g8521_
          (let ((_g8520_ (length _g8521_)))
            (cond ((fx= _g8520_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g8521_))
                  ((fx= _g8520_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7340
                          _g8521_))
                  (else (error "No clause matching arguments" _g8521_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7339_)
      (gx#core-expand-letrec-values%__opt-lambda7340
       _stx7339_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7296_)
      (if (gx#stx-list? _stx7296_)
          (gx#stx-andmap
           (lambda (_bind7298_)
             (let ((_e72997309_ _bind7298_))
               (let ((_E73017313_ (lambda () '#f)))
                 (let ((_E73007335_
                        (lambda ()
                          (if (gx#stx-pair? _e72997309_)
                              (let ((_e73027317_ (gx#syntax-e _e72997309_)))
                                (let ((_hd73037320_ (##car _e73027317_))
                                      (_tl73047322_ (##cdr _e73027317_)))
                                  (let ((_hd7325_ _hd73037320_))
                                    (if (gx#stx-pair? _tl73047322_)
                                        (let ((_e73057327_
                                               (gx#syntax-e _tl73047322_)))
                                          (let ((_hd73067330_
                                                 (##car _e73057327_))
                                                (_tl73077332_
                                                 (##cdr _e73057327_)))
                                            (if (gx#stx-null? _tl73077332_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd7325_)
                                                    (_E73017313_))
                                                (_E73017313_))))
                                        (_E73017313_)))))
                              (_E73017313_)))))
                   (let () (_E73007335_))))))
           _stx7296_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7255_)
      (let ((_e72567266_ _bind7255_))
        (let ((_E72587270_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72567266_))))
          (let ((_E72577292_
                 (lambda ()
                   (if (gx#stx-pair? _e72567266_)
                       (let ((_e72597274_ (gx#syntax-e _e72567266_)))
                         (let ((_hd72607277_ (##car _e72597274_))
                               (_tl72617279_ (##cdr _e72597274_)))
                           (if (gx#stx-pair? _tl72617279_)
                               (let ((_e72627282_ (gx#syntax-e _tl72617279_)))
                                 (let ((_hd72637285_ (##car _e72627282_))
                                       (_tl72647287_ (##cdr _e72627282_)))
                                   (let ((_expr7290_ _hd72637285_))
                                     (if (gx#stx-null? _tl72647287_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7290_)
                                             (_E72587270_))
                                         (_E72587270_)))))
                               (_E72587270_))))
                       (_E72587270_)))))
            (let () (_E72577292_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7214_)
      (let ((_e72157225_ _bind7214_))
        (let ((_E72177229_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72157225_))))
          (let ((_E72167251_
                 (lambda ()
                   (if (gx#stx-pair? _e72157225_)
                       (let ((_e72187233_ (gx#syntax-e _e72157225_)))
                         (let ((_hd72197236_ (##car _e72187233_))
                               (_tl72207238_ (##cdr _e72187233_)))
                           (let ((_hd7241_ _hd72197236_))
                             (if (gx#stx-pair? _tl72207238_)
                                 (let ((_e72217243_
                                        (gx#syntax-e _tl72207238_)))
                                   (let ((_hd72227246_ (##car _e72217243_))
                                         (_tl72237248_ (##cdr _e72217243_)))
                                     (if (gx#stx-null? _tl72237248_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd7241_)
                                             (_E72177229_))
                                         (_E72177229_))))
                                 (_E72177229_)))))
                       (_E72177229_)))))
            (let () (_E72167251_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7172_ _expr7173_)
      (let ((_e71747184_ _bind7172_))
        (let ((_E71767188_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71747184_))))
          (let ((_E71757210_
                 (lambda ()
                   (if (gx#stx-pair? _e71747184_)
                       (let ((_e71777192_ (gx#syntax-e _e71747184_)))
                         (let ((_hd71787195_ (##car _e71777192_))
                               (_tl71797197_ (##cdr _e71777192_)))
                           (let ((_hd7200_ _hd71787195_))
                             (if (gx#stx-pair? _tl71797197_)
                                 (let ((_e71807202_
                                        (gx#syntax-e _tl71797197_)))
                                   (let ((_hd71817205_ (##car _e71807202_))
                                         (_tl71827207_ (##cdr _e71807202_)))
                                     (if (gx#stx-null? _tl71827207_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd7200_)
                                                   (cons _expr7173_ '()))
                                             (_E71767188_))
                                         (_E71767188_))))
                                 (_E71767188_)))))
                       (_E71767188_)))))
            (let () (_E71757210_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7126_)
      (let ((_e71277137_ _stx7126_))
        (let ((_E71297141_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71277137_))))
          (let ((_E71287168_
                 (lambda ()
                   (if (gx#stx-pair? _e71277137_)
                       (let ((_e71307145_ (gx#syntax-e _e71277137_)))
                         (let ((_hd71317148_ (##car _e71307145_))
                               (_tl71327150_ (##cdr _e71307145_)))
                           (if (gx#stx-pair? _tl71327150_)
                               (let ((_e71337153_ (gx#syntax-e _tl71327150_)))
                                 (let ((_hd71347156_ (##car _e71337153_))
                                       (_tl71357158_ (##cdr _e71337153_)))
                                   (let ((_hd7161_ _hd71347156_))
                                     (let ((_body7163_ _tl71357158_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7161_)
                                           (let ((_expanders7165_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd7161_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd7161_
                                                   _expanders7165_)
                                                  (gx#core-expand-local-block
                                                   _stx7126_
                                                   _body7163_)))
                                              gx#current-expander-context
                                              (let ((__obj8512
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8512)
                                                  __obj8512))))
                                           (_E71297141_))))))
                               (_E71297141_))))
                       (_E71297141_)))))
            (let () (_E71287168_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7075_)
      (let ((_e70767086_ _stx7075_))
        (let ((_E70787090_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70767086_))))
          (let ((_E70777122_
                 (lambda ()
                   (if (gx#stx-pair? _e70767086_)
                       (let ((_e70797094_ (gx#syntax-e _e70767086_)))
                         (let ((_hd70807097_ (##car _e70797094_))
                               (_tl70817099_ (##cdr _e70797094_)))
                           (if (gx#stx-pair? _tl70817099_)
                               (let ((_e70827102_ (gx#syntax-e _tl70817099_)))
                                 (let ((_hd70837105_ (##car _e70827102_))
                                       (_tl70847107_ (##cdr _e70827102_)))
                                   (let ((_hd7110_ _hd70837105_))
                                     (let ((_body7112_ _tl70847107_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7110_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd7110_
                                                 (make-list
                                                  (gx#stx-length _hd7110_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g71147117_
                                                          _g71157119_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda6932
                                                    _g71147117_
                                                    _g71157119_
                                                    '#t))
                                                 _hd7110_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd7110_))
                                                (gx#core-expand-local-block
                                                 _stx7075_
                                                 _body7112_)))
                                            gx#current-expander-context
                                            (let ((__obj8513
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj8513)
                                                __obj8513)))
                                           (_E70787090_))))))
                               (_E70787090_))))
                       (_E70787090_)))))
            (let () (_E70777122_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7032_)
      (if (gx#stx-list? _stx7032_)
          (gx#stx-andmap
           (lambda (_bind7034_)
             (let ((_e70357045_ _bind7034_))
               (let ((_E70377049_ (lambda () '#f)))
                 (let ((_E70367071_
                        (lambda ()
                          (if (gx#stx-pair? _e70357045_)
                              (let ((_e70387053_ (gx#syntax-e _e70357045_)))
                                (let ((_hd70397056_ (##car _e70387053_))
                                      (_tl70407058_ (##cdr _e70387053_)))
                                  (let ((_hd7061_ _hd70397056_))
                                    (if (gx#stx-pair? _tl70407058_)
                                        (let ((_e70417063_
                                               (gx#syntax-e _tl70407058_)))
                                          (let ((_hd70427066_
                                                 (##car _e70417063_))
                                                (_tl70437068_
                                                 (##cdr _e70417063_)))
                                            (if (gx#stx-null? _tl70437068_)
                                                (if '#t
                                                    (gx#identifier? _hd7061_)
                                                    (_E70377049_))
                                                (_E70377049_))))
                                        (_E70377049_)))))
                              (_E70377049_)))))
                   (let () (_E70367071_))))))
           _stx7032_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind6989_)
      (let ((_e69907000_ _bind6989_))
        (let ((_E69927004_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69907000_))))
          (let ((_E69917028_
                 (lambda ()
                   (if (gx#stx-pair? _e69907000_)
                       (let ((_e69937008_ (gx#syntax-e _e69907000_)))
                         (let ((_hd69947011_ (##car _e69937008_))
                               (_tl69957013_ (##cdr _e69937008_)))
                           (if (gx#stx-pair? _tl69957013_)
                               (let ((_e69967016_ (gx#syntax-e _tl69957013_)))
                                 (let ((_hd69977019_ (##car _e69967016_))
                                       (_tl69987021_ (##cdr _e69967016_)))
                                   (let ((_expr7024_ _hd69977019_))
                                     (if (gx#stx-null? _tl69987021_)
                                         (if '#t
                                             (let ((_g8522_ (gx#core-expand-expression+1
                                                             _expr7024_)))
                                               (begin
                                                 (let ((_g8523_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g8522_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g8523_ 2))
                                                       (error "Context expects 2 values"
                                                              _g8523_)))
                                                 (let ((_e7026_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g8522_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e7026_)))
                                             (_E69927004_))
                                         (_E69927004_)))))
                               (_E69927004_))))
                       (_E69927004_)))))
            (let () (_E69917028_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda6932
      (lambda (_bind6934_ _e6935_ _rebind?6936_)
        (let ((_e69376947_ _bind6934_))
          (let ((_E69396951_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e69376947_))))
            (let ((_E69386973_
                   (lambda ()
                     (if (gx#stx-pair? _e69376947_)
                         (let ((_e69406955_ (gx#syntax-e _e69376947_)))
                           (let ((_hd69416958_ (##car _e69406955_))
                                 (_tl69426960_ (##cdr _e69406955_)))
                             (let ((_id6963_ _hd69416958_))
                               (if (gx#stx-pair? _tl69426960_)
                                   (let ((_e69436965_
                                          (gx#syntax-e _tl69426960_)))
                                     (let ((_hd69446968_ (##car _e69436965_))
                                           (_tl69456970_ (##cdr _e69436965_)))
                                       (if (gx#stx-null? _tl69456970_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id6963_
                                                _e6935_
                                                _rebind?6936_)
                                               (_E69396951_))
                                           (_E69396951_))))
                                   (_E69396951_)))))
                         (_E69396951_)))))
              (let () (_E69386973_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind6980_ _e6981_)
          (let ((_rebind?6983_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda6932
             _bind6980_
             _e6981_
             _rebind?6983_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g8525_
          (let ((_g8524_ (length _g8525_)))
            (cond ((fx= _g8524_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g8525_))
                  ((fx= _g8524_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda6932
                          _g8525_))
                  (else (error "No clause matching arguments" _g8525_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx6892_)
      (let ((_e68936903_ _stx6892_))
        (let ((_E68956907_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68936903_))))
          (let ((_E68946929_
                 (lambda ()
                   (if (gx#stx-pair? _e68936903_)
                       (let ((_e68966911_ (gx#syntax-e _e68936903_)))
                         (let ((_hd68976914_ (##car _e68966911_))
                               (_tl68986916_ (##cdr _e68966911_)))
                           (if (gx#stx-pair? _tl68986916_)
                               (let ((_e68996919_ (gx#syntax-e _tl68986916_)))
                                 (let ((_hd69006922_ (##car _e68996919_))
                                       (_tl69016924_ (##cdr _e68996919_)))
                                   (let ((_expr6927_ _hd69006922_))
                                     (if (gx#stx-null? _tl69016924_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr6927_)
                                             (_E68956907_))
                                         (_E68956907_)))))
                               (_E68956907_))))
                       (_E68956907_)))))
            (let () (_E68946929_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx6851_)
      (let ((_e68526862_ _stx6851_))
        (let ((_E68546866_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68526862_))))
          (let ((_E68536888_
                 (lambda ()
                   (if (gx#stx-pair? _e68526862_)
                       (let ((_e68556870_ (gx#syntax-e _e68526862_)))
                         (let ((_hd68566873_ (##car _e68556870_))
                               (_tl68576875_ (##cdr _e68556870_)))
                           (if (gx#stx-pair? _tl68576875_)
                               (let ((_e68586878_ (gx#syntax-e _tl68576875_)))
                                 (let ((_hd68596881_ (##car _e68586878_))
                                       (_tl68606883_ (##cdr _e68586878_)))
                                   (let ((_e6886_ _hd68596881_))
                                     (if (gx#stx-null? _tl68606883_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e6886_)
                                                          '()))
                                              (gx#stx-source _stx6851_))
                                             (_E68546866_))
                                         (_E68546866_)))))
                               (_E68546866_))))
                       (_E68546866_)))))
            (let () (_E68536888_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx6810_)
      (let ((_e68116821_ _stx6810_))
        (let ((_E68136825_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68116821_))))
          (let ((_E68126847_
                 (lambda ()
                   (if (gx#stx-pair? _e68116821_)
                       (let ((_e68146829_ (gx#syntax-e _e68116821_)))
                         (let ((_hd68156832_ (##car _e68146829_))
                               (_tl68166834_ (##cdr _e68146829_)))
                           (if (gx#stx-pair? _tl68166834_)
                               (let ((_e68176837_ (gx#syntax-e _tl68166834_)))
                                 (let ((_hd68186840_ (##car _e68176837_))
                                       (_tl68196842_ (##cdr _e68176837_)))
                                   (let ((_e6845_ _hd68186840_))
                                     (if (gx#stx-null? _tl68196842_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e6845_)
                                                          '()))
                                              (gx#stx-source _stx6810_))
                                             (_E68136825_))
                                         (_E68136825_)))))
                               (_E68136825_))))
                       (_E68136825_)))))
            (let () (_E68126847_)))))))
  (define gx#core-expand-call%
    (lambda (_stx6767_)
      (let ((_e67686778_ _stx6767_))
        (let ((_E67706782_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67686778_))))
          (let ((_E67696806_
                 (lambda ()
                   (if (gx#stx-pair? _e67686778_)
                       (let ((_e67716786_ (gx#syntax-e _e67686778_)))
                         (let ((_hd67726789_ (##car _e67716786_))
                               (_tl67736791_ (##cdr _e67716786_)))
                           (if (gx#stx-pair? _tl67736791_)
                               (let ((_e67746794_ (gx#syntax-e _tl67736791_)))
                                 (let ((_hd67756797_ (##car _e67746794_))
                                       (_tl67766799_ (##cdr _e67746794_)))
                                   (let ((_rator6802_ _hd67756797_))
                                     (let ((_args6804_ _tl67766799_))
                                       (if (gx#stx-list? _args6804_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator6802_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args6804_))
                                            (gx#stx-source _stx6767_))
                                           (_E67706782_))))))
                               (_E67706782_))))
                       (_E67706782_)))))
            (let () (_E67696806_)))))))
  (define gx#core-expand-if%
    (lambda (_stx6700_)
      (let ((_e67016717_ _stx6700_))
        (let ((_E67036721_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67016717_))))
          (let ((_E67026763_
                 (lambda ()
                   (if (gx#stx-pair? _e67016717_)
                       (let ((_e67046725_ (gx#syntax-e _e67016717_)))
                         (let ((_hd67056728_ (##car _e67046725_))
                               (_tl67066730_ (##cdr _e67046725_)))
                           (if (gx#stx-pair? _tl67066730_)
                               (let ((_e67076733_ (gx#syntax-e _tl67066730_)))
                                 (let ((_hd67086736_ (##car _e67076733_))
                                       (_tl67096738_ (##cdr _e67076733_)))
                                   (let ((_test6741_ _hd67086736_))
                                     (if (gx#stx-pair? _tl67096738_)
                                         (let ((_e67106743_
                                                (gx#syntax-e _tl67096738_)))
                                           (let ((_hd67116746_
                                                  (##car _e67106743_))
                                                 (_tl67126748_
                                                  (##cdr _e67106743_)))
                                             (let ((_K6751_ _hd67116746_))
                                               (if (gx#stx-pair? _tl67126748_)
                                                   (let ((_e67136753_
                                                          (gx#syntax-e
                                                           _tl67126748_)))
                                                     (let ((_hd67146756_
                                                            (##car _e67136753_))
                                                           (_tl67156758_
                                                            (##cdr _e67136753_)))
                                                       (let ((_E6761_ _hd67146756_))
                                                         (if (gx#stx-null?
                                                              _tl67156758_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test6741_)
                                      (cons (gx#core-expand-expression _K6751_)
                                            (cons (gx#core-expand-expression
                                                   _E6761_)
                                                  '()))))
                          (gx#stx-source _stx6700_))
                         (_E67036721_))
                     (_E67036721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67036721_)))))
                                         (_E67036721_)))))
                               (_E67036721_))))
                       (_E67036721_)))))
            (let () (_E67026763_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx6659_)
      (let ((_e66606670_ _stx6659_))
        (let ((_E66626674_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66606670_))))
          (let ((_E66616696_
                 (lambda ()
                   (if (gx#stx-pair? _e66606670_)
                       (let ((_e66636678_ (gx#syntax-e _e66606670_)))
                         (let ((_hd66646681_ (##car _e66636678_))
                               (_tl66656683_ (##cdr _e66636678_)))
                           (if (gx#stx-pair? _tl66656683_)
                               (let ((_e66666686_ (gx#syntax-e _tl66656683_)))
                                 (let ((_hd66676689_ (##car _e66666686_))
                                       (_tl66686691_ (##cdr _e66666686_)))
                                   (let ((_id6694_ _hd66676689_))
                                     (if (gx#stx-null? _tl66686691_)
                                         (if (gx#core-runtime-ref? _id6694_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id6694_
                                                           _stx6659_)
                                                          '()))
                                              (gx#stx-source _stx6659_))
                                             (_E66626674_))
                                         (_E66626674_)))))
                               (_E66626674_))))
                       (_E66626674_)))))
            (let () (_E66616696_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx6605_)
      (let ((_e66066619_ _stx6605_))
        (let ((_E66086623_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66066619_))))
          (let ((_E66076655_
                 (lambda ()
                   (if (gx#stx-pair? _e66066619_)
                       (let ((_e66096627_ (gx#syntax-e _e66066619_)))
                         (let ((_hd66106630_ (##car _e66096627_))
                               (_tl66116632_ (##cdr _e66096627_)))
                           (if (gx#stx-pair? _tl66116632_)
                               (let ((_e66126635_ (gx#syntax-e _tl66116632_)))
                                 (let ((_hd66136638_ (##car _e66126635_))
                                       (_tl66146640_ (##cdr _e66126635_)))
                                   (let ((_id6643_ _hd66136638_))
                                     (if (gx#stx-pair? _tl66146640_)
                                         (let ((_e66156645_
                                                (gx#syntax-e _tl66146640_)))
                                           (let ((_hd66166648_
                                                  (##car _e66156645_))
                                                 (_tl66176650_
                                                  (##cdr _e66156645_)))
                                             (let ((_expr6653_ _hd66166648_))
                                               (if (gx#stx-null? _tl66176650_)
                                                   (if (gx#core-runtime-ref?
                                                        _id6643_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id6643_
                             _stx6605_)
                            (cons (gx#core-expand-expression _expr6653_) '())))
                (gx#stx-source _stx6605_))
               (_E66086623_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E66086623_)))))
                                         (_E66086623_)))))
                               (_E66086623_))))
                       (_E66086623_)))))
            (let () (_E66076655_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx6453_)
      (let ((_generate6455_
             (lambda (_body6485_)
               ((letrec ((_lp6487_
                          (lambda (_rest6489_ _ns6490_ _r6491_)
                            (let ((_e64926507_ _rest6489_))
                              (let ((_E65056511_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e64926507_))))
                                (let ((_E65016515_
                                       (lambda ()
                                         (if (gx#stx-null? _e64926507_)
                                             (if '#t
                                                 (reverse _r6491_)
                                                 (_E65056511_))
                                             (_E65056511_)))))
                                  (let ((_E64946572_
                                         (lambda ()
                                           (if (gx#stx-pair? _e64926507_)
                                               (let ((_e65026519_
                                                      (gx#syntax-e
                                                       _e64926507_)))
                                                 (let ((_hd65036522_
                                                        (##car _e65026519_))
                                                       (_tl65046524_
                                                        (##cdr _e65026519_)))
                                                   (let ((_hd6527_
                                                          _hd65036522_))
                                                     (let ((_rest6529_
                                                            _tl65046524_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd6527_)
                                                               (_lp6487_
                                                                _rest6529_
                                                                _ns6490_
                                                                (cons (cons _hd6527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns6490_
                                              (gx#stx-identifier
                                               _hd6527_
                                               _ns6490_
                                               '"#"
                                               _hd6527_)
                                              _hd6527_)
                                          '()))
                              _r6491_))
                       (let ((_e65306540_ _hd6527_))
                         (let ((_E65326544_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e65306540_))))
                           (let ((_E65316568_
                                  (lambda ()
                                    (if (gx#stx-pair? _e65306540_)
                                        (let ((_e65336548_
                                               (gx#syntax-e _e65306540_)))
                                          (let ((_hd65346551_
                                                 (##car _e65336548_))
                                                (_tl65356553_
                                                 (##cdr _e65336548_)))
                                            (let ((_id6556_ _hd65346551_))
                                              (if (gx#stx-pair? _tl65356553_)
                                                  (let ((_e65366558_
                                                         (gx#syntax-e
                                                          _tl65356553_)))
                                                    (let ((_hd65376561_
                                                           (##car _e65366558_))
                                                          (_tl65386563_
                                                           (##cdr _e65366558_)))
                                                      (let ((_eid6566_
                                                             _hd65376561_))
                                                        (if (gx#stx-null?
                                                             _tl65386563_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id6556_)
                            (gx#identifier? _eid6566_)
                            '#f)
                        (_lp6487_
                         _rest6529_
                         _ns6490_
                         (cons (cons _id6556_ (cons _eid6566_ '())) _r6491_))
                        (_E65326544_))
                    (_E65326544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E65326544_)))))
                                        (_E65326544_)))))
                             (let () (_E65316568_))))))
                   (_E65016515_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E65016515_)))))
                                    (let ((_E64936601_
                                           (lambda ()
                                             (if (gx#stx-pair? _e64926507_)
                                                 (let ((_e64956576_
                                                        (gx#syntax-e
                                                         _e64926507_)))
                                                   (let ((_hd64966579_
                                                          (##car _e64956576_))
                                                         (_tl64976581_
                                                          (##cdr _e64956576_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd64966579_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl64976581_)
                                                             (let ((_e64986584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl64976581_)))
                       (let ((_hd64996587_ (##car _e64986584_))
                             (_tl65006589_ (##cdr _e64986584_)))
                         (let ((_ns6592_ _hd64996587_))
                           (let ((_rest6594_ _tl65006589_))
                             (if '#t
                                 (let ((_ns6599_
                                        (if (gx#identifier? _ns6592_)
                                            (symbol->string
                                             (gx#stx-e _ns6592_))
                                            (if (let ((_$e6596_
                                                       (gx#stx-string?
                                                        _ns6592_)))
                                                  (if _$e6596_
                                                      _$e6596_
                                                      (gx#stx-false?
                                                       _ns6592_)))
                                                (gx#stx-e _ns6592_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx6453_
                                                 _ns6592_)))))
                                   (_lp6487_ _rest6594_ _ns6599_ _r6491_))
                                 (_E64946572_))))))
                     (_E64946572_))
                 (_E64946572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E64946572_)))))
                                      (let () (_E64936601_))))))))))
                  _lp6487_)
                _body6485_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e64566463_ _stx6453_))
          (let ((_E64586467_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e64566463_))))
            (let ((_E64576481_
                   (lambda ()
                     (if (gx#stx-pair? _e64566463_)
                         (let ((_e64596471_ (gx#syntax-e _e64566463_)))
                           (let ((_hd64606474_ (##car _e64596471_))
                                 (_tl64616476_ (##cdr _e64596471_)))
                             (let ((_body6479_ _tl64616476_))
                               (if (gx#stx-list? _body6479_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate6455_ _body6479_))
                                   (_E64586467_)))))
                         (_E64586467_)))))
              (let () (_E64576481_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx6399_)
      (let ((_e64006413_ _stx6399_))
        (let ((_E64026417_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e64006413_))))
          (let ((_E64016449_
                 (lambda ()
                   (if (gx#stx-pair? _e64006413_)
                       (let ((_e64036421_ (gx#syntax-e _e64006413_)))
                         (let ((_hd64046424_ (##car _e64036421_))
                               (_tl64056426_ (##cdr _e64036421_)))
                           (if (gx#stx-pair? _tl64056426_)
                               (let ((_e64066429_ (gx#syntax-e _tl64056426_)))
                                 (let ((_hd64076432_ (##car _e64066429_))
                                       (_tl64086434_ (##cdr _e64066429_)))
                                   (let ((_hd6437_ _hd64076432_))
                                     (if (gx#stx-pair? _tl64086434_)
                                         (let ((_e64096439_
                                                (gx#syntax-e _tl64086434_)))
                                           (let ((_hd64106442_
                                                  (##car _e64096439_))
                                                 (_tl64116444_
                                                  (##cdr _e64096439_)))
                                             (let ((_expr6447_ _hd64106442_))
                                               (if (gx#stx-null? _tl64116444_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd6437_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd6437_)
                           (cons _expr6447_ '())))
               (_E64026417_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E64026417_)))))
                                         (_E64026417_)))))
                               (_E64026417_))))
                       (_E64026417_)))))
            (let () (_E64016449_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6345_)
      (let ((_e63466359_ _stx6345_))
        (let ((_E63486363_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63466359_))))
          (let ((_E63476395_
                 (lambda ()
                   (if (gx#stx-pair? _e63466359_)
                       (let ((_e63496367_ (gx#syntax-e _e63466359_)))
                         (let ((_hd63506370_ (##car _e63496367_))
                               (_tl63516372_ (##cdr _e63496367_)))
                           (if (gx#stx-pair? _tl63516372_)
                               (let ((_e63526375_ (gx#syntax-e _tl63516372_)))
                                 (let ((_hd63536378_ (##car _e63526375_))
                                       (_tl63546380_ (##cdr _e63526375_)))
                                   (let ((_hd6383_ _hd63536378_))
                                     (if (gx#stx-pair? _tl63546380_)
                                         (let ((_e63556385_
                                                (gx#syntax-e _tl63546380_)))
                                           (let ((_hd63566388_
                                                  (##car _e63556385_))
                                                 (_tl63576390_
                                                  (##cdr _e63556385_)))
                                             (let ((_expr6393_ _hd63566388_))
                                               (if (gx#stx-null? _tl63576390_)
                                                   (if (gx#identifier?
                                                        _hd6383_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd6383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6393_ '())))
               (_E63486363_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E63486363_)))))
                                         (_E63486363_)))))
                               (_E63486363_))))
                       (_E63486363_)))))
            (let () (_E63476395_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6291_)
      (let ((_e62926305_ _stx6291_))
        (let ((_E62946309_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e62926305_))))
          (let ((_E62936341_
                 (lambda ()
                   (if (gx#stx-pair? _e62926305_)
                       (let ((_e62956313_ (gx#syntax-e _e62926305_)))
                         (let ((_hd62966316_ (##car _e62956313_))
                               (_tl62976318_ (##cdr _e62956313_)))
                           (if (gx#stx-pair? _tl62976318_)
                               (let ((_e62986321_ (gx#syntax-e _tl62976318_)))
                                 (let ((_hd62996324_ (##car _e62986321_))
                                       (_tl63006326_ (##cdr _e62986321_)))
                                   (let ((_id6329_ _hd62996324_))
                                     (if (gx#stx-pair? _tl63006326_)
                                         (let ((_e63016331_
                                                (gx#syntax-e _tl63006326_)))
                                           (let ((_hd63026334_
                                                  (##car _e63016331_))
                                                 (_tl63036336_
                                                  (##cdr _e63016331_)))
                                             (let ((_alias-id6339_
                                                    _hd63026334_))
                                               (if (gx#stx-null? _tl63036336_)
                                                   (if (if (gx#identifier?
                                                            _id6329_)
                                                           (gx#identifier?
                                                            _alias-id6339_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id6329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id6339_ '())))
               (_E62946309_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E62946309_)))))
                                         (_E62946309_)))))
                               (_E62946309_))))
                       (_E62946309_)))))
            (let () (_E62936341_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6248_)
      (let ((_e62496259_ _stx6248_))
        (let ((_E62516263_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e62496259_))))
          (let ((_E62506287_
                 (lambda ()
                   (if (gx#stx-pair? _e62496259_)
                       (let ((_e62526267_ (gx#syntax-e _e62496259_)))
                         (let ((_hd62536270_ (##car _e62526267_))
                               (_tl62546272_ (##cdr _e62526267_)))
                           (if (gx#stx-pair? _tl62546272_)
                               (let ((_e62556275_ (gx#syntax-e _tl62546272_)))
                                 (let ((_hd62566278_ (##car _e62556275_))
                                       (_tl62576280_ (##cdr _e62556275_)))
                                   (let ((_hd6283_ _hd62566278_))
                                     (let ((_body6285_ _tl62576280_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd6283_)
                                               (if (gx#stx-list? _body6285_)
                                                   (not (gx#stx-null?
                                                         _body6285_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd6283_)
                                            _body6285_)
                                           (_E62516263_))))))
                               (_E62516263_))))
                       (_E62516263_)))))
            (let () (_E62506287_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6184_)
      (let ((_generate6186_
             (lambda (_clause6216_)
               (let ((_e62176224_ _clause6216_))
                 (let ((_E62196228_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx6184_
                           _clause6216_))))
                   (let ((_E62186244_
                          (lambda ()
                            (if (gx#stx-pair? _e62176224_)
                                (let ((_e62206232_ (gx#syntax-e _e62176224_)))
                                  (let ((_hd62216235_ (##car _e62206232_))
                                        (_tl62226237_ (##cdr _e62206232_)))
                                    (let ((_hd6240_ _hd62216235_))
                                      (let ((_body6242_ _tl62226237_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd6240_)
                                                (if (gx#stx-list? _body6242_)
                                                    (not (gx#stx-null?
                                                          _body6242_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd6240_)
                                                   _body6242_)
                                             (gx#stx-source _clause6216_))
                                            (_E62196228_))))))
                                (_E62196228_)))))
                     (let () (_E62186244_))))))))
        (let ((_e61876194_ _stx6184_))
          (let ((_E61896198_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e61876194_))))
            (let ((_E61886212_
                   (lambda ()
                     (if (gx#stx-pair? _e61876194_)
                         (let ((_e61906202_ (gx#syntax-e _e61876194_)))
                           (let ((_hd61916205_ (##car _e61906202_))
                                 (_tl61926207_ (##cdr _e61906202_)))
                             (let ((_clauses6210_ _tl61926207_))
                               (if (gx#stx-list? _clauses6210_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate6186_ _clauses6210_))
                                   (_E61896198_)))))
                         (_E61896198_)))))
              (let () (_E61886212_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6083
      (lambda (_stx6085_ _form6086_)
        (let ((_generate6088_
               (lambda (_bind6131_)
                 (let ((_e61326142_ _bind6131_))
                   (let ((_E61346146_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx6085_
                             _bind6131_))))
                     (let ((_E61336170_
                            (lambda ()
                              (if (gx#stx-pair? _e61326142_)
                                  (let ((_e61356150_
                                         (gx#syntax-e _e61326142_)))
                                    (let ((_hd61366153_ (##car _e61356150_))
                                          (_tl61376155_ (##cdr _e61356150_)))
                                      (let ((_ids6158_ _hd61366153_))
                                        (if (gx#stx-pair? _tl61376155_)
                                            (let ((_e61386160_
                                                   (gx#syntax-e _tl61376155_)))
                                              (let ((_hd61396163_
                                                     (##car _e61386160_))
                                                    (_tl61406165_
                                                     (##cdr _e61386160_)))
                                                (let ((_expr6168_
                                                       _hd61396163_))
                                                  (if (gx#stx-null?
                                                       _tl61406165_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6158_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6158_)
                        (cons _expr6168_ '()))
                  (_E61346146_))
              (_E61346146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E61346146_)))))
                                  (_E61346146_)))))
                       (let () (_E61336170_))))))))
          (let ((_e60896099_ _stx6085_))
            (let ((_E60916103_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e60896099_))))
              (let ((_E60906127_
                     (lambda ()
                       (if (gx#stx-pair? _e60896099_)
                           (let ((_e60926107_ (gx#syntax-e _e60896099_)))
                             (let ((_hd60936110_ (##car _e60926107_))
                                   (_tl60946112_ (##cdr _e60926107_)))
                               (if (gx#stx-pair? _tl60946112_)
                                   (let ((_e60956115_
                                          (gx#syntax-e _tl60946112_)))
                                     (let ((_hd60966118_ (##car _e60956115_))
                                           (_tl60976120_ (##cdr _e60956115_)))
                                       (let ((_hd6123_ _hd60966118_))
                                         (let ((_body6125_ _tl60976120_))
                                           (if (if (gx#stx-list? _hd6123_)
                                                   (if (gx#stx-list?
                                                        _body6125_)
                                                       (not (gx#stx-null?
                                                             _body6125_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form6086_
                                                (gx#stx-map1
                                                 _generate6088_
                                                 _hd6123_)
                                                _body6125_)
                                               (_E60916103_))))))
                                   (_E60916103_))))
                           (_E60916103_)))))
                (let () (_E60906127_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6177_)
          (let ((_form6179_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6083
             _stx6177_
             _form6179_))))
      (define gx#macro-expand-let-values
        (lambda _g8527_
          (let ((_g8526_ (length _g8527_)))
            (cond ((fx= _g8526_ 1)
                   (apply gx#macro-expand-let-values__0 _g8527_))
                  ((fx= _g8526_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6083 _g8527_))
                  (else (error "No clause matching arguments" _g8527_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6082_)
      (gx#macro-expand-let-values__opt-lambda6083 _stx6082_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6080_)
      (gx#macro-expand-let-values__opt-lambda6083
       _stx6080_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx5971_)
      (let ((_e59725998_ _stx5971_))
        (let ((_E59846002_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e59725998_))))
          (let ((_E59746044_
                 (lambda ()
                   (if (gx#stx-pair? _e59725998_)
                       (let ((_e59856006_ (gx#syntax-e _e59725998_)))
                         (let ((_hd59866009_ (##car _e59856006_))
                               (_tl59876011_ (##cdr _e59856006_)))
                           (if (gx#stx-pair? _tl59876011_)
                               (let ((_e59886014_ (gx#syntax-e _tl59876011_)))
                                 (let ((_hd59896017_ (##car _e59886014_))
                                       (_tl59906019_ (##cdr _e59886014_)))
                                   (let ((_test6022_ _hd59896017_))
                                     (if (gx#stx-pair? _tl59906019_)
                                         (let ((_e59916024_
                                                (gx#syntax-e _tl59906019_)))
                                           (let ((_hd59926027_
                                                  (##car _e59916024_))
                                                 (_tl59936029_
                                                  (##cdr _e59916024_)))
                                             (let ((_K6032_ _hd59926027_))
                                               (if (gx#stx-pair? _tl59936029_)
                                                   (let ((_e59946034_
                                                          (gx#syntax-e
                                                           _tl59936029_)))
                                                     (let ((_hd59956037_
                                                            (##car _e59946034_))
                                                           (_tl59966039_
                                                            (##cdr _e59946034_)))
                                                       (let ((_E6042_ _hd59956037_))
                                                         (if (gx#stx-null?
                                                              _tl59966039_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test6022_ _K6032_ _E6042_)
                         (_E59846002_))
                     (_E59846002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E59846002_)))))
                                         (_E59846002_)))))
                               (_E59846002_))))
                       (_E59846002_)))))
            (let ((_E59736076_
                   (lambda ()
                     (if (gx#stx-pair? _e59725998_)
                         (let ((_e59756048_ (gx#syntax-e _e59725998_)))
                           (let ((_hd59766051_ (##car _e59756048_))
                                 (_tl59776053_ (##cdr _e59756048_)))
                             (if (gx#stx-pair? _tl59776053_)
                                 (let ((_e59786056_
                                        (gx#syntax-e _tl59776053_)))
                                   (let ((_hd59796059_ (##car _e59786056_))
                                         (_tl59806061_ (##cdr _e59786056_)))
                                     (let ((_test6064_ _hd59796059_))
                                       (if (gx#stx-pair? _tl59806061_)
                                           (let ((_e59816066_
                                                  (gx#syntax-e _tl59806061_)))
                                             (let ((_hd59826069_
                                                    (##car _e59816066_))
                                                   (_tl59836071_
                                                    (##cdr _e59816066_)))
                                               (let ((_K6074_ _hd59826069_))
                                                 (if (gx#stx-null?
                                                      _tl59836071_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test6064_
                                                          _K6074_
                                                          '#!void)
                                                         (_E59746044_))
                                                     (_E59746044_)))))
                                           (_E59746044_)))))
                                 (_E59746044_))))
                         (_E59746044_)))))
              (let () (_E59736076_))))))))
  (define gx#free-identifier=?
    (lambda (_xid5959_ _yid5960_)
      (let ((_xe5962_ (gx#resolve-identifier__0 _xid5959_))
            (_ye5963_ (gx#resolve-identifier__0 _yid5960_)))
        (if (if _xe5962_ _ye5963_ '#f)
            (let ((_$e5965_ (eq? _xe5962_ _ye5963_)))
              (if _$e5965_
                  _$e5965_
                  (if (##structure-instance-of? _xe5962_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye5963_ 'gx#binding::t)
                          (eq? (##structure-ref _xe5962_ '1 gx#binding::t '#f)
                               (##structure-ref _ye5963_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e5968_ _xe5962_)) (if _$e5968_ _$e5968_ _ye5963_))
                '#f
                (gx#stx-eq? _xid5959_ _yid5960_))))))
  (define gx#bound-identifier=?
    (lambda (_xid5943_ _yid5944_)
      (let ((_context5946_
             (lambda (_e5957_)
               (if (##structure-direct-instance-of?
                    _e5957_
                    'gx#syntax-quote::t)
                   (##structure-ref _e5957_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks5947_
               (lambda (_e5955_)
                 (if (symbol? _e5955_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e5955_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e5955_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e5955_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap5948_
                 (lambda (_e5953_)
                   (if (symbol? _e5953_)
                       _e5953_
                       (gx#syntax-local-unwrap _e5953_)))))
            (let ((_x5950_ (_unwrap5948_ _xid5943_))
                  (_y5951_ (_unwrap5948_ _yid5944_)))
              (if (gx#stx-eq? _x5950_ _y5951_)
                  (if (eq? (_context5946_ _x5950_) (_context5946_ _y5951_))
                      (andmap eq? (_marks5947_ _x5950_) (_marks5947_ _y5951_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx5941_)
      (if (gx#identifier? _stx5941_) (gx#core-identifier=? _stx5941_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx5939_)
      (if (gx#identifier? _stx5939_)
          (gx#core-identifier=? _stx5939_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x5937_)
      (if (gx#identifier? _x5937_)
          (if (not (gx#underscore? _x5937_)) _x5937_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda5881
      (lambda (_stx5883_ _where5884_)
        ((letrec ((_lp5886_
                   (lambda (_rest5888_)
                     (let ((_rest58895897_ _rest5888_))
                       (let ((_E58925901_
                              (lambda ()
                                (error '"No clause matching" _rest58895897_))))
                         (let ((_else58915905_ (lambda () '#t)))
                           (let ((_K58935915_
                                  (lambda (_rest5908_ _hd5909_)
                                    (if (not (gx#identifier? _hd5909_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where5884_
                                         _hd5909_)
                                        (if (find (lambda (_g59105912_)
                                                    (gx#bound-identifier=?
                                                     _g59105912_
                                                     _hd5909_))
                                                  _rest5908_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where5884_
                                             _hd5909_)
                                            (_lp5886_ _rest5908_))))))
                             (if (##pair? _rest58895897_)
                                 (let ((_hd58945918_ (##car _rest58895897_))
                                       (_tl58955920_ (##cdr _rest58895897_)))
                                   (let ((_hd5923_ _hd58945918_))
                                     (let ((_rest5925_ _tl58955920_))
                                       (_K58935915_ _rest5925_ _hd5923_))))
                                 (_else58915905_)))))))))
           _lp5886_)
         (gx#syntax->list _stx5883_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx5930_)
          (let ((_where5932_ _stx5930_))
            (gx#check-duplicate-identifiers__opt-lambda5881
             _stx5930_
             _where5932_))))
      (define gx#check-duplicate-identifiers
        (lambda _g8529_
          (let ((_g8528_ (length _g8529_)))
            (cond ((fx= _g8528_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g8529_))
                  ((fx= _g8528_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda5881
                          _g8529_))
                  (else (error "No clause matching arguments" _g8529_))))))))
  (define gx#core-bind-values?
    (lambda (_stx5875_)
      (gx#stx-andmap
       (lambda (_x5877_)
         (let ((_$e5879_ (gx#identifier? _x5877_)))
           (if _$e5879_ _$e5879_ (gx#stx-false? _x5877_))))
       _stx5875_)))
  (begin
    (define gx#core-bind-values!__opt-lambda5837
      (lambda (_stx5839_ _rebind?5840_ _phi5841_ _ctx5842_)
        (gx#stx-for-each1
         (lambda (_id5844_)
           (if (gx#identifier? _id5844_)
               (gx#core-bind-runtime!__opt-lambda5773
                _id5844_
                _rebind?5840_
                _phi5841_
                _ctx5842_)
               '#!void))
         _stx5839_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx5849_)
          (let ((_rebind?5851_ '#f))
            (let ((_phi5853_ (gx#current-expander-phi)))
              (let ((_ctx5855_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda5837
                 _stx5849_
                 _rebind?5851_
                 _phi5853_
                 _ctx5855_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx5857_ _rebind?5858_)
          (let ((_phi5860_ (gx#current-expander-phi)))
            (let ((_ctx5862_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda5837
               _stx5857_
               _rebind?5858_
               _phi5860_
               _ctx5862_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx5864_ _rebind?5865_ _phi5866_)
          (let ((_ctx5868_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda5837
             _stx5864_
             _rebind?5865_
             _phi5866_
             _ctx5868_))))
      (define gx#core-bind-values!
        (lambda _g8531_
          (let ((_g8530_ (length _g8531_)))
            (cond ((fx= _g8530_ 1) (apply gx#core-bind-values!__0 _g8531_))
                  ((fx= _g8530_ 2) (apply gx#core-bind-values!__1 _g8531_))
                  ((fx= _g8530_ 3) (apply gx#core-bind-values!__2 _g8531_))
                  ((fx= _g8530_ 4)
                   (apply gx#core-bind-values!__opt-lambda5837 _g8531_))
                  (else (error "No clause matching arguments" _g8531_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx5834_)
      (gx#stx-map1
       (lambda (_x5836_)
         (if (gx#identifier? _x5836_) (gx#core-quote-syntax__0 _x5836_) '#f))
       _stx5834_)))
  (define gx#core-runtime-ref?
    (lambda (_stx5827_)
      (if (gx#identifier? _stx5827_)
          (let ((_bind5829_ (gx#resolve-identifier__0 _stx5827_)))
            (let ((_$e5831_ (not _bind5829_)))
              (if _$e5831_
                  _$e5831_
                  (##structure-instance-of?
                   _bind5829_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id5816_ _form5817_)
      (let ((_bind5819_ (gx#resolve-identifier__0 _id5816_)))
        (if (##structure-instance-of? _bind5819_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id5816_)
            (if (not _bind5819_)
                (if (let ((_$e5821_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e5821_
                          _$e5821_
                          (let ((_$e5824_
                                 (gx#core-context-rebind?__opt-lambda3685
                                  (gx#core-context-top__0))))
                            (if _$e5824_
                                _$e5824_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id5816_))))))
                    (gx#core-quote-syntax__0 _id5816_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form5817_
                     _id5816_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form5817_
                 _id5816_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda5773
      (lambda (_id5775_ _rebind?5776_ _phi5777_ _ctx5778_)
        (let ((_key5780_ (gx#core-identifier-key _id5775_)))
          (let ((_eid5782_
                 (gx#make-binding-id__opt-lambda5540
                  _key5780_
                  '#f
                  _phi5777_
                  _ctx5778_)))
            (let ((_bind5784_
                   (if (##structure-instance-of?
                        _ctx5778_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid5782_
                        _key5780_
                        _phi5777_
                        _ctx5778_)
                       (if (##structure-instance-of?
                            _ctx5778_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid5782_
                            _key5780_
                            _phi5777_)
                           (if (##structure-instance-of?
                                _ctx5778_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid5782_
                                _key5780_
                                _phi5777_)
                               (##structure
                                gx#runtime-binding::t
                                _eid5782_
                                _key5780_
                                _phi5777_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda4131
                 _id5775_
                 _bind5784_
                 _rebind?5776_
                 _phi5777_
                 _ctx5778_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id5790_)
          (let ((_rebind?5792_ '#f))
            (let ((_phi5794_ (gx#current-expander-phi)))
              (let ((_ctx5796_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda5773
                 _id5790_
                 _rebind?5792_
                 _phi5794_
                 _ctx5796_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id5798_ _rebind?5799_)
          (let ((_phi5801_ (gx#current-expander-phi)))
            (let ((_ctx5803_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda5773
               _id5798_
               _rebind?5799_
               _phi5801_
               _ctx5803_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id5805_ _rebind?5806_ _phi5807_)
          (let ((_ctx5809_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda5773
             _id5805_
             _rebind?5806_
             _phi5807_
             _ctx5809_))))
      (define gx#core-bind-runtime!
        (lambda _g8533_
          (let ((_g8532_ (length _g8533_)))
            (cond ((fx= _g8532_ 1) (apply gx#core-bind-runtime!__0 _g8533_))
                  ((fx= _g8532_ 2) (apply gx#core-bind-runtime!__1 _g8533_))
                  ((fx= _g8532_ 3) (apply gx#core-bind-runtime!__2 _g8533_))
                  ((fx= _g8532_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda5773 _g8533_))
                  (else (error "No clause matching arguments" _g8533_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda5728
      (lambda (_id5730_ _eid5731_ _rebind?5732_ _phi5733_ _ctx5734_)
        (let ((_key5736_ (gx#core-identifier-key _id5730_)))
          (let ((_bind5738_
                 (if (##structure-instance-of? _ctx5734_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid5731_
                      _key5736_
                      _phi5733_
                      _ctx5734_)
                     (if (##structure-instance-of?
                          _ctx5734_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid5731_
                          _key5736_
                          _phi5733_)
                         (##structure
                          gx#runtime-binding::t
                          _eid5731_
                          _key5736_
                          _phi5733_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda4131
               _id5730_
               _bind5738_
               _rebind?5732_
               _phi5733_
               _ctx5734_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id5744_ _eid5745_)
          (let ((_rebind?5747_ '#f))
            (let ((_phi5749_ (gx#current-expander-phi)))
              (let ((_ctx5751_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda5728
                 _id5744_
                 _eid5745_
                 _rebind?5747_
                 _phi5749_
                 _ctx5751_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id5753_ _eid5754_ _rebind?5755_)
          (let ((_phi5757_ (gx#current-expander-phi)))
            (let ((_ctx5759_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda5728
               _id5753_
               _eid5754_
               _rebind?5755_
               _phi5757_
               _ctx5759_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id5761_ _eid5762_ _rebind?5763_ _phi5764_)
          (let ((_ctx5766_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda5728
             _id5761_
             _eid5762_
             _rebind?5763_
             _phi5764_
             _ctx5766_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g8535_
          (let ((_g8534_ (length _g8535_)))
            (cond ((fx= _g8534_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g8535_))
                  ((fx= _g8534_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g8535_))
                  ((fx= _g8534_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g8535_))
                  ((fx= _g8534_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda5728
                          _g8535_))
                  (else (error "No clause matching arguments" _g8535_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda5688
      (lambda (_id5690_ _eid5691_ _rebind?5692_ _phi5693_ _ctx5694_)
        (gx#bind-identifier!__opt-lambda4131
         _id5690_
         (##structure
          gx#extern-binding::t
          _eid5691_
          (gx#core-identifier-key _id5690_)
          _phi5693_)
         _rebind?5692_
         _phi5693_
         _ctx5694_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id5699_ _eid5700_)
          (let ((_rebind?5702_ '#f))
            (let ((_phi5704_ (gx#current-expander-phi)))
              (let ((_ctx5706_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda5688
                 _id5699_
                 _eid5700_
                 _rebind?5702_
                 _phi5704_
                 _ctx5706_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id5708_ _eid5709_ _rebind?5710_)
          (let ((_phi5712_ (gx#current-expander-phi)))
            (let ((_ctx5714_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda5688
               _id5708_
               _eid5709_
               _rebind?5710_
               _phi5712_
               _ctx5714_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id5716_ _eid5717_ _rebind?5718_ _phi5719_)
          (let ((_ctx5721_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda5688
             _id5716_
             _eid5717_
             _rebind?5718_
             _phi5719_
             _ctx5721_))))
      (define gx#core-bind-extern!
        (lambda _g8537_
          (let ((_g8536_ (length _g8537_)))
            (cond ((fx= _g8536_ 2) (apply gx#core-bind-extern!__0 _g8537_))
                  ((fx= _g8536_ 3) (apply gx#core-bind-extern!__1 _g8537_))
                  ((fx= _g8536_ 4) (apply gx#core-bind-extern!__2 _g8537_))
                  ((fx= _g8536_ 5)
                   (apply gx#core-bind-extern!__opt-lambda5688 _g8537_))
                  (else (error "No clause matching arguments" _g8537_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda5642
      (lambda (_id5644_ _e5645_ _rebind?5646_ _phi5647_ _ctx5648_)
        (gx#bind-identifier!__opt-lambda4131
         _id5644_
         (let ((_key5653_ (gx#core-identifier-key _id5644_))
               (_e5654_ (if (let ((_$e5650_
                                   (##structure-instance-of?
                                    _e5645_
                                    'gx#expander::t)))
                              (if _$e5650_
                                  _$e5650_
                                  (##structure-instance-of?
                                   _e5645_
                                   'gx#expander-context::t)))
                            _e5645_
                            (##structure
                             gx#user-expander::t
                             _e5645_
                             _ctx5648_
                             _phi5647_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda5540
             _key5653_
             '#t
             _phi5647_
             _ctx5648_)
            _key5653_
            _phi5647_
            _e5654_))
         _rebind?5646_
         _phi5647_
         _ctx5648_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id5659_ _e5660_)
          (let ((_rebind?5662_ '#f))
            (let ((_phi5664_ (gx#current-expander-phi)))
              (let ((_ctx5666_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda5642
                 _id5659_
                 _e5660_
                 _rebind?5662_
                 _phi5664_
                 _ctx5666_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id5668_ _e5669_ _rebind?5670_)
          (let ((_phi5672_ (gx#current-expander-phi)))
            (let ((_ctx5674_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda5642
               _id5668_
               _e5669_
               _rebind?5670_
               _phi5672_
               _ctx5674_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id5676_ _e5677_ _rebind?5678_ _phi5679_)
          (let ((_ctx5681_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda5642
             _id5676_
             _e5677_
             _rebind?5678_
             _phi5679_
             _ctx5681_))))
      (define gx#core-bind-syntax!
        (lambda _g8539_
          (let ((_g8538_ (length _g8539_)))
            (cond ((fx= _g8538_ 2) (apply gx#core-bind-syntax!__0 _g8539_))
                  ((fx= _g8538_ 3) (apply gx#core-bind-syntax!__1 _g8539_))
                  ((fx= _g8538_ 4) (apply gx#core-bind-syntax!__2 _g8539_))
                  ((fx= _g8538_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda5642 _g8539_))
                  (else (error "No clause matching arguments" _g8539_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda5625
      (lambda (_id5627_ _e5628_ _rebind?5629_)
        (gx#core-bind-syntax!__opt-lambda5642
         _id5627_
         _e5628_
         _rebind?5629_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id5634_ _e5635_)
          (let ((_rebind?5637_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda5625
             _id5634_
             _e5635_
             _rebind?5637_))))
      (define gx#core-bind-root-syntax!
        (lambda _g8541_
          (let ((_g8540_ (length _g8541_)))
            (cond ((fx= _g8540_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g8541_))
                  ((fx= _g8540_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda5625 _g8541_))
                  (else (error "No clause matching arguments" _g8541_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda5583
      (lambda (_id5585_ _alias-id5586_ _rebind?5587_ _phi5588_ _ctx5589_)
        (gx#bind-identifier!__opt-lambda4131
         _id5585_
         (let ((_key5591_ (gx#core-identifier-key _id5585_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda5540
             _key5591_
             '#t
             _phi5588_
             _ctx5589_)
            _key5591_
            _phi5588_
            _alias-id5586_))
         _rebind?5587_
         _phi5588_
         _ctx5589_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id5596_ _alias-id5597_)
          (let ((_rebind?5599_ '#f))
            (let ((_phi5601_ (gx#current-expander-phi)))
              (let ((_ctx5603_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda5583
                 _id5596_
                 _alias-id5597_
                 _rebind?5599_
                 _phi5601_
                 _ctx5603_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id5605_ _alias-id5606_ _rebind?5607_)
          (let ((_phi5609_ (gx#current-expander-phi)))
            (let ((_ctx5611_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda5583
               _id5605_
               _alias-id5606_
               _rebind?5607_
               _phi5609_
               _ctx5611_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id5613_ _alias-id5614_ _rebind?5615_ _phi5616_)
          (let ((_ctx5618_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda5583
             _id5613_
             _alias-id5614_
             _rebind?5615_
             _phi5616_
             _ctx5618_))))
      (define gx#core-bind-alias!
        (lambda _g8543_
          (let ((_g8542_ (length _g8543_)))
            (cond ((fx= _g8542_ 2) (apply gx#core-bind-alias!__0 _g8543_))
                  ((fx= _g8542_ 3) (apply gx#core-bind-alias!__1 _g8543_))
                  ((fx= _g8542_ 4) (apply gx#core-bind-alias!__2 _g8543_))
                  ((fx= _g8542_ 5)
                   (apply gx#core-bind-alias!__opt-lambda5583 _g8543_))
                  (else (error "No clause matching arguments" _g8543_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda5540
      (lambda (_key5542_ _syntax?5543_ _phi5544_ _ctx5545_)
        (if (uninterned-symbol? _key5542_)
            (gensym 'L)
            (if (pair? _key5542_)
                (gensym (car _key5542_))
                (if (##structure-instance-of? _ctx5545_ 'gx#top-context::t)
                    (let ((_ns5547_
                           (gx#core-context-namespace__opt-lambda3668
                            _ctx5545_)))
                      (if (if (fxzero? _phi5544_) (not _syntax?5543_) '#f)
                          (if _ns5547_
                              (make-symbol _ns5547_ '"#" _key5542_)
                              _key5542_)
                          (if _syntax?5543_
                              (make-symbol
                               (let ((_$e5549_ _ns5547_))
                                 (if _$e5549_ _$e5549_ '""))
                               '"[:"
                               (number->string _phi5544_)
                               '":]#"
                               _key5542_)
                              (make-symbol
                               (let ((_$e5552_ _ns5547_))
                                 (if _$e5552_ _$e5552_ '""))
                               '"["
                               (number->string _phi5544_)
                               '"]#"
                               _key5542_))))
                    (gensym _key5542_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key5558_)
          (let ((_syntax?5560_ '#f))
            (let ((_phi5562_ (gx#current-expander-phi)))
              (let ((_ctx5564_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda5540
                 _key5558_
                 _syntax?5560_
                 _phi5562_
                 _ctx5564_))))))
      (define gx#make-binding-id__1
        (lambda (_key5566_ _syntax?5567_)
          (let ((_phi5569_ (gx#current-expander-phi)))
            (let ((_ctx5571_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda5540
               _key5566_
               _syntax?5567_
               _phi5569_
               _ctx5571_)))))
      (define gx#make-binding-id__2
        (lambda (_key5573_ _syntax?5574_ _phi5575_)
          (let ((_ctx5577_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda5540
             _key5573_
             _syntax?5574_
             _phi5575_
             _ctx5577_))))
      (define gx#make-binding-id
        (lambda _g8545_
          (let ((_g8544_ (length _g8545_)))
            (cond ((fx= _g8544_ 1) (apply gx#make-binding-id__0 _g8545_))
                  ((fx= _g8544_ 2) (apply gx#make-binding-id__1 _g8545_))
                  ((fx= _g8544_ 3) (apply gx#make-binding-id__2 _g8545_))
                  ((fx= _g8544_ 4)
                   (apply gx#make-binding-id__opt-lambda5540 _g8545_))
                  (else (error "No clause matching arguments" _g8545_)))))))))
