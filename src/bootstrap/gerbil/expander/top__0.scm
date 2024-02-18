(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708271173)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx166295_)
        (letrec ((_expand-special166297_
                  (lambda (_hd166299_ _K166300_ _rest166301_ _r166302_)
                    (_K166300_
                     _rest166301_
                     (cons (gx#core-expand-top _hd166299_) _r166302_)))))
          (gx#core-expand-block__0 _stx166295_ _expand-special166297_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx166048_)
        (letrec ((_expand-special166050_
                  (lambda (_hd166170_ _K166171_ _rest166172_ _r166173_)
                    (let* ((_K166177_
                            (lambda (_e166175_)
                              (_K166171_
                               _rest166172_
                               (cons _e166175_ _r166173_))))
                           (_e166178166207_ _hd166170_)
                           (_E166202166211_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e166178166207_)))
                           (_E166198166223_
                            (lambda ()
                              (if (gx#stx-pair? _e166178166207_)
                                  (let ((_e166203166215_
                                         (gx#syntax-e _e166178166207_)))
                                    (let ((_hd166204166218_
                                           (##car _e166203166215_))
                                          (_tl166205166220_
                                           (##cdr _e166203166215_)))
                                      (if (and (gx#identifier?
                                                _hd166204166218_)
                                               (gx#core-identifier=?
                                                _hd166204166218_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K166177_
                                               (gx#core-expand-define-runtime%
                                                _hd166170_))
                                              (_E166202166211_))
                                          (_E166202166211_))))
                                  (_E166202166211_))))
                           (_E166194166235_
                            (lambda ()
                              (if (gx#stx-pair? _e166178166207_)
                                  (let ((_e166199166227_
                                         (gx#syntax-e _e166178166207_)))
                                    (let ((_hd166200166230_
                                           (##car _e166199166227_))
                                          (_tl166201166232_
                                           (##cdr _e166199166227_)))
                                      (if (and (gx#identifier?
                                                _hd166200166230_)
                                               (gx#core-identifier=?
                                                _hd166200166230_
                                                '%#define-alias))
                                          (if '#t
                                              (_K166177_
                                               (gx#core-expand-define-alias%
                                                _hd166170_))
                                              (_E166198166223_))
                                          (_E166198166223_))))
                                  (_E166198166223_))))
                           (_E166184166247_
                            (lambda ()
                              (if (gx#stx-pair? _e166178166207_)
                                  (let ((_e166195166239_
                                         (gx#syntax-e _e166178166207_)))
                                    (let ((_hd166196166242_
                                           (##car _e166195166239_))
                                          (_tl166197166244_
                                           (##cdr _e166195166239_)))
                                      (if (and (gx#identifier?
                                                _hd166196166242_)
                                               (gx#core-identifier=?
                                                _hd166196166242_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K166177_
                                               (gx#core-expand-define-syntax%
                                                _hd166170_))
                                              (_E166194166235_))
                                          (_E166194166235_))))
                                  (_E166194166235_))))
                           (_E166180166279_
                            (lambda ()
                              (if (gx#stx-pair? _e166178166207_)
                                  (let ((_e166185166251_
                                         (gx#syntax-e _e166178166207_)))
                                    (let ((_hd166186166254_
                                           (##car _e166185166251_))
                                          (_tl166187166256_
                                           (##cdr _e166185166251_)))
                                      (if (and (gx#identifier?
                                                _hd166186166254_)
                                               (gx#core-identifier=?
                                                _hd166186166254_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl166187166256_)
                                              (let ((_e166188166259_
                                                     (gx#syntax-e
                                                      _tl166187166256_)))
                                                (let ((_hd166189166262_
                                                       (##car _e166188166259_))
                                                      (_tl166190166264_
                                                       (##cdr _e166188166259_)))
                                                  (let ((_hd-bind166267_
                                                         _hd166189166262_))
                                                    (if (gx#stx-pair?
                                                         _tl166190166264_)
                                                        (let ((_e166191166269_
                                                               (gx#syntax-e
                                                                _tl166190166264_)))
                                                          (let ((_hd166192166272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e166191166269_))
                        (_tl166193166274_ (##cdr _e166191166269_)))
                    (let ((_expr166277_ _hd166192166272_))
                      (if (gx#stx-null? _tl166193166274_)
                          (if (gx#core-bind-values? _hd-bind166267_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind166267_)
                                (_K166177_ _hd166170_))
                              (_E166184166247_))
                          (_E166184166247_)))))
                (_E166184166247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E166184166247_))
                                          (_E166184166247_))))
                                  (_E166184166247_))))
                           (_E166179166291_
                            (lambda ()
                              (if (gx#stx-pair? _e166178166207_)
                                  (let ((_e166181166283_
                                         (gx#syntax-e _e166178166207_)))
                                    (let ((_hd166182166286_
                                           (##car _e166181166283_))
                                          (_tl166183166288_
                                           (##cdr _e166181166283_)))
                                      (if (and (gx#identifier?
                                                _hd166182166286_)
                                               (gx#core-identifier=?
                                                _hd166182166286_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K166177_
                                               (gx#core-expand-begin-syntax%
                                                _hd166170_))
                                              (_E166180166279_))
                                          (_E166180166279_))))
                                  (_E166180166279_)))))
                      (_E166179166291_))))
                 (_eval-body166051_
                  (lambda (_rbody166059_)
                    (let _lp166061_ ((_rest166063_ _rbody166059_)
                                     (_body166064_ '())
                                     (_ebody166065_ '()))
                      (let* ((_rest166066166074_ _rest166063_)
                             (_else166068166082_
                              (lambda ()
                                (values _body166064_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody166065_)
                                          (gx#stx-source _stx166048_))))))
                             (_K166070166158_
                              (lambda (_rest166085_ _hd166086_)
                                (let* ((_e166087166104_ _hd166086_)
                                       (_E166099166108_
                                        (lambda ()
                                          (_lp166061_
                                           _rest166085_
                                           (cons _hd166086_ _body166064_)
                                           (cons _hd166086_ _ebody166065_))))
                                       (_E166089166120_
                                        (lambda ()
                                          (if (gx#stx-pair? _e166087166104_)
                                              (let ((_e166100166112_
                                                     (gx#syntax-e
                                                      _e166087166104_)))
                                                (let ((_hd166101166115_
                                                       (##car _e166100166112_))
                                                      (_tl166102166117_
                                                       (##cdr _e166100166112_)))
                                                  (if (and (gx#identifier?
                                                            _hd166101166115_)
                                                           (gx#core-identifier=?
                                                            _hd166101166115_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp166061_
                                                           _rest166085_
                                                           (cons _hd166086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body166064_)
                   _ebody166065_)
                  (_E166099166108_))
              (_E166099166108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E166099166108_))))
                                       (_E166088166154_
                                        (lambda ()
                                          (if (gx#stx-pair? _e166087166104_)
                                              (let ((_e166090166124_
                                                     (gx#syntax-e
                                                      _e166087166104_)))
                                                (let ((_hd166091166127_
                                                       (##car _e166090166124_))
                                                      (_tl166092166129_
                                                       (##cdr _e166090166124_)))
                                                  (if (and (gx#identifier?
                                                            _hd166091166127_)
                                                           (gx#core-identifier=?
                                                            _hd166091166127_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl166092166129_)
                                                          (let ((_e166093166132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl166092166129_)))
                    (let ((_hd166094166135_ (##car _e166093166132_))
                          (_tl166095166137_ (##cdr _e166093166132_)))
                      (let ((_hd-bind166140_ _hd166094166135_))
                        (if (gx#stx-pair? _tl166095166137_)
                            (let ((_e166096166142_
                                   (gx#syntax-e _tl166095166137_)))
                              (let ((_hd166097166145_ (##car _e166096166142_))
                                    (_tl166098166147_ (##cdr _e166096166142_)))
                                (let ((_expr166150_ _hd166097166145_))
                                  (if (gx#stx-null? _tl166098166147_)
                                      (if '#t
                                          (let ((_ehd166152_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind166140_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr166150_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd166086_))))
                                            (_lp166061_
                                             _rest166085_
                                             (cons _ehd166152_ _body166064_)
                                             (cons _ehd166152_ _ebody166065_)))
                                          (_E166089166120_))
                                      (_E166089166120_)))))
                            (_E166089166120_)))))
                  (_E166089166120_))
              (_E166089166120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E166089166120_)))))
                                  (_E166088166154_)))))
                        (if (##pair? _rest166066166074_)
                            (let ((_hd166071166161_ (##car _rest166066166074_))
                                  (_tl166072166163_
                                   (##cdr _rest166066166074_)))
                              (let* ((_hd166166_ _hd166071166161_)
                                     (_rest166168_ _tl166072166163_))
                                (_K166070166158_ _rest166168_ _hd166166_)))
                            (_else166068166082_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody166054_
                     (gx#core-expand-block__1
                      _stx166048_
                      _expand-special166050_
                      '#f))
                    (_g170385_ (_eval-body166051_ _rbody166054_)))
               (begin
                 (let ((_g170386_
                        (if (##values? _g170385_)
                            (##vector-length _g170385_)
                            1)))
                   (if (not (##fx= _g170386_ 2))
                       (error "Context expects 2 values" _g170386_)))
                 (let ((_expanded-body166056_ (##vector-ref _g170385_ 0))
                       (_value166057_ (##vector-ref _g170385_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body166056_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value166057_ '())))
                    (gx#stx-source _stx166048_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx166018_)
        (let* ((_e166019166026_ _stx166018_)
               (_E166021166030_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166019166026_)))
               (_E166020166044_
                (lambda ()
                  (if (gx#stx-pair? _e166019166026_)
                      (let ((_e166022166034_ (gx#syntax-e _e166019166026_)))
                        (let ((_hd166023166037_ (##car _e166022166034_))
                              (_tl166024166039_ (##cdr _e166022166034_)))
                          (let ((_body166042_ _tl166024166039_))
                            (if (gx#stx-list? _body166042_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body166042_)
                                 (gx#stx-source _stx166018_))
                                (_E166021166030_)))))
                      (_E166021166030_)))))
          (_E166020166044_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx166016_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx166016_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx165962_)
        (let* ((_e165963165976_ _stx165962_)
               (_E165965165980_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165963165976_)))
               (_E165964166012_
                (lambda ()
                  (if (gx#stx-pair? _e165963165976_)
                      (let ((_e165966165984_ (gx#syntax-e _e165963165976_)))
                        (let ((_hd165967165987_ (##car _e165966165984_))
                              (_tl165968165989_ (##cdr _e165966165984_)))
                          (if (gx#stx-pair? _tl165968165989_)
                              (let ((_e165969165992_
                                     (gx#syntax-e _tl165968165989_)))
                                (let ((_hd165970165995_
                                       (##car _e165969165992_))
                                      (_tl165971165997_
                                       (##cdr _e165969165992_)))
                                  (let ((_ann166000_ _hd165970165995_))
                                    (if (gx#stx-pair? _tl165971165997_)
                                        (let ((_e165972166002_
                                               (gx#syntax-e _tl165971165997_)))
                                          (let ((_hd165973166005_
                                                 (##car _e165972166002_))
                                                (_tl165974166007_
                                                 (##cdr _e165972166002_)))
                                            (let ((_expr166010_
                                                   _hd165973166005_))
                                              (if (gx#stx-null?
                                                   _tl165974166007_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann166000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr166010_)
                                 '())))
               (gx#stx-source _stx165962_))
              (_E165965165980_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165965165980_)))))
                                        (_E165965165980_)))))
                              (_E165965165980_))))
                      (_E165965165980_)))))
          (_E165964166012_))))
    (define gx#core-expand-local-block
      (lambda (_stx165686_ _body165687_)
        (letrec ((_expand-special165689_
                  (lambda (_hd165957_ _K165958_ _rest165959_ _r165960_)
                    (_K165958_
                     '()
                     (cons (_expand-internal165690_ _hd165957_ _rest165959_)
                           _r165960_))))
                 (_expand-internal165690_
                  (lambda (_hd165953_ _rest165954_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal165692_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd165953_ _rest165954_))
                          (gx#stx-source _stx165686_))
                         _expand-internal-special165691_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj170379
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj170379)
                       __obj170379))))
                 (_expand-internal-special165691_
                  (lambda (_hd165848_ _K165849_ _rest165850_ _r165851_)
                    (let* ((_e165852165877_ _hd165848_)
                           (_E165872165881_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e165852165877_)))
                           (_E165868165893_
                            (lambda ()
                              (if (gx#stx-pair? _e165852165877_)
                                  (let ((_e165873165885_
                                         (gx#syntax-e _e165852165877_)))
                                    (let ((_hd165874165888_
                                           (##car _e165873165885_))
                                          (_tl165875165890_
                                           (##cdr _e165873165885_)))
                                      (if (and (gx#identifier?
                                                _hd165874165888_)
                                               (gx#core-identifier=?
                                                _hd165874165888_
                                                '%#declare))
                                          (if '#t
                                              (_K165849_
                                               _rest165850_
                                               (cons (gx#core-expand-declare%
                                                      _hd165848_)
                                                     _r165851_))
                                              (_E165872165881_))
                                          (_E165872165881_))))
                                  (_E165872165881_))))
                           (_E165864165905_
                            (lambda ()
                              (if (gx#stx-pair? _e165852165877_)
                                  (let ((_e165869165897_
                                         (gx#syntax-e _e165852165877_)))
                                    (let ((_hd165870165900_
                                           (##car _e165869165897_))
                                          (_tl165871165902_
                                           (##cdr _e165869165897_)))
                                      (if (and (gx#identifier?
                                                _hd165870165900_)
                                               (gx#core-identifier=?
                                                _hd165870165900_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd165848_)
                                                (_K165849_
                                                 _rest165850_
                                                 _r165851_))
                                              (_E165868165893_))
                                          (_E165868165893_))))
                                  (_E165868165893_))))
                           (_E165854165917_
                            (lambda ()
                              (if (gx#stx-pair? _e165852165877_)
                                  (let ((_e165865165909_
                                         (gx#syntax-e _e165852165877_)))
                                    (let ((_hd165866165912_
                                           (##car _e165865165909_))
                                          (_tl165867165914_
                                           (##cdr _e165865165909_)))
                                      (if (and (gx#identifier?
                                                _hd165866165912_)
                                               (gx#core-identifier=?
                                                _hd165866165912_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd165848_)
                                                (_K165849_
                                                 _rest165850_
                                                 _r165851_))
                                              (_E165864165905_))
                                          (_E165864165905_))))
                                  (_E165864165905_))))
                           (_E165853165949_
                            (lambda ()
                              (if (gx#stx-pair? _e165852165877_)
                                  (let ((_e165855165921_
                                         (gx#syntax-e _e165852165877_)))
                                    (let ((_hd165856165924_
                                           (##car _e165855165921_))
                                          (_tl165857165926_
                                           (##cdr _e165855165921_)))
                                      (if (and (gx#identifier?
                                                _hd165856165924_)
                                               (gx#core-identifier=?
                                                _hd165856165924_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl165857165926_)
                                              (let ((_e165858165929_
                                                     (gx#syntax-e
                                                      _tl165857165926_)))
                                                (let ((_hd165859165932_
                                                       (##car _e165858165929_))
                                                      (_tl165860165934_
                                                       (##cdr _e165858165929_)))
                                                  (let ((_hd-bind165937_
                                                         _hd165859165932_))
                                                    (if (gx#stx-pair?
                                                         _tl165860165934_)
                                                        (let ((_e165861165939_
                                                               (gx#syntax-e
                                                                _tl165860165934_)))
                                                          (let ((_hd165862165942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e165861165939_))
                        (_tl165863165944_ (##cdr _e165861165939_)))
                    (let ((_expr165947_ _hd165862165942_))
                      (if (gx#stx-null? _tl165863165944_)
                          (if (gx#core-bind-values? _hd-bind165937_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind165937_)
                                (_K165849_
                                 _rest165850_
                                 (cons _hd165848_ _r165851_)))
                              (_E165854165917_))
                          (_E165854165917_)))))
                (_E165854165917_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E165854165917_))
                                          (_E165854165917_))))
                                  (_E165854165917_)))))
                      (_E165853165949_))))
                 (_wrap-internal165692_
                  (lambda (_rbody165694_)
                    (let _lp165696_ ((_rest165698_ _rbody165694_)
                                     (_decls165699_ '())
                                     (_bind165700_ '())
                                     (_body165701_ '()))
                      (let* ((_e165702165709_ _rest165698_)
                             (_E165704165758_
                              (lambda ()
                                (let* ((_body165753_
                                        (let* ((_body165712165722_
                                                _body165701_)
                                               (_else165715165730_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body165701_)
                                                   (gx#stx-source
                                                    _stx165686_)))))
                                          (let ((_K165720165750_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx165686_)))
                                                (_K165717165736_
                                                 (lambda (_expr165734_)
                                                   _expr165734_)))
                                            (let ((_try-match165714165746_
                                                   (lambda ()
                                                     (if (##pair? _body165712165722_)
                                                         (let ((_tl165719165741_
                                                                (##cdr _body165712165722_))
                                                               (_hd165718165739_
                                                                (##car _body165712165722_)))
                                                           (if (##null? _tl165719165741_)
                                                               (let ((_expr165744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd165718165739_))
                         (_K165717165736_ _expr165744_))
                       (_else165715165730_)))
                 (_else165715165730_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body165712165722_)
                                                  (_K165720165750_)
                                                  (_try-match165714165746_))))))
                                       (_body165755_
                                        (if (null? _bind165700_)
                                            _body165753_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind165700_
                                                         (cons _body165753_
                                                               '())))
                                             (gx#stx-source _stx165686_)))))
                                  (if (null? _decls165699_)
                                      _body165755_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls165699_
                                                   (cons _body165755_ '())))
                                       (gx#stx-source _stx165686_))))))
                             (_E165703165844_
                              (lambda ()
                                (if (gx#stx-pair? _e165702165709_)
                                    (let ((_e165705165762_
                                           (gx#syntax-e _e165702165709_)))
                                      (let ((_hd165706165765_
                                             (##car _e165705165762_))
                                            (_tl165707165767_
                                             (##cdr _e165705165762_)))
                                        (let* ((_hd165770_ _hd165706165765_)
                                               (_rest165772_ _tl165707165767_))
                                          (if '#t
                                              (let* ((_e165773165790_
                                                      _hd165770_)
                                                     (_E165785165794_
                                                      (lambda ()
                                                        (if (null? _bind165700_)
                                                            (_lp165696_
                                                             _rest165772_
                                                             _decls165699_
                                                             _bind165700_
                                                             (cons _hd165770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body165701_))
                    (_lp165696_
                     _rest165772_
                     _decls165699_
                     (cons (cons '#f (cons _hd165770_ '())) _bind165700_)
                     _body165701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E165775165808_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e165773165790_)
                                                            (let ((_e165786165798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e165773165790_)))
                      (let ((_hd165787165801_ (##car _e165786165798_))
                            (_tl165788165803_ (##cdr _e165786165798_)))
                        (if (and (gx#identifier? _hd165787165801_)
                                 (gx#core-identifier=?
                                  _hd165787165801_
                                  '%#declare))
                            (let ((_xdecls165806_ _tl165788165803_))
                              (if '#t
                                  (_lp165696_
                                   _rest165772_
                                   (gx#stx-foldr
                                    cons
                                    _decls165699_
                                    _xdecls165806_)
                                   _bind165700_
                                   _body165701_)
                                  (_E165785165794_)))
                            (_E165785165794_))))
                    (_E165785165794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E165774165840_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e165773165790_)
                                                            (let ((_e165776165812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e165773165790_)))
                      (let ((_hd165777165815_ (##car _e165776165812_))
                            (_tl165778165817_ (##cdr _e165776165812_)))
                        (if (and (gx#identifier? _hd165777165815_)
                                 (gx#core-identifier=?
                                  _hd165777165815_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl165778165817_)
                                (let ((_e165779165820_
                                       (gx#syntax-e _tl165778165817_)))
                                  (let ((_hd165780165823_
                                         (##car _e165779165820_))
                                        (_tl165781165825_
                                         (##cdr _e165779165820_)))
                                    (let ((_hd-bind165828_ _hd165780165823_))
                                      (if (gx#stx-pair? _tl165781165825_)
                                          (let ((_e165782165830_
                                                 (gx#syntax-e
                                                  _tl165781165825_)))
                                            (let ((_hd165783165833_
                                                   (##car _e165782165830_))
                                                  (_tl165784165835_
                                                   (##cdr _e165782165830_)))
                                              (let ((_expr165838_
                                                     _hd165783165833_))
                                                (if (gx#stx-null?
                                                     _tl165784165835_)
                                                    (if '#t
                                                        (_lp165696_
                                                         _rest165772_
                                                         _decls165699_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind165828_)
                             (cons (gx#core-expand-expression _expr165838_)
                                   '()))
                       _bind165700_)
                 _body165701_)
                (_E165775165808_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E165775165808_)))))
                                          (_E165775165808_)))))
                                (_E165775165808_))
                            (_E165775165808_))))
                    (_E165775165808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E165774165840_))
                                              (_E165704165758_)))))
                                    (_E165704165758_)))))
                        (_E165703165844_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body165687_)
            (gx#stx-source _stx165686_))
           _expand-special165689_))))
    (define gx#core-expand-declare%
      (lambda (_stx165624_)
        (let* ((_e165625165632_ _stx165624_)
               (_E165627165636_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165625165632_)))
               (_E165626165682_
                (lambda ()
                  (if (gx#stx-pair? _e165625165632_)
                      (let ((_e165628165640_ (gx#syntax-e _e165625165632_)))
                        (let ((_hd165629165643_ (##car _e165628165640_))
                              (_tl165630165645_ (##cdr _e165628165640_)))
                          (let ((_body165648_ _tl165630165645_))
                            (if (gx#stx-list? _body165648_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl165650_)
                                     (let* ((_e165651165658_ _decl165650_)
                                            (_E165653165662_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e165651165658_)))
                                            (_E165652165678_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e165651165658_)
                                                   (let ((_e165654165666_
                                                          (gx#syntax-e
                                                           _e165651165658_)))
                                                     (let ((_hd165655165669_
                                                            (##car _e165654165666_))
                                                           (_tl165656165671_
                                                            (##cdr _e165654165666_)))
                                                       (let* ((_head165674_
                                                               _hd165655165669_)
                                                              (_args165676_
                                                               _tl165656165671_))
                                                         (if (gx#stx-list?
                                                              _args165676_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl165650_)
                                                             (_E165653165662_)))))
                                                   (_E165653165662_)))))
                                       (_E165652165678_)))
                                   _body165648_))
                                 (gx#stx-source _stx165624_))
                                (_E165627165636_)))))
                      (_E165627165636_)))))
          (_E165626165682_))))
    (define gx#core-expand-extern%
      (lambda (_stx165528_)
        (let* ((_e165529165536_ _stx165528_)
               (_E165531165540_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165529165536_)))
               (_E165530165620_
                (lambda ()
                  (if (gx#stx-pair? _e165529165536_)
                      (let ((_e165532165544_ (gx#syntax-e _e165529165536_)))
                        (let ((_hd165533165547_ (##car _e165532165544_))
                              (_tl165534165549_ (##cdr _e165532165544_)))
                          (let ((_body165552_ _tl165534165549_))
                            (if '#t
                                (let _lp165554_ ((_rest165556_ _body165552_)
                                                 (_r165557_ '()))
                                  (let* ((_e165558165572_ _rest165556_)
                                         (_E165570165576_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx165528_)))
                                         (_E165560165580_
                                          (lambda ()
                                            (if (gx#stx-null? _e165558165572_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r165557_))
                                                     (gx#stx-source
                                                      _stx165528_))
                                                    (_E165570165576_))
                                                (_E165570165576_))))
                                         (_E165559165616_
                                          (lambda ()
                                            (if (gx#stx-pair? _e165558165572_)
                                                (let ((_e165561165584_
                                                       (gx#syntax-e
                                                        _e165558165572_)))
                                                  (let ((_hd165562165587_
                                                         (##car _e165561165584_))
                                                        (_tl165563165589_
                                                         (##cdr _e165561165584_)))
                                                    (if (gx#stx-pair?
                                                         _hd165562165587_)
                                                        (let ((_e165564165592_
                                                               (gx#syntax-e
                                                                _hd165562165587_)))
                                                          (let ((_hd165565165595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e165564165592_))
                        (_tl165566165597_ (##cdr _e165564165592_)))
                    (let ((_id165600_ _hd165565165595_))
                      (if (gx#stx-pair? _tl165566165597_)
                          (let ((_e165567165602_
                                 (gx#syntax-e _tl165566165597_)))
                            (let ((_hd165568165605_ (##car _e165567165602_))
                                  (_tl165569165607_ (##cdr _e165567165602_)))
                              (let ((_eid165610_ _hd165568165605_))
                                (if (gx#stx-null? _tl165569165607_)
                                    (let ((_rest165612_ _tl165563165589_))
                                      (if (and (gx#identifier? _id165600_)
                                               (gx#identifier? _eid165610_))
                                          (let ((_eid165614_
                                                 (gx#stx-e _eid165610_)))
                                            (gx#core-bind-extern!__0
                                             _id165600_
                                             _eid165614_)
                                            (_lp165554_
                                             _rest165612_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id165600_)
                                                         (cons _eid165614_
                                                               '()))
                                                   _r165557_)))
                                          (_E165560165580_)))
                                    (_E165560165580_)))))
                          (_E165560165580_)))))
                (_E165560165580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E165560165580_)))))
                                    (_E165559165616_)))
                                (_E165531165540_)))))
                      (_E165531165540_)))))
          (_E165530165620_))))
    (define gx#core-expand-define-values%
      (lambda (_stx165474_)
        (let* ((_e165475165488_ _stx165474_)
               (_E165477165492_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165475165488_)))
               (_E165476165524_
                (lambda ()
                  (if (gx#stx-pair? _e165475165488_)
                      (let ((_e165478165496_ (gx#syntax-e _e165475165488_)))
                        (let ((_hd165479165499_ (##car _e165478165496_))
                              (_tl165480165501_ (##cdr _e165478165496_)))
                          (if (gx#stx-pair? _tl165480165501_)
                              (let ((_e165481165504_
                                     (gx#syntax-e _tl165480165501_)))
                                (let ((_hd165482165507_
                                       (##car _e165481165504_))
                                      (_tl165483165509_
                                       (##cdr _e165481165504_)))
                                  (let ((_hd165512_ _hd165482165507_))
                                    (if (gx#stx-pair? _tl165483165509_)
                                        (let ((_e165484165514_
                                               (gx#syntax-e _tl165483165509_)))
                                          (let ((_hd165485165517_
                                                 (##car _e165484165514_))
                                                (_tl165486165519_
                                                 (##cdr _e165484165514_)))
                                            (let ((_expr165522_
                                                   _hd165485165517_))
                                              (if (gx#stx-null?
                                                   _tl165486165519_)
                                                  (if (gx#core-bind-values?
                                                       _hd165512_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd165512_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd165512_)
                             (cons (gx#core-expand-expression _expr165522_)
                                   '())))
                 (gx#stx-source _stx165474_)))
              (_E165477165492_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165477165492_)))))
                                        (_E165477165492_)))))
                              (_E165477165492_))))
                      (_E165477165492_)))))
          (_E165476165524_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx165418_)
        (let* ((_e165419165432_ _stx165418_)
               (_E165421165436_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165419165432_)))
               (_E165420165470_
                (lambda ()
                  (if (gx#stx-pair? _e165419165432_)
                      (let ((_e165422165440_ (gx#syntax-e _e165419165432_)))
                        (let ((_hd165423165443_ (##car _e165422165440_))
                              (_tl165424165445_ (##cdr _e165422165440_)))
                          (if (gx#stx-pair? _tl165424165445_)
                              (let ((_e165425165448_
                                     (gx#syntax-e _tl165424165445_)))
                                (let ((_hd165426165451_
                                       (##car _e165425165448_))
                                      (_tl165427165453_
                                       (##cdr _e165425165448_)))
                                  (let ((_id165456_ _hd165426165451_))
                                    (if (gx#stx-pair? _tl165427165453_)
                                        (let ((_e165428165458_
                                               (gx#syntax-e _tl165427165453_)))
                                          (let ((_hd165429165461_
                                                 (##car _e165428165458_))
                                                (_tl165430165463_
                                                 (##cdr _e165428165458_)))
                                            (let ((_binding-id165466_
                                                   _hd165429165461_))
                                              (if (gx#stx-null?
                                                   _tl165430165463_)
                                                  (if (and (gx#identifier?
                                                            _id165456_)
                                                           (gx#identifier?
                                                            _binding-id165466_))
                                                      (let ((_eid165468_
                                                             (gx#stx-e
                                                              _binding-id165466_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id165456_
                                                         _eid165468_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id165456_)
                             (cons _eid165468_ '())))))
              (_E165421165436_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165421165436_)))))
                                        (_E165421165436_)))))
                              (_E165421165436_))))
                      (_E165421165436_)))))
          (_E165420165470_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx165361_)
        (let* ((_e165362165375_ _stx165361_)
               (_E165364165379_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165362165375_)))
               (_E165363165414_
                (lambda ()
                  (if (gx#stx-pair? _e165362165375_)
                      (let ((_e165365165383_ (gx#syntax-e _e165362165375_)))
                        (let ((_hd165366165386_ (##car _e165365165383_))
                              (_tl165367165388_ (##cdr _e165365165383_)))
                          (if (gx#stx-pair? _tl165367165388_)
                              (let ((_e165368165391_
                                     (gx#syntax-e _tl165367165388_)))
                                (let ((_hd165369165394_
                                       (##car _e165368165391_))
                                      (_tl165370165396_
                                       (##cdr _e165368165391_)))
                                  (let ((_id165399_ _hd165369165394_))
                                    (if (gx#stx-pair? _tl165370165396_)
                                        (let ((_e165371165401_
                                               (gx#syntax-e _tl165370165396_)))
                                          (let ((_hd165372165404_
                                                 (##car _e165371165401_))
                                                (_tl165373165406_
                                                 (##cdr _e165371165401_)))
                                            (let ((_expr165409_
                                                   _hd165372165404_))
                                              (if (gx#stx-null?
                                                   _tl165373165406_)
                                                  (if (gx#identifier?
                                                       _id165399_)
                                                      (let ((_g170387_
                                                             (gx#core-expand-expression+1
                                                              _expr165409_)))
                                                        (begin
                                                          (let ((_g170388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g170387_)
                             (##vector-length _g170387_)
                             1)))
                    (if (not (##fx= _g170388_ 2))
                        (error "Context expects 2 values" _g170388_)))
                  (let ((_e-stx165411_ (##vector-ref _g170387_ 0))
                        (_e165412_ (##vector-ref _g170387_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id165399_ _e165412_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id165399_)
                                   (cons _e-stx165411_ '())))
                       (gx#stx-source _stx165361_))))))
              (_E165364165379_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165364165379_)))))
                                        (_E165364165379_)))))
                              (_E165364165379_))))
                      (_E165364165379_)))))
          (_E165363165414_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx165305_)
        (let* ((_e165306165319_ _stx165305_)
               (_E165308165323_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165306165319_)))
               (_E165307165357_
                (lambda ()
                  (if (gx#stx-pair? _e165306165319_)
                      (let ((_e165309165327_ (gx#syntax-e _e165306165319_)))
                        (let ((_hd165310165330_ (##car _e165309165327_))
                              (_tl165311165332_ (##cdr _e165309165327_)))
                          (if (gx#stx-pair? _tl165311165332_)
                              (let ((_e165312165335_
                                     (gx#syntax-e _tl165311165332_)))
                                (let ((_hd165313165338_
                                       (##car _e165312165335_))
                                      (_tl165314165340_
                                       (##cdr _e165312165335_)))
                                  (let ((_id165343_ _hd165313165338_))
                                    (if (gx#stx-pair? _tl165314165340_)
                                        (let ((_e165315165345_
                                               (gx#syntax-e _tl165314165340_)))
                                          (let ((_hd165316165348_
                                                 (##car _e165315165345_))
                                                (_tl165317165350_
                                                 (##cdr _e165315165345_)))
                                            (let ((_alias-id165353_
                                                   _hd165316165348_))
                                              (if (gx#stx-null?
                                                   _tl165317165350_)
                                                  (if (and (gx#identifier?
                                                            _id165343_)
                                                           (gx#identifier?
                                                            _alias-id165353_))
                                                      (let ((_alias-id165355_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id165353_)))
                                                        (gx#core-bind-alias!__0
                                                         _id165343_
                                                         _alias-id165355_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id165343_)
                             (cons _alias-id165355_ '())))))
              (_E165308165323_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165308165323_)))))
                                        (_E165308165323_)))))
                              (_E165308165323_))))
                      (_E165308165323_)))))
          (_E165307165357_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx165248_ _wrap?165249_)
        (let* ((_e165250165260_ _stx165248_)
               (_E165252165264_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165250165260_)))
               (_E165251165291_
                (lambda ()
                  (if (gx#stx-pair? _e165250165260_)
                      (let ((_e165253165268_ (gx#syntax-e _e165250165260_)))
                        (let ((_hd165254165271_ (##car _e165253165268_))
                              (_tl165255165273_ (##cdr _e165253165268_)))
                          (if (gx#stx-pair? _tl165255165273_)
                              (let ((_e165256165276_
                                     (gx#syntax-e _tl165255165273_)))
                                (let ((_hd165257165279_
                                       (##car _e165256165276_))
                                      (_tl165258165281_
                                       (##cdr _e165256165276_)))
                                  (let* ((_hd165284_ _hd165257165279_)
                                         (_body165286_ _tl165258165281_))
                                    (if (gx#core-bind-values? _hd165284_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd165284_)
                                           (let ((_body165289_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd165284_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx165248_
                                                               _body165286_)
                                                              '()))))
                                             (if _wrap?165249_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body165289_)
                                                  (gx#stx-source _stx165248_))
                                                 _body165289_)))
                                         gx#current-expander-context
                                         (let ((__obj170380
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj170380)
                                           __obj170380))
                                        (_E165252165264_)))))
                              (_E165252165264_))))
                      (_E165252165264_)))))
          (_E165251165291_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx165298_)
        (let ((_wrap?165300_ '#t))
          (gx#core-expand-lambda%__% _stx165298_ _wrap?165300_))))
    (define gx#core-expand-lambda%
      (lambda _g170390_
        (let ((_g170389_ (##length _g170390_)))
          (cond ((##fx= _g170389_ 1)
                 (apply (lambda (_stx165298_)
                          (gx#core-expand-lambda%__0 _stx165298_))
                        _g170390_))
                ((##fx= _g170389_ 2)
                 (apply (lambda (_stx165302_ _wrap?165303_)
                          (gx#core-expand-lambda%__%
                           _stx165302_
                           _wrap?165303_))
                        _g170390_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g170390_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx165212_)
        (let* ((_e165213165220_ _stx165212_)
               (_E165215165224_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165213165220_)))
               (_E165214165243_
                (lambda ()
                  (if (gx#stx-pair? _e165213165220_)
                      (let ((_e165216165228_ (gx#syntax-e _e165213165220_)))
                        (let ((_hd165217165231_ (##car _e165216165228_))
                              (_tl165218165233_ (##cdr _e165216165228_)))
                          (let ((_clauses165236_ _tl165218165233_))
                            (if (gx#stx-list? _clauses165236_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause165238_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause165238_)
                                       (let ((_$e165240_
                                              (gx#stx-source _clause165238_)))
                                         (if _$e165240_
                                             _$e165240_
                                             (gx#stx-source _stx165212_))))
                                      '#f))
                                   _clauses165236_))
                                 (gx#stx-source _stx165212_))
                                (_E165215165224_)))))
                      (_E165215165224_)))))
          (_E165214165243_))))
    (define gx#core-expand-let-values%
      (lambda (_stx165166_)
        (let* ((_e165167165177_ _stx165166_)
               (_E165169165181_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165167165177_)))
               (_E165168165208_
                (lambda ()
                  (if (gx#stx-pair? _e165167165177_)
                      (let ((_e165170165185_ (gx#syntax-e _e165167165177_)))
                        (let ((_hd165171165188_ (##car _e165170165185_))
                              (_tl165172165190_ (##cdr _e165170165185_)))
                          (if (gx#stx-pair? _tl165172165190_)
                              (let ((_e165173165193_
                                     (gx#syntax-e _tl165172165190_)))
                                (let ((_hd165174165196_
                                       (##car _e165173165193_))
                                      (_tl165175165198_
                                       (##cdr _e165173165193_)))
                                  (let* ((_hd165201_ _hd165174165196_)
                                         (_body165203_ _tl165175165198_))
                                    (if (gx#core-expand-let-bind? _hd165201_)
                                        (let ((_expressions165205_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd165201_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd165201_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd165201_
                                                           _expressions165205_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx165166_
                         _body165203_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx165166_)))
                                           gx#current-expander-context
                                           (let ((__obj170381
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj170381)
                                             __obj170381)))
                                        (_E165169165181_)))))
                              (_E165169165181_))))
                      (_E165169165181_)))))
          (_E165168165208_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx165111_ _form165112_)
        (let* ((_e165113165123_ _stx165111_)
               (_E165115165127_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165113165123_)))
               (_E165114165152_
                (lambda ()
                  (if (gx#stx-pair? _e165113165123_)
                      (let ((_e165116165131_ (gx#syntax-e _e165113165123_)))
                        (let ((_hd165117165134_ (##car _e165116165131_))
                              (_tl165118165136_ (##cdr _e165116165131_)))
                          (if (gx#stx-pair? _tl165118165136_)
                              (let ((_e165119165139_
                                     (gx#syntax-e _tl165118165136_)))
                                (let ((_hd165120165142_
                                       (##car _e165119165139_))
                                      (_tl165121165144_
                                       (##cdr _e165119165139_)))
                                  (let* ((_hd165147_ _hd165120165142_)
                                         (_body165149_ _tl165121165144_))
                                    (if (gx#core-expand-let-bind? _hd165147_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd165147_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form165112_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd165147_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd165147_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx165111_
                                                               _body165149_)
                                                              '())))
                                            (gx#stx-source _stx165111_)))
                                         gx#current-expander-context
                                         (let ((__obj170382
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj170382)
                                           __obj170382))
                                        (_E165115165127_)))))
                              (_E165115165127_))))
                      (_E165115165127_)))))
          (_E165114165152_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx165159_)
        (let ((_form165161_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx165159_ _form165161_))))
    (define gx#core-expand-letrec-values%
      (lambda _g170392_
        (let ((_g170391_ (##length _g170392_)))
          (cond ((##fx= _g170391_ 1)
                 (apply (lambda (_stx165159_)
                          (gx#core-expand-letrec-values%__0 _stx165159_))
                        _g170392_))
                ((##fx= _g170391_ 2)
                 (apply (lambda (_stx165163_ _form165164_)
                          (gx#core-expand-letrec-values%__%
                           _stx165163_
                           _form165164_))
                        _g170392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g170392_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx165108_)
        (gx#core-expand-letrec-values%__% _stx165108_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx165065_)
        (if (gx#stx-list? _stx165065_)
            (gx#stx-andmap
             (lambda (_bind165067_)
               (let* ((_e165068165078_ _bind165067_)
                      (_E165070165082_ (lambda () '#f))
                      (_E165069165104_
                       (lambda ()
                         (if (gx#stx-pair? _e165068165078_)
                             (let ((_e165071165086_
                                    (gx#syntax-e _e165068165078_)))
                               (let ((_hd165072165089_ (##car _e165071165086_))
                                     (_tl165073165091_
                                      (##cdr _e165071165086_)))
                                 (let ((_hd165094_ _hd165072165089_))
                                   (if (gx#stx-pair? _tl165073165091_)
                                       (let ((_e165074165096_
                                              (gx#syntax-e _tl165073165091_)))
                                         (let ((_hd165075165099_
                                                (##car _e165074165096_))
                                               (_tl165076165101_
                                                (##cdr _e165074165096_)))
                                           (if (gx#stx-null? _tl165076165101_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd165094_)
                                                   (_E165070165082_))
                                               (_E165070165082_))))
                                       (_E165070165082_)))))
                             (_E165070165082_)))))
                 (_E165069165104_)))
             _stx165065_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind165024_)
        (let* ((_e165025165035_ _bind165024_)
               (_E165027165039_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165025165035_)))
               (_E165026165061_
                (lambda ()
                  (if (gx#stx-pair? _e165025165035_)
                      (let ((_e165028165043_ (gx#syntax-e _e165025165035_)))
                        (let ((_hd165029165046_ (##car _e165028165043_))
                              (_tl165030165048_ (##cdr _e165028165043_)))
                          (if (gx#stx-pair? _tl165030165048_)
                              (let ((_e165031165051_
                                     (gx#syntax-e _tl165030165048_)))
                                (let ((_hd165032165054_
                                       (##car _e165031165051_))
                                      (_tl165033165056_
                                       (##cdr _e165031165051_)))
                                  (let ((_expr165059_ _hd165032165054_))
                                    (if (gx#stx-null? _tl165033165056_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr165059_)
                                            (_E165027165039_))
                                        (_E165027165039_)))))
                              (_E165027165039_))))
                      (_E165027165039_)))))
          (_E165026165061_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind164983_)
        (let* ((_e164984164994_ _bind164983_)
               (_E164986164998_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164984164994_)))
               (_E164985165020_
                (lambda ()
                  (if (gx#stx-pair? _e164984164994_)
                      (let ((_e164987165002_ (gx#syntax-e _e164984164994_)))
                        (let ((_hd164988165005_ (##car _e164987165002_))
                              (_tl164989165007_ (##cdr _e164987165002_)))
                          (let ((_hd165010_ _hd164988165005_))
                            (if (gx#stx-pair? _tl164989165007_)
                                (let ((_e164990165012_
                                       (gx#syntax-e _tl164989165007_)))
                                  (let ((_hd164991165015_
                                         (##car _e164990165012_))
                                        (_tl164992165017_
                                         (##cdr _e164990165012_)))
                                    (if (gx#stx-null? _tl164992165017_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd165010_)
                                            (_E164986164998_))
                                        (_E164986164998_))))
                                (_E164986164998_)))))
                      (_E164986164998_)))))
          (_E164985165020_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind164941_ _expr164942_)
        (let* ((_e164943164953_ _bind164941_)
               (_E164945164957_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164943164953_)))
               (_E164944164979_
                (lambda ()
                  (if (gx#stx-pair? _e164943164953_)
                      (let ((_e164946164961_ (gx#syntax-e _e164943164953_)))
                        (let ((_hd164947164964_ (##car _e164946164961_))
                              (_tl164948164966_ (##cdr _e164946164961_)))
                          (let ((_hd164969_ _hd164947164964_))
                            (if (gx#stx-pair? _tl164948164966_)
                                (let ((_e164949164971_
                                       (gx#syntax-e _tl164948164966_)))
                                  (let ((_hd164950164974_
                                         (##car _e164949164971_))
                                        (_tl164951164976_
                                         (##cdr _e164949164971_)))
                                    (if (gx#stx-null? _tl164951164976_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd164969_)
                                                  (cons _expr164942_ '()))
                                            (_E164945164957_))
                                        (_E164945164957_))))
                                (_E164945164957_)))))
                      (_E164945164957_)))))
          (_E164944164979_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx164895_)
        (let* ((_e164896164906_ _stx164895_)
               (_E164898164910_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164896164906_)))
               (_E164897164937_
                (lambda ()
                  (if (gx#stx-pair? _e164896164906_)
                      (let ((_e164899164914_ (gx#syntax-e _e164896164906_)))
                        (let ((_hd164900164917_ (##car _e164899164914_))
                              (_tl164901164919_ (##cdr _e164899164914_)))
                          (if (gx#stx-pair? _tl164901164919_)
                              (let ((_e164902164922_
                                     (gx#syntax-e _tl164901164919_)))
                                (let ((_hd164903164925_
                                       (##car _e164902164922_))
                                      (_tl164904164927_
                                       (##cdr _e164902164922_)))
                                  (let* ((_hd164930_ _hd164903164925_)
                                         (_body164932_ _tl164904164927_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd164930_)
                                        (let ((_expanders164934_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd164930_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd164930_
                                              _expanders164934_)
                                             (gx#core-expand-local-block
                                              _stx164895_
                                              _body164932_))
                                           gx#current-expander-context
                                           (let ((__obj170383
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj170383)
                                             __obj170383)))
                                        (_E164898164910_)))))
                              (_E164898164910_))))
                      (_E164898164910_)))))
          (_E164897164937_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx164844_)
        (let* ((_e164845164855_ _stx164844_)
               (_E164847164859_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164845164855_)))
               (_E164846164891_
                (lambda ()
                  (if (gx#stx-pair? _e164845164855_)
                      (let ((_e164848164863_ (gx#syntax-e _e164845164855_)))
                        (let ((_hd164849164866_ (##car _e164848164863_))
                              (_tl164850164868_ (##cdr _e164848164863_)))
                          (if (gx#stx-pair? _tl164850164868_)
                              (let ((_e164851164871_
                                     (gx#syntax-e _tl164850164868_)))
                                (let ((_hd164852164874_
                                       (##car _e164851164871_))
                                      (_tl164853164876_
                                       (##cdr _e164851164871_)))
                                  (let* ((_hd164879_ _hd164852164874_)
                                         (_body164881_ _tl164853164876_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd164879_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd164879_
                                            (make-list
                                             (gx#stx-length _hd164879_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g164883164886_
                                                     _g164884164888_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g164883164886_
                                               _g164884164888_
                                               '#t))
                                            _hd164879_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd164879_))
                                           (gx#core-expand-local-block
                                            _stx164844_
                                            _body164881_))
                                         gx#current-expander-context
                                         (let ((__obj170384
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj170384)
                                           __obj170384))
                                        (_E164847164859_)))))
                              (_E164847164859_))))
                      (_E164847164859_)))))
          (_E164846164891_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx164801_)
        (if (gx#stx-list? _stx164801_)
            (gx#stx-andmap
             (lambda (_bind164803_)
               (let* ((_e164804164814_ _bind164803_)
                      (_E164806164818_ (lambda () '#f))
                      (_E164805164840_
                       (lambda ()
                         (if (gx#stx-pair? _e164804164814_)
                             (let ((_e164807164822_
                                    (gx#syntax-e _e164804164814_)))
                               (let ((_hd164808164825_ (##car _e164807164822_))
                                     (_tl164809164827_
                                      (##cdr _e164807164822_)))
                                 (let ((_hd164830_ _hd164808164825_))
                                   (if (gx#stx-pair? _tl164809164827_)
                                       (let ((_e164810164832_
                                              (gx#syntax-e _tl164809164827_)))
                                         (let ((_hd164811164835_
                                                (##car _e164810164832_))
                                               (_tl164812164837_
                                                (##cdr _e164810164832_)))
                                           (if (gx#stx-null? _tl164812164837_)
                                               (if '#t
                                                   (gx#identifier? _hd164830_)
                                                   (_E164806164818_))
                                               (_E164806164818_))))
                                       (_E164806164818_)))))
                             (_E164806164818_)))))
                 (_E164805164840_)))
             _stx164801_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind164758_)
        (let* ((_e164759164769_ _bind164758_)
               (_E164761164773_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164759164769_)))
               (_E164760164797_
                (lambda ()
                  (if (gx#stx-pair? _e164759164769_)
                      (let ((_e164762164777_ (gx#syntax-e _e164759164769_)))
                        (let ((_hd164763164780_ (##car _e164762164777_))
                              (_tl164764164782_ (##cdr _e164762164777_)))
                          (if (gx#stx-pair? _tl164764164782_)
                              (let ((_e164765164785_
                                     (gx#syntax-e _tl164764164782_)))
                                (let ((_hd164766164788_
                                       (##car _e164765164785_))
                                      (_tl164767164790_
                                       (##cdr _e164765164785_)))
                                  (let ((_expr164793_ _hd164766164788_))
                                    (if (gx#stx-null? _tl164767164790_)
                                        (if '#t
                                            (let ((_g170393_
                                                   (gx#core-expand-expression+1
                                                    _expr164793_)))
                                              (begin
                                                (let ((_g170394_
                                                       (if (##values?
                                                            _g170393_)
                                                           (##vector-length
                                                            _g170393_)
                                                           1)))
                                                  (if (not (##fx= _g170394_ 2))
                                                      (error "Context expects 2 values"
                                                             _g170394_)))
                                                (let ((_e164795_
                                                       (##vector-ref
                                                        _g170393_
                                                        1)))
                                                  _e164795_)))
                                            (_E164761164773_))
                                        (_E164761164773_)))))
                              (_E164761164773_))))
                      (_E164761164773_)))))
          (_E164760164797_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind164703_ _e164704_ _rebind?164705_)
        (let* ((_e164706164716_ _bind164703_)
               (_E164708164720_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164706164716_)))
               (_E164707164742_
                (lambda ()
                  (if (gx#stx-pair? _e164706164716_)
                      (let ((_e164709164724_ (gx#syntax-e _e164706164716_)))
                        (let ((_hd164710164727_ (##car _e164709164724_))
                              (_tl164711164729_ (##cdr _e164709164724_)))
                          (let ((_id164732_ _hd164710164727_))
                            (if (gx#stx-pair? _tl164711164729_)
                                (let ((_e164712164734_
                                       (gx#syntax-e _tl164711164729_)))
                                  (let ((_hd164713164737_
                                         (##car _e164712164734_))
                                        (_tl164714164739_
                                         (##cdr _e164712164734_)))
                                    (if (gx#stx-null? _tl164714164739_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id164732_
                                             _e164704_
                                             _rebind?164705_)
                                            (_E164708164720_))
                                        (_E164708164720_))))
                                (_E164708164720_)))))
                      (_E164708164720_)))))
          (_E164707164742_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind164749_ _e164750_)
        (let ((_rebind?164752_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind164749_
           _e164750_
           _rebind?164752_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g170396_
        (let ((_g170395_ (##length _g170396_)))
          (cond ((##fx= _g170395_ 2)
                 (apply (lambda (_bind164749_ _e164750_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind164749_
                           _e164750_))
                        _g170396_))
                ((##fx= _g170395_ 3)
                 (apply (lambda (_bind164754_ _e164755_ _rebind?164756_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind164754_
                           _e164755_
                           _rebind?164756_))
                        _g170396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g170396_))))))
    (define gx#core-expand-expression%
      (lambda (_stx164661_)
        (let* ((_e164662164672_ _stx164661_)
               (_E164664164676_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164662164672_)))
               (_E164663164698_
                (lambda ()
                  (if (gx#stx-pair? _e164662164672_)
                      (let ((_e164665164680_ (gx#syntax-e _e164662164672_)))
                        (let ((_hd164666164683_ (##car _e164665164680_))
                              (_tl164667164685_ (##cdr _e164665164680_)))
                          (if (gx#stx-pair? _tl164667164685_)
                              (let ((_e164668164688_
                                     (gx#syntax-e _tl164667164685_)))
                                (let ((_hd164669164691_
                                       (##car _e164668164688_))
                                      (_tl164670164693_
                                       (##cdr _e164668164688_)))
                                  (let ((_expr164696_ _hd164669164691_))
                                    (if (gx#stx-null? _tl164670164693_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr164696_)
                                            (_E164664164676_))
                                        (_E164664164676_)))))
                              (_E164664164676_))))
                      (_E164664164676_)))))
          (_E164663164698_))))
    (define gx#core-expand-quote%
      (lambda (_stx164620_)
        (let* ((_e164621164631_ _stx164620_)
               (_E164623164635_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164621164631_)))
               (_E164622164657_
                (lambda ()
                  (if (gx#stx-pair? _e164621164631_)
                      (let ((_e164624164639_ (gx#syntax-e _e164621164631_)))
                        (let ((_hd164625164642_ (##car _e164624164639_))
                              (_tl164626164644_ (##cdr _e164624164639_)))
                          (if (gx#stx-pair? _tl164626164644_)
                              (let ((_e164627164647_
                                     (gx#syntax-e _tl164626164644_)))
                                (let ((_hd164628164650_
                                       (##car _e164627164647_))
                                      (_tl164629164652_
                                       (##cdr _e164627164647_)))
                                  (let ((_e164655_ _hd164628164650_))
                                    (if (gx#stx-null? _tl164629164652_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e164655_)
                                                         '()))
                                             (gx#stx-source _stx164620_))
                                            (_E164623164635_))
                                        (_E164623164635_)))))
                              (_E164623164635_))))
                      (_E164623164635_)))))
          (_E164622164657_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx164579_)
        (let* ((_e164580164590_ _stx164579_)
               (_E164582164594_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164580164590_)))
               (_E164581164616_
                (lambda ()
                  (if (gx#stx-pair? _e164580164590_)
                      (let ((_e164583164598_ (gx#syntax-e _e164580164590_)))
                        (let ((_hd164584164601_ (##car _e164583164598_))
                              (_tl164585164603_ (##cdr _e164583164598_)))
                          (if (gx#stx-pair? _tl164585164603_)
                              (let ((_e164586164606_
                                     (gx#syntax-e _tl164585164603_)))
                                (let ((_hd164587164609_
                                       (##car _e164586164606_))
                                      (_tl164588164611_
                                       (##cdr _e164586164606_)))
                                  (let ((_e164614_ _hd164587164609_))
                                    (if (gx#stx-null? _tl164588164611_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e164614_)
                                                         '()))
                                             (gx#stx-source _stx164579_))
                                            (_E164582164594_))
                                        (_E164582164594_)))))
                              (_E164582164594_))))
                      (_E164582164594_)))))
          (_E164581164616_))))
    (define gx#core-expand-call%
      (lambda (_stx164536_)
        (let* ((_e164537164547_ _stx164536_)
               (_E164539164551_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164537164547_)))
               (_E164538164575_
                (lambda ()
                  (if (gx#stx-pair? _e164537164547_)
                      (let ((_e164540164555_ (gx#syntax-e _e164537164547_)))
                        (let ((_hd164541164558_ (##car _e164540164555_))
                              (_tl164542164560_ (##cdr _e164540164555_)))
                          (if (gx#stx-pair? _tl164542164560_)
                              (let ((_e164543164563_
                                     (gx#syntax-e _tl164542164560_)))
                                (let ((_hd164544164566_
                                       (##car _e164543164563_))
                                      (_tl164545164568_
                                       (##cdr _e164543164563_)))
                                  (let* ((_rator164571_ _hd164544164566_)
                                         (_args164573_ _tl164545164568_))
                                    (if (gx#stx-list? _args164573_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator164571_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args164573_))
                                         (gx#stx-source _stx164536_))
                                        (_E164539164551_)))))
                              (_E164539164551_))))
                      (_E164539164551_)))))
          (_E164538164575_))))
    (define gx#core-expand-if%
      (lambda (_stx164469_)
        (let* ((_e164470164486_ _stx164469_)
               (_E164472164490_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164470164486_)))
               (_E164471164532_
                (lambda ()
                  (if (gx#stx-pair? _e164470164486_)
                      (let ((_e164473164494_ (gx#syntax-e _e164470164486_)))
                        (let ((_hd164474164497_ (##car _e164473164494_))
                              (_tl164475164499_ (##cdr _e164473164494_)))
                          (if (gx#stx-pair? _tl164475164499_)
                              (let ((_e164476164502_
                                     (gx#syntax-e _tl164475164499_)))
                                (let ((_hd164477164505_
                                       (##car _e164476164502_))
                                      (_tl164478164507_
                                       (##cdr _e164476164502_)))
                                  (let ((_test164510_ _hd164477164505_))
                                    (if (gx#stx-pair? _tl164478164507_)
                                        (let ((_e164479164512_
                                               (gx#syntax-e _tl164478164507_)))
                                          (let ((_hd164480164515_
                                                 (##car _e164479164512_))
                                                (_tl164481164517_
                                                 (##cdr _e164479164512_)))
                                            (let ((_K164520_ _hd164480164515_))
                                              (if (gx#stx-pair?
                                                   _tl164481164517_)
                                                  (let ((_e164482164522_
                                                         (gx#syntax-e
                                                          _tl164481164517_)))
                                                    (let ((_hd164483164525_
                                                           (##car _e164482164522_))
                                                          (_tl164484164527_
                                                           (##cdr _e164482164522_)))
                                                      (let ((_E164530_
                                                             _hd164483164525_))
                                                        (if (gx#stx-null?
                                                             _tl164484164527_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test164510_)
                                     (cons (gx#core-expand-expression
                                            _K164520_)
                                           (cons (gx#core-expand-expression
                                                  _E164530_)
                                                 '()))))
                         (gx#stx-source _stx164469_))
                        (_E164472164490_))
                    (_E164472164490_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164472164490_)))))
                                        (_E164472164490_)))))
                              (_E164472164490_))))
                      (_E164472164490_)))))
          (_E164471164532_))))
    (define gx#core-expand-ref%
      (lambda (_stx164428_)
        (let* ((_e164429164439_ _stx164428_)
               (_E164431164443_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164429164439_)))
               (_E164430164465_
                (lambda ()
                  (if (gx#stx-pair? _e164429164439_)
                      (let ((_e164432164447_ (gx#syntax-e _e164429164439_)))
                        (let ((_hd164433164450_ (##car _e164432164447_))
                              (_tl164434164452_ (##cdr _e164432164447_)))
                          (if (gx#stx-pair? _tl164434164452_)
                              (let ((_e164435164455_
                                     (gx#syntax-e _tl164434164452_)))
                                (let ((_hd164436164458_
                                       (##car _e164435164455_))
                                      (_tl164437164460_
                                       (##cdr _e164435164455_)))
                                  (let ((_id164463_ _hd164436164458_))
                                    (if (gx#stx-null? _tl164437164460_)
                                        (if (gx#identifier? _id164463_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id164463_
                                                          _stx164428_)
                                                         '()))
                                             (gx#stx-source _stx164428_))
                                            (_E164431164443_))
                                        (_E164431164443_)))))
                              (_E164431164443_))))
                      (_E164431164443_)))))
          (_E164430164465_))))
    (define gx#core-expand-setq%
      (lambda (_stx164374_)
        (let* ((_e164375164388_ _stx164374_)
               (_E164377164392_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164375164388_)))
               (_E164376164424_
                (lambda ()
                  (if (gx#stx-pair? _e164375164388_)
                      (let ((_e164378164396_ (gx#syntax-e _e164375164388_)))
                        (let ((_hd164379164399_ (##car _e164378164396_))
                              (_tl164380164401_ (##cdr _e164378164396_)))
                          (if (gx#stx-pair? _tl164380164401_)
                              (let ((_e164381164404_
                                     (gx#syntax-e _tl164380164401_)))
                                (let ((_hd164382164407_
                                       (##car _e164381164404_))
                                      (_tl164383164409_
                                       (##cdr _e164381164404_)))
                                  (let ((_id164412_ _hd164382164407_))
                                    (if (gx#stx-pair? _tl164383164409_)
                                        (let ((_e164384164414_
                                               (gx#syntax-e _tl164383164409_)))
                                          (let ((_hd164385164417_
                                                 (##car _e164384164414_))
                                                (_tl164386164419_
                                                 (##cdr _e164384164414_)))
                                            (let ((_expr164422_
                                                   _hd164385164417_))
                                              (if (gx#stx-null?
                                                   _tl164386164419_)
                                                  (if (gx#identifier?
                                                       _id164412_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id164412_
                            _stx164374_)
                           (cons (gx#core-expand-expression _expr164422_)
                                 '())))
               (gx#stx-source _stx164374_))
              (_E164377164392_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164377164392_)))))
                                        (_E164377164392_)))))
                              (_E164377164392_))))
                      (_E164377164392_)))))
          (_E164376164424_))))
    (define gx#macro-expand-extern
      (lambda (_stx164222_)
        (letrec ((_generate164224_
                  (lambda (_body164254_)
                    (let _lp164256_ ((_rest164258_ _body164254_)
                                     (_ns164259_
                                      (gx#core-context-namespace__0))
                                     (_r164260_ '()))
                      (let* ((_e164261164276_ _rest164258_)
                             (_E164274164280_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e164261164276_)))
                             (_E164270164284_
                              (lambda ()
                                (if (gx#stx-null? _e164261164276_)
                                    (if '#t
                                        (reverse _r164260_)
                                        (_E164274164280_))
                                    (_E164274164280_))))
                             (_E164263164341_
                              (lambda ()
                                (if (gx#stx-pair? _e164261164276_)
                                    (let ((_e164271164288_
                                           (gx#syntax-e _e164261164276_)))
                                      (let ((_hd164272164291_
                                             (##car _e164271164288_))
                                            (_tl164273164293_
                                             (##cdr _e164271164288_)))
                                        (let* ((_hd164296_ _hd164272164291_)
                                               (_rest164298_ _tl164273164293_))
                                          (if '#t
                                              (if (gx#identifier? _hd164296_)
                                                  (_lp164256_
                                                   _rest164298_
                                                   _ns164259_
                                                   (cons (cons _hd164296_
                                                               (cons (if _ns164259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd164296_
                                  _ns164259_
                                  '"#"
                                  _hd164296_)
                                 _hd164296_)
                             '()))
                 _r164260_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e164299164309_
                                                          _hd164296_)
                                                         (_E164301164313_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e164299164309_)))
                                                         (_E164300164337_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e164299164309_)
                        (let ((_e164302164317_ (gx#syntax-e _e164299164309_)))
                          (let ((_hd164303164320_ (##car _e164302164317_))
                                (_tl164304164322_ (##cdr _e164302164317_)))
                            (let ((_id164325_ _hd164303164320_))
                              (if (gx#stx-pair? _tl164304164322_)
                                  (let ((_e164305164327_
                                         (gx#syntax-e _tl164304164322_)))
                                    (let ((_hd164306164330_
                                           (##car _e164305164327_))
                                          (_tl164307164332_
                                           (##cdr _e164305164327_)))
                                      (let ((_eid164335_ _hd164306164330_))
                                        (if (gx#stx-null? _tl164307164332_)
                                            (if (and (gx#identifier?
                                                      _id164325_)
                                                     (gx#identifier?
                                                      _eid164335_))
                                                (_lp164256_
                                                 _rest164298_
                                                 _ns164259_
                                                 (cons (cons _id164325_
                                                             (cons _eid164335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r164260_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E164301164313_))
                                            (_E164301164313_)))))
                                  (_E164301164313_)))))
                        (_E164301164313_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E164300164337_)))
                                              (_E164270164284_)))))
                                    (_E164270164284_))))
                             (_E164262164370_
                              (lambda ()
                                (if (gx#stx-pair? _e164261164276_)
                                    (let ((_e164264164345_
                                           (gx#syntax-e _e164261164276_)))
                                      (let ((_hd164265164348_
                                             (##car _e164264164345_))
                                            (_tl164266164350_
                                             (##cdr _e164264164345_)))
                                        (if (eq? (gx#stx-e _hd164265164348_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl164266164350_)
                                                (let ((_e164267164353_
                                                       (gx#syntax-e
                                                        _tl164266164350_)))
                                                  (let ((_hd164268164356_
                                                         (##car _e164267164353_))
                                                        (_tl164269164358_
                                                         (##cdr _e164267164353_)))
                                                    (let* ((_ns164361_
                                                            _hd164268164356_)
                                                           (_rest164363_
                                                            _tl164269164358_))
                                                      (if '#t
                                                          (let ((_ns164368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns164361_)
                             (symbol->string (gx#stx-e _ns164361_))
                             (if (or (gx#stx-string? _ns164361_)
                                     (gx#stx-false? _ns164361_))
                                 (gx#stx-e _ns164361_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx164222_
                                  _ns164361_)))))
                    (_lp164256_ _rest164363_ _ns164368_ _r164260_))
                  (_E164263164341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E164263164341_))
                                            (_E164263164341_))))
                                    (_E164263164341_)))))
                        (_E164262164370_))))))
          (let* ((_e164225164232_ _stx164222_)
                 (_E164227164236_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e164225164232_)))
                 (_E164226164250_
                  (lambda ()
                    (if (gx#stx-pair? _e164225164232_)
                        (let ((_e164228164240_ (gx#syntax-e _e164225164232_)))
                          (let ((_hd164229164243_ (##car _e164228164240_))
                                (_tl164230164245_ (##cdr _e164228164240_)))
                            (let ((_body164248_ _tl164230164245_))
                              (if (gx#stx-list? _body164248_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate164224_ _body164248_))
                                  (_E164227164236_)))))
                        (_E164227164236_)))))
            (_E164226164250_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx164168_)
        (let* ((_e164169164182_ _stx164168_)
               (_E164171164186_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164169164182_)))
               (_E164170164218_
                (lambda ()
                  (if (gx#stx-pair? _e164169164182_)
                      (let ((_e164172164190_ (gx#syntax-e _e164169164182_)))
                        (let ((_hd164173164193_ (##car _e164172164190_))
                              (_tl164174164195_ (##cdr _e164172164190_)))
                          (if (gx#stx-pair? _tl164174164195_)
                              (let ((_e164175164198_
                                     (gx#syntax-e _tl164174164195_)))
                                (let ((_hd164176164201_
                                       (##car _e164175164198_))
                                      (_tl164177164203_
                                       (##cdr _e164175164198_)))
                                  (let ((_hd164206_ _hd164176164201_))
                                    (if (gx#stx-pair? _tl164177164203_)
                                        (let ((_e164178164208_
                                               (gx#syntax-e _tl164177164203_)))
                                          (let ((_hd164179164211_
                                                 (##car _e164178164208_))
                                                (_tl164180164213_
                                                 (##cdr _e164178164208_)))
                                            (let ((_expr164216_
                                                   _hd164179164211_))
                                              (if (gx#stx-null?
                                                   _tl164180164213_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd164206_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd164206_)
                          (cons _expr164216_ '())))
              (_E164171164186_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164171164186_)))))
                                        (_E164171164186_)))))
                              (_E164171164186_))))
                      (_E164171164186_)))))
          (_E164170164218_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx164114_)
        (let* ((_e164115164128_ _stx164114_)
               (_E164117164132_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164115164128_)))
               (_E164116164164_
                (lambda ()
                  (if (gx#stx-pair? _e164115164128_)
                      (let ((_e164118164136_ (gx#syntax-e _e164115164128_)))
                        (let ((_hd164119164139_ (##car _e164118164136_))
                              (_tl164120164141_ (##cdr _e164118164136_)))
                          (if (gx#stx-pair? _tl164120164141_)
                              (let ((_e164121164144_
                                     (gx#syntax-e _tl164120164141_)))
                                (let ((_hd164122164147_
                                       (##car _e164121164144_))
                                      (_tl164123164149_
                                       (##cdr _e164121164144_)))
                                  (let ((_hd164152_ _hd164122164147_))
                                    (if (gx#stx-pair? _tl164123164149_)
                                        (let ((_e164124164154_
                                               (gx#syntax-e _tl164123164149_)))
                                          (let ((_hd164125164157_
                                                 (##car _e164124164154_))
                                                (_tl164126164159_
                                                 (##cdr _e164124164154_)))
                                            (let ((_expr164162_
                                                   _hd164125164157_))
                                              (if (gx#stx-null?
                                                   _tl164126164159_)
                                                  (if (gx#identifier?
                                                       _hd164152_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd164152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr164162_ '())))
              (_E164117164132_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164117164132_)))))
                                        (_E164117164132_)))))
                              (_E164117164132_))))
                      (_E164117164132_)))))
          (_E164116164164_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx164060_)
        (let* ((_e164061164074_ _stx164060_)
               (_E164063164078_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164061164074_)))
               (_E164062164110_
                (lambda ()
                  (if (gx#stx-pair? _e164061164074_)
                      (let ((_e164064164082_ (gx#syntax-e _e164061164074_)))
                        (let ((_hd164065164085_ (##car _e164064164082_))
                              (_tl164066164087_ (##cdr _e164064164082_)))
                          (if (gx#stx-pair? _tl164066164087_)
                              (let ((_e164067164090_
                                     (gx#syntax-e _tl164066164087_)))
                                (let ((_hd164068164093_
                                       (##car _e164067164090_))
                                      (_tl164069164095_
                                       (##cdr _e164067164090_)))
                                  (let ((_id164098_ _hd164068164093_))
                                    (if (gx#stx-pair? _tl164069164095_)
                                        (let ((_e164070164100_
                                               (gx#syntax-e _tl164069164095_)))
                                          (let ((_hd164071164103_
                                                 (##car _e164070164100_))
                                                (_tl164072164105_
                                                 (##cdr _e164070164100_)))
                                            (let ((_alias-id164108_
                                                   _hd164071164103_))
                                              (if (gx#stx-null?
                                                   _tl164072164105_)
                                                  (if (and (gx#identifier?
                                                            _id164098_)
                                                           (gx#identifier?
                                                            _alias-id164108_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id164098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id164108_ '())))
              (_E164063164078_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164063164078_)))))
                                        (_E164063164078_)))))
                              (_E164063164078_))))
                      (_E164063164078_)))))
          (_E164062164110_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx164017_)
        (let* ((_e164018164028_ _stx164017_)
               (_E164020164032_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164018164028_)))
               (_E164019164056_
                (lambda ()
                  (if (gx#stx-pair? _e164018164028_)
                      (let ((_e164021164036_ (gx#syntax-e _e164018164028_)))
                        (let ((_hd164022164039_ (##car _e164021164036_))
                              (_tl164023164041_ (##cdr _e164021164036_)))
                          (if (gx#stx-pair? _tl164023164041_)
                              (let ((_e164024164044_
                                     (gx#syntax-e _tl164023164041_)))
                                (let ((_hd164025164047_
                                       (##car _e164024164044_))
                                      (_tl164026164049_
                                       (##cdr _e164024164044_)))
                                  (let* ((_hd164052_ _hd164025164047_)
                                         (_body164054_ _tl164026164049_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd164052_)
                                             (gx#stx-list? _body164054_)
                                             (not (gx#stx-null? _body164054_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd164052_)
                                         _body164054_)
                                        (_E164020164032_)))))
                              (_E164020164032_))))
                      (_E164020164032_)))))
          (_E164019164056_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx163953_)
        (letrec ((_generate163955_
                  (lambda (_clause163985_)
                    (let* ((_e163986163993_ _clause163985_)
                           (_E163988163997_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx163953_
                               _clause163985_)))
                           (_E163987164013_
                            (lambda ()
                              (if (gx#stx-pair? _e163986163993_)
                                  (let ((_e163989164001_
                                         (gx#syntax-e _e163986163993_)))
                                    (let ((_hd163990164004_
                                           (##car _e163989164001_))
                                          (_tl163991164006_
                                           (##cdr _e163989164001_)))
                                      (let* ((_hd164009_ _hd163990164004_)
                                             (_body164011_ _tl163991164006_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd164009_)
                                                 (gx#stx-list? _body164011_)
                                                 (not (gx#stx-null?
                                                       _body164011_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd164009_)
                                                   _body164011_)
                                             (gx#stx-source _clause163985_))
                                            (_E163988163997_)))))
                                  (_E163988163997_)))))
                      (_E163987164013_)))))
          (let* ((_e163956163963_ _stx163953_)
                 (_E163958163967_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e163956163963_)))
                 (_E163957163981_
                  (lambda ()
                    (if (gx#stx-pair? _e163956163963_)
                        (let ((_e163959163971_ (gx#syntax-e _e163956163963_)))
                          (let ((_hd163960163974_ (##car _e163959163971_))
                                (_tl163961163976_ (##cdr _e163959163971_)))
                            (let ((_clauses163979_ _tl163961163976_))
                              (if (gx#stx-list? _clauses163979_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate163955_
                                    _clauses163979_))
                                  (_E163958163967_)))))
                        (_E163958163967_)))))
            (_E163957163981_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx163854_ _form163855_)
        (letrec ((_generate163857_
                  (lambda (_bind163900_)
                    (let* ((_e163901163911_ _bind163900_)
                           (_E163903163915_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx163854_
                               _bind163900_)))
                           (_E163902163939_
                            (lambda ()
                              (if (gx#stx-pair? _e163901163911_)
                                  (let ((_e163904163919_
                                         (gx#syntax-e _e163901163911_)))
                                    (let ((_hd163905163922_
                                           (##car _e163904163919_))
                                          (_tl163906163924_
                                           (##cdr _e163904163919_)))
                                      (let ((_ids163927_ _hd163905163922_))
                                        (if (gx#stx-pair? _tl163906163924_)
                                            (let ((_e163907163929_
                                                   (gx#syntax-e
                                                    _tl163906163924_)))
                                              (let ((_hd163908163932_
                                                     (##car _e163907163929_))
                                                    (_tl163909163934_
                                                     (##cdr _e163907163929_)))
                                                (let ((_expr163937_
                                                       _hd163908163932_))
                                                  (if (gx#stx-null?
                                                       _tl163909163934_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids163927_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids163927_)
                        (cons _expr163937_ '()))
                  (_E163903163915_))
              (_E163903163915_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E163903163915_)))))
                                  (_E163903163915_)))))
                      (_E163902163939_)))))
          (let* ((_e163858163868_ _stx163854_)
                 (_E163860163872_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e163858163868_)))
                 (_E163859163896_
                  (lambda ()
                    (if (gx#stx-pair? _e163858163868_)
                        (let ((_e163861163876_ (gx#syntax-e _e163858163868_)))
                          (let ((_hd163862163879_ (##car _e163861163876_))
                                (_tl163863163881_ (##cdr _e163861163876_)))
                            (if (gx#stx-pair? _tl163863163881_)
                                (let ((_e163864163884_
                                       (gx#syntax-e _tl163863163881_)))
                                  (let ((_hd163865163887_
                                         (##car _e163864163884_))
                                        (_tl163866163889_
                                         (##cdr _e163864163884_)))
                                    (let* ((_hd163892_ _hd163865163887_)
                                           (_body163894_ _tl163866163889_))
                                      (if (and (gx#stx-list? _hd163892_)
                                               (gx#stx-list? _body163894_)
                                               (not (gx#stx-null?
                                                     _body163894_)))
                                          (gx#core-cons*
                                           _form163855_
                                           (gx#stx-map1
                                            _generate163857_
                                            _hd163892_)
                                           _body163894_)
                                          (_E163860163872_)))))
                                (_E163860163872_))))
                        (_E163860163872_)))))
            (_E163859163896_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx163946_)
        (let ((_form163948_ '%#let-values))
          (gx#macro-expand-let-values__% _stx163946_ _form163948_))))
    (define gx#macro-expand-let-values
      (lambda _g170398_
        (let ((_g170397_ (##length _g170398_)))
          (cond ((##fx= _g170397_ 1)
                 (apply (lambda (_stx163946_)
                          (gx#macro-expand-let-values__0 _stx163946_))
                        _g170398_))
                ((##fx= _g170397_ 2)
                 (apply (lambda (_stx163950_ _form163951_)
                          (gx#macro-expand-let-values__%
                           _stx163950_
                           _form163951_))
                        _g170398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g170398_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx163851_)
        (gx#macro-expand-let-values__% _stx163851_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx163849_)
        (gx#macro-expand-let-values__% _stx163849_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx163740_)
        (let* ((_e163741163767_ _stx163740_)
               (_E163753163771_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163741163767_)))
               (_E163743163813_
                (lambda ()
                  (if (gx#stx-pair? _e163741163767_)
                      (let ((_e163754163775_ (gx#syntax-e _e163741163767_)))
                        (let ((_hd163755163778_ (##car _e163754163775_))
                              (_tl163756163780_ (##cdr _e163754163775_)))
                          (if (gx#stx-pair? _tl163756163780_)
                              (let ((_e163757163783_
                                     (gx#syntax-e _tl163756163780_)))
                                (let ((_hd163758163786_
                                       (##car _e163757163783_))
                                      (_tl163759163788_
                                       (##cdr _e163757163783_)))
                                  (let ((_test163791_ _hd163758163786_))
                                    (if (gx#stx-pair? _tl163759163788_)
                                        (let ((_e163760163793_
                                               (gx#syntax-e _tl163759163788_)))
                                          (let ((_hd163761163796_
                                                 (##car _e163760163793_))
                                                (_tl163762163798_
                                                 (##cdr _e163760163793_)))
                                            (let ((_K163801_ _hd163761163796_))
                                              (if (gx#stx-pair?
                                                   _tl163762163798_)
                                                  (let ((_e163763163803_
                                                         (gx#syntax-e
                                                          _tl163762163798_)))
                                                    (let ((_hd163764163806_
                                                           (##car _e163763163803_))
                                                          (_tl163765163808_
                                                           (##cdr _e163763163803_)))
                                                      (let ((_E163811_
                                                             _hd163764163806_))
                                                        (if (gx#stx-null?
                                                             _tl163765163808_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test163791_
                         _K163801_
                         _E163811_)
                        (_E163753163771_))
                    (_E163753163771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163753163771_)))))
                                        (_E163753163771_)))))
                              (_E163753163771_))))
                      (_E163753163771_))))
               (_E163742163845_
                (lambda ()
                  (if (gx#stx-pair? _e163741163767_)
                      (let ((_e163744163817_ (gx#syntax-e _e163741163767_)))
                        (let ((_hd163745163820_ (##car _e163744163817_))
                              (_tl163746163822_ (##cdr _e163744163817_)))
                          (if (gx#stx-pair? _tl163746163822_)
                              (let ((_e163747163825_
                                     (gx#syntax-e _tl163746163822_)))
                                (let ((_hd163748163828_
                                       (##car _e163747163825_))
                                      (_tl163749163830_
                                       (##cdr _e163747163825_)))
                                  (let ((_test163833_ _hd163748163828_))
                                    (if (gx#stx-pair? _tl163749163830_)
                                        (let ((_e163750163835_
                                               (gx#syntax-e _tl163749163830_)))
                                          (let ((_hd163751163838_
                                                 (##car _e163750163835_))
                                                (_tl163752163840_
                                                 (##cdr _e163750163835_)))
                                            (let ((_K163843_ _hd163751163838_))
                                              (if (gx#stx-null?
                                                   _tl163752163840_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test163833_
                                                       _K163843_
                                                       '#!void)
                                                      (_E163743163813_))
                                                  (_E163743163813_)))))
                                        (_E163743163813_)))))
                              (_E163743163813_))))
                      (_E163743163813_)))))
          (_E163742163845_))))
    (define gx#free-identifier=?
      (lambda (_xid163728_ _yid163729_)
        (let ((_xe163731_ (gx#resolve-identifier__0 _xid163728_))
              (_ye163732_ (gx#resolve-identifier__0 _yid163729_)))
          (if (and _xe163731_ _ye163732_)
              (let ((_$e163734_ (eq? _xe163731_ _ye163732_)))
                (if _$e163734_
                    _$e163734_
                    (if (##structure-instance-of? _xe163731_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye163732_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe163731_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye163732_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe163731_ _ye163732_)
                  '#f
                  (gx#stx-eq? _xid163728_ _yid163729_))))))
    (define gx#bound-identifier=?
      (lambda (_xid163712_ _yid163713_)
        (letrec ((_context163715_
                  (lambda (_e163726_)
                    (if (##structure-direct-instance-of?
                         _e163726_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e163726_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks163716_
                  (lambda (_e163724_)
                    (if (symbol? _e163724_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e163724_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e163724_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e163724_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap163717_
                  (lambda (_e163722_)
                    (if (symbol? _e163722_)
                        _e163722_
                        (gx#syntax-local-unwrap _e163722_)))))
          (let ((_x163719_ (_unwrap163717_ _xid163712_))
                (_y163720_ (_unwrap163717_ _yid163713_)))
            (if (gx#stx-eq? _x163719_ _y163720_)
                (if (eq? (_context163715_ _x163719_)
                         (_context163715_ _y163720_))
                    (equal? (_marks163716_ _x163719_)
                            (_marks163716_ _y163720_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx163710_)
        (if (gx#identifier? _stx163710_)
            (gx#core-identifier=? _stx163710_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx163708_)
        (if (gx#identifier? _stx163708_)
            (gx#core-identifier=? _stx163708_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x163706_)
        (if (gx#identifier? _x163706_)
            (if (not (gx#underscore? _x163706_)) _x163706_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx163652_ _where163653_)
        (let _lp163655_ ((_rest163657_ (gx#syntax->list _stx163652_)))
          (let* ((_rest163658163666_ _rest163657_)
                 (_else163660163674_ (lambda () '#t))
                 (_K163662163684_
                  (lambda (_rest163677_ _hd163678_)
                    (if (not (gx#identifier? _hd163678_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where163653_
                         _hd163678_)
                        (if (find (lambda (_g163679163681_)
                                    (gx#bound-identifier=?
                                     _g163679163681_
                                     _hd163678_))
                                  _rest163677_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where163653_
                             _hd163678_)
                            (_lp163655_ _rest163677_))))))
            (if (##pair? _rest163658163666_)
                (let ((_hd163663163687_ (##car _rest163658163666_))
                      (_tl163664163689_ (##cdr _rest163658163666_)))
                  (let* ((_hd163692_ _hd163663163687_)
                         (_rest163694_ _tl163664163689_))
                    (_K163662163684_ _rest163694_ _hd163692_)))
                (_else163660163674_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx163699_)
        (let ((_where163701_ _stx163699_))
          (gx#check-duplicate-identifiers__% _stx163699_ _where163701_))))
    (define gx#check-duplicate-identifiers
      (lambda _g170400_
        (let ((_g170399_ (##length _g170400_)))
          (cond ((##fx= _g170399_ 1)
                 (apply (lambda (_stx163699_)
                          (gx#check-duplicate-identifiers__0 _stx163699_))
                        _g170400_))
                ((##fx= _g170399_ 2)
                 (apply (lambda (_stx163703_ _where163704_)
                          (gx#check-duplicate-identifiers__%
                           _stx163703_
                           _where163704_))
                        _g170400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g170400_))))))
    (define gx#core-bind-values?
      (lambda (_stx163644_)
        (gx#stx-andmap
         (lambda (_x163646_)
           (let ((_$e163648_ (gx#identifier? _x163646_)))
             (if _$e163648_ _$e163648_ (gx#stx-false? _x163646_))))
         _stx163644_)))
    (define gx#core-bind-values!__%
      (lambda (_stx163608_ _rebind?163609_ _phi163610_ _ctx163611_)
        (gx#stx-for-each1
         (lambda (_id163613_)
           (if (gx#identifier? _id163613_)
               (gx#core-bind-runtime!__%
                _id163613_
                _rebind?163609_
                _phi163610_
                _ctx163611_)
               '#!void))
         _stx163608_)))
    (define gx#core-bind-values!__0
      (lambda (_stx163618_)
        (let* ((_rebind?163620_ '#f)
               (_phi163622_ (gx#current-expander-phi))
               (_ctx163624_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx163618_
           _rebind?163620_
           _phi163622_
           _ctx163624_))))
    (define gx#core-bind-values!__1
      (lambda (_stx163626_ _rebind?163627_)
        (let* ((_phi163629_ (gx#current-expander-phi))
               (_ctx163631_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx163626_
           _rebind?163627_
           _phi163629_
           _ctx163631_))))
    (define gx#core-bind-values!__2
      (lambda (_stx163633_ _rebind?163634_ _phi163635_)
        (let ((_ctx163637_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx163633_
           _rebind?163634_
           _phi163635_
           _ctx163637_))))
    (define gx#core-bind-values!
      (lambda _g170402_
        (let ((_g170401_ (##length _g170402_)))
          (cond ((##fx= _g170401_ 1)
                 (apply (lambda (_stx163618_)
                          (gx#core-bind-values!__0 _stx163618_))
                        _g170402_))
                ((##fx= _g170401_ 2)
                 (apply (lambda (_stx163626_ _rebind?163627_)
                          (gx#core-bind-values!__1
                           _stx163626_
                           _rebind?163627_))
                        _g170402_))
                ((##fx= _g170401_ 3)
                 (apply (lambda (_stx163633_ _rebind?163634_ _phi163635_)
                          (gx#core-bind-values!__2
                           _stx163633_
                           _rebind?163634_
                           _phi163635_))
                        _g170402_))
                ((##fx= _g170401_ 4)
                 (apply (lambda (_stx163639_
                                 _rebind?163640_
                                 _phi163641_
                                 _ctx163642_)
                          (gx#core-bind-values!__%
                           _stx163639_
                           _rebind?163640_
                           _phi163641_
                           _ctx163642_))
                        _g170402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g170402_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx163603_)
        (gx#stx-map1
         (lambda (_x163605_)
           (if (gx#identifier? _x163605_)
               (gx#core-quote-syntax__0 _x163605_)
               '#f))
         _stx163603_)))
    (define gx#core-runtime-ref?
      (lambda (_stx163596_)
        (if (gx#identifier? _stx163596_)
            (let* ((_bind163598_ (gx#resolve-identifier__0 _stx163596_))
                   (_$e163600_ (not _bind163598_)))
              (if _$e163600_
                  _$e163600_
                  (##structure-instance-of?
                   _bind163598_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id163588_ _form163589_)
        (let ((_bind163591_ (gx#resolve-identifier__0 _id163588_)))
          (if (##structure-instance-of? _bind163591_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id163588_)
              (if (not _bind163591_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id163588_)))
                      (gx#core-quote-syntax__0 _id163588_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form163589_
                       _id163588_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form163589_
                   _id163588_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id163547_ _rebind?163548_ _phi163549_ _ctx163550_)
        (let* ((_key163552_ (gx#core-identifier-key _id163547_))
               (_eid163554_
                (gx#make-binding-id__%
                 _key163552_
                 '#f
                 _phi163549_
                 _ctx163550_))
               (_bind163556_
                (if (##structure-instance-of?
                     _ctx163550_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid163554_
                     _key163552_
                     _phi163549_
                     _ctx163550_)
                    (if (##structure-instance-of?
                         _ctx163550_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid163554_
                         _key163552_
                         _phi163549_)
                        (if (##structure-instance-of?
                             _ctx163550_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid163554_
                             _key163552_
                             _phi163549_)
                            (##structure
                             gx#runtime-binding::t
                             _eid163554_
                             _key163552_
                             _phi163549_))))))
          (gx#bind-identifier!__%
           _id163547_
           _bind163556_
           _rebind?163548_
           _phi163549_
           _ctx163550_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id163562_)
        (let* ((_rebind?163564_ '#f)
               (_phi163566_ (gx#current-expander-phi))
               (_ctx163568_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id163562_
           _rebind?163564_
           _phi163566_
           _ctx163568_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id163570_ _rebind?163571_)
        (let* ((_phi163573_ (gx#current-expander-phi))
               (_ctx163575_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id163570_
           _rebind?163571_
           _phi163573_
           _ctx163575_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id163577_ _rebind?163578_ _phi163579_)
        (let ((_ctx163581_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id163577_
           _rebind?163578_
           _phi163579_
           _ctx163581_))))
    (define gx#core-bind-runtime!
      (lambda _g170404_
        (let ((_g170403_ (##length _g170404_)))
          (cond ((##fx= _g170403_ 1)
                 (apply (lambda (_id163562_)
                          (gx#core-bind-runtime!__0 _id163562_))
                        _g170404_))
                ((##fx= _g170403_ 2)
                 (apply (lambda (_id163570_ _rebind?163571_)
                          (gx#core-bind-runtime!__1
                           _id163570_
                           _rebind?163571_))
                        _g170404_))
                ((##fx= _g170403_ 3)
                 (apply (lambda (_id163577_ _rebind?163578_ _phi163579_)
                          (gx#core-bind-runtime!__2
                           _id163577_
                           _rebind?163578_
                           _phi163579_))
                        _g170404_))
                ((##fx= _g170403_ 4)
                 (apply (lambda (_id163583_
                                 _rebind?163584_
                                 _phi163585_
                                 _ctx163586_)
                          (gx#core-bind-runtime!__%
                           _id163583_
                           _rebind?163584_
                           _phi163585_
                           _ctx163586_))
                        _g170404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g170404_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id163502_ _eid163503_ _rebind?163504_ _phi163505_ _ctx163506_)
        (let* ((_key163508_ (gx#core-identifier-key _id163502_))
               (_bind163510_
                (if (##structure-instance-of?
                     _ctx163506_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid163503_
                     _key163508_
                     _phi163505_
                     _ctx163506_)
                    (if (##structure-instance-of?
                         _ctx163506_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid163503_
                         _key163508_
                         _phi163505_)
                        (##structure
                         gx#runtime-binding::t
                         _eid163503_
                         _key163508_
                         _phi163505_)))))
          (gx#bind-identifier!__%
           _id163502_
           _bind163510_
           _rebind?163504_
           _phi163505_
           _ctx163506_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id163516_ _eid163517_)
        (let* ((_rebind?163519_ '#f)
               (_phi163521_ (gx#current-expander-phi))
               (_ctx163523_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id163516_
           _eid163517_
           _rebind?163519_
           _phi163521_
           _ctx163523_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id163525_ _eid163526_ _rebind?163527_)
        (let* ((_phi163529_ (gx#current-expander-phi))
               (_ctx163531_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id163525_
           _eid163526_
           _rebind?163527_
           _phi163529_
           _ctx163531_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id163533_ _eid163534_ _rebind?163535_ _phi163536_)
        (let ((_ctx163538_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id163533_
           _eid163534_
           _rebind?163535_
           _phi163536_
           _ctx163538_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g170406_
        (let ((_g170405_ (##length _g170406_)))
          (cond ((##fx= _g170405_ 2)
                 (apply (lambda (_id163516_ _eid163517_)
                          (gx#core-bind-runtime-reference!__0
                           _id163516_
                           _eid163517_))
                        _g170406_))
                ((##fx= _g170405_ 3)
                 (apply (lambda (_id163525_ _eid163526_ _rebind?163527_)
                          (gx#core-bind-runtime-reference!__1
                           _id163525_
                           _eid163526_
                           _rebind?163527_))
                        _g170406_))
                ((##fx= _g170405_ 4)
                 (apply (lambda (_id163533_
                                 _eid163534_
                                 _rebind?163535_
                                 _phi163536_)
                          (gx#core-bind-runtime-reference!__2
                           _id163533_
                           _eid163534_
                           _rebind?163535_
                           _phi163536_))
                        _g170406_))
                ((##fx= _g170405_ 5)
                 (apply (lambda (_id163540_
                                 _eid163541_
                                 _rebind?163542_
                                 _phi163543_
                                 _ctx163544_)
                          (gx#core-bind-runtime-reference!__%
                           _id163540_
                           _eid163541_
                           _rebind?163542_
                           _phi163543_
                           _ctx163544_))
                        _g170406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g170406_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id163462_ _eid163463_ _rebind?163464_ _phi163465_ _ctx163466_)
        (gx#bind-identifier!__%
         _id163462_
         (##structure
          gx#extern-binding::t
          _eid163463_
          (gx#core-identifier-key _id163462_)
          _phi163465_)
         _rebind?163464_
         _phi163465_
         _ctx163466_)))
    (define gx#core-bind-extern!__0
      (lambda (_id163471_ _eid163472_)
        (let* ((_rebind?163474_ '#f)
               (_phi163476_ (gx#current-expander-phi))
               (_ctx163478_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id163471_
           _eid163472_
           _rebind?163474_
           _phi163476_
           _ctx163478_))))
    (define gx#core-bind-extern!__1
      (lambda (_id163480_ _eid163481_ _rebind?163482_)
        (let* ((_phi163484_ (gx#current-expander-phi))
               (_ctx163486_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id163480_
           _eid163481_
           _rebind?163482_
           _phi163484_
           _ctx163486_))))
    (define gx#core-bind-extern!__2
      (lambda (_id163488_ _eid163489_ _rebind?163490_ _phi163491_)
        (let ((_ctx163493_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id163488_
           _eid163489_
           _rebind?163490_
           _phi163491_
           _ctx163493_))))
    (define gx#core-bind-extern!
      (lambda _g170408_
        (let ((_g170407_ (##length _g170408_)))
          (cond ((##fx= _g170407_ 2)
                 (apply (lambda (_id163471_ _eid163472_)
                          (gx#core-bind-extern!__0 _id163471_ _eid163472_))
                        _g170408_))
                ((##fx= _g170407_ 3)
                 (apply (lambda (_id163480_ _eid163481_ _rebind?163482_)
                          (gx#core-bind-extern!__1
                           _id163480_
                           _eid163481_
                           _rebind?163482_))
                        _g170408_))
                ((##fx= _g170407_ 4)
                 (apply (lambda (_id163488_
                                 _eid163489_
                                 _rebind?163490_
                                 _phi163491_)
                          (gx#core-bind-extern!__2
                           _id163488_
                           _eid163489_
                           _rebind?163490_
                           _phi163491_))
                        _g170408_))
                ((##fx= _g170407_ 5)
                 (apply (lambda (_id163495_
                                 _eid163496_
                                 _rebind?163497_
                                 _phi163498_
                                 _ctx163499_)
                          (gx#core-bind-extern!__%
                           _id163495_
                           _eid163496_
                           _rebind?163497_
                           _phi163498_
                           _ctx163499_))
                        _g170408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g170408_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id163416_ _e163417_ _rebind?163418_ _phi163419_ _ctx163420_)
        (gx#bind-identifier!__%
         _id163416_
         (let ((_key163425_ (gx#core-identifier-key _id163416_))
               (_e163426_
                (if (or (##structure-instance-of? _e163417_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e163417_
                         'gx#expander-context::t))
                    _e163417_
                    (##structure
                     gx#user-expander::t
                     _e163417_
                     _ctx163420_
                     _phi163419_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key163425_ '#t _phi163419_ _ctx163420_)
            _key163425_
            _phi163419_
            _e163426_))
         _rebind?163418_
         _phi163419_
         _ctx163420_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id163431_ _e163432_)
        (let* ((_rebind?163434_ '#f)
               (_phi163436_ (gx#current-expander-phi))
               (_ctx163438_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id163431_
           _e163432_
           _rebind?163434_
           _phi163436_
           _ctx163438_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id163440_ _e163441_ _rebind?163442_)
        (let* ((_phi163444_ (gx#current-expander-phi))
               (_ctx163446_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id163440_
           _e163441_
           _rebind?163442_
           _phi163444_
           _ctx163446_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id163448_ _e163449_ _rebind?163450_ _phi163451_)
        (let ((_ctx163453_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id163448_
           _e163449_
           _rebind?163450_
           _phi163451_
           _ctx163453_))))
    (define gx#core-bind-syntax!
      (lambda _g170410_
        (let ((_g170409_ (##length _g170410_)))
          (cond ((##fx= _g170409_ 2)
                 (apply (lambda (_id163431_ _e163432_)
                          (gx#core-bind-syntax!__0 _id163431_ _e163432_))
                        _g170410_))
                ((##fx= _g170409_ 3)
                 (apply (lambda (_id163440_ _e163441_ _rebind?163442_)
                          (gx#core-bind-syntax!__1
                           _id163440_
                           _e163441_
                           _rebind?163442_))
                        _g170410_))
                ((##fx= _g170409_ 4)
                 (apply (lambda (_id163448_
                                 _e163449_
                                 _rebind?163450_
                                 _phi163451_)
                          (gx#core-bind-syntax!__2
                           _id163448_
                           _e163449_
                           _rebind?163450_
                           _phi163451_))
                        _g170410_))
                ((##fx= _g170409_ 5)
                 (apply (lambda (_id163455_
                                 _e163456_
                                 _rebind?163457_
                                 _phi163458_
                                 _ctx163459_)
                          (gx#core-bind-syntax!__%
                           _id163455_
                           _e163456_
                           _rebind?163457_
                           _phi163458_
                           _ctx163459_))
                        _g170410_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g170410_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id163399_ _e163400_ _rebind?163401_)
        (gx#core-bind-syntax!__%
         _id163399_
         _e163400_
         _rebind?163401_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id163406_ _e163407_)
        (let ((_rebind?163409_ '#f))
          (gx#core-bind-root-syntax!__%
           _id163406_
           _e163407_
           _rebind?163409_))))
    (define gx#core-bind-root-syntax!
      (lambda _g170412_
        (let ((_g170411_ (##length _g170412_)))
          (cond ((##fx= _g170411_ 2)
                 (apply (lambda (_id163406_ _e163407_)
                          (gx#core-bind-root-syntax!__0 _id163406_ _e163407_))
                        _g170412_))
                ((##fx= _g170411_ 3)
                 (apply (lambda (_id163411_ _e163412_ _rebind?163413_)
                          (gx#core-bind-root-syntax!__%
                           _id163411_
                           _e163412_
                           _rebind?163413_))
                        _g170412_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g170412_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id163357_
               _alias-id163358_
               _rebind?163359_
               _phi163360_
               _ctx163361_)
        (gx#bind-identifier!__%
         _id163357_
         (let ((_key163363_ (gx#core-identifier-key _id163357_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key163363_ '#t _phi163360_ _ctx163361_)
            _key163363_
            _phi163360_
            _alias-id163358_))
         _rebind?163359_
         _phi163360_
         _ctx163361_)))
    (define gx#core-bind-alias!__0
      (lambda (_id163368_ _alias-id163369_)
        (let* ((_rebind?163371_ '#f)
               (_phi163373_ (gx#current-expander-phi))
               (_ctx163375_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id163368_
           _alias-id163369_
           _rebind?163371_
           _phi163373_
           _ctx163375_))))
    (define gx#core-bind-alias!__1
      (lambda (_id163377_ _alias-id163378_ _rebind?163379_)
        (let* ((_phi163381_ (gx#current-expander-phi))
               (_ctx163383_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id163377_
           _alias-id163378_
           _rebind?163379_
           _phi163381_
           _ctx163383_))))
    (define gx#core-bind-alias!__2
      (lambda (_id163385_ _alias-id163386_ _rebind?163387_ _phi163388_)
        (let ((_ctx163390_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id163385_
           _alias-id163386_
           _rebind?163387_
           _phi163388_
           _ctx163390_))))
    (define gx#core-bind-alias!
      (lambda _g170414_
        (let ((_g170413_ (##length _g170414_)))
          (cond ((##fx= _g170413_ 2)
                 (apply (lambda (_id163368_ _alias-id163369_)
                          (gx#core-bind-alias!__0 _id163368_ _alias-id163369_))
                        _g170414_))
                ((##fx= _g170413_ 3)
                 (apply (lambda (_id163377_ _alias-id163378_ _rebind?163379_)
                          (gx#core-bind-alias!__1
                           _id163377_
                           _alias-id163378_
                           _rebind?163379_))
                        _g170414_))
                ((##fx= _g170413_ 4)
                 (apply (lambda (_id163385_
                                 _alias-id163386_
                                 _rebind?163387_
                                 _phi163388_)
                          (gx#core-bind-alias!__2
                           _id163385_
                           _alias-id163386_
                           _rebind?163387_
                           _phi163388_))
                        _g170414_))
                ((##fx= _g170413_ 5)
                 (apply (lambda (_id163392_
                                 _alias-id163393_
                                 _rebind?163394_
                                 _phi163395_
                                 _ctx163396_)
                          (gx#core-bind-alias!__%
                           _id163392_
                           _alias-id163393_
                           _rebind?163394_
                           _phi163395_
                           _ctx163396_))
                        _g170414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g170414_))))))
    (define gx#make-binding-id__%
      (lambda (_key163314_ _syntax?163315_ _phi163316_ _ctx163317_)
        (if (uninterned-symbol? _key163314_)
            (gensym 'L)
            (if (pair? _key163314_)
                (gensym (car _key163314_))
                (if (##structure-instance-of? _ctx163317_ 'gx#top-context::t)
                    (let ((_ns163319_
                           (gx#core-context-namespace__% _ctx163317_)))
                      (if (and (fxzero? _phi163316_) (not _syntax?163315_))
                          (if _ns163319_
                              (make-symbol__1 _ns163319_ '"#" _key163314_)
                              _key163314_)
                          (if _syntax?163315_
                              (make-symbol__1
                               (let ((_$e163321_ _ns163319_))
                                 (if _$e163321_ _$e163321_ '""))
                               '"[:"
                               (number->string _phi163316_)
                               '":]#"
                               _key163314_)
                              (make-symbol__1
                               (let ((_$e163324_ _ns163319_))
                                 (if _$e163324_ _$e163324_ '""))
                               '"["
                               (number->string _phi163316_)
                               '"]#"
                               _key163314_))))
                    (gensym _key163314_))))))
    (define gx#make-binding-id__0
      (lambda (_key163330_)
        (let* ((_syntax?163332_ '#f)
               (_phi163334_ (gx#current-expander-phi))
               (_ctx163336_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key163330_
           _syntax?163332_
           _phi163334_
           _ctx163336_))))
    (define gx#make-binding-id__1
      (lambda (_key163338_ _syntax?163339_)
        (let* ((_phi163341_ (gx#current-expander-phi))
               (_ctx163343_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key163338_
           _syntax?163339_
           _phi163341_
           _ctx163343_))))
    (define gx#make-binding-id__2
      (lambda (_key163345_ _syntax?163346_ _phi163347_)
        (let ((_ctx163349_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key163345_
           _syntax?163346_
           _phi163347_
           _ctx163349_))))
    (define gx#make-binding-id
      (lambda _g170416_
        (let ((_g170415_ (##length _g170416_)))
          (cond ((##fx= _g170415_ 1)
                 (apply (lambda (_key163330_)
                          (gx#make-binding-id__0 _key163330_))
                        _g170416_))
                ((##fx= _g170415_ 2)
                 (apply (lambda (_key163338_ _syntax?163339_)
                          (gx#make-binding-id__1 _key163338_ _syntax?163339_))
                        _g170416_))
                ((##fx= _g170415_ 3)
                 (apply (lambda (_key163345_ _syntax?163346_ _phi163347_)
                          (gx#make-binding-id__2
                           _key163345_
                           _syntax?163346_
                           _phi163347_))
                        _g170416_))
                ((##fx= _g170415_ 4)
                 (apply (lambda (_key163351_
                                 _syntax?163352_
                                 _phi163353_
                                 _ctx163354_)
                          (gx#make-binding-id__%
                           _key163351_
                           _syntax?163352_
                           _phi163353_
                           _ctx163354_))
                        _g170416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g170416_))))))))
